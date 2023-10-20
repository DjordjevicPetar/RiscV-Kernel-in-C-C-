#include "../h/AlokatorMemorije.h"
#include "../lib/console.h"

AlokatorMemorije* AlokatorMemorije::memorija = nullptr;

AlokatorMemorije* AlokatorMemorije::dohvatiInstancu() {
    if(memorija == nullptr){
        memorija = (AlokatorMemorije*) HEAP_START_ADDR;
        memorija->glava = (SlobodnaMemorija*) ((char*)HEAP_START_ADDR + sizeof(AlokatorMemorije*));
        memorija->glava->sl = nullptr;
        memorija->glava->pret = nullptr;
        memorija->glava->vel = ((char*)HEAP_END_ADDR - (char*)memorija->glava) / MEM_BLOCK_SIZE;
    }
    return memorija;
}

void *AlokatorMemorije::mem_alloc(size_t size) {
    if(size <= 0) return nullptr;
    size_t brojBlokova = size / MEM_BLOCK_SIZE + 1 + ((size % MEM_BLOCK_SIZE == 0)? 0: 1);
    SlobodnaMemorija* tren;
    for(tren = glava; tren != nullptr; tren = tren->sl){
        if(tren->vel > brojBlokova){
            SlobodnaMemorija* trenNov = (SlobodnaMemorija*)((char*)tren + brojBlokova * MEM_BLOCK_SIZE);
            trenNov->vel = tren->vel - brojBlokova;
            trenNov->sl = tren->sl;
            trenNov->pret = tren->pret;
            if(tren->sl != nullptr)tren->sl->pret = trenNov;
            if(tren->pret != nullptr)tren->pret->sl = trenNov;
            else glava = trenNov;
            break;
        }
        if(tren->vel == brojBlokova){
            if(tren->pret == nullptr)glava = tren->sl;
            else tren->pret->sl = tren->sl;
            if(tren->sl)tren->sl->pret = tren->pret;
            break;
        }
    }
    if(tren != nullptr){
        tren->vel = brojBlokova;
        return (void*)((char*)tren + MEM_BLOCK_SIZE);
    }
    return nullptr;
}

int AlokatorMemorije::mem_free(void *pocAdr) {
    if((char*)pocAdr > HEAP_END_ADDR || (char*)pocAdr < HEAP_START_ADDR)return -1;
    SlobodnaMemorija* tren, *pret = nullptr, *nov = (SlobodnaMemorija*)((char*)pocAdr - MEM_BLOCK_SIZE);
    for(tren = glava; tren != nullptr && (char*)tren < (char*)nov; pret = tren, tren = tren->sl);
    nov->sl = tren;
    nov->pret = pret;
    if(pret == nullptr) glava = nov;
    else pret->sl = nov;
    if(tren != nullptr)tren->pret = nov;
    Spoji(nov);
    Spoji(pret);
    return 0;
}

void AlokatorMemorije::Spoji(SlobodnaMemorija* tren) {
    if(tren == nullptr || tren->sl == nullptr)return;
    if((char*)tren + tren->vel * MEM_BLOCK_SIZE == (char*)tren->sl){
        tren->vel += tren->sl->vel;
        tren->sl = tren->sl->sl;
        if(tren->sl != nullptr)tren->sl->pret = tren;
    }
}