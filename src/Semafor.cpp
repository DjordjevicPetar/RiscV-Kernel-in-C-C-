#include "../h/Semafor.hpp"

Semafor *Semafor::OtvoriSemafor(unsigned int init) {
    Semafor* vrati = (Semafor*)AlokatorMemorije::dohvatiInstancu()->mem_alloc(sizeof(Semafor));
    vrati->vrednost = init;
    vrati->glava = vrati->rep = nullptr;
    return vrati;
}

int Semafor::Wait() {
    vrednost--;
    if(vrednost < 0){
        if(TCB::running->isGotov())return -1;
        Blokiran* nov = (Blokiran*)AlokatorMemorije::dohvatiInstancu()->mem_alloc(sizeof(Blokiran));
        nov->sl = nullptr;
        nov->nit = TCB::running;
        if(rep == nullptr)rep = glava = nov;
        else {
            rep->sl = nov;
            rep = rep->sl;
        }
        TCB::running->setBlokiran(true);
        TCB::dispatch();
    }
    return 0;
}

void Semafor::Signal() {
    vrednost++;
    if(vrednost < 1){
        Blokiran* uzet = glava;
        TCB* nit = uzet->nit;
        if(rep == glava)rep = nullptr;
        glava = glava->sl;
        nit->setBlokiran(false);
        AlokatorMemorije::dohvatiInstancu()->mem_free(uzet);
        Scheduler::dohvatiInstancu()->Stavi(nit);
    }
}

void Semafor::ZatvoriSemafor(Semafor* semafor) {
    while(semafor->glava != nullptr)semafor->Signal();
    AlokatorMemorije::dohvatiInstancu()->mem_free(semafor);
}
