#ifndef Scheduler_hpp
#define Scheduler_hpp
#include "TCB.hpp"
#include "AlokatorMemorije.h"

class TCB;

class Scheduler{
private:
    struct Clan{
        Clan* sl;
        TCB* tcb;
    };

    Clan* glava, *rep;
    AlokatorMemorije* memorija;
    static Scheduler* scheduler;
    static TCB* bezposlenaNit;
public:
    Scheduler() = delete;
    Scheduler(Scheduler&) = delete;
    void operator=(Scheduler&) = delete;

    static Scheduler* dohvatiInstancu();
    static void besposlenaFunkcija(void*);
    void Stavi(TCB*);
    TCB* Uzmi();
};

#endif
