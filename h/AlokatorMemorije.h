#ifndef AlokatorMemorije_h
#define AlokatorMemorije_h

#include "../lib/hw.h"

class AlokatorMemorije {
private:

    struct SlobodnaMemorija{
        SlobodnaMemorija* pret;
        SlobodnaMemorija* sl;
        size_t vel;
    };

    SlobodnaMemorija* glava;
    static AlokatorMemorije* memorija;

    void Spoji(SlobodnaMemorija*);

public:

    AlokatorMemorije() = delete;
    AlokatorMemorije(AlokatorMemorije&) = delete;
    void operator=(AlokatorMemorije&) = delete;

    static AlokatorMemorije* dohvatiInstancu();
    void* mem_alloc (size_t size);
    int mem_free (void*);

};
#endif
