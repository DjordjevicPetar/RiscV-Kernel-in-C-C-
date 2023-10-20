#ifndef KruzniBafer_hpp
#define KruzniBafer_hpp

#include "../lib/console.h"
#include "AlokatorMemorije.h"
#include "Semafor.hpp"

const uint64 VELICINA_BAFERA = 1024;

class KruzniBafer{
    uint64 pocetak, kraj, brojac;
    char bafer[VELICINA_BAFERA];
    Semafor* zauzetostBafera;
    bool sis;
public:
    static KruzniBafer* NapraviInstancu();
    void putc(char);
    char getc();
    void Isprazni();
};

#endif
