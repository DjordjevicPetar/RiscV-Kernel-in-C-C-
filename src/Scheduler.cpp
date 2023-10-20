#include "../h/Scheduler.hpp"

Scheduler* Scheduler::scheduler = nullptr;
TCB* Scheduler::bezposlenaNit = nullptr;

void Scheduler::besposlenaFunkcija(void *) {
//    changeUser();
        while(scheduler->glava == nullptr);
//        while(scheduler->glava)thread_dispatch();
}

Scheduler *Scheduler::dohvatiInstancu() {
    if(scheduler == nullptr){
        scheduler = (Scheduler*)AlokatorMemorije::dohvatiInstancu()->mem_alloc(sizeof(Scheduler));
        scheduler->memorija = AlokatorMemorije::dohvatiInstancu();
        scheduler->glava = scheduler->rep = nullptr;
    }
    return scheduler;
}

void Scheduler::Stavi(TCB *tcb) {
    Clan* nov = (Clan*)scheduler->memorija->mem_alloc(sizeof(Clan));
    nov->sl = nullptr;
    nov->tcb = tcb;
    if(rep == nullptr){
        rep = glava = nov;
        return;
    }
    rep->sl = nov;
    rep = rep->sl;
}

TCB *Scheduler::Uzmi() {
    if(glava == nullptr){
        if(bezposlenaNit)delete bezposlenaNit;
        thread_create_cpp(&bezposlenaNit, besposlenaFunkcija, nullptr);
        return bezposlenaNit;
    }
    TCB* vrati = glava->tcb;
    Clan* oslobodi = glava;
    glava = glava->sl;
    if(glava == nullptr)rep = glava;
    scheduler->memorija->mem_free(oslobodi);
    return vrati;
}
