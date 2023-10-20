#ifndef Tcb_hpp
#define Tcb_hpp

#include "../lib/hw.h"
#include "Scheduler.hpp"
#include "syscall_cpp.hpp"
#include "AlokatorMemorije.h"
#include "syscall_c.h"

class TCB{
public:
    using Telo = void(*)(void*);

private:
    struct Elem{
        thread_t nit;
        Elem* sl;
    };
    struct Kontekst{
        uint64 ra;
        uint64 sp;
    };
    Telo telo;
    uint64* stek;
    void* argument;
    Kontekst kontekst;
    uint64 dodeljenoVreme;
    bool gotov;
    bool blokiran;
    bool uspavan;
    Elem* glava, *rep;

    friend class RiscV;
    friend class Semafor;
    friend class STL;
    friend class Scheduler;

    static void threadWrapper();

    static void dispatch();

    static void promenaKonteksta(Kontekst* stariKontekst, Kontekst* noviKontekst);

    static uint64 brojacDodeljivanja;

public:
    bool isGotov() const {return gotov;};

    void setGotov(bool gotov) {this->gotov = gotov;};

    static TCB* NapraviInstancu(Telo telo, void* arg, uint64* stek);

    bool isBlokiran() const {return blokiran;};

    void setBlokiran(bool blokiran) {this->blokiran = blokiran;};

    bool isUspavan() const {return uspavan;};

    void setUspavan(bool uspavan) {this->uspavan = uspavan;};

    uint64 getDodeljenoVreme() const {return dodeljenoVreme;}

    static void join(thread_t handle);

    static TCB *running;

    ~TCB() { AlokatorMemorije::dohvatiInstancu()->mem_free(stek);}

    void Oslobodi();
};

#endif
