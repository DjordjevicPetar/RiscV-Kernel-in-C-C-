#ifndef Semafor_hpp
#define Semafor_hpp

#include "../lib/hw.h"
#include "TCB.hpp"

class Semafor{
private:
    struct Blokiran{
        Blokiran* sl;
        TCB* nit;
    };
    int vrednost;
    Blokiran* glava, *rep;
public:
    static Semafor* OtvoriSemafor(unsigned init);
    static void ZatvoriSemafor(Semafor* semafor);
    void Signal();
    int Wait();
};

#endif
