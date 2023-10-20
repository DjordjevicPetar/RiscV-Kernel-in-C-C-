.extern _ZN5RiscV4trapEv
.global _ZN5RiscV4trapEv
.type _ZN5RiscV4trapEv, @function
.align 4

_ZN5RiscV4trapEv:
j supervisorTrap
j timerTrap
addi a0, a0, 0
addi a0, a0, 0
addi a0, a0, 0
addi a0, a0, 0
addi a0, a0, 0
addi a0, a0, 0
addi a0, a0, 0
j consoleTrap

supervisorTrap:
       addi sp, sp, -256
       .irp index, 1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26 ,27, 28, 29, 30, 31
       sd x\index, \index * 8(sp)
       .endr

        call _ZN5RiscV20handleSupervisorTrapEv

       .irp index, 1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26 ,27, 28, 29, 30, 31
       ld x\index, \index * 8(sp)
       .endr
       addi sp, sp, 256

       sret

timerTrap:
       addi sp, sp, -256
       .irp index, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26 ,27, 28, 29, 30, 31
       sd x\index, \index * 8(sp)
       .endr

        call _ZN5RiscV11HandleTimerEv

       .irp index, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26 ,27, 28, 29, 30, 31
       ld x\index, \index * 8(sp)
       .endr
       addi sp, sp, 256

       sret

consoleTrap:
       addi sp, sp, -256
       .irp index, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26 ,27, 28, 29, 30, 31
       sd x\index, \index * 8(sp)
       .endr

        call _ZN5RiscV13HandleConsoleEv

       .irp index, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26 ,27, 28, 29, 30, 31
       ld x\index, \index * 8(sp)
       .endr
       addi sp, sp, 256

       sret
