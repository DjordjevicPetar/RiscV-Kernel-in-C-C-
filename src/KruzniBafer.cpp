#include "../h/KruzniBafer.hpp"

KruzniBafer *KruzniBafer::NapraviInstancu() {
    KruzniBafer* vrati = (KruzniBafer*)AlokatorMemorije::dohvatiInstancu()->mem_alloc(sizeof(KruzniBafer));
    vrati->pocetak = 0;
    vrati->kraj = 0;
    vrati->brojac = 0;
    vrati->zauzetostBafera = Semafor::OtvoriSemafor(0);
    vrati->sis = false;
    return vrati;
}

void KruzniBafer::putc(char c) {
    if(brojac != VELICINA_BAFERA){
        bafer[kraj++] = c;
        kraj %= VELICINA_BAFERA;
        brojac++;
        zauzetostBafera->Signal();
    }
}

char KruzniBafer::getc() {
    if(!sis)zauzetostBafera->Wait();
    char c = bafer[pocetak++];
    pocetak %= VELICINA_BAFERA;
    brojac--;
    return c;
}

void KruzniBafer::Isprazni() {
    sis = true;
    while(brojac != 0){
        if(*((char*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT){
            *((char*)CONSOLE_TX_DATA) = this->getc();
        }
    }
}
