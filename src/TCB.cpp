#include "../h/TCB.hpp"
#include "../h/riscv.hpp"

extern "C" void NitKonzola(void* a);

TCB *TCB::running = nullptr;
uint64 TCB::brojacDodeljivanja = 0;

void TCB::dispatch() {
    TCB *old = running;
    if(!old->isGotov() && !old->isBlokiran() && !old->isUspavan()){ Scheduler::dohvatiInstancu()->Stavi(old);}
    running = Scheduler::dohvatiInstancu()->Uzmi();
    TCB::brojacDodeljivanja = 0;
    TCB::promenaKonteksta(&old->kontekst, &running->kontekst);
}

void TCB::threadWrapper() {
    if(running->telo != &NitKonzola)RiscV::popSppSpie();
    running->telo(running->argument);
    thread_exit();
}

TCB *TCB::NapraviInstancu(TCB::Telo telo, void *arg, uint64* stek) {
    TCB* vrati = (TCB*)AlokatorMemorije::dohvatiInstancu()->mem_alloc(sizeof(TCB));
    vrati->telo = telo;
    vrati->stek = stek;
    vrati->argument = arg;
    vrati->kontekst.ra = (uint64) &threadWrapper;
    vrati->kontekst.sp = (vrati->stek != nullptr)?(uint64)&vrati->stek[DEFAULT_STACK_SIZE]:0;
    vrati->gotov = false;
    vrati->blokiran = false;
    vrati->uspavan = false;
    vrati->dodeljenoVreme = DEFAULT_TIME_SLICE;
    vrati->glava = vrati->rep = nullptr;
    return vrati;

}

void TCB::join(thread_t handle) {
    if(handle->isGotov())return;
    Elem* nov = (Elem*)AlokatorMemorije::dohvatiInstancu()->mem_alloc(sizeof(Elem));
    nov->nit = running;
    nov->sl = nullptr;
    if(handle->glava == nullptr){
        handle->glava = nov;
        handle->rep = nov;
    }
    else {
        handle->rep->sl = nov;
        handle->rep = handle->rep->sl;
    }
    running->setBlokiran(true);
    while(!(handle->isGotov()))dispatch();
}

void TCB::Oslobodi() {
    while(glava != nullptr){
        Elem* oslob = glava;
        glava = glava->sl;
        Scheduler::dohvatiInstancu()->Stavi(oslob->nit);
        AlokatorMemorije::dohvatiInstancu()->mem_free(oslob);
    }
    rep = nullptr;
}
