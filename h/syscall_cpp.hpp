#ifndef syscall_cpp_hpp
#define syscall_cpp_hpp
#include "syscall_c.h"
#include "../lib/hw.h"
#include "AlokatorMemorije.h"
#include "TCB.hpp"
#include "Semafor.hpp"

void* operator new (size_t);
void operator delete (void*) noexcept;

class Thread {
public:
    Thread (void (*body)(void*), void* arg);
    virtual ~Thread ();
    int start ();
    void join();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
private:
    typedef TCB* thread_t;
    static void threadWrapper(void*);
    thread_t myHandle;
    void (*body)(void*); void* arg;
};
class Semaphore {
public:
    explicit Semaphore (unsigned init = 1);
    virtual ~Semaphore ();
    int wait ();
    int signal ();
private:
    typedef Semafor* sem_t;
    sem_t myHandle;
};
class PeriodicThread : public Thread {
public:
    void terminate ();
    virtual ~PeriodicThread(){period = 0;};
protected:
    PeriodicThread (time_t period): Thread(), period((period == 0)?1:period){}
    virtual void periodicActivation () {}
    void run() override;
private:
    time_t period;
    static void periodicWrapper(void*);
};
class Console {
public:
    static char getc ();
    static void putc (char);
};
#endif