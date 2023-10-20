.global _ZN3TCB16promenaKontekstaEPNS_8KontekstES1_
.type _ZN3TCB16promenaKontekstaEPNS_8KontekstES1_, @function
_ZN3TCB16promenaKontekstaEPNS_8KontekstES1_:
    # a0 = &old->Kontekst, a1 = running->Kontekst
    sd ra, 0 * 8(a0)
    sd sp, 1 * 8(a0)

    ld ra, 0 * 8(a1)
    ld sp, 1 * 8(a1)

    ret
