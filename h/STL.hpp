#ifndef STL_hpp
#define STL_hpp

#include "TCB.hpp"

class STL{
private:
    struct Elem{
        TCB* nit;
        Elem* sl;
        time_t vreme;
    };
    Elem* glava;
    static STL* stl;
public:
    STL() = delete;
    STL(STL&) = delete;
    void operator=(STL&) = delete;
    static STL* DohvatiInstancu();
    void Stavi(time_t vreme);
    void SmanjiIOslobodi();
};

#endif
