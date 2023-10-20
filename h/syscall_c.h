#ifndef syscall_c_hpp
#define syscall_c_hpp
#include "../lib/hw.h"
#include "../lib/console.h"

void* mem_alloc (size_t size);

int mem_free (void*);

class TCB;
typedef TCB* thread_t;
int thread_create(thread_t* handle, void(*start_routine)(void*), void* arg);

int thread_create_cpp(thread_t* handle, void(*start_routine)(void*), void* arg);

int thread_exit();

void thread_dispatch();

void thread_join(thread_t handle);

class Semafor;
typedef Semafor* sem_t;

int sem_open(sem_t* handle, unsigned init);

int sem_close(sem_t handle);

int sem_wait(sem_t id);

int sem_signal(sem_t id);

void changeUser();

typedef unsigned long time_t;

int time_sleep(time_t);

char getc();

void putc(char);

#endif
