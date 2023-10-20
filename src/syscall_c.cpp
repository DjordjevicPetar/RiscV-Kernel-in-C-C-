#include "../lib/hw.h"
#include "../h/syscall_c.h"

void* mem_alloc(size_t size){
    size_t sz = size;
    __asm__ volatile ("mv a1, %[vel]" : : [vel]"r" (sz));
    __asm__ volatile ("li a0, 0x01");
    __asm__ volatile ("ecall");
    uint64 x;
    __asm__ volatile ("mv %[povratna], a0" : [povratna]"=r" (x));
    return (void*)x;
}

int mem_free (void* pocAdr){
    void* adresa = pocAdr;
    __asm__ volatile ("mv a1, %[adr]" : : [adr]"r" (adresa));
    __asm__ volatile ("li a0, 0x02");
    __asm__ volatile ("ecall");
    int ret;
    __asm__ volatile ("mv %[povratna], a0" : [povratna]"=r" (ret));
    return ret;
}

int thread_create(thread_t* handle, void(*start_routine)(void*), void* arg){
    thread_t* rucka = handle;
    void(*poc_rut)(void*) = start_routine;
    void* argument = arg;
    void* stek;
    if(start_routine != nullptr){
        stek = (uint64*)mem_alloc(DEFAULT_STACK_SIZE * sizeof(uint64));
    } else stek = nullptr;
    __asm__ volatile ("mv a4, %[stek]" : : [stek]"r" (stek));
    __asm__ volatile ("mv a3, %[arg]" : : [arg]"r" (argument));
    __asm__ volatile ("mv a2, %[poc_rut]" : : [poc_rut]"r" (poc_rut));
    __asm__ volatile ("mv a1, %[adr]" : : [adr]"r" (rucka));
    __asm__ volatile ("li a0, 0x11");
    __asm__ volatile ("ecall");
    int vrati;
    __asm__ volatile ("mv %[povratna], a0" : [povratna]"=r" (vrati));
    return vrati;
}

int thread_create_cpp(thread_t* handle, void(*start_routine)(void*), void* arg){
    thread_t* rucka = handle;
    void(*poc_rut)(void*) = start_routine;
    void* argument = arg;
    void* stek;
    if(start_routine != nullptr){
        stek = (uint64*)mem_alloc(DEFAULT_STACK_SIZE * sizeof(uint64));
    } else stek = nullptr;
    __asm__ volatile ("mv a4, %[stek]" : : [stek]"r" (stek));
    __asm__ volatile ("mv a3, %[arg]" : : [arg]"r" (argument));
    __asm__ volatile ("mv a2, %[poc_rut]" : : [poc_rut]"r" (poc_rut));
    __asm__ volatile ("mv a1, %[adr]" : : [adr]"r" (rucka));
    __asm__ volatile ("li a0, 0x10");
    __asm__ volatile ("ecall");
    int vrati;
    __asm__ volatile ("mv %[povratna], a0" : [povratna]"=r" (vrati));
    return vrati;
}

int thread_exit(){
    __asm__ volatile ("li a0, 0x12");
    __asm__ volatile ("ecall");
    int vrati;
    __asm__ volatile ("mv %[povratna], a0" : [povratna]"=r" (vrati));
    return vrati;
}

void thread_dispatch(){
    __asm__ volatile ("li a0, 0x13");
    __asm__ volatile ("ecall");
}

void thread_join(thread_t handle){
    thread_t rucka = handle;
    __asm__ volatile ("mv a1, %[rucka]" : : [rucka]"r" (rucka));
    __asm__ volatile ("li a0, 0x14");
    __asm__ volatile ("ecall");
}

int sem_open(sem_t* handle, unsigned init){
    sem_t* rucka = handle;
    unsigned vrednost = init;
    __asm__ volatile ("mv a2, %[vr]" : : [vr]"r" (vrednost));
    __asm__ volatile ("mv a1, %[adr]" : : [adr]"r" (rucka));
    __asm__ volatile ("li a0, 0x21");
    __asm__ volatile ("ecall");
    int vrati;
    __asm__ volatile ("mv %[povratna], a0" : [povratna]"=r" (vrati));
    return vrati;
}

int sem_close(sem_t handle){
    sem_t rucka = handle;
    __asm__ volatile ("mv a1, %[rucka]" : : [rucka]"r" (rucka));
    __asm__ volatile ("li a0, 0x22");
    __asm__ volatile ("ecall");
    int vrati;
    __asm__ volatile ("mv %[povratna], a0" : [povratna]"=r" (vrati));
    return vrati;
}

int sem_wait(sem_t id){
    sem_t rucka = id;
    __asm__ volatile ("mv a1, %[rucka]" : : [rucka]"r" (rucka));
    __asm__ volatile ("li a0, 0x23");
    __asm__ volatile ("ecall");
    int vrati;
    __asm__ volatile ("mv %[povratna], a0" : [povratna]"=r" (vrati));
    return vrati;
}

int sem_signal(sem_t id){
    sem_t rucka = id;
    __asm__ volatile ("mv a1, %[rucka]" : : [rucka]"r" (rucka));
    __asm__ volatile ("li a0, 0x24");
    __asm__ volatile ("ecall");
    int vrati;
    __asm__ volatile ("mv %[povratna], a0" : [povratna]"=r" (vrati));
    return vrati;
}

int time_sleep(time_t slice){
    time_t vreme = slice;
    __asm__ volatile ("mv a1, %[vreme]" : : [vreme]"r" (vreme));
    __asm__ volatile ("li a0, 0x31");
    __asm__ volatile ("ecall");
    int vrati;
    __asm__ volatile ("mv %[povratna], a0" : [povratna]"=r" (vrati));
    return vrati;
}

char getc(){
    __asm__ volatile ("li a0, 0x41");
    __asm__ volatile ("ecall");
    char vrati;
    __asm__ volatile ("mv %[povratna], a0" : [povratna]"=r" (vrati));
    return vrati;
}

void putc(char c){
    char chr = c;
    __asm__ volatile ("mv a1, %[chr]" : : [chr]"r" (chr));
    __asm__ volatile ("li a0, 0x42");
    __asm__ volatile ("ecall");
}