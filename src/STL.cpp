#include "../h/STL.hpp"

STL* STL::stl = nullptr;

STL *STL::DohvatiInstancu() {
    if(stl == nullptr){
        stl = (STL*) AlokatorMemorije::dohvatiInstancu()->mem_alloc(sizeof(STL));
        stl->glava = nullptr;
    }
    return stl;
}

void STL::Stavi(time_t vreme) {
    Elem* cur, *last;
    Elem* nov = (Elem*)AlokatorMemorije::dohvatiInstancu()->mem_alloc(sizeof(Elem));
    nov->nit = TCB::running;
    nov->vreme = vreme;
    nov->sl = nullptr;
    for(cur = glava, last = nullptr;cur != nullptr;last = cur,cur = cur->sl){
        if(cur->vreme >= nov->vreme){
            if(last == nullptr)glava = nov;
            else last->sl = nov;
            nov->sl = cur;
            cur->vreme -= nov->vreme;
            break;
        }
        else nov->vreme -= cur->vreme;
    }
    if(glava == nullptr)glava = nov;
    else if(cur == nullptr)last->sl = nov;
}

void STL::SmanjiIOslobodi() {
    if(glava == nullptr)return;
    glava->vreme--;
    while(glava != nullptr && glava->vreme == 0){
        Elem* izbaci = glava;
        glava = glava->sl;
        izbaci->nit->setUspavan(false);
        Scheduler::dohvatiInstancu()->Stavi(izbaci->nit);
        AlokatorMemorije::dohvatiInstancu()->mem_free(izbaci);
    }
}
