#include "../h/riscv.hpp"

void RiscV::popSppSpie() {
    mc_sstatus(1<<8);
    __asm__ volatile("csrw sepc, ra");
    __asm__ volatile ("sret");
}

void RiscV::handleSupervisorTrap() {
    uint64 volatile a0, a1, a2, a3, a4;
    __asm__ volatile ("mv %[a0], a0" : [a0]"=r" (a0));
    __asm__ volatile ("mv %[a1], a1" : [a1]"=r"(a1));
    __asm__ volatile ("mv %[a2], a2" : [a2]"=r"(a2));
    __asm__ volatile ("mv %[a3], a3" : [a3]"=r"(a3));
    __asm__ volatile ("mv %[a4], a4" : [a4]"=r"(a4));
    uint64 volatile scause = r_scause();
    if(scause != 8 && scause != 9){
        out->putc((char)scause + '0');
        out->putc('\n');
        out->Isprazni();
        while(true);
    }
    //if(scause != 8 && scause != 9)printInt(scause);
    uint64 volatile sepc = r_sepc() + 4;
    uint64 volatile sstatus = r_sstatus();
    switch (a0) {
        case 0x01:{ //mem_alloc
            size_t size = (size_t) a1;
            void* vrati = AlokatorMemorije::dohvatiInstancu()->mem_alloc(size);
            __asm__ volatile ("mv a0, %[povratna]" : : [povratna]"r" (vrati));
            break;
        }
        case 0x02:{ //mem_free
            void* adr = (void*)a1;
            int vrati = AlokatorMemorije::dohvatiInstancu()->mem_free(adr);
            __asm__ volatile ("mv a0, %[povratna]" : : [povratna]"r" (vrati));
            break;
        }
        case 0x10:
        case 0x11:{ //thread_create
            thread_t* handle = (thread_t*)a1;
            using funk = void(*)(void*);
            void(*start_routine)(void*) = (funk)a2;
            void* arg = (void*)a3;
            uint64* stek = (uint64*)a4;
            *handle = TCB::NapraviInstancu(start_routine, arg, stek);
            if(a0 == 0x11)Scheduler::dohvatiInstancu()->Stavi(*handle);
            int vrati = (*handle != nullptr)? 0: -1;
            __asm__ volatile ("mv a0, %[povratna]" : : [povratna]"r" (vrati));
            break;
        }
        case 0x12:{ //thread_exit
            TCB::running->setGotov(true);
            TCB::running->Oslobodi();
            TCB::dispatch();
            int vrati = 0;
            __asm__ volatile ("mv a0, %[povratna]" : : [povratna]"r" (vrati));
            break;
        }
        case 0x13:{ //thread_dispatch
            TCB::dispatch();
            break;
        }
        case 0x14:{ //thread_join
            thread_t handle = (thread_t)a1;
            TCB::join(handle);
            int vrati = 0;
            __asm__ volatile ("mv a0, %[povratna]" : : [povratna]"r" (vrati));
            break;
        }
        case 0x21:{ //sem_open
            sem_t* handle = (sem_t*)a1;
            unsigned init = (unsigned)a2;
            *handle = Semafor::OtvoriSemafor(init);
            int vrati = (*handle != nullptr)? 0: -1;
            __asm__ volatile ("mv a0, %[povratna]" : : [povratna]"r" (vrati));
            break;
        }
        case 0x22:{ //sem_close
            sem_t handle = (sem_t)a1;
            Semafor::ZatvoriSemafor(handle);
            int vrati = 0;
            __asm__ volatile ("mv a0, %[povratna]" : : [povratna]"r" (vrati));
            break;
        }
        case 0x23:{ //sem_wait
            sem_t id = (sem_t)a1;
            int vrati = id->Wait();
            __asm__ volatile ("mv a0, %[povratna]" : : [povratna]"r" (vrati));
            break;
        }
        case 0x24:{ //sem_signal
            sem_t id = (sem_t)a1;
            id->Signal();
            int vrati = 0;
            __asm__ volatile ("mv a0, %[povratna]" : : [povratna]"r" (vrati));
            break;
        }
        case 0x31:{ //time_sleep
            time_t vreme = (time_t)a1;
            int volatile vrati = 0;
            if(vreme == 0)vrati = -1;
            else {
                STL::DohvatiInstancu()->Stavi(vreme);
                TCB::running->setUspavan(true);
                TCB::dispatch();
            }
            __asm__ volatile ("mv a0, %[povratna]" : : [povratna]"r" (vrati));
            break;
        }
        case 0x41:{
            char volatile vrati = in->getc();
            //char vrati = __getc();
            __asm__ volatile ("mv a0, %[povratna]" : : [povratna]"r" (vrati));
            break;
        }
        case 0x42:{
            char chr = (char)a1;
            out->putc(chr);
            //__putc(chr);
            break;
        }
    }
    w_sstatus(sstatus);
    w_sepc(sepc);
    mc_sip(SIP_SSIP);
}

void RiscV::HandleTimer(){
    TCB::brojacDodeljivanja++;
    STL::DohvatiInstancu()->SmanjiIOslobodi();
    mc_sip(SIP_SSIP);
    if(TCB::brojacDodeljivanja >= TCB::running->getDodeljenoVreme()) {
        uint64 volatile sepc = r_sepc();
        uint64 volatile sstatus = r_sstatus();
        TCB::brojacDodeljivanja = 0;
        TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
}

void RiscV::HandleConsole(){
    int volatile plic = plic_claim();
    while(*((char*)CONSOLE_STATUS) & CONSOLE_RX_STATUS_BIT){
        char c = *((char*)CONSOLE_RX_DATA);
        in->putc(c);
        break;
    }
    plic_complete(plic);
}