#include "../h/AlokatorMemorije.h"
#include "../h/riscv.hpp"
#include "../h/KruzniBafer.hpp"
#include "../h/Scheduler.hpp"
#include "../h/Semafor.hpp"
#include "../h/syscall_c.h"
#include "../h/syscall_cpp.hpp"
#include "../h/TCB.hpp"
#include "../lib/hw.h"
#include "../lib/console.h"
//#include "../test/Threads_C_API_test.hpp"
#include "../test/printing.hpp"
void userMain();


KruzniBafer* RiscV::in = nullptr;
KruzniBafer* RiscV::out = nullptr;

class A: public PeriodicThread{
public:
    A(time_t period): PeriodicThread(period){}
    void periodicActivation() override{
        putc('a');
    }
};

extern "C" void NitKonzola(void* a);
extern "C" void User(void* a);

int main(){
    RiscV::w_stvec((uint64) &RiscV::trap);
    __asm__ volatile ("csrs stvec, 0x01");
    TCB *nit;
    thread_create_cpp(&nit, nullptr, nullptr);
    TCB::running = nit;
    RiscV::in = KruzniBafer::NapraviInstancu();
    RiscV::out = KruzniBafer::NapraviInstancu();
    TCB* obradi;
    thread_create(&obradi, NitKonzola, nullptr);
    //printInt((uint64)nit);
    //__putc('\n');
//    changeUser();

    /*KruzniBafer* kb = KruzniBafer::NapraviInstancu();
    kb->putc(getc());
    kb->putc(getc());
    kb->putc(getc());
    kb->putc(getc());
    kb->putc(getc());

    __putc(kb->getc());
    __putc(kb->getc());
    __putc(kb->getc());
    __putc(kb->getc());
    __putc(kb->getc());*/

    //RiscV::NapraviBuffer();
    //printInt((uint64)nit);
    TCB* glavna;
    thread_create(&glavna, User, nullptr);
    //A* p = new A(5);
    //p->start();
    //p->join();
    //time_sleep(100);
    //p->terminate();
    //while(!glavna->isGotov())thread_dispatch();
    //AlokatorMemorije::dohvatiInstancu()->mem_free(nit);
	thread_join(glavna);
    return 0;
}

void NitKonzola(void* a){
    while(true){
        if(*((char*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT){
            *((char*)CONSOLE_TX_DATA) = RiscV::out->getc();
        }
    }
}

void User(void* a){
    userMain();
}