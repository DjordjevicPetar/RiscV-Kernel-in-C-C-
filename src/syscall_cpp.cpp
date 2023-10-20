#include "../h/syscall_cpp.hpp"

void* operator new(size_t vel){
    return mem_alloc(vel);
}

void operator delete (void* adr) noexcept {
    mem_free(adr);
}

Thread::Thread(void (*body)(void *), void *arg) {
    thread_create_cpp(&myHandle, body, arg);
}

Thread::~Thread() {
    delete myHandle;
}

int Thread::start() {
    Scheduler::dohvatiInstancu()->Stavi(myHandle);
    return 0;
}

void Thread::dispatch() {
    thread_dispatch();
}

Thread::Thread() {
    thread_create_cpp(&myHandle, threadWrapper, this);
}

void Thread::threadWrapper(void *thread) {
    Thread* thr = (Thread*) thread;
    thr->run();
}

int Thread::sleep(time_t slice) {
    return time_sleep(slice);
}

void Thread::join() {
    if(myHandle != nullptr)thread_join(myHandle);
}

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    sem_close(myHandle);
}

int Semaphore::wait() {
    return sem_wait(myHandle);
}

int Semaphore::signal() {
    return sem_signal(myHandle);
}

char Console::getc() {
    return ::getc();
}

void Console::putc(char c) {
    ::putc(c);
}

void PeriodicThread::run() {
    time_t sl = period;
    while(period){
        TCB* handle;
        thread_create(&handle, periodicWrapper, this);
        thread_join(handle);
        time_sleep(sl);
        delete handle;
    }
}

void PeriodicThread::periodicWrapper(void *thread) {
    PeriodicThread* thr = (PeriodicThread*) thread;
    thr->periodicActivation();
}

void PeriodicThread::terminate() {
    period = 0;
}
