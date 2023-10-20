#ifndef riscv_hpp
#define riscv_hpp

#include "../lib/hw.h"
#include "TCB.hpp"
#include "../lib/console.h"
#include "STL.hpp"
#include "KruzniBafer.hpp"
#include "../test/printing.hpp"

class RiscV{
private:

    static void handleSupervisorTrap();

    void HandleTimer();

    void HandleConsole();
public:

    static KruzniBafer* in;
    static KruzniBafer* out;

    static uint64 r_scause();

    static void mc_sip(uint64);

    static void popSppSpie();

    static uint64 r_sepc();

    static void w_sepc(uint64 sepc);

    static uint64 r_sstatus();

    static void w_sstatus(uint64 sstatus);

    static void mc_sstatus(uint64);

    static void w_stvec(uint64 stvec);

    static void trap();

    enum BitMaskSip{
        SIP_SSIP = 1 << 1, // Upisuje se 0, cime se maskiraju spoljasnji prekidi
        SIP_STIP = 1 << 5, // Prethodna vrednost SIE bita
        SIP_SEIP = 1 << 8, // Iz kog rezima se dogodio skok (0-korisnicki)
    };

};

inline uint64 RiscV::r_scause() {
    uint64 volatile scause;
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    return scause;
}

inline void RiscV::mc_sip(uint64 mask){
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
}

inline uint64 RiscV::r_sepc() {
    uint64 volatile sepc;
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc]"=r"(sepc));
    return sepc;
}

inline void RiscV::w_sepc(uint64 sepc) {
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc]"r"(sepc));
}

inline void RiscV::w_stvec(uint64 stvec) {
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec]"r"(stvec));
}

inline uint64 RiscV::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus]"=r"(sstatus));
    return  sstatus;
}

inline void RiscV::w_sstatus(uint64 sstatus) {
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus]"r"(sstatus));
}

inline void RiscV::mc_sstatus(uint64 mask) {
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
}

#endif
