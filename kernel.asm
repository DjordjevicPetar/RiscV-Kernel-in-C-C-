
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000b117          	auipc	sp,0xb
    80000004:	67013103          	ld	sp,1648(sp) # 8000b670 <_GLOBAL_OFFSET_TABLE_+0x38>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	48c060ef          	jal	ra,800064a8 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5RiscV4trapEv>:
.global _ZN5RiscV4trapEv
.type _ZN5RiscV4trapEv, @function
.align 4

_ZN5RiscV4trapEv:
j supervisorTrap
    80001000:	0280006f          	j	80001028 <supervisorTrap>
j timerTrap
    80001004:	1240006f          	j	80001128 <timerTrap>
addi a0, a0, 0
    80001008:	00050513          	mv	a0,a0
addi a0, a0, 0
    8000100c:	00050513          	mv	a0,a0
addi a0, a0, 0
    80001010:	00050513          	mv	a0,a0
addi a0, a0, 0
    80001014:	00050513          	mv	a0,a0
addi a0, a0, 0
    80001018:	00050513          	mv	a0,a0
addi a0, a0, 0
    8000101c:	00050513          	mv	a0,a0
addi a0, a0, 0
    80001020:	00050513          	mv	a0,a0
j consoleTrap
    80001024:	20c0006f          	j	80001230 <consoleTrap>

0000000080001028 <supervisorTrap>:

supervisorTrap:
       addi sp, sp, -256
    80001028:	f0010113          	addi	sp,sp,-256
       .irp index, 1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26 ,27, 28, 29, 30, 31
       sd x\index, \index * 8(sp)
       .endr
    8000102c:	00113423          	sd	ra,8(sp)
    80001030:	00213823          	sd	sp,16(sp)
    80001034:	00313c23          	sd	gp,24(sp)
    80001038:	02413023          	sd	tp,32(sp)
    8000103c:	02513423          	sd	t0,40(sp)
    80001040:	02613823          	sd	t1,48(sp)
    80001044:	02713c23          	sd	t2,56(sp)
    80001048:	04813023          	sd	s0,64(sp)
    8000104c:	04913423          	sd	s1,72(sp)
    80001050:	04b13c23          	sd	a1,88(sp)
    80001054:	06c13023          	sd	a2,96(sp)
    80001058:	06d13423          	sd	a3,104(sp)
    8000105c:	06e13823          	sd	a4,112(sp)
    80001060:	06f13c23          	sd	a5,120(sp)
    80001064:	09013023          	sd	a6,128(sp)
    80001068:	09113423          	sd	a7,136(sp)
    8000106c:	09213823          	sd	s2,144(sp)
    80001070:	09313c23          	sd	s3,152(sp)
    80001074:	0b413023          	sd	s4,160(sp)
    80001078:	0b513423          	sd	s5,168(sp)
    8000107c:	0b613823          	sd	s6,176(sp)
    80001080:	0b713c23          	sd	s7,184(sp)
    80001084:	0d813023          	sd	s8,192(sp)
    80001088:	0d913423          	sd	s9,200(sp)
    8000108c:	0da13823          	sd	s10,208(sp)
    80001090:	0db13c23          	sd	s11,216(sp)
    80001094:	0fc13023          	sd	t3,224(sp)
    80001098:	0fd13423          	sd	t4,232(sp)
    8000109c:	0fe13823          	sd	t5,240(sp)
    800010a0:	0ff13c23          	sd	t6,248(sp)

        call _ZN5RiscV20handleSupervisorTrapEv
    800010a4:	648010ef          	jal	ra,800026ec <_ZN5RiscV20handleSupervisorTrapEv>

       .irp index, 1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26 ,27, 28, 29, 30, 31
       ld x\index, \index * 8(sp)
       .endr
    800010a8:	00813083          	ld	ra,8(sp)
    800010ac:	01013103          	ld	sp,16(sp)
    800010b0:	01813183          	ld	gp,24(sp)
    800010b4:	02013203          	ld	tp,32(sp)
    800010b8:	02813283          	ld	t0,40(sp)
    800010bc:	03013303          	ld	t1,48(sp)
    800010c0:	03813383          	ld	t2,56(sp)
    800010c4:	04013403          	ld	s0,64(sp)
    800010c8:	04813483          	ld	s1,72(sp)
    800010cc:	05813583          	ld	a1,88(sp)
    800010d0:	06013603          	ld	a2,96(sp)
    800010d4:	06813683          	ld	a3,104(sp)
    800010d8:	07013703          	ld	a4,112(sp)
    800010dc:	07813783          	ld	a5,120(sp)
    800010e0:	08013803          	ld	a6,128(sp)
    800010e4:	08813883          	ld	a7,136(sp)
    800010e8:	09013903          	ld	s2,144(sp)
    800010ec:	09813983          	ld	s3,152(sp)
    800010f0:	0a013a03          	ld	s4,160(sp)
    800010f4:	0a813a83          	ld	s5,168(sp)
    800010f8:	0b013b03          	ld	s6,176(sp)
    800010fc:	0b813b83          	ld	s7,184(sp)
    80001100:	0c013c03          	ld	s8,192(sp)
    80001104:	0c813c83          	ld	s9,200(sp)
    80001108:	0d013d03          	ld	s10,208(sp)
    8000110c:	0d813d83          	ld	s11,216(sp)
    80001110:	0e013e03          	ld	t3,224(sp)
    80001114:	0e813e83          	ld	t4,232(sp)
    80001118:	0f013f03          	ld	t5,240(sp)
    8000111c:	0f813f83          	ld	t6,248(sp)
       addi sp, sp, 256
    80001120:	10010113          	addi	sp,sp,256

       sret
    80001124:	10200073          	sret

0000000080001128 <timerTrap>:

timerTrap:
       addi sp, sp, -256
    80001128:	f0010113          	addi	sp,sp,-256
       .irp index, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26 ,27, 28, 29, 30, 31
       sd x\index, \index * 8(sp)
       .endr
    8000112c:	00113423          	sd	ra,8(sp)
    80001130:	00213823          	sd	sp,16(sp)
    80001134:	00313c23          	sd	gp,24(sp)
    80001138:	02413023          	sd	tp,32(sp)
    8000113c:	02513423          	sd	t0,40(sp)
    80001140:	02613823          	sd	t1,48(sp)
    80001144:	02713c23          	sd	t2,56(sp)
    80001148:	04813023          	sd	s0,64(sp)
    8000114c:	04913423          	sd	s1,72(sp)
    80001150:	04a13823          	sd	a0,80(sp)
    80001154:	04b13c23          	sd	a1,88(sp)
    80001158:	06c13023          	sd	a2,96(sp)
    8000115c:	06d13423          	sd	a3,104(sp)
    80001160:	06e13823          	sd	a4,112(sp)
    80001164:	06f13c23          	sd	a5,120(sp)
    80001168:	09013023          	sd	a6,128(sp)
    8000116c:	09113423          	sd	a7,136(sp)
    80001170:	09213823          	sd	s2,144(sp)
    80001174:	09313c23          	sd	s3,152(sp)
    80001178:	0b413023          	sd	s4,160(sp)
    8000117c:	0b513423          	sd	s5,168(sp)
    80001180:	0b613823          	sd	s6,176(sp)
    80001184:	0b713c23          	sd	s7,184(sp)
    80001188:	0d813023          	sd	s8,192(sp)
    8000118c:	0d913423          	sd	s9,200(sp)
    80001190:	0da13823          	sd	s10,208(sp)
    80001194:	0db13c23          	sd	s11,216(sp)
    80001198:	0fc13023          	sd	t3,224(sp)
    8000119c:	0fd13423          	sd	t4,232(sp)
    800011a0:	0fe13823          	sd	t5,240(sp)
    800011a4:	0ff13c23          	sd	t6,248(sp)

        call _ZN5RiscV11HandleTimerEv
    800011a8:	059010ef          	jal	ra,80002a00 <_ZN5RiscV11HandleTimerEv>

       .irp index, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26 ,27, 28, 29, 30, 31
       ld x\index, \index * 8(sp)
       .endr
    800011ac:	00813083          	ld	ra,8(sp)
    800011b0:	01013103          	ld	sp,16(sp)
    800011b4:	01813183          	ld	gp,24(sp)
    800011b8:	02013203          	ld	tp,32(sp)
    800011bc:	02813283          	ld	t0,40(sp)
    800011c0:	03013303          	ld	t1,48(sp)
    800011c4:	03813383          	ld	t2,56(sp)
    800011c8:	04013403          	ld	s0,64(sp)
    800011cc:	04813483          	ld	s1,72(sp)
    800011d0:	05013503          	ld	a0,80(sp)
    800011d4:	05813583          	ld	a1,88(sp)
    800011d8:	06013603          	ld	a2,96(sp)
    800011dc:	06813683          	ld	a3,104(sp)
    800011e0:	07013703          	ld	a4,112(sp)
    800011e4:	07813783          	ld	a5,120(sp)
    800011e8:	08013803          	ld	a6,128(sp)
    800011ec:	08813883          	ld	a7,136(sp)
    800011f0:	09013903          	ld	s2,144(sp)
    800011f4:	09813983          	ld	s3,152(sp)
    800011f8:	0a013a03          	ld	s4,160(sp)
    800011fc:	0a813a83          	ld	s5,168(sp)
    80001200:	0b013b03          	ld	s6,176(sp)
    80001204:	0b813b83          	ld	s7,184(sp)
    80001208:	0c013c03          	ld	s8,192(sp)
    8000120c:	0c813c83          	ld	s9,200(sp)
    80001210:	0d013d03          	ld	s10,208(sp)
    80001214:	0d813d83          	ld	s11,216(sp)
    80001218:	0e013e03          	ld	t3,224(sp)
    8000121c:	0e813e83          	ld	t4,232(sp)
    80001220:	0f013f03          	ld	t5,240(sp)
    80001224:	0f813f83          	ld	t6,248(sp)
       addi sp, sp, 256
    80001228:	10010113          	addi	sp,sp,256

       sret
    8000122c:	10200073          	sret

0000000080001230 <consoleTrap>:

consoleTrap:
       addi sp, sp, -256
    80001230:	f0010113          	addi	sp,sp,-256
       .irp index, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26 ,27, 28, 29, 30, 31
       sd x\index, \index * 8(sp)
       .endr
    80001234:	00113423          	sd	ra,8(sp)
    80001238:	00213823          	sd	sp,16(sp)
    8000123c:	00313c23          	sd	gp,24(sp)
    80001240:	02413023          	sd	tp,32(sp)
    80001244:	02513423          	sd	t0,40(sp)
    80001248:	02613823          	sd	t1,48(sp)
    8000124c:	02713c23          	sd	t2,56(sp)
    80001250:	04813023          	sd	s0,64(sp)
    80001254:	04913423          	sd	s1,72(sp)
    80001258:	04a13823          	sd	a0,80(sp)
    8000125c:	04b13c23          	sd	a1,88(sp)
    80001260:	06c13023          	sd	a2,96(sp)
    80001264:	06d13423          	sd	a3,104(sp)
    80001268:	06e13823          	sd	a4,112(sp)
    8000126c:	06f13c23          	sd	a5,120(sp)
    80001270:	09013023          	sd	a6,128(sp)
    80001274:	09113423          	sd	a7,136(sp)
    80001278:	09213823          	sd	s2,144(sp)
    8000127c:	09313c23          	sd	s3,152(sp)
    80001280:	0b413023          	sd	s4,160(sp)
    80001284:	0b513423          	sd	s5,168(sp)
    80001288:	0b613823          	sd	s6,176(sp)
    8000128c:	0b713c23          	sd	s7,184(sp)
    80001290:	0d813023          	sd	s8,192(sp)
    80001294:	0d913423          	sd	s9,200(sp)
    80001298:	0da13823          	sd	s10,208(sp)
    8000129c:	0db13c23          	sd	s11,216(sp)
    800012a0:	0fc13023          	sd	t3,224(sp)
    800012a4:	0fd13423          	sd	t4,232(sp)
    800012a8:	0fe13823          	sd	t5,240(sp)
    800012ac:	0ff13c23          	sd	t6,248(sp)

        call _ZN5RiscV13HandleConsoleEv
    800012b0:	7fc010ef          	jal	ra,80002aac <_ZN5RiscV13HandleConsoleEv>

       .irp index, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26 ,27, 28, 29, 30, 31
       ld x\index, \index * 8(sp)
       .endr
    800012b4:	00813083          	ld	ra,8(sp)
    800012b8:	01013103          	ld	sp,16(sp)
    800012bc:	01813183          	ld	gp,24(sp)
    800012c0:	02013203          	ld	tp,32(sp)
    800012c4:	02813283          	ld	t0,40(sp)
    800012c8:	03013303          	ld	t1,48(sp)
    800012cc:	03813383          	ld	t2,56(sp)
    800012d0:	04013403          	ld	s0,64(sp)
    800012d4:	04813483          	ld	s1,72(sp)
    800012d8:	05013503          	ld	a0,80(sp)
    800012dc:	05813583          	ld	a1,88(sp)
    800012e0:	06013603          	ld	a2,96(sp)
    800012e4:	06813683          	ld	a3,104(sp)
    800012e8:	07013703          	ld	a4,112(sp)
    800012ec:	07813783          	ld	a5,120(sp)
    800012f0:	08013803          	ld	a6,128(sp)
    800012f4:	08813883          	ld	a7,136(sp)
    800012f8:	09013903          	ld	s2,144(sp)
    800012fc:	09813983          	ld	s3,152(sp)
    80001300:	0a013a03          	ld	s4,160(sp)
    80001304:	0a813a83          	ld	s5,168(sp)
    80001308:	0b013b03          	ld	s6,176(sp)
    8000130c:	0b813b83          	ld	s7,184(sp)
    80001310:	0c013c03          	ld	s8,192(sp)
    80001314:	0c813c83          	ld	s9,200(sp)
    80001318:	0d013d03          	ld	s10,208(sp)
    8000131c:	0d813d83          	ld	s11,216(sp)
    80001320:	0e013e03          	ld	t3,224(sp)
    80001324:	0e813e83          	ld	t4,232(sp)
    80001328:	0f013f03          	ld	t5,240(sp)
    8000132c:	0f813f83          	ld	t6,248(sp)
       addi sp, sp, 256
    80001330:	10010113          	addi	sp,sp,256

       sret
    80001334:	10200073          	sret

0000000080001338 <_ZN3TCB16promenaKontekstaEPNS_8KontekstES1_>:
.global _ZN3TCB16promenaKontekstaEPNS_8KontekstES1_
.type _ZN3TCB16promenaKontekstaEPNS_8KontekstES1_, @function
_ZN3TCB16promenaKontekstaEPNS_8KontekstES1_:
    # a0 = &old->Kontekst, a1 = running->Kontekst
    sd ra, 0 * 8(a0)
    80001338:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    8000133c:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001340:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    80001344:	0085b103          	ld	sp,8(a1)

    ret
    80001348:	00008067          	ret

000000008000134c <copy_and_swap>:
# 1 "<command-line>"
# 31 "<command-line>"
# 1 "/usr/riscv64-linux-gnu/include/stdc-predef.h" 1 3
# 32 "<command-line>" 2
# 1 "test/lock.S"
# extern uint64 copy_and_swap(uint64 &lock, uint64 expected, uint64 desired);
    8000134c:	100522af          	lr.w	t0,(a0)
# a0 holds address of memory location
    80001350:	00b29a63          	bne	t0,a1,80001364 <fail>
# a1 holds expected value
    80001354:	18c522af          	sc.w	t0,a2,(a0)
# a2 holds desired value
    80001358:	fe029ae3          	bnez	t0,8000134c <copy_and_swap>
# a0 holds return value, 0 if successful, !0 otherwise
    8000135c:	00000513          	li	a0,0
.global copy_and_swap
    80001360:	00008067          	ret

0000000080001364 <fail>:
copy_and_swap:
    lr.w t0, (a0) # Load original value.
    80001364:	00100513          	li	a0,1
    bne t0, a1, fail # Doesn’t match, so fail.
    80001368:	00008067          	ret

000000008000136c <_Z9mem_allocm>:
#include "../lib/hw.h"
#include "../h/syscall_c.h"

void* mem_alloc(size_t size){
    8000136c:	ff010113          	addi	sp,sp,-16
    80001370:	00813423          	sd	s0,8(sp)
    80001374:	01010413          	addi	s0,sp,16
    size_t sz = size;
    __asm__ volatile ("mv a1, %[vel]" : : [vel]"r" (sz));
    80001378:	00050593          	mv	a1,a0
    __asm__ volatile ("li a0, 0x01");
    8000137c:	00100513          	li	a0,1
    __asm__ volatile ("ecall");
    80001380:	00000073          	ecall
    uint64 x;
    __asm__ volatile ("mv %[povratna], a0" : [povratna]"=r" (x));
    80001384:	00050513          	mv	a0,a0
    return (void*)x;
}
    80001388:	00813403          	ld	s0,8(sp)
    8000138c:	01010113          	addi	sp,sp,16
    80001390:	00008067          	ret

0000000080001394 <_Z8mem_freePv>:

int mem_free (void* pocAdr){
    80001394:	ff010113          	addi	sp,sp,-16
    80001398:	00813423          	sd	s0,8(sp)
    8000139c:	01010413          	addi	s0,sp,16
    void* adresa = pocAdr;
    __asm__ volatile ("mv a1, %[adr]" : : [adr]"r" (adresa));
    800013a0:	00050593          	mv	a1,a0
    __asm__ volatile ("li a0, 0x02");
    800013a4:	00200513          	li	a0,2
    __asm__ volatile ("ecall");
    800013a8:	00000073          	ecall
    int ret;
    __asm__ volatile ("mv %[povratna], a0" : [povratna]"=r" (ret));
    800013ac:	00050513          	mv	a0,a0
    return ret;
}
    800013b0:	0005051b          	sext.w	a0,a0
    800013b4:	00813403          	ld	s0,8(sp)
    800013b8:	01010113          	addi	sp,sp,16
    800013bc:	00008067          	ret

00000000800013c0 <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create(thread_t* handle, void(*start_routine)(void*), void* arg){
    800013c0:	fd010113          	addi	sp,sp,-48
    800013c4:	02113423          	sd	ra,40(sp)
    800013c8:	02813023          	sd	s0,32(sp)
    800013cc:	00913c23          	sd	s1,24(sp)
    800013d0:	01213823          	sd	s2,16(sp)
    800013d4:	01313423          	sd	s3,8(sp)
    800013d8:	03010413          	addi	s0,sp,48
    800013dc:	00050913          	mv	s2,a0
    800013e0:	00058493          	mv	s1,a1
    800013e4:	00060993          	mv	s3,a2
    thread_t* rucka = handle;
    void(*poc_rut)(void*) = start_routine;
    void* argument = arg;
    void* stek;
    if(start_routine != nullptr){
    800013e8:	04058663          	beqz	a1,80001434 <_Z13thread_createPP3TCBPFvPvES2_+0x74>
        stek = (uint64*)mem_alloc(DEFAULT_STACK_SIZE * sizeof(uint64));
    800013ec:	00008537          	lui	a0,0x8
    800013f0:	00000097          	auipc	ra,0x0
    800013f4:	f7c080e7          	jalr	-132(ra) # 8000136c <_Z9mem_allocm>
    } else stek = nullptr;
    __asm__ volatile ("mv a4, %[stek]" : : [stek]"r" (stek));
    800013f8:	00050713          	mv	a4,a0
    __asm__ volatile ("mv a3, %[arg]" : : [arg]"r" (argument));
    800013fc:	00098693          	mv	a3,s3
    __asm__ volatile ("mv a2, %[poc_rut]" : : [poc_rut]"r" (poc_rut));
    80001400:	00048613          	mv	a2,s1
    __asm__ volatile ("mv a1, %[adr]" : : [adr]"r" (rucka));
    80001404:	00090593          	mv	a1,s2
    __asm__ volatile ("li a0, 0x11");
    80001408:	01100513          	li	a0,17
    __asm__ volatile ("ecall");
    8000140c:	00000073          	ecall
    int vrati;
    __asm__ volatile ("mv %[povratna], a0" : [povratna]"=r" (vrati));
    80001410:	00050513          	mv	a0,a0
    return vrati;
}
    80001414:	0005051b          	sext.w	a0,a0
    80001418:	02813083          	ld	ra,40(sp)
    8000141c:	02013403          	ld	s0,32(sp)
    80001420:	01813483          	ld	s1,24(sp)
    80001424:	01013903          	ld	s2,16(sp)
    80001428:	00813983          	ld	s3,8(sp)
    8000142c:	03010113          	addi	sp,sp,48
    80001430:	00008067          	ret
    } else stek = nullptr;
    80001434:	00000513          	li	a0,0
    80001438:	fc1ff06f          	j	800013f8 <_Z13thread_createPP3TCBPFvPvES2_+0x38>

000000008000143c <_Z17thread_create_cppPP3TCBPFvPvES2_>:

int thread_create_cpp(thread_t* handle, void(*start_routine)(void*), void* arg){
    8000143c:	fd010113          	addi	sp,sp,-48
    80001440:	02113423          	sd	ra,40(sp)
    80001444:	02813023          	sd	s0,32(sp)
    80001448:	00913c23          	sd	s1,24(sp)
    8000144c:	01213823          	sd	s2,16(sp)
    80001450:	01313423          	sd	s3,8(sp)
    80001454:	03010413          	addi	s0,sp,48
    80001458:	00050913          	mv	s2,a0
    8000145c:	00058493          	mv	s1,a1
    80001460:	00060993          	mv	s3,a2
    thread_t* rucka = handle;
    void(*poc_rut)(void*) = start_routine;
    void* argument = arg;
    void* stek;
    if(start_routine != nullptr){
    80001464:	04058663          	beqz	a1,800014b0 <_Z17thread_create_cppPP3TCBPFvPvES2_+0x74>
        stek = (uint64*)mem_alloc(DEFAULT_STACK_SIZE * sizeof(uint64));
    80001468:	00008537          	lui	a0,0x8
    8000146c:	00000097          	auipc	ra,0x0
    80001470:	f00080e7          	jalr	-256(ra) # 8000136c <_Z9mem_allocm>
    } else stek = nullptr;
    __asm__ volatile ("mv a4, %[stek]" : : [stek]"r" (stek));
    80001474:	00050713          	mv	a4,a0
    __asm__ volatile ("mv a3, %[arg]" : : [arg]"r" (argument));
    80001478:	00098693          	mv	a3,s3
    __asm__ volatile ("mv a2, %[poc_rut]" : : [poc_rut]"r" (poc_rut));
    8000147c:	00048613          	mv	a2,s1
    __asm__ volatile ("mv a1, %[adr]" : : [adr]"r" (rucka));
    80001480:	00090593          	mv	a1,s2
    __asm__ volatile ("li a0, 0x10");
    80001484:	01000513          	li	a0,16
    __asm__ volatile ("ecall");
    80001488:	00000073          	ecall
    int vrati;
    __asm__ volatile ("mv %[povratna], a0" : [povratna]"=r" (vrati));
    8000148c:	00050513          	mv	a0,a0
    return vrati;
}
    80001490:	0005051b          	sext.w	a0,a0
    80001494:	02813083          	ld	ra,40(sp)
    80001498:	02013403          	ld	s0,32(sp)
    8000149c:	01813483          	ld	s1,24(sp)
    800014a0:	01013903          	ld	s2,16(sp)
    800014a4:	00813983          	ld	s3,8(sp)
    800014a8:	03010113          	addi	sp,sp,48
    800014ac:	00008067          	ret
    } else stek = nullptr;
    800014b0:	00000513          	li	a0,0
    800014b4:	fc1ff06f          	j	80001474 <_Z17thread_create_cppPP3TCBPFvPvES2_+0x38>

00000000800014b8 <_Z11thread_exitv>:

int thread_exit(){
    800014b8:	ff010113          	addi	sp,sp,-16
    800014bc:	00813423          	sd	s0,8(sp)
    800014c0:	01010413          	addi	s0,sp,16
    __asm__ volatile ("li a0, 0x12");
    800014c4:	01200513          	li	a0,18
    __asm__ volatile ("ecall");
    800014c8:	00000073          	ecall
    int vrati;
    __asm__ volatile ("mv %[povratna], a0" : [povratna]"=r" (vrati));
    800014cc:	00050513          	mv	a0,a0
    return vrati;
}
    800014d0:	0005051b          	sext.w	a0,a0
    800014d4:	00813403          	ld	s0,8(sp)
    800014d8:	01010113          	addi	sp,sp,16
    800014dc:	00008067          	ret

00000000800014e0 <_Z15thread_dispatchv>:

void thread_dispatch(){
    800014e0:	ff010113          	addi	sp,sp,-16
    800014e4:	00813423          	sd	s0,8(sp)
    800014e8:	01010413          	addi	s0,sp,16
    __asm__ volatile ("li a0, 0x13");
    800014ec:	01300513          	li	a0,19
    __asm__ volatile ("ecall");
    800014f0:	00000073          	ecall
}
    800014f4:	00813403          	ld	s0,8(sp)
    800014f8:	01010113          	addi	sp,sp,16
    800014fc:	00008067          	ret

0000000080001500 <_Z11thread_joinP3TCB>:

void thread_join(thread_t handle){
    80001500:	ff010113          	addi	sp,sp,-16
    80001504:	00813423          	sd	s0,8(sp)
    80001508:	01010413          	addi	s0,sp,16
    thread_t rucka = handle;
    __asm__ volatile ("mv a1, %[rucka]" : : [rucka]"r" (rucka));
    8000150c:	00050593          	mv	a1,a0
    __asm__ volatile ("li a0, 0x14");
    80001510:	01400513          	li	a0,20
    __asm__ volatile ("ecall");
    80001514:	00000073          	ecall
}
    80001518:	00813403          	ld	s0,8(sp)
    8000151c:	01010113          	addi	sp,sp,16
    80001520:	00008067          	ret

0000000080001524 <_Z8sem_openPP7Semaforj>:

int sem_open(sem_t* handle, unsigned init){
    80001524:	ff010113          	addi	sp,sp,-16
    80001528:	00813423          	sd	s0,8(sp)
    8000152c:	01010413          	addi	s0,sp,16
    sem_t* rucka = handle;
    unsigned vrednost = init;
    __asm__ volatile ("mv a2, %[vr]" : : [vr]"r" (vrednost));
    80001530:	00058613          	mv	a2,a1
    __asm__ volatile ("mv a1, %[adr]" : : [adr]"r" (rucka));
    80001534:	00050593          	mv	a1,a0
    __asm__ volatile ("li a0, 0x21");
    80001538:	02100513          	li	a0,33
    __asm__ volatile ("ecall");
    8000153c:	00000073          	ecall
    int vrati;
    __asm__ volatile ("mv %[povratna], a0" : [povratna]"=r" (vrati));
    80001540:	00050513          	mv	a0,a0
    return vrati;
}
    80001544:	0005051b          	sext.w	a0,a0
    80001548:	00813403          	ld	s0,8(sp)
    8000154c:	01010113          	addi	sp,sp,16
    80001550:	00008067          	ret

0000000080001554 <_Z9sem_closeP7Semafor>:

int sem_close(sem_t handle){
    80001554:	ff010113          	addi	sp,sp,-16
    80001558:	00813423          	sd	s0,8(sp)
    8000155c:	01010413          	addi	s0,sp,16
    sem_t rucka = handle;
    __asm__ volatile ("mv a1, %[rucka]" : : [rucka]"r" (rucka));
    80001560:	00050593          	mv	a1,a0
    __asm__ volatile ("li a0, 0x22");
    80001564:	02200513          	li	a0,34
    __asm__ volatile ("ecall");
    80001568:	00000073          	ecall
    int vrati;
    __asm__ volatile ("mv %[povratna], a0" : [povratna]"=r" (vrati));
    8000156c:	00050513          	mv	a0,a0
    return vrati;
}
    80001570:	0005051b          	sext.w	a0,a0
    80001574:	00813403          	ld	s0,8(sp)
    80001578:	01010113          	addi	sp,sp,16
    8000157c:	00008067          	ret

0000000080001580 <_Z8sem_waitP7Semafor>:

int sem_wait(sem_t id){
    80001580:	ff010113          	addi	sp,sp,-16
    80001584:	00813423          	sd	s0,8(sp)
    80001588:	01010413          	addi	s0,sp,16
    sem_t rucka = id;
    __asm__ volatile ("mv a1, %[rucka]" : : [rucka]"r" (rucka));
    8000158c:	00050593          	mv	a1,a0
    __asm__ volatile ("li a0, 0x23");
    80001590:	02300513          	li	a0,35
    __asm__ volatile ("ecall");
    80001594:	00000073          	ecall
    int vrati;
    __asm__ volatile ("mv %[povratna], a0" : [povratna]"=r" (vrati));
    80001598:	00050513          	mv	a0,a0
    return vrati;
}
    8000159c:	0005051b          	sext.w	a0,a0
    800015a0:	00813403          	ld	s0,8(sp)
    800015a4:	01010113          	addi	sp,sp,16
    800015a8:	00008067          	ret

00000000800015ac <_Z10sem_signalP7Semafor>:

int sem_signal(sem_t id){
    800015ac:	ff010113          	addi	sp,sp,-16
    800015b0:	00813423          	sd	s0,8(sp)
    800015b4:	01010413          	addi	s0,sp,16
    sem_t rucka = id;
    __asm__ volatile ("mv a1, %[rucka]" : : [rucka]"r" (rucka));
    800015b8:	00050593          	mv	a1,a0
    __asm__ volatile ("li a0, 0x24");
    800015bc:	02400513          	li	a0,36
    __asm__ volatile ("ecall");
    800015c0:	00000073          	ecall
    int vrati;
    __asm__ volatile ("mv %[povratna], a0" : [povratna]"=r" (vrati));
    800015c4:	00050513          	mv	a0,a0
    return vrati;
}
    800015c8:	0005051b          	sext.w	a0,a0
    800015cc:	00813403          	ld	s0,8(sp)
    800015d0:	01010113          	addi	sp,sp,16
    800015d4:	00008067          	ret

00000000800015d8 <_Z10time_sleepm>:

int time_sleep(time_t slice){
    800015d8:	ff010113          	addi	sp,sp,-16
    800015dc:	00813423          	sd	s0,8(sp)
    800015e0:	01010413          	addi	s0,sp,16
    time_t vreme = slice;
    __asm__ volatile ("mv a1, %[vreme]" : : [vreme]"r" (vreme));
    800015e4:	00050593          	mv	a1,a0
    __asm__ volatile ("li a0, 0x31");
    800015e8:	03100513          	li	a0,49
    __asm__ volatile ("ecall");
    800015ec:	00000073          	ecall
    int vrati;
    __asm__ volatile ("mv %[povratna], a0" : [povratna]"=r" (vrati));
    800015f0:	00050513          	mv	a0,a0
    return vrati;
}
    800015f4:	0005051b          	sext.w	a0,a0
    800015f8:	00813403          	ld	s0,8(sp)
    800015fc:	01010113          	addi	sp,sp,16
    80001600:	00008067          	ret

0000000080001604 <_Z4getcv>:

char getc(){
    80001604:	ff010113          	addi	sp,sp,-16
    80001608:	00813423          	sd	s0,8(sp)
    8000160c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("li a0, 0x41");
    80001610:	04100513          	li	a0,65
    __asm__ volatile ("ecall");
    80001614:	00000073          	ecall
    char vrati;
    __asm__ volatile ("mv %[povratna], a0" : [povratna]"=r" (vrati));
    80001618:	00050513          	mv	a0,a0
    return vrati;
}
    8000161c:	0ff57513          	andi	a0,a0,255
    80001620:	00813403          	ld	s0,8(sp)
    80001624:	01010113          	addi	sp,sp,16
    80001628:	00008067          	ret

000000008000162c <_Z4putcc>:

void putc(char c){
    8000162c:	ff010113          	addi	sp,sp,-16
    80001630:	00813423          	sd	s0,8(sp)
    80001634:	01010413          	addi	s0,sp,16
    char chr = c;
    __asm__ volatile ("mv a1, %[chr]" : : [chr]"r" (chr));
    80001638:	00050593          	mv	a1,a0
    __asm__ volatile ("li a0, 0x42");
    8000163c:	04200513          	li	a0,66
    __asm__ volatile ("ecall");
    80001640:	00000073          	ecall
    80001644:	00813403          	ld	s0,8(sp)
    80001648:	01010113          	addi	sp,sp,16
    8000164c:	00008067          	ret

0000000080001650 <_ZN3STL15DohvatiInstancuEv>:
#include "../h/STL.hpp"

STL* STL::stl = nullptr;

STL *STL::DohvatiInstancu() {
    if(stl == nullptr){
    80001650:	0000a797          	auipc	a5,0xa
    80001654:	0907b783          	ld	a5,144(a5) # 8000b6e0 <_ZN3STL3stlE>
    80001658:	00078863          	beqz	a5,80001668 <_ZN3STL15DohvatiInstancuEv+0x18>
        stl = (STL*) AlokatorMemorije::dohvatiInstancu()->mem_alloc(sizeof(STL));
        stl->glava = nullptr;
    }
    return stl;
}
    8000165c:	0000a517          	auipc	a0,0xa
    80001660:	08453503          	ld	a0,132(a0) # 8000b6e0 <_ZN3STL3stlE>
    80001664:	00008067          	ret
STL *STL::DohvatiInstancu() {
    80001668:	ff010113          	addi	sp,sp,-16
    8000166c:	00113423          	sd	ra,8(sp)
    80001670:	00813023          	sd	s0,0(sp)
    80001674:	01010413          	addi	s0,sp,16
        stl = (STL*) AlokatorMemorije::dohvatiInstancu()->mem_alloc(sizeof(STL));
    80001678:	00001097          	auipc	ra,0x1
    8000167c:	dd8080e7          	jalr	-552(ra) # 80002450 <_ZN16AlokatorMemorije15dohvatiInstancuEv>
    80001680:	00800593          	li	a1,8
    80001684:	00001097          	auipc	ra,0x1
    80001688:	e50080e7          	jalr	-432(ra) # 800024d4 <_ZN16AlokatorMemorije9mem_allocEm>
    8000168c:	0000a797          	auipc	a5,0xa
    80001690:	04a7ba23          	sd	a0,84(a5) # 8000b6e0 <_ZN3STL3stlE>
        stl->glava = nullptr;
    80001694:	00053023          	sd	zero,0(a0)
}
    80001698:	0000a517          	auipc	a0,0xa
    8000169c:	04853503          	ld	a0,72(a0) # 8000b6e0 <_ZN3STL3stlE>
    800016a0:	00813083          	ld	ra,8(sp)
    800016a4:	00013403          	ld	s0,0(sp)
    800016a8:	01010113          	addi	sp,sp,16
    800016ac:	00008067          	ret

00000000800016b0 <_ZN3STL5StaviEm>:

void STL::Stavi(time_t vreme) {
    800016b0:	fe010113          	addi	sp,sp,-32
    800016b4:	00113c23          	sd	ra,24(sp)
    800016b8:	00813823          	sd	s0,16(sp)
    800016bc:	00913423          	sd	s1,8(sp)
    800016c0:	01213023          	sd	s2,0(sp)
    800016c4:	02010413          	addi	s0,sp,32
    800016c8:	00050493          	mv	s1,a0
    800016cc:	00058913          	mv	s2,a1
    Elem* cur, *last;
    Elem* nov = (Elem*)AlokatorMemorije::dohvatiInstancu()->mem_alloc(sizeof(Elem));
    800016d0:	00001097          	auipc	ra,0x1
    800016d4:	d80080e7          	jalr	-640(ra) # 80002450 <_ZN16AlokatorMemorije15dohvatiInstancuEv>
    800016d8:	01800593          	li	a1,24
    800016dc:	00001097          	auipc	ra,0x1
    800016e0:	df8080e7          	jalr	-520(ra) # 800024d4 <_ZN16AlokatorMemorije9mem_allocEm>
    nov->nit = TCB::running;
    800016e4:	0000a797          	auipc	a5,0xa
    800016e8:	f9c7b783          	ld	a5,-100(a5) # 8000b680 <_GLOBAL_OFFSET_TABLE_+0x48>
    800016ec:	0007b783          	ld	a5,0(a5)
    800016f0:	00f53023          	sd	a5,0(a0)
    nov->vreme = vreme;
    800016f4:	01253823          	sd	s2,16(a0)
    nov->sl = nullptr;
    800016f8:	00053423          	sd	zero,8(a0)
    for(cur = glava, last = nullptr;cur != nullptr;last = cur,cur = cur->sl){
    800016fc:	0004b783          	ld	a5,0(s1)
    80001700:	00000613          	li	a2,0
    80001704:	04078063          	beqz	a5,80001744 <_ZN3STL5StaviEm+0x94>
        if(cur->vreme >= nov->vreme){
    80001708:	0107b683          	ld	a3,16(a5)
    8000170c:	01053703          	ld	a4,16(a0)
    80001710:	00e6fc63          	bgeu	a3,a4,80001728 <_ZN3STL5StaviEm+0x78>
            else last->sl = nov;
            nov->sl = cur;
            cur->vreme -= nov->vreme;
            break;
        }
        else nov->vreme -= cur->vreme;
    80001714:	40d70733          	sub	a4,a4,a3
    80001718:	00e53823          	sd	a4,16(a0)
    for(cur = glava, last = nullptr;cur != nullptr;last = cur,cur = cur->sl){
    8000171c:	00078613          	mv	a2,a5
    80001720:	0087b783          	ld	a5,8(a5)
    80001724:	fe1ff06f          	j	80001704 <_ZN3STL5StaviEm+0x54>
            if(last == nullptr)glava = nov;
    80001728:	04060063          	beqz	a2,80001768 <_ZN3STL5StaviEm+0xb8>
            else last->sl = nov;
    8000172c:	00a63423          	sd	a0,8(a2)
            nov->sl = cur;
    80001730:	00f53423          	sd	a5,8(a0)
            cur->vreme -= nov->vreme;
    80001734:	01053683          	ld	a3,16(a0)
    80001738:	0107b703          	ld	a4,16(a5)
    8000173c:	40d70733          	sub	a4,a4,a3
    80001740:	00e7b823          	sd	a4,16(a5)
    }
    if(glava == nullptr)glava = nov;
    80001744:	0004b703          	ld	a4,0(s1)
    80001748:	02070463          	beqz	a4,80001770 <_ZN3STL5StaviEm+0xc0>
    else if(cur == nullptr)last->sl = nov;
    8000174c:	02078663          	beqz	a5,80001778 <_ZN3STL5StaviEm+0xc8>
}
    80001750:	01813083          	ld	ra,24(sp)
    80001754:	01013403          	ld	s0,16(sp)
    80001758:	00813483          	ld	s1,8(sp)
    8000175c:	00013903          	ld	s2,0(sp)
    80001760:	02010113          	addi	sp,sp,32
    80001764:	00008067          	ret
            if(last == nullptr)glava = nov;
    80001768:	00a4b023          	sd	a0,0(s1)
    8000176c:	fc5ff06f          	j	80001730 <_ZN3STL5StaviEm+0x80>
    if(glava == nullptr)glava = nov;
    80001770:	00a4b023          	sd	a0,0(s1)
    80001774:	fddff06f          	j	80001750 <_ZN3STL5StaviEm+0xa0>
    else if(cur == nullptr)last->sl = nov;
    80001778:	00a63423          	sd	a0,8(a2)
}
    8000177c:	fd5ff06f          	j	80001750 <_ZN3STL5StaviEm+0xa0>

0000000080001780 <_ZN3STL15SmanjiIOslobodiEv>:

void STL::SmanjiIOslobodi() {
    if(glava == nullptr)return;
    80001780:	00053783          	ld	a5,0(a0)
    80001784:	08078863          	beqz	a5,80001814 <_ZN3STL15SmanjiIOslobodiEv+0x94>
void STL::SmanjiIOslobodi() {
    80001788:	fe010113          	addi	sp,sp,-32
    8000178c:	00113c23          	sd	ra,24(sp)
    80001790:	00813823          	sd	s0,16(sp)
    80001794:	00913423          	sd	s1,8(sp)
    80001798:	01213023          	sd	s2,0(sp)
    8000179c:	02010413          	addi	s0,sp,32
    800017a0:	00050913          	mv	s2,a0
    glava->vreme--;
    800017a4:	0107b703          	ld	a4,16(a5)
    800017a8:	fff70713          	addi	a4,a4,-1
    800017ac:	00e7b823          	sd	a4,16(a5)
    while(glava != nullptr && glava->vreme == 0){
    800017b0:	00093483          	ld	s1,0(s2)
    800017b4:	04048463          	beqz	s1,800017fc <_ZN3STL15SmanjiIOslobodiEv+0x7c>
    800017b8:	0104b783          	ld	a5,16(s1)
    800017bc:	04079063          	bnez	a5,800017fc <_ZN3STL15SmanjiIOslobodiEv+0x7c>
        Elem* izbaci = glava;
        glava = glava->sl;
    800017c0:	0084b783          	ld	a5,8(s1)
    800017c4:	00f93023          	sd	a5,0(s2)
        izbaci->nit->setUspavan(false);
    800017c8:	0004b783          	ld	a5,0(s1)

    void setBlokiran(bool blokiran) {this->blokiran = blokiran;};

    bool isUspavan() const {return uspavan;};

    void setUspavan(bool uspavan) {this->uspavan = uspavan;};
    800017cc:	02078923          	sb	zero,50(a5)
        Scheduler::dohvatiInstancu()->Stavi(izbaci->nit);
    800017d0:	00000097          	auipc	ra,0x0
    800017d4:	070080e7          	jalr	112(ra) # 80001840 <_ZN9Scheduler15dohvatiInstancuEv>
    800017d8:	0004b583          	ld	a1,0(s1)
    800017dc:	00000097          	auipc	ra,0x0
    800017e0:	0f0080e7          	jalr	240(ra) # 800018cc <_ZN9Scheduler5StaviEP3TCB>
        AlokatorMemorije::dohvatiInstancu()->mem_free(izbaci);
    800017e4:	00001097          	auipc	ra,0x1
    800017e8:	c6c080e7          	jalr	-916(ra) # 80002450 <_ZN16AlokatorMemorije15dohvatiInstancuEv>
    800017ec:	00048593          	mv	a1,s1
    800017f0:	00001097          	auipc	ra,0x1
    800017f4:	e0c080e7          	jalr	-500(ra) # 800025fc <_ZN16AlokatorMemorije8mem_freeEPv>
    while(glava != nullptr && glava->vreme == 0){
    800017f8:	fb9ff06f          	j	800017b0 <_ZN3STL15SmanjiIOslobodiEv+0x30>
    }
}
    800017fc:	01813083          	ld	ra,24(sp)
    80001800:	01013403          	ld	s0,16(sp)
    80001804:	00813483          	ld	s1,8(sp)
    80001808:	00013903          	ld	s2,0(sp)
    8000180c:	02010113          	addi	sp,sp,32
    80001810:	00008067          	ret
    80001814:	00008067          	ret

0000000080001818 <_ZN9Scheduler18besposlenaFunkcijaEPv>:
#include "../h/Scheduler.hpp"

Scheduler* Scheduler::scheduler = nullptr;
TCB* Scheduler::bezposlenaNit = nullptr;

void Scheduler::besposlenaFunkcija(void *) {
    80001818:	ff010113          	addi	sp,sp,-16
    8000181c:	00813423          	sd	s0,8(sp)
    80001820:	01010413          	addi	s0,sp,16
//    changeUser();
        while(scheduler->glava == nullptr);
    80001824:	0000a797          	auipc	a5,0xa
    80001828:	ec47b783          	ld	a5,-316(a5) # 8000b6e8 <_ZN9Scheduler9schedulerE>
    8000182c:	0007b783          	ld	a5,0(a5)
    80001830:	fe078ae3          	beqz	a5,80001824 <_ZN9Scheduler18besposlenaFunkcijaEPv+0xc>
//        while(scheduler->glava)thread_dispatch();
}
    80001834:	00813403          	ld	s0,8(sp)
    80001838:	01010113          	addi	sp,sp,16
    8000183c:	00008067          	ret

0000000080001840 <_ZN9Scheduler15dohvatiInstancuEv>:

Scheduler *Scheduler::dohvatiInstancu() {
    if(scheduler == nullptr){
    80001840:	0000a797          	auipc	a5,0xa
    80001844:	ea87b783          	ld	a5,-344(a5) # 8000b6e8 <_ZN9Scheduler9schedulerE>
    80001848:	00078863          	beqz	a5,80001858 <_ZN9Scheduler15dohvatiInstancuEv+0x18>
        scheduler = (Scheduler*)AlokatorMemorije::dohvatiInstancu()->mem_alloc(sizeof(Scheduler));
        scheduler->memorija = AlokatorMemorije::dohvatiInstancu();
        scheduler->glava = scheduler->rep = nullptr;
    }
    return scheduler;
}
    8000184c:	0000a517          	auipc	a0,0xa
    80001850:	e9c53503          	ld	a0,-356(a0) # 8000b6e8 <_ZN9Scheduler9schedulerE>
    80001854:	00008067          	ret
Scheduler *Scheduler::dohvatiInstancu() {
    80001858:	fe010113          	addi	sp,sp,-32
    8000185c:	00113c23          	sd	ra,24(sp)
    80001860:	00813823          	sd	s0,16(sp)
    80001864:	00913423          	sd	s1,8(sp)
    80001868:	01213023          	sd	s2,0(sp)
    8000186c:	02010413          	addi	s0,sp,32
        scheduler = (Scheduler*)AlokatorMemorije::dohvatiInstancu()->mem_alloc(sizeof(Scheduler));
    80001870:	00001097          	auipc	ra,0x1
    80001874:	be0080e7          	jalr	-1056(ra) # 80002450 <_ZN16AlokatorMemorije15dohvatiInstancuEv>
    80001878:	01800593          	li	a1,24
    8000187c:	00001097          	auipc	ra,0x1
    80001880:	c58080e7          	jalr	-936(ra) # 800024d4 <_ZN16AlokatorMemorije9mem_allocEm>
    80001884:	00050493          	mv	s1,a0
    80001888:	0000a917          	auipc	s2,0xa
    8000188c:	e6090913          	addi	s2,s2,-416 # 8000b6e8 <_ZN9Scheduler9schedulerE>
    80001890:	00a93023          	sd	a0,0(s2)
        scheduler->memorija = AlokatorMemorije::dohvatiInstancu();
    80001894:	00001097          	auipc	ra,0x1
    80001898:	bbc080e7          	jalr	-1092(ra) # 80002450 <_ZN16AlokatorMemorije15dohvatiInstancuEv>
    8000189c:	00a4b823          	sd	a0,16(s1)
        scheduler->glava = scheduler->rep = nullptr;
    800018a0:	00093783          	ld	a5,0(s2)
    800018a4:	0007b423          	sd	zero,8(a5)
    800018a8:	0007b023          	sd	zero,0(a5)
}
    800018ac:	0000a517          	auipc	a0,0xa
    800018b0:	e3c53503          	ld	a0,-452(a0) # 8000b6e8 <_ZN9Scheduler9schedulerE>
    800018b4:	01813083          	ld	ra,24(sp)
    800018b8:	01013403          	ld	s0,16(sp)
    800018bc:	00813483          	ld	s1,8(sp)
    800018c0:	00013903          	ld	s2,0(sp)
    800018c4:	02010113          	addi	sp,sp,32
    800018c8:	00008067          	ret

00000000800018cc <_ZN9Scheduler5StaviEP3TCB>:

void Scheduler::Stavi(TCB *tcb) {
    800018cc:	fe010113          	addi	sp,sp,-32
    800018d0:	00113c23          	sd	ra,24(sp)
    800018d4:	00813823          	sd	s0,16(sp)
    800018d8:	00913423          	sd	s1,8(sp)
    800018dc:	01213023          	sd	s2,0(sp)
    800018e0:	02010413          	addi	s0,sp,32
    800018e4:	00050493          	mv	s1,a0
    800018e8:	00058913          	mv	s2,a1
    Clan* nov = (Clan*)scheduler->memorija->mem_alloc(sizeof(Clan));
    800018ec:	01000593          	li	a1,16
    800018f0:	0000a797          	auipc	a5,0xa
    800018f4:	df87b783          	ld	a5,-520(a5) # 8000b6e8 <_ZN9Scheduler9schedulerE>
    800018f8:	0107b503          	ld	a0,16(a5)
    800018fc:	00001097          	auipc	ra,0x1
    80001900:	bd8080e7          	jalr	-1064(ra) # 800024d4 <_ZN16AlokatorMemorije9mem_allocEm>
    nov->sl = nullptr;
    80001904:	00053023          	sd	zero,0(a0)
    nov->tcb = tcb;
    80001908:	01253423          	sd	s2,8(a0)
    if(rep == nullptr){
    8000190c:	0084b783          	ld	a5,8(s1)
    80001910:	02078663          	beqz	a5,8000193c <_ZN9Scheduler5StaviEP3TCB+0x70>
        rep = glava = nov;
        return;
    }
    rep->sl = nov;
    80001914:	00a7b023          	sd	a0,0(a5)
    rep = rep->sl;
    80001918:	0084b783          	ld	a5,8(s1)
    8000191c:	0007b783          	ld	a5,0(a5)
    80001920:	00f4b423          	sd	a5,8(s1)
}
    80001924:	01813083          	ld	ra,24(sp)
    80001928:	01013403          	ld	s0,16(sp)
    8000192c:	00813483          	ld	s1,8(sp)
    80001930:	00013903          	ld	s2,0(sp)
    80001934:	02010113          	addi	sp,sp,32
    80001938:	00008067          	ret
        rep = glava = nov;
    8000193c:	00a4b023          	sd	a0,0(s1)
    80001940:	00a4b423          	sd	a0,8(s1)
        return;
    80001944:	fe1ff06f          	j	80001924 <_ZN9Scheduler5StaviEP3TCB+0x58>

0000000080001948 <_ZN9Scheduler4UzmiEv>:

TCB *Scheduler::Uzmi() {
    80001948:	fe010113          	addi	sp,sp,-32
    8000194c:	00113c23          	sd	ra,24(sp)
    80001950:	00813823          	sd	s0,16(sp)
    80001954:	00913423          	sd	s1,8(sp)
    80001958:	02010413          	addi	s0,sp,32
    if(glava == nullptr){
    8000195c:	00053583          	ld	a1,0(a0)
    80001960:	04058063          	beqz	a1,800019a0 <_ZN9Scheduler4UzmiEv+0x58>
        if(bezposlenaNit)delete bezposlenaNit;
        thread_create_cpp(&bezposlenaNit, besposlenaFunkcija, nullptr);
        return bezposlenaNit;
    }
    TCB* vrati = glava->tcb;
    80001964:	0085b483          	ld	s1,8(a1)
    Clan* oslobodi = glava;
    glava = glava->sl;
    80001968:	0005b783          	ld	a5,0(a1)
    8000196c:	00f53023          	sd	a5,0(a0)
    if(glava == nullptr)rep = glava;
    80001970:	08078263          	beqz	a5,800019f4 <_ZN9Scheduler4UzmiEv+0xac>
    scheduler->memorija->mem_free(oslobodi);
    80001974:	0000a797          	auipc	a5,0xa
    80001978:	d747b783          	ld	a5,-652(a5) # 8000b6e8 <_ZN9Scheduler9schedulerE>
    8000197c:	0107b503          	ld	a0,16(a5)
    80001980:	00001097          	auipc	ra,0x1
    80001984:	c7c080e7          	jalr	-900(ra) # 800025fc <_ZN16AlokatorMemorije8mem_freeEPv>
    return vrati;
}
    80001988:	00048513          	mv	a0,s1
    8000198c:	01813083          	ld	ra,24(sp)
    80001990:	01013403          	ld	s0,16(sp)
    80001994:	00813483          	ld	s1,8(sp)
    80001998:	02010113          	addi	sp,sp,32
    8000199c:	00008067          	ret
        if(bezposlenaNit)delete bezposlenaNit;
    800019a0:	0000a497          	auipc	s1,0xa
    800019a4:	d504b483          	ld	s1,-688(s1) # 8000b6f0 <_ZN9Scheduler13bezposlenaNitE>
    800019a8:	02048263          	beqz	s1,800019cc <_ZN9Scheduler4UzmiEv+0x84>

    static void join(thread_t handle);

    static TCB *running;

    ~TCB() { AlokatorMemorije::dohvatiInstancu()->mem_free(stek);}
    800019ac:	00001097          	auipc	ra,0x1
    800019b0:	aa4080e7          	jalr	-1372(ra) # 80002450 <_ZN16AlokatorMemorije15dohvatiInstancuEv>
    800019b4:	0084b583          	ld	a1,8(s1)
    800019b8:	00001097          	auipc	ra,0x1
    800019bc:	c44080e7          	jalr	-956(ra) # 800025fc <_ZN16AlokatorMemorije8mem_freeEPv>
    800019c0:	00048513          	mv	a0,s1
    800019c4:	00000097          	auipc	ra,0x0
    800019c8:	444080e7          	jalr	1092(ra) # 80001e08 <_ZdlPv>
        thread_create_cpp(&bezposlenaNit, besposlenaFunkcija, nullptr);
    800019cc:	00000613          	li	a2,0
    800019d0:	00000597          	auipc	a1,0x0
    800019d4:	e4858593          	addi	a1,a1,-440 # 80001818 <_ZN9Scheduler18besposlenaFunkcijaEPv>
    800019d8:	0000a517          	auipc	a0,0xa
    800019dc:	d1850513          	addi	a0,a0,-744 # 8000b6f0 <_ZN9Scheduler13bezposlenaNitE>
    800019e0:	00000097          	auipc	ra,0x0
    800019e4:	a5c080e7          	jalr	-1444(ra) # 8000143c <_Z17thread_create_cppPP3TCBPFvPvES2_>
        return bezposlenaNit;
    800019e8:	0000a497          	auipc	s1,0xa
    800019ec:	d084b483          	ld	s1,-760(s1) # 8000b6f0 <_ZN9Scheduler13bezposlenaNitE>
    800019f0:	f99ff06f          	j	80001988 <_ZN9Scheduler4UzmiEv+0x40>
    if(glava == nullptr)rep = glava;
    800019f4:	00f53423          	sd	a5,8(a0)
    800019f8:	f7dff06f          	j	80001974 <_ZN9Scheduler4UzmiEv+0x2c>

00000000800019fc <_ZN7Semafor13OtvoriSemaforEj>:
#include "../h/Semafor.hpp"

Semafor *Semafor::OtvoriSemafor(unsigned int init) {
    800019fc:	fe010113          	addi	sp,sp,-32
    80001a00:	00113c23          	sd	ra,24(sp)
    80001a04:	00813823          	sd	s0,16(sp)
    80001a08:	00913423          	sd	s1,8(sp)
    80001a0c:	02010413          	addi	s0,sp,32
    80001a10:	00050493          	mv	s1,a0
    Semafor* vrati = (Semafor*)AlokatorMemorije::dohvatiInstancu()->mem_alloc(sizeof(Semafor));
    80001a14:	00001097          	auipc	ra,0x1
    80001a18:	a3c080e7          	jalr	-1476(ra) # 80002450 <_ZN16AlokatorMemorije15dohvatiInstancuEv>
    80001a1c:	01800593          	li	a1,24
    80001a20:	00001097          	auipc	ra,0x1
    80001a24:	ab4080e7          	jalr	-1356(ra) # 800024d4 <_ZN16AlokatorMemorije9mem_allocEm>
    vrati->vrednost = init;
    80001a28:	00952023          	sw	s1,0(a0)
    vrati->glava = vrati->rep = nullptr;
    80001a2c:	00053823          	sd	zero,16(a0)
    80001a30:	00053423          	sd	zero,8(a0)
    return vrati;
}
    80001a34:	01813083          	ld	ra,24(sp)
    80001a38:	01013403          	ld	s0,16(sp)
    80001a3c:	00813483          	ld	s1,8(sp)
    80001a40:	02010113          	addi	sp,sp,32
    80001a44:	00008067          	ret

0000000080001a48 <_ZN7Semafor4WaitEv>:

int Semafor::Wait() {
    vrednost--;
    80001a48:	00052783          	lw	a5,0(a0)
    80001a4c:	fff7879b          	addiw	a5,a5,-1
    80001a50:	00f52023          	sw	a5,0(a0)
    if(vrednost < 0){
    80001a54:	02079713          	slli	a4,a5,0x20
    80001a58:	00074663          	bltz	a4,80001a64 <_ZN7Semafor4WaitEv+0x1c>
            rep = rep->sl;
        }
        TCB::running->setBlokiran(true);
        TCB::dispatch();
    }
    return 0;
    80001a5c:	00000513          	li	a0,0
}
    80001a60:	00008067          	ret
int Semafor::Wait() {
    80001a64:	fe010113          	addi	sp,sp,-32
    80001a68:	00113c23          	sd	ra,24(sp)
    80001a6c:	00813823          	sd	s0,16(sp)
    80001a70:	00913423          	sd	s1,8(sp)
    80001a74:	02010413          	addi	s0,sp,32
    80001a78:	00050493          	mv	s1,a0
        if(TCB::running->isGotov())return -1;
    80001a7c:	0000a797          	auipc	a5,0xa
    80001a80:	c047b783          	ld	a5,-1020(a5) # 8000b680 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001a84:	0007b783          	ld	a5,0(a5)
    bool isGotov() const {return gotov;};
    80001a88:	0307c783          	lbu	a5,48(a5)
    80001a8c:	08079263          	bnez	a5,80001b10 <_ZN7Semafor4WaitEv+0xc8>
        Blokiran* nov = (Blokiran*)AlokatorMemorije::dohvatiInstancu()->mem_alloc(sizeof(Blokiran));
    80001a90:	00001097          	auipc	ra,0x1
    80001a94:	9c0080e7          	jalr	-1600(ra) # 80002450 <_ZN16AlokatorMemorije15dohvatiInstancuEv>
    80001a98:	01000593          	li	a1,16
    80001a9c:	00001097          	auipc	ra,0x1
    80001aa0:	a38080e7          	jalr	-1480(ra) # 800024d4 <_ZN16AlokatorMemorije9mem_allocEm>
        nov->sl = nullptr;
    80001aa4:	00053023          	sd	zero,0(a0)
        nov->nit = TCB::running;
    80001aa8:	0000a797          	auipc	a5,0xa
    80001aac:	bd87b783          	ld	a5,-1064(a5) # 8000b680 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001ab0:	0007b783          	ld	a5,0(a5)
    80001ab4:	00f53423          	sd	a5,8(a0)
        if(rep == nullptr)rep = glava = nov;
    80001ab8:	0104b783          	ld	a5,16(s1)
    80001abc:	04078463          	beqz	a5,80001b04 <_ZN7Semafor4WaitEv+0xbc>
            rep->sl = nov;
    80001ac0:	00a7b023          	sd	a0,0(a5)
            rep = rep->sl;
    80001ac4:	0104b783          	ld	a5,16(s1)
    80001ac8:	0007b783          	ld	a5,0(a5)
    80001acc:	00f4b823          	sd	a5,16(s1)
        TCB::running->setBlokiran(true);
    80001ad0:	0000a797          	auipc	a5,0xa
    80001ad4:	bb07b783          	ld	a5,-1104(a5) # 8000b680 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001ad8:	0007b783          	ld	a5,0(a5)
    void setBlokiran(bool blokiran) {this->blokiran = blokiran;};
    80001adc:	00100713          	li	a4,1
    80001ae0:	02e788a3          	sb	a4,49(a5)
        TCB::dispatch();
    80001ae4:	00001097          	auipc	ra,0x1
    80001ae8:	0a0080e7          	jalr	160(ra) # 80002b84 <_ZN3TCB8dispatchEv>
    return 0;
    80001aec:	00000513          	li	a0,0
}
    80001af0:	01813083          	ld	ra,24(sp)
    80001af4:	01013403          	ld	s0,16(sp)
    80001af8:	00813483          	ld	s1,8(sp)
    80001afc:	02010113          	addi	sp,sp,32
    80001b00:	00008067          	ret
        if(rep == nullptr)rep = glava = nov;
    80001b04:	00a4b423          	sd	a0,8(s1)
    80001b08:	00a4b823          	sd	a0,16(s1)
    80001b0c:	fc5ff06f          	j	80001ad0 <_ZN7Semafor4WaitEv+0x88>
        if(TCB::running->isGotov())return -1;
    80001b10:	fff00513          	li	a0,-1
    80001b14:	fddff06f          	j	80001af0 <_ZN7Semafor4WaitEv+0xa8>

0000000080001b18 <_ZN7Semafor6SignalEv>:

void Semafor::Signal() {
    vrednost++;
    80001b18:	00052783          	lw	a5,0(a0)
    80001b1c:	0017879b          	addiw	a5,a5,1
    80001b20:	0007871b          	sext.w	a4,a5
    80001b24:	00f52023          	sw	a5,0(a0)
    if(vrednost < 1){
    80001b28:	00e05463          	blez	a4,80001b30 <_ZN7Semafor6SignalEv+0x18>
    80001b2c:	00008067          	ret
void Semafor::Signal() {
    80001b30:	fe010113          	addi	sp,sp,-32
    80001b34:	00113c23          	sd	ra,24(sp)
    80001b38:	00813823          	sd	s0,16(sp)
    80001b3c:	00913423          	sd	s1,8(sp)
    80001b40:	01213023          	sd	s2,0(sp)
    80001b44:	02010413          	addi	s0,sp,32
        Blokiran* uzet = glava;
    80001b48:	00853483          	ld	s1,8(a0)
        TCB* nit = uzet->nit;
    80001b4c:	0084b903          	ld	s2,8(s1)
        if(rep == glava)rep = nullptr;
    80001b50:	01053783          	ld	a5,16(a0)
    80001b54:	04978863          	beq	a5,s1,80001ba4 <_ZN7Semafor6SignalEv+0x8c>
        glava = glava->sl;
    80001b58:	0004b783          	ld	a5,0(s1)
    80001b5c:	00f53423          	sd	a5,8(a0)
    80001b60:	020908a3          	sb	zero,49(s2)
        nit->setBlokiran(false);
        AlokatorMemorije::dohvatiInstancu()->mem_free(uzet);
    80001b64:	00001097          	auipc	ra,0x1
    80001b68:	8ec080e7          	jalr	-1812(ra) # 80002450 <_ZN16AlokatorMemorije15dohvatiInstancuEv>
    80001b6c:	00048593          	mv	a1,s1
    80001b70:	00001097          	auipc	ra,0x1
    80001b74:	a8c080e7          	jalr	-1396(ra) # 800025fc <_ZN16AlokatorMemorije8mem_freeEPv>
        Scheduler::dohvatiInstancu()->Stavi(nit);
    80001b78:	00000097          	auipc	ra,0x0
    80001b7c:	cc8080e7          	jalr	-824(ra) # 80001840 <_ZN9Scheduler15dohvatiInstancuEv>
    80001b80:	00090593          	mv	a1,s2
    80001b84:	00000097          	auipc	ra,0x0
    80001b88:	d48080e7          	jalr	-696(ra) # 800018cc <_ZN9Scheduler5StaviEP3TCB>
    }
}
    80001b8c:	01813083          	ld	ra,24(sp)
    80001b90:	01013403          	ld	s0,16(sp)
    80001b94:	00813483          	ld	s1,8(sp)
    80001b98:	00013903          	ld	s2,0(sp)
    80001b9c:	02010113          	addi	sp,sp,32
    80001ba0:	00008067          	ret
        if(rep == glava)rep = nullptr;
    80001ba4:	00053823          	sd	zero,16(a0)
    80001ba8:	fb1ff06f          	j	80001b58 <_ZN7Semafor6SignalEv+0x40>

0000000080001bac <_ZN7Semafor14ZatvoriSemaforEPS_>:

void Semafor::ZatvoriSemafor(Semafor* semafor) {
    80001bac:	fe010113          	addi	sp,sp,-32
    80001bb0:	00113c23          	sd	ra,24(sp)
    80001bb4:	00813823          	sd	s0,16(sp)
    80001bb8:	00913423          	sd	s1,8(sp)
    80001bbc:	02010413          	addi	s0,sp,32
    80001bc0:	00050493          	mv	s1,a0
    while(semafor->glava != nullptr)semafor->Signal();
    80001bc4:	0084b783          	ld	a5,8(s1)
    80001bc8:	00078a63          	beqz	a5,80001bdc <_ZN7Semafor14ZatvoriSemaforEPS_+0x30>
    80001bcc:	00048513          	mv	a0,s1
    80001bd0:	00000097          	auipc	ra,0x0
    80001bd4:	f48080e7          	jalr	-184(ra) # 80001b18 <_ZN7Semafor6SignalEv>
    80001bd8:	fedff06f          	j	80001bc4 <_ZN7Semafor14ZatvoriSemaforEPS_+0x18>
    AlokatorMemorije::dohvatiInstancu()->mem_free(semafor);
    80001bdc:	00001097          	auipc	ra,0x1
    80001be0:	874080e7          	jalr	-1932(ra) # 80002450 <_ZN16AlokatorMemorije15dohvatiInstancuEv>
    80001be4:	00048593          	mv	a1,s1
    80001be8:	00001097          	auipc	ra,0x1
    80001bec:	a14080e7          	jalr	-1516(ra) # 800025fc <_ZN16AlokatorMemorije8mem_freeEPv>
}
    80001bf0:	01813083          	ld	ra,24(sp)
    80001bf4:	01013403          	ld	s0,16(sp)
    80001bf8:	00813483          	ld	s1,8(sp)
    80001bfc:	02010113          	addi	sp,sp,32
    80001c00:	00008067          	ret

0000000080001c04 <NitKonzola>:
    return 0;
}

void NitKonzola(void* a){
    while(true){
        if(*((char*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT){
    80001c04:	0000a797          	auipc	a5,0xa
    80001c08:	a447b783          	ld	a5,-1468(a5) # 8000b648 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001c0c:	0007b783          	ld	a5,0(a5)
    80001c10:	0007c783          	lbu	a5,0(a5)
    80001c14:	0207f793          	andi	a5,a5,32
    80001c18:	fe0786e3          	beqz	a5,80001c04 <NitKonzola>
void NitKonzola(void* a){
    80001c1c:	fe010113          	addi	sp,sp,-32
    80001c20:	00113c23          	sd	ra,24(sp)
    80001c24:	00813823          	sd	s0,16(sp)
    80001c28:	00913423          	sd	s1,8(sp)
    80001c2c:	02010413          	addi	s0,sp,32
            *((char*)CONSOLE_TX_DATA) = RiscV::out->getc();
    80001c30:	0000a797          	auipc	a5,0xa
    80001c34:	a387b783          	ld	a5,-1480(a5) # 8000b668 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001c38:	0007b483          	ld	s1,0(a5)
    80001c3c:	0000a517          	auipc	a0,0xa
    80001c40:	abc53503          	ld	a0,-1348(a0) # 8000b6f8 <_ZN5RiscV3outE>
    80001c44:	00000097          	auipc	ra,0x0
    80001c48:	728080e7          	jalr	1832(ra) # 8000236c <_ZN11KruzniBafer4getcEv>
    80001c4c:	00a48023          	sb	a0,0(s1)
        if(*((char*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT){
    80001c50:	0000a797          	auipc	a5,0xa
    80001c54:	9f87b783          	ld	a5,-1544(a5) # 8000b648 <_GLOBAL_OFFSET_TABLE_+0x10>
    80001c58:	0007b783          	ld	a5,0(a5)
    80001c5c:	0007c783          	lbu	a5,0(a5)
    80001c60:	0207f793          	andi	a5,a5,32
    80001c64:	fe0786e3          	beqz	a5,80001c50 <NitKonzola+0x4c>
    80001c68:	fc9ff06f          	j	80001c30 <NitKonzola+0x2c>

0000000080001c6c <User>:
        }
    }
}

void User(void* a){
    80001c6c:	ff010113          	addi	sp,sp,-16
    80001c70:	00113423          	sd	ra,8(sp)
    80001c74:	00813023          	sd	s0,0(sp)
    80001c78:	01010413          	addi	s0,sp,16
    userMain();
    80001c7c:	00004097          	auipc	ra,0x4
    80001c80:	cbc080e7          	jalr	-836(ra) # 80005938 <_Z8userMainv>
    80001c84:	00813083          	ld	ra,8(sp)
    80001c88:	00013403          	ld	s0,0(sp)
    80001c8c:	01010113          	addi	sp,sp,16
    80001c90:	00008067          	ret

0000000080001c94 <main>:
int main(){
    80001c94:	fc010113          	addi	sp,sp,-64
    80001c98:	02113c23          	sd	ra,56(sp)
    80001c9c:	02813823          	sd	s0,48(sp)
    80001ca0:	02913423          	sd	s1,40(sp)
    80001ca4:	04010413          	addi	s0,sp,64
    RiscV::w_stvec((uint64) &RiscV::trap);
    80001ca8:	0000a797          	auipc	a5,0xa
    80001cac:	9e87b783          	ld	a5,-1560(a5) # 8000b690 <_GLOBAL_OFFSET_TABLE_+0x58>
inline void RiscV::w_sepc(uint64 sepc) {
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc]"r"(sepc));
}

inline void RiscV::w_stvec(uint64 stvec) {
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec]"r"(stvec));
    80001cb0:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrs stvec, 0x01");
    80001cb4:	1050e073          	csrsi	stvec,1
    thread_create_cpp(&nit, nullptr, nullptr);
    80001cb8:	00000613          	li	a2,0
    80001cbc:	00000593          	li	a1,0
    80001cc0:	fd840513          	addi	a0,s0,-40
    80001cc4:	fffff097          	auipc	ra,0xfffff
    80001cc8:	778080e7          	jalr	1912(ra) # 8000143c <_Z17thread_create_cppPP3TCBPFvPvES2_>
    TCB::running = nit;
    80001ccc:	0000a797          	auipc	a5,0xa
    80001cd0:	9b47b783          	ld	a5,-1612(a5) # 8000b680 <_GLOBAL_OFFSET_TABLE_+0x48>
    80001cd4:	fd843703          	ld	a4,-40(s0)
    80001cd8:	00e7b023          	sd	a4,0(a5)
    RiscV::in = KruzniBafer::NapraviInstancu();
    80001cdc:	00000097          	auipc	ra,0x0
    80001ce0:	5d0080e7          	jalr	1488(ra) # 800022ac <_ZN11KruzniBafer15NapraviInstancuEv>
    80001ce4:	0000a497          	auipc	s1,0xa
    80001ce8:	a1448493          	addi	s1,s1,-1516 # 8000b6f8 <_ZN5RiscV3outE>
    80001cec:	00a4b423          	sd	a0,8(s1)
    RiscV::out = KruzniBafer::NapraviInstancu();
    80001cf0:	00000097          	auipc	ra,0x0
    80001cf4:	5bc080e7          	jalr	1468(ra) # 800022ac <_ZN11KruzniBafer15NapraviInstancuEv>
    80001cf8:	00a4b023          	sd	a0,0(s1)
    thread_create(&obradi, NitKonzola, nullptr);
    80001cfc:	00000613          	li	a2,0
    80001d00:	00000597          	auipc	a1,0x0
    80001d04:	f0458593          	addi	a1,a1,-252 # 80001c04 <NitKonzola>
    80001d08:	fd040513          	addi	a0,s0,-48
    80001d0c:	fffff097          	auipc	ra,0xfffff
    80001d10:	6b4080e7          	jalr	1716(ra) # 800013c0 <_Z13thread_createPP3TCBPFvPvES2_>
    thread_create(&glavna, User, nullptr);
    80001d14:	00000613          	li	a2,0
    80001d18:	00000597          	auipc	a1,0x0
    80001d1c:	f5458593          	addi	a1,a1,-172 # 80001c6c <User>
    80001d20:	fc840513          	addi	a0,s0,-56
    80001d24:	fffff097          	auipc	ra,0xfffff
    80001d28:	69c080e7          	jalr	1692(ra) # 800013c0 <_Z13thread_createPP3TCBPFvPvES2_>
	thread_join(glavna);
    80001d2c:	fc843503          	ld	a0,-56(s0)
    80001d30:	fffff097          	auipc	ra,0xfffff
    80001d34:	7d0080e7          	jalr	2000(ra) # 80001500 <_Z11thread_joinP3TCB>
}
    80001d38:	00000513          	li	a0,0
    80001d3c:	03813083          	ld	ra,56(sp)
    80001d40:	03013403          	ld	s0,48(sp)
    80001d44:	02813483          	ld	s1,40(sp)
    80001d48:	04010113          	addi	sp,sp,64
    80001d4c:	00008067          	ret

0000000080001d50 <_ZN6Thread13threadWrapperEPv>:

Thread::Thread() {
    thread_create_cpp(&myHandle, threadWrapper, this);
}

void Thread::threadWrapper(void *thread) {
    80001d50:	ff010113          	addi	sp,sp,-16
    80001d54:	00113423          	sd	ra,8(sp)
    80001d58:	00813023          	sd	s0,0(sp)
    80001d5c:	01010413          	addi	s0,sp,16
    Thread* thr = (Thread*) thread;
    thr->run();
    80001d60:	00053783          	ld	a5,0(a0)
    80001d64:	0107b783          	ld	a5,16(a5)
    80001d68:	000780e7          	jalr	a5
}
    80001d6c:	00813083          	ld	ra,8(sp)
    80001d70:	00013403          	ld	s0,0(sp)
    80001d74:	01010113          	addi	sp,sp,16
    80001d78:	00008067          	ret

0000000080001d7c <_ZN14PeriodicThread15periodicWrapperEPv>:
        time_sleep(sl);
        delete handle;
    }
}

void PeriodicThread::periodicWrapper(void *thread) {
    80001d7c:	ff010113          	addi	sp,sp,-16
    80001d80:	00113423          	sd	ra,8(sp)
    80001d84:	00813023          	sd	s0,0(sp)
    80001d88:	01010413          	addi	s0,sp,16
    PeriodicThread* thr = (PeriodicThread*) thread;
    thr->periodicActivation();
    80001d8c:	00053783          	ld	a5,0(a0)
    80001d90:	0187b783          	ld	a5,24(a5)
    80001d94:	000780e7          	jalr	a5
}
    80001d98:	00813083          	ld	ra,8(sp)
    80001d9c:	00013403          	ld	s0,0(sp)
    80001da0:	01010113          	addi	sp,sp,16
    80001da4:	00008067          	ret

0000000080001da8 <_ZN9SemaphoreD1Ev>:
Semaphore::~Semaphore() {
    80001da8:	ff010113          	addi	sp,sp,-16
    80001dac:	00113423          	sd	ra,8(sp)
    80001db0:	00813023          	sd	s0,0(sp)
    80001db4:	01010413          	addi	s0,sp,16
    80001db8:	00009797          	auipc	a5,0x9
    80001dbc:	69878793          	addi	a5,a5,1688 # 8000b450 <_ZTV9Semaphore+0x10>
    80001dc0:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80001dc4:	00853503          	ld	a0,8(a0)
    80001dc8:	fffff097          	auipc	ra,0xfffff
    80001dcc:	78c080e7          	jalr	1932(ra) # 80001554 <_Z9sem_closeP7Semafor>
}
    80001dd0:	00813083          	ld	ra,8(sp)
    80001dd4:	00013403          	ld	s0,0(sp)
    80001dd8:	01010113          	addi	sp,sp,16
    80001ddc:	00008067          	ret

0000000080001de0 <_Znwm>:
void* operator new(size_t vel){
    80001de0:	ff010113          	addi	sp,sp,-16
    80001de4:	00113423          	sd	ra,8(sp)
    80001de8:	00813023          	sd	s0,0(sp)
    80001dec:	01010413          	addi	s0,sp,16
    return mem_alloc(vel);
    80001df0:	fffff097          	auipc	ra,0xfffff
    80001df4:	57c080e7          	jalr	1404(ra) # 8000136c <_Z9mem_allocm>
}
    80001df8:	00813083          	ld	ra,8(sp)
    80001dfc:	00013403          	ld	s0,0(sp)
    80001e00:	01010113          	addi	sp,sp,16
    80001e04:	00008067          	ret

0000000080001e08 <_ZdlPv>:
void operator delete (void* adr) noexcept {
    80001e08:	ff010113          	addi	sp,sp,-16
    80001e0c:	00113423          	sd	ra,8(sp)
    80001e10:	00813023          	sd	s0,0(sp)
    80001e14:	01010413          	addi	s0,sp,16
    mem_free(adr);
    80001e18:	fffff097          	auipc	ra,0xfffff
    80001e1c:	57c080e7          	jalr	1404(ra) # 80001394 <_Z8mem_freePv>
}
    80001e20:	00813083          	ld	ra,8(sp)
    80001e24:	00013403          	ld	s0,0(sp)
    80001e28:	01010113          	addi	sp,sp,16
    80001e2c:	00008067          	ret

0000000080001e30 <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    80001e30:	fe010113          	addi	sp,sp,-32
    80001e34:	00113c23          	sd	ra,24(sp)
    80001e38:	00813823          	sd	s0,16(sp)
    80001e3c:	00913423          	sd	s1,8(sp)
    80001e40:	02010413          	addi	s0,sp,32
    80001e44:	00009797          	auipc	a5,0x9
    80001e48:	5e478793          	addi	a5,a5,1508 # 8000b428 <_ZTV6Thread+0x10>
    80001e4c:	00f53023          	sd	a5,0(a0)
    delete myHandle;
    80001e50:	00853483          	ld	s1,8(a0)
    80001e54:	02048263          	beqz	s1,80001e78 <_ZN6ThreadD1Ev+0x48>
    ~TCB() { AlokatorMemorije::dohvatiInstancu()->mem_free(stek);}
    80001e58:	00000097          	auipc	ra,0x0
    80001e5c:	5f8080e7          	jalr	1528(ra) # 80002450 <_ZN16AlokatorMemorije15dohvatiInstancuEv>
    80001e60:	0084b583          	ld	a1,8(s1)
    80001e64:	00000097          	auipc	ra,0x0
    80001e68:	798080e7          	jalr	1944(ra) # 800025fc <_ZN16AlokatorMemorije8mem_freeEPv>
    80001e6c:	00048513          	mv	a0,s1
    80001e70:	00000097          	auipc	ra,0x0
    80001e74:	f98080e7          	jalr	-104(ra) # 80001e08 <_ZdlPv>
}
    80001e78:	01813083          	ld	ra,24(sp)
    80001e7c:	01013403          	ld	s0,16(sp)
    80001e80:	00813483          	ld	s1,8(sp)
    80001e84:	02010113          	addi	sp,sp,32
    80001e88:	00008067          	ret

0000000080001e8c <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001e8c:	fe010113          	addi	sp,sp,-32
    80001e90:	00113c23          	sd	ra,24(sp)
    80001e94:	00813823          	sd	s0,16(sp)
    80001e98:	00913423          	sd	s1,8(sp)
    80001e9c:	02010413          	addi	s0,sp,32
    80001ea0:	00050493          	mv	s1,a0
}
    80001ea4:	00000097          	auipc	ra,0x0
    80001ea8:	f8c080e7          	jalr	-116(ra) # 80001e30 <_ZN6ThreadD1Ev>
    80001eac:	00048513          	mv	a0,s1
    80001eb0:	00000097          	auipc	ra,0x0
    80001eb4:	f58080e7          	jalr	-168(ra) # 80001e08 <_ZdlPv>
    80001eb8:	01813083          	ld	ra,24(sp)
    80001ebc:	01013403          	ld	s0,16(sp)
    80001ec0:	00813483          	ld	s1,8(sp)
    80001ec4:	02010113          	addi	sp,sp,32
    80001ec8:	00008067          	ret

0000000080001ecc <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001ecc:	fe010113          	addi	sp,sp,-32
    80001ed0:	00113c23          	sd	ra,24(sp)
    80001ed4:	00813823          	sd	s0,16(sp)
    80001ed8:	00913423          	sd	s1,8(sp)
    80001edc:	02010413          	addi	s0,sp,32
    80001ee0:	00050493          	mv	s1,a0
}
    80001ee4:	00000097          	auipc	ra,0x0
    80001ee8:	ec4080e7          	jalr	-316(ra) # 80001da8 <_ZN9SemaphoreD1Ev>
    80001eec:	00048513          	mv	a0,s1
    80001ef0:	00000097          	auipc	ra,0x0
    80001ef4:	f18080e7          	jalr	-232(ra) # 80001e08 <_ZdlPv>
    80001ef8:	01813083          	ld	ra,24(sp)
    80001efc:	01013403          	ld	s0,16(sp)
    80001f00:	00813483          	ld	s1,8(sp)
    80001f04:	02010113          	addi	sp,sp,32
    80001f08:	00008067          	ret

0000000080001f0c <_ZN14PeriodicThread3runEv>:
void PeriodicThread::run() {
    80001f0c:	fc010113          	addi	sp,sp,-64
    80001f10:	02113c23          	sd	ra,56(sp)
    80001f14:	02813823          	sd	s0,48(sp)
    80001f18:	02913423          	sd	s1,40(sp)
    80001f1c:	03213023          	sd	s2,32(sp)
    80001f20:	01313c23          	sd	s3,24(sp)
    80001f24:	04010413          	addi	s0,sp,64
    80001f28:	00050913          	mv	s2,a0
    time_t sl = period;
    80001f2c:	02053983          	ld	s3,32(a0)
    80001f30:	0240006f          	j	80001f54 <_ZN14PeriodicThread3runEv+0x48>
    80001f34:	00000097          	auipc	ra,0x0
    80001f38:	51c080e7          	jalr	1308(ra) # 80002450 <_ZN16AlokatorMemorije15dohvatiInstancuEv>
    80001f3c:	0084b583          	ld	a1,8(s1)
    80001f40:	00000097          	auipc	ra,0x0
    80001f44:	6bc080e7          	jalr	1724(ra) # 800025fc <_ZN16AlokatorMemorije8mem_freeEPv>
        delete handle;
    80001f48:	00048513          	mv	a0,s1
    80001f4c:	00000097          	auipc	ra,0x0
    80001f50:	ebc080e7          	jalr	-324(ra) # 80001e08 <_ZdlPv>
    while(period){
    80001f54:	02093783          	ld	a5,32(s2)
    80001f58:	04078063          	beqz	a5,80001f98 <_ZN14PeriodicThread3runEv+0x8c>
        thread_create(&handle, periodicWrapper, this);
    80001f5c:	00090613          	mv	a2,s2
    80001f60:	00000597          	auipc	a1,0x0
    80001f64:	e1c58593          	addi	a1,a1,-484 # 80001d7c <_ZN14PeriodicThread15periodicWrapperEPv>
    80001f68:	fc840513          	addi	a0,s0,-56
    80001f6c:	fffff097          	auipc	ra,0xfffff
    80001f70:	454080e7          	jalr	1108(ra) # 800013c0 <_Z13thread_createPP3TCBPFvPvES2_>
        thread_join(handle);
    80001f74:	fc843503          	ld	a0,-56(s0)
    80001f78:	fffff097          	auipc	ra,0xfffff
    80001f7c:	588080e7          	jalr	1416(ra) # 80001500 <_Z11thread_joinP3TCB>
        time_sleep(sl);
    80001f80:	00098513          	mv	a0,s3
    80001f84:	fffff097          	auipc	ra,0xfffff
    80001f88:	654080e7          	jalr	1620(ra) # 800015d8 <_Z10time_sleepm>
        delete handle;
    80001f8c:	fc843483          	ld	s1,-56(s0)
    80001f90:	fa0492e3          	bnez	s1,80001f34 <_ZN14PeriodicThread3runEv+0x28>
    80001f94:	fc1ff06f          	j	80001f54 <_ZN14PeriodicThread3runEv+0x48>
}
    80001f98:	03813083          	ld	ra,56(sp)
    80001f9c:	03013403          	ld	s0,48(sp)
    80001fa0:	02813483          	ld	s1,40(sp)
    80001fa4:	02013903          	ld	s2,32(sp)
    80001fa8:	01813983          	ld	s3,24(sp)
    80001fac:	04010113          	addi	sp,sp,64
    80001fb0:	00008067          	ret

0000000080001fb4 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg) {
    80001fb4:	ff010113          	addi	sp,sp,-16
    80001fb8:	00113423          	sd	ra,8(sp)
    80001fbc:	00813023          	sd	s0,0(sp)
    80001fc0:	01010413          	addi	s0,sp,16
    80001fc4:	00009797          	auipc	a5,0x9
    80001fc8:	46478793          	addi	a5,a5,1124 # 8000b428 <_ZTV6Thread+0x10>
    80001fcc:	00f53023          	sd	a5,0(a0)
    thread_create_cpp(&myHandle, body, arg);
    80001fd0:	00850513          	addi	a0,a0,8
    80001fd4:	fffff097          	auipc	ra,0xfffff
    80001fd8:	468080e7          	jalr	1128(ra) # 8000143c <_Z17thread_create_cppPP3TCBPFvPvES2_>
}
    80001fdc:	00813083          	ld	ra,8(sp)
    80001fe0:	00013403          	ld	s0,0(sp)
    80001fe4:	01010113          	addi	sp,sp,16
    80001fe8:	00008067          	ret

0000000080001fec <_ZN6Thread5startEv>:
int Thread::start() {
    80001fec:	fe010113          	addi	sp,sp,-32
    80001ff0:	00113c23          	sd	ra,24(sp)
    80001ff4:	00813823          	sd	s0,16(sp)
    80001ff8:	00913423          	sd	s1,8(sp)
    80001ffc:	02010413          	addi	s0,sp,32
    80002000:	00050493          	mv	s1,a0
    Scheduler::dohvatiInstancu()->Stavi(myHandle);
    80002004:	00000097          	auipc	ra,0x0
    80002008:	83c080e7          	jalr	-1988(ra) # 80001840 <_ZN9Scheduler15dohvatiInstancuEv>
    8000200c:	0084b583          	ld	a1,8(s1)
    80002010:	00000097          	auipc	ra,0x0
    80002014:	8bc080e7          	jalr	-1860(ra) # 800018cc <_ZN9Scheduler5StaviEP3TCB>
}
    80002018:	00000513          	li	a0,0
    8000201c:	01813083          	ld	ra,24(sp)
    80002020:	01013403          	ld	s0,16(sp)
    80002024:	00813483          	ld	s1,8(sp)
    80002028:	02010113          	addi	sp,sp,32
    8000202c:	00008067          	ret

0000000080002030 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80002030:	ff010113          	addi	sp,sp,-16
    80002034:	00113423          	sd	ra,8(sp)
    80002038:	00813023          	sd	s0,0(sp)
    8000203c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002040:	fffff097          	auipc	ra,0xfffff
    80002044:	4a0080e7          	jalr	1184(ra) # 800014e0 <_Z15thread_dispatchv>
}
    80002048:	00813083          	ld	ra,8(sp)
    8000204c:	00013403          	ld	s0,0(sp)
    80002050:	01010113          	addi	sp,sp,16
    80002054:	00008067          	ret

0000000080002058 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80002058:	ff010113          	addi	sp,sp,-16
    8000205c:	00113423          	sd	ra,8(sp)
    80002060:	00813023          	sd	s0,0(sp)
    80002064:	01010413          	addi	s0,sp,16
    80002068:	00009797          	auipc	a5,0x9
    8000206c:	3c078793          	addi	a5,a5,960 # 8000b428 <_ZTV6Thread+0x10>
    80002070:	00f53023          	sd	a5,0(a0)
    thread_create_cpp(&myHandle, threadWrapper, this);
    80002074:	00050613          	mv	a2,a0
    80002078:	00000597          	auipc	a1,0x0
    8000207c:	cd858593          	addi	a1,a1,-808 # 80001d50 <_ZN6Thread13threadWrapperEPv>
    80002080:	00850513          	addi	a0,a0,8
    80002084:	fffff097          	auipc	ra,0xfffff
    80002088:	3b8080e7          	jalr	952(ra) # 8000143c <_Z17thread_create_cppPP3TCBPFvPvES2_>
}
    8000208c:	00813083          	ld	ra,8(sp)
    80002090:	00013403          	ld	s0,0(sp)
    80002094:	01010113          	addi	sp,sp,16
    80002098:	00008067          	ret

000000008000209c <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t slice) {
    8000209c:	ff010113          	addi	sp,sp,-16
    800020a0:	00113423          	sd	ra,8(sp)
    800020a4:	00813023          	sd	s0,0(sp)
    800020a8:	01010413          	addi	s0,sp,16
    return time_sleep(slice);
    800020ac:	fffff097          	auipc	ra,0xfffff
    800020b0:	52c080e7          	jalr	1324(ra) # 800015d8 <_Z10time_sleepm>
}
    800020b4:	00813083          	ld	ra,8(sp)
    800020b8:	00013403          	ld	s0,0(sp)
    800020bc:	01010113          	addi	sp,sp,16
    800020c0:	00008067          	ret

00000000800020c4 <_ZN6Thread4joinEv>:
    if(myHandle != nullptr)thread_join(myHandle);
    800020c4:	00853503          	ld	a0,8(a0)
    800020c8:	02050663          	beqz	a0,800020f4 <_ZN6Thread4joinEv+0x30>
void Thread::join() {
    800020cc:	ff010113          	addi	sp,sp,-16
    800020d0:	00113423          	sd	ra,8(sp)
    800020d4:	00813023          	sd	s0,0(sp)
    800020d8:	01010413          	addi	s0,sp,16
    if(myHandle != nullptr)thread_join(myHandle);
    800020dc:	fffff097          	auipc	ra,0xfffff
    800020e0:	424080e7          	jalr	1060(ra) # 80001500 <_Z11thread_joinP3TCB>
}
    800020e4:	00813083          	ld	ra,8(sp)
    800020e8:	00013403          	ld	s0,0(sp)
    800020ec:	01010113          	addi	sp,sp,16
    800020f0:	00008067          	ret
    800020f4:	00008067          	ret

00000000800020f8 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    800020f8:	ff010113          	addi	sp,sp,-16
    800020fc:	00113423          	sd	ra,8(sp)
    80002100:	00813023          	sd	s0,0(sp)
    80002104:	01010413          	addi	s0,sp,16
    80002108:	00009797          	auipc	a5,0x9
    8000210c:	34878793          	addi	a5,a5,840 # 8000b450 <_ZTV9Semaphore+0x10>
    80002110:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80002114:	00850513          	addi	a0,a0,8
    80002118:	fffff097          	auipc	ra,0xfffff
    8000211c:	40c080e7          	jalr	1036(ra) # 80001524 <_Z8sem_openPP7Semaforj>
}
    80002120:	00813083          	ld	ra,8(sp)
    80002124:	00013403          	ld	s0,0(sp)
    80002128:	01010113          	addi	sp,sp,16
    8000212c:	00008067          	ret

0000000080002130 <_ZN9Semaphore4waitEv>:
int Semaphore::wait() {
    80002130:	ff010113          	addi	sp,sp,-16
    80002134:	00113423          	sd	ra,8(sp)
    80002138:	00813023          	sd	s0,0(sp)
    8000213c:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80002140:	00853503          	ld	a0,8(a0)
    80002144:	fffff097          	auipc	ra,0xfffff
    80002148:	43c080e7          	jalr	1084(ra) # 80001580 <_Z8sem_waitP7Semafor>
}
    8000214c:	00813083          	ld	ra,8(sp)
    80002150:	00013403          	ld	s0,0(sp)
    80002154:	01010113          	addi	sp,sp,16
    80002158:	00008067          	ret

000000008000215c <_ZN9Semaphore6signalEv>:
int Semaphore::signal() {
    8000215c:	ff010113          	addi	sp,sp,-16
    80002160:	00113423          	sd	ra,8(sp)
    80002164:	00813023          	sd	s0,0(sp)
    80002168:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    8000216c:	00853503          	ld	a0,8(a0)
    80002170:	fffff097          	auipc	ra,0xfffff
    80002174:	43c080e7          	jalr	1084(ra) # 800015ac <_Z10sem_signalP7Semafor>
}
    80002178:	00813083          	ld	ra,8(sp)
    8000217c:	00013403          	ld	s0,0(sp)
    80002180:	01010113          	addi	sp,sp,16
    80002184:	00008067          	ret

0000000080002188 <_ZN7Console4getcEv>:
char Console::getc() {
    80002188:	ff010113          	addi	sp,sp,-16
    8000218c:	00113423          	sd	ra,8(sp)
    80002190:	00813023          	sd	s0,0(sp)
    80002194:	01010413          	addi	s0,sp,16
    return ::getc();
    80002198:	fffff097          	auipc	ra,0xfffff
    8000219c:	46c080e7          	jalr	1132(ra) # 80001604 <_Z4getcv>
}
    800021a0:	00813083          	ld	ra,8(sp)
    800021a4:	00013403          	ld	s0,0(sp)
    800021a8:	01010113          	addi	sp,sp,16
    800021ac:	00008067          	ret

00000000800021b0 <_ZN7Console4putcEc>:
void Console::putc(char c) {
    800021b0:	ff010113          	addi	sp,sp,-16
    800021b4:	00113423          	sd	ra,8(sp)
    800021b8:	00813023          	sd	s0,0(sp)
    800021bc:	01010413          	addi	s0,sp,16
    ::putc(c);
    800021c0:	fffff097          	auipc	ra,0xfffff
    800021c4:	46c080e7          	jalr	1132(ra) # 8000162c <_Z4putcc>
}
    800021c8:	00813083          	ld	ra,8(sp)
    800021cc:	00013403          	ld	s0,0(sp)
    800021d0:	01010113          	addi	sp,sp,16
    800021d4:	00008067          	ret

00000000800021d8 <_ZN14PeriodicThread9terminateEv>:

void PeriodicThread::terminate() {
    800021d8:	ff010113          	addi	sp,sp,-16
    800021dc:	00813423          	sd	s0,8(sp)
    800021e0:	01010413          	addi	s0,sp,16
    period = 0;
    800021e4:	02053023          	sd	zero,32(a0)
}
    800021e8:	00813403          	ld	s0,8(sp)
    800021ec:	01010113          	addi	sp,sp,16
    800021f0:	00008067          	ret

00000000800021f4 <_ZN6Thread3runEv>:
    void join();
    static void dispatch ();
    static int sleep (time_t);
protected:
    Thread ();
    virtual void run () {}
    800021f4:	ff010113          	addi	sp,sp,-16
    800021f8:	00813423          	sd	s0,8(sp)
    800021fc:	01010413          	addi	s0,sp,16
    80002200:	00813403          	ld	s0,8(sp)
    80002204:	01010113          	addi	sp,sp,16
    80002208:	00008067          	ret

000000008000220c <_ZN14PeriodicThread18periodicActivationEv>:
public:
    void terminate ();
    virtual ~PeriodicThread(){period = 0;};
protected:
    PeriodicThread (time_t period): Thread(), period((period == 0)?1:period){}
    virtual void periodicActivation () {}
    8000220c:	ff010113          	addi	sp,sp,-16
    80002210:	00813423          	sd	s0,8(sp)
    80002214:	01010413          	addi	s0,sp,16
    80002218:	00813403          	ld	s0,8(sp)
    8000221c:	01010113          	addi	sp,sp,16
    80002220:	00008067          	ret

0000000080002224 <_ZN14PeriodicThreadD1Ev>:
    virtual ~PeriodicThread(){period = 0;};
    80002224:	ff010113          	addi	sp,sp,-16
    80002228:	00113423          	sd	ra,8(sp)
    8000222c:	00813023          	sd	s0,0(sp)
    80002230:	01010413          	addi	s0,sp,16
    80002234:	00009717          	auipc	a4,0x9
    80002238:	23c70713          	addi	a4,a4,572 # 8000b470 <_ZTV14PeriodicThread+0x10>
    8000223c:	00e53023          	sd	a4,0(a0)
    80002240:	02053023          	sd	zero,32(a0)
    80002244:	00000097          	auipc	ra,0x0
    80002248:	bec080e7          	jalr	-1044(ra) # 80001e30 <_ZN6ThreadD1Ev>
    8000224c:	00813083          	ld	ra,8(sp)
    80002250:	00013403          	ld	s0,0(sp)
    80002254:	01010113          	addi	sp,sp,16
    80002258:	00008067          	ret

000000008000225c <_ZN14PeriodicThreadD0Ev>:
    8000225c:	fe010113          	addi	sp,sp,-32
    80002260:	00113c23          	sd	ra,24(sp)
    80002264:	00813823          	sd	s0,16(sp)
    80002268:	00913423          	sd	s1,8(sp)
    8000226c:	02010413          	addi	s0,sp,32
    80002270:	00050493          	mv	s1,a0
    80002274:	00009797          	auipc	a5,0x9
    80002278:	1fc78793          	addi	a5,a5,508 # 8000b470 <_ZTV14PeriodicThread+0x10>
    8000227c:	00f53023          	sd	a5,0(a0)
    80002280:	02053023          	sd	zero,32(a0)
    80002284:	00000097          	auipc	ra,0x0
    80002288:	bac080e7          	jalr	-1108(ra) # 80001e30 <_ZN6ThreadD1Ev>
    8000228c:	00048513          	mv	a0,s1
    80002290:	00000097          	auipc	ra,0x0
    80002294:	b78080e7          	jalr	-1160(ra) # 80001e08 <_ZdlPv>
    80002298:	01813083          	ld	ra,24(sp)
    8000229c:	01013403          	ld	s0,16(sp)
    800022a0:	00813483          	ld	s1,8(sp)
    800022a4:	02010113          	addi	sp,sp,32
    800022a8:	00008067          	ret

00000000800022ac <_ZN11KruzniBafer15NapraviInstancuEv>:
#include "../h/KruzniBafer.hpp"

KruzniBafer *KruzniBafer::NapraviInstancu() {
    800022ac:	fe010113          	addi	sp,sp,-32
    800022b0:	00113c23          	sd	ra,24(sp)
    800022b4:	00813823          	sd	s0,16(sp)
    800022b8:	00913423          	sd	s1,8(sp)
    800022bc:	02010413          	addi	s0,sp,32
    KruzniBafer* vrati = (KruzniBafer*)AlokatorMemorije::dohvatiInstancu()->mem_alloc(sizeof(KruzniBafer));
    800022c0:	00000097          	auipc	ra,0x0
    800022c4:	190080e7          	jalr	400(ra) # 80002450 <_ZN16AlokatorMemorije15dohvatiInstancuEv>
    800022c8:	42800593          	li	a1,1064
    800022cc:	00000097          	auipc	ra,0x0
    800022d0:	208080e7          	jalr	520(ra) # 800024d4 <_ZN16AlokatorMemorije9mem_allocEm>
    800022d4:	00050493          	mv	s1,a0
    vrati->pocetak = 0;
    800022d8:	00053023          	sd	zero,0(a0)
    vrati->kraj = 0;
    800022dc:	00053423          	sd	zero,8(a0)
    vrati->brojac = 0;
    800022e0:	00053823          	sd	zero,16(a0)
    vrati->zauzetostBafera = Semafor::OtvoriSemafor(0);
    800022e4:	00000513          	li	a0,0
    800022e8:	fffff097          	auipc	ra,0xfffff
    800022ec:	714080e7          	jalr	1812(ra) # 800019fc <_ZN7Semafor13OtvoriSemaforEj>
    800022f0:	40a4bc23          	sd	a0,1048(s1)
    vrati->sis = false;
    800022f4:	42048023          	sb	zero,1056(s1)
    return vrati;
}
    800022f8:	00048513          	mv	a0,s1
    800022fc:	01813083          	ld	ra,24(sp)
    80002300:	01013403          	ld	s0,16(sp)
    80002304:	00813483          	ld	s1,8(sp)
    80002308:	02010113          	addi	sp,sp,32
    8000230c:	00008067          	ret

0000000080002310 <_ZN11KruzniBafer4putcEc>:

void KruzniBafer::putc(char c) {
    if(brojac != VELICINA_BAFERA){
    80002310:	01053783          	ld	a5,16(a0)
    80002314:	40000713          	li	a4,1024
    80002318:	00e79463          	bne	a5,a4,80002320 <_ZN11KruzniBafer4putcEc+0x10>
    8000231c:	00008067          	ret
void KruzniBafer::putc(char c) {
    80002320:	ff010113          	addi	sp,sp,-16
    80002324:	00113423          	sd	ra,8(sp)
    80002328:	00813023          	sd	s0,0(sp)
    8000232c:	01010413          	addi	s0,sp,16
        bafer[kraj++] = c;
    80002330:	00853703          	ld	a4,8(a0)
    80002334:	00170693          	addi	a3,a4,1
    80002338:	00e50733          	add	a4,a0,a4
    8000233c:	00b70c23          	sb	a1,24(a4)
        kraj %= VELICINA_BAFERA;
    80002340:	3ff6f713          	andi	a4,a3,1023
    80002344:	00e53423          	sd	a4,8(a0)
        brojac++;
    80002348:	00178793          	addi	a5,a5,1
    8000234c:	00f53823          	sd	a5,16(a0)
        zauzetostBafera->Signal();
    80002350:	41853503          	ld	a0,1048(a0)
    80002354:	fffff097          	auipc	ra,0xfffff
    80002358:	7c4080e7          	jalr	1988(ra) # 80001b18 <_ZN7Semafor6SignalEv>
    }
}
    8000235c:	00813083          	ld	ra,8(sp)
    80002360:	00013403          	ld	s0,0(sp)
    80002364:	01010113          	addi	sp,sp,16
    80002368:	00008067          	ret

000000008000236c <_ZN11KruzniBafer4getcEv>:

char KruzniBafer::getc() {
    8000236c:	fe010113          	addi	sp,sp,-32
    80002370:	00113c23          	sd	ra,24(sp)
    80002374:	00813823          	sd	s0,16(sp)
    80002378:	00913423          	sd	s1,8(sp)
    8000237c:	02010413          	addi	s0,sp,32
    80002380:	00050493          	mv	s1,a0
    if(!sis)zauzetostBafera->Wait();
    80002384:	42054783          	lbu	a5,1056(a0)
    80002388:	02078e63          	beqz	a5,800023c4 <_ZN11KruzniBafer4getcEv+0x58>
    char c = bafer[pocetak++];
    8000238c:	0004b783          	ld	a5,0(s1)
    80002390:	00178713          	addi	a4,a5,1
    80002394:	00f487b3          	add	a5,s1,a5
    80002398:	0187c503          	lbu	a0,24(a5)
    pocetak %= VELICINA_BAFERA;
    8000239c:	3ff77793          	andi	a5,a4,1023
    800023a0:	00f4b023          	sd	a5,0(s1)
    brojac--;
    800023a4:	0104b783          	ld	a5,16(s1)
    800023a8:	fff78793          	addi	a5,a5,-1
    800023ac:	00f4b823          	sd	a5,16(s1)
    return c;
}
    800023b0:	01813083          	ld	ra,24(sp)
    800023b4:	01013403          	ld	s0,16(sp)
    800023b8:	00813483          	ld	s1,8(sp)
    800023bc:	02010113          	addi	sp,sp,32
    800023c0:	00008067          	ret
    if(!sis)zauzetostBafera->Wait();
    800023c4:	41853503          	ld	a0,1048(a0)
    800023c8:	fffff097          	auipc	ra,0xfffff
    800023cc:	680080e7          	jalr	1664(ra) # 80001a48 <_ZN7Semafor4WaitEv>
    800023d0:	fbdff06f          	j	8000238c <_ZN11KruzniBafer4getcEv+0x20>

00000000800023d4 <_ZN11KruzniBafer8IsprazniEv>:

void KruzniBafer::Isprazni() {
    800023d4:	fe010113          	addi	sp,sp,-32
    800023d8:	00113c23          	sd	ra,24(sp)
    800023dc:	00813823          	sd	s0,16(sp)
    800023e0:	00913423          	sd	s1,8(sp)
    800023e4:	01213023          	sd	s2,0(sp)
    800023e8:	02010413          	addi	s0,sp,32
    800023ec:	00050493          	mv	s1,a0
    sis = true;
    800023f0:	00100793          	li	a5,1
    800023f4:	42f50023          	sb	a5,1056(a0)
    while(brojac != 0){
    800023f8:	0104b783          	ld	a5,16(s1)
    800023fc:	02078e63          	beqz	a5,80002438 <_ZN11KruzniBafer8IsprazniEv+0x64>
        if(*((char*)CONSOLE_STATUS) & CONSOLE_TX_STATUS_BIT){
    80002400:	00009797          	auipc	a5,0x9
    80002404:	2487b783          	ld	a5,584(a5) # 8000b648 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002408:	0007b783          	ld	a5,0(a5)
    8000240c:	0007c783          	lbu	a5,0(a5)
    80002410:	0207f793          	andi	a5,a5,32
    80002414:	fe0782e3          	beqz	a5,800023f8 <_ZN11KruzniBafer8IsprazniEv+0x24>
            *((char*)CONSOLE_TX_DATA) = this->getc();
    80002418:	00009797          	auipc	a5,0x9
    8000241c:	2507b783          	ld	a5,592(a5) # 8000b668 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002420:	0007b903          	ld	s2,0(a5)
    80002424:	00048513          	mv	a0,s1
    80002428:	00000097          	auipc	ra,0x0
    8000242c:	f44080e7          	jalr	-188(ra) # 8000236c <_ZN11KruzniBafer4getcEv>
    80002430:	00a90023          	sb	a0,0(s2)
    80002434:	fc5ff06f          	j	800023f8 <_ZN11KruzniBafer8IsprazniEv+0x24>
        }
    }
}
    80002438:	01813083          	ld	ra,24(sp)
    8000243c:	01013403          	ld	s0,16(sp)
    80002440:	00813483          	ld	s1,8(sp)
    80002444:	00013903          	ld	s2,0(sp)
    80002448:	02010113          	addi	sp,sp,32
    8000244c:	00008067          	ret

0000000080002450 <_ZN16AlokatorMemorije15dohvatiInstancuEv>:
#include "../h/AlokatorMemorije.h"
#include "../lib/console.h"

AlokatorMemorije* AlokatorMemorije::memorija = nullptr;

AlokatorMemorije* AlokatorMemorije::dohvatiInstancu() {
    80002450:	ff010113          	addi	sp,sp,-16
    80002454:	00813423          	sd	s0,8(sp)
    80002458:	01010413          	addi	s0,sp,16
    if(memorija == nullptr){
    8000245c:	00009797          	auipc	a5,0x9
    80002460:	2ac7b783          	ld	a5,684(a5) # 8000b708 <_ZN16AlokatorMemorije8memorijaE>
    80002464:	00078c63          	beqz	a5,8000247c <_ZN16AlokatorMemorije15dohvatiInstancuEv+0x2c>
        memorija->glava->sl = nullptr;
        memorija->glava->pret = nullptr;
        memorija->glava->vel = ((char*)HEAP_END_ADDR - (char*)memorija->glava) / MEM_BLOCK_SIZE;
    }
    return memorija;
}
    80002468:	00009517          	auipc	a0,0x9
    8000246c:	2a053503          	ld	a0,672(a0) # 8000b708 <_ZN16AlokatorMemorije8memorijaE>
    80002470:	00813403          	ld	s0,8(sp)
    80002474:	01010113          	addi	sp,sp,16
    80002478:	00008067          	ret
        memorija = (AlokatorMemorije*) HEAP_START_ADDR;
    8000247c:	00009797          	auipc	a5,0x9
    80002480:	1d47b783          	ld	a5,468(a5) # 8000b650 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002484:	0007b783          	ld	a5,0(a5)
    80002488:	00009717          	auipc	a4,0x9
    8000248c:	28070713          	addi	a4,a4,640 # 8000b708 <_ZN16AlokatorMemorije8memorijaE>
    80002490:	00f73023          	sd	a5,0(a4)
        memorija->glava = (SlobodnaMemorija*) ((char*)HEAP_START_ADDR + sizeof(AlokatorMemorije*));
    80002494:	00878693          	addi	a3,a5,8
    80002498:	00d7b023          	sd	a3,0(a5)
        memorija->glava->sl = nullptr;
    8000249c:	00073783          	ld	a5,0(a4)
    800024a0:	0007b683          	ld	a3,0(a5)
    800024a4:	0006b423          	sd	zero,8(a3)
        memorija->glava->pret = nullptr;
    800024a8:	0007b783          	ld	a5,0(a5)
    800024ac:	0007b023          	sd	zero,0(a5)
        memorija->glava->vel = ((char*)HEAP_END_ADDR - (char*)memorija->glava) / MEM_BLOCK_SIZE;
    800024b0:	00009797          	auipc	a5,0x9
    800024b4:	1d87b783          	ld	a5,472(a5) # 8000b688 <_GLOBAL_OFFSET_TABLE_+0x50>
    800024b8:	0007b783          	ld	a5,0(a5)
    800024bc:	00073703          	ld	a4,0(a4)
    800024c0:	00073703          	ld	a4,0(a4)
    800024c4:	40e787b3          	sub	a5,a5,a4
    800024c8:	0067d793          	srli	a5,a5,0x6
    800024cc:	00f73823          	sd	a5,16(a4)
    800024d0:	f99ff06f          	j	80002468 <_ZN16AlokatorMemorije15dohvatiInstancuEv+0x18>

00000000800024d4 <_ZN16AlokatorMemorije9mem_allocEm>:

void *AlokatorMemorije::mem_alloc(size_t size) {
    800024d4:	ff010113          	addi	sp,sp,-16
    800024d8:	00813423          	sd	s0,8(sp)
    800024dc:	01010413          	addi	s0,sp,16
    if(size <= 0) return nullptr;
    800024e0:	0c058063          	beqz	a1,800025a0 <_ZN16AlokatorMemorije9mem_allocEm+0xcc>
    800024e4:	00050693          	mv	a3,a0
    size_t brojBlokova = size / MEM_BLOCK_SIZE + 1 + ((size % MEM_BLOCK_SIZE == 0)? 0: 1);
    800024e8:	0065d713          	srli	a4,a1,0x6
    800024ec:	03f5f593          	andi	a1,a1,63
    800024f0:	00b035b3          	snez	a1,a1
    800024f4:	00b70733          	add	a4,a4,a1
    800024f8:	00170713          	addi	a4,a4,1
    SlobodnaMemorija* tren;
    for(tren = glava; tren != nullptr; tren = tren->sl){
    800024fc:	00053503          	ld	a0,0(a0)
    80002500:	06c0006f          	j	8000256c <_ZN16AlokatorMemorije9mem_allocEm+0x98>
        if(tren->vel > brojBlokova){
            SlobodnaMemorija* trenNov = (SlobodnaMemorija*)((char*)tren + brojBlokova * MEM_BLOCK_SIZE);
    80002504:	00671613          	slli	a2,a4,0x6
    80002508:	00c50633          	add	a2,a0,a2
            trenNov->vel = tren->vel - brojBlokova;
    8000250c:	40e787b3          	sub	a5,a5,a4
    80002510:	00f63823          	sd	a5,16(a2)
            trenNov->sl = tren->sl;
    80002514:	00853783          	ld	a5,8(a0)
    80002518:	00f63423          	sd	a5,8(a2)
            trenNov->pret = tren->pret;
    8000251c:	00053783          	ld	a5,0(a0)
    80002520:	00f63023          	sd	a5,0(a2)
            if(tren->sl != nullptr)tren->sl->pret = trenNov;
    80002524:	00853783          	ld	a5,8(a0)
    80002528:	00078463          	beqz	a5,80002530 <_ZN16AlokatorMemorije9mem_allocEm+0x5c>
    8000252c:	00c7b023          	sd	a2,0(a5)
            if(tren->pret != nullptr)tren->pret->sl = trenNov;
    80002530:	00053783          	ld	a5,0(a0)
    80002534:	02078063          	beqz	a5,80002554 <_ZN16AlokatorMemorije9mem_allocEm+0x80>
    80002538:	00c7b423          	sd	a2,8(a5)
            else tren->pret->sl = tren->sl;
            if(tren->sl)tren->sl->pret = tren->pret;
            break;
        }
    }
    if(tren != nullptr){
    8000253c:	00050663          	beqz	a0,80002548 <_ZN16AlokatorMemorije9mem_allocEm+0x74>
        tren->vel = brojBlokova;
    80002540:	00e53823          	sd	a4,16(a0)
        return (void*)((char*)tren + MEM_BLOCK_SIZE);
    80002544:	04050513          	addi	a0,a0,64
    }
    return nullptr;
}
    80002548:	00813403          	ld	s0,8(sp)
    8000254c:	01010113          	addi	sp,sp,16
    80002550:	00008067          	ret
            else glava = trenNov;
    80002554:	00c6b023          	sd	a2,0(a3)
    80002558:	fe5ff06f          	j	8000253c <_ZN16AlokatorMemorije9mem_allocEm+0x68>
            if(tren->pret == nullptr)glava = tren->sl;
    8000255c:	00853783          	ld	a5,8(a0)
    80002560:	00f6b023          	sd	a5,0(a3)
    80002564:	0280006f          	j	8000258c <_ZN16AlokatorMemorije9mem_allocEm+0xb8>
    for(tren = glava; tren != nullptr; tren = tren->sl){
    80002568:	00853503          	ld	a0,8(a0)
    8000256c:	fc0508e3          	beqz	a0,8000253c <_ZN16AlokatorMemorije9mem_allocEm+0x68>
        if(tren->vel > brojBlokova){
    80002570:	01053783          	ld	a5,16(a0)
    80002574:	f8f768e3          	bltu	a4,a5,80002504 <_ZN16AlokatorMemorije9mem_allocEm+0x30>
        if(tren->vel == brojBlokova){
    80002578:	fee798e3          	bne	a5,a4,80002568 <_ZN16AlokatorMemorije9mem_allocEm+0x94>
            if(tren->pret == nullptr)glava = tren->sl;
    8000257c:	00053783          	ld	a5,0(a0)
    80002580:	fc078ee3          	beqz	a5,8000255c <_ZN16AlokatorMemorije9mem_allocEm+0x88>
            else tren->pret->sl = tren->sl;
    80002584:	00853683          	ld	a3,8(a0)
    80002588:	00d7b423          	sd	a3,8(a5)
            if(tren->sl)tren->sl->pret = tren->pret;
    8000258c:	00853783          	ld	a5,8(a0)
    80002590:	fa0786e3          	beqz	a5,8000253c <_ZN16AlokatorMemorije9mem_allocEm+0x68>
    80002594:	00053683          	ld	a3,0(a0)
    80002598:	00d7b023          	sd	a3,0(a5)
    8000259c:	fa1ff06f          	j	8000253c <_ZN16AlokatorMemorije9mem_allocEm+0x68>
    if(size <= 0) return nullptr;
    800025a0:	00000513          	li	a0,0
    800025a4:	fa5ff06f          	j	80002548 <_ZN16AlokatorMemorije9mem_allocEm+0x74>

00000000800025a8 <_ZN16AlokatorMemorije5SpojiEPNS_16SlobodnaMemorijaE>:
    Spoji(nov);
    Spoji(pret);
    return 0;
}

void AlokatorMemorije::Spoji(SlobodnaMemorija* tren) {
    800025a8:	ff010113          	addi	sp,sp,-16
    800025ac:	00813423          	sd	s0,8(sp)
    800025b0:	01010413          	addi	s0,sp,16
    if(tren == nullptr || tren->sl == nullptr)return;
    800025b4:	00058e63          	beqz	a1,800025d0 <_ZN16AlokatorMemorije5SpojiEPNS_16SlobodnaMemorijaE+0x28>
    800025b8:	0085b783          	ld	a5,8(a1)
    800025bc:	00078a63          	beqz	a5,800025d0 <_ZN16AlokatorMemorije5SpojiEPNS_16SlobodnaMemorijaE+0x28>
    if((char*)tren + tren->vel * MEM_BLOCK_SIZE == (char*)tren->sl){
    800025c0:	0105b683          	ld	a3,16(a1)
    800025c4:	00669713          	slli	a4,a3,0x6
    800025c8:	00e58733          	add	a4,a1,a4
    800025cc:	00e78863          	beq	a5,a4,800025dc <_ZN16AlokatorMemorije5SpojiEPNS_16SlobodnaMemorijaE+0x34>
        tren->vel += tren->sl->vel;
        tren->sl = tren->sl->sl;
        if(tren->sl != nullptr)tren->sl->pret = tren;
    }
    800025d0:	00813403          	ld	s0,8(sp)
    800025d4:	01010113          	addi	sp,sp,16
    800025d8:	00008067          	ret
        tren->vel += tren->sl->vel;
    800025dc:	0107b703          	ld	a4,16(a5)
    800025e0:	00e686b3          	add	a3,a3,a4
    800025e4:	00d5b823          	sd	a3,16(a1)
        tren->sl = tren->sl->sl;
    800025e8:	0087b783          	ld	a5,8(a5)
    800025ec:	00f5b423          	sd	a5,8(a1)
        if(tren->sl != nullptr)tren->sl->pret = tren;
    800025f0:	fe0780e3          	beqz	a5,800025d0 <_ZN16AlokatorMemorije5SpojiEPNS_16SlobodnaMemorijaE+0x28>
    800025f4:	00b7b023          	sd	a1,0(a5)
    800025f8:	fd9ff06f          	j	800025d0 <_ZN16AlokatorMemorije5SpojiEPNS_16SlobodnaMemorijaE+0x28>

00000000800025fc <_ZN16AlokatorMemorije8mem_freeEPv>:
    if((char*)pocAdr > HEAP_END_ADDR || (char*)pocAdr < HEAP_START_ADDR)return -1;
    800025fc:	00009797          	auipc	a5,0x9
    80002600:	08c7b783          	ld	a5,140(a5) # 8000b688 <_GLOBAL_OFFSET_TABLE_+0x50>
    80002604:	0007b783          	ld	a5,0(a5)
    80002608:	0ab7e663          	bltu	a5,a1,800026b4 <_ZN16AlokatorMemorije8mem_freeEPv+0xb8>
int AlokatorMemorije::mem_free(void *pocAdr) {
    8000260c:	fe010113          	addi	sp,sp,-32
    80002610:	00113c23          	sd	ra,24(sp)
    80002614:	00813823          	sd	s0,16(sp)
    80002618:	00913423          	sd	s1,8(sp)
    8000261c:	01213023          	sd	s2,0(sp)
    80002620:	02010413          	addi	s0,sp,32
    80002624:	00050913          	mv	s2,a0
    80002628:	00058713          	mv	a4,a1
    if((char*)pocAdr > HEAP_END_ADDR || (char*)pocAdr < HEAP_START_ADDR)return -1;
    8000262c:	00009797          	auipc	a5,0x9
    80002630:	0247b783          	ld	a5,36(a5) # 8000b650 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002634:	0007b783          	ld	a5,0(a5)
    80002638:	08f5e263          	bltu	a1,a5,800026bc <_ZN16AlokatorMemorije8mem_freeEPv+0xc0>
    SlobodnaMemorija* tren, *pret = nullptr, *nov = (SlobodnaMemorija*)((char*)pocAdr - MEM_BLOCK_SIZE);
    8000263c:	fc058593          	addi	a1,a1,-64
    for(tren = glava; tren != nullptr && (char*)tren < (char*)nov; pret = tren, tren = tren->sl);
    80002640:	00053783          	ld	a5,0(a0)
    SlobodnaMemorija* tren, *pret = nullptr, *nov = (SlobodnaMemorija*)((char*)pocAdr - MEM_BLOCK_SIZE);
    80002644:	00000493          	li	s1,0
    for(tren = glava; tren != nullptr && (char*)tren < (char*)nov; pret = tren, tren = tren->sl);
    80002648:	00078a63          	beqz	a5,8000265c <_ZN16AlokatorMemorije8mem_freeEPv+0x60>
    8000264c:	00b7f863          	bgeu	a5,a1,8000265c <_ZN16AlokatorMemorije8mem_freeEPv+0x60>
    80002650:	00078493          	mv	s1,a5
    80002654:	0087b783          	ld	a5,8(a5)
    80002658:	ff1ff06f          	j	80002648 <_ZN16AlokatorMemorije8mem_freeEPv+0x4c>
    nov->sl = tren;
    8000265c:	fcf73423          	sd	a5,-56(a4)
    nov->pret = pret;
    80002660:	fc973023          	sd	s1,-64(a4)
    if(pret == nullptr) glava = nov;
    80002664:	04048463          	beqz	s1,800026ac <_ZN16AlokatorMemorije8mem_freeEPv+0xb0>
    else pret->sl = nov;
    80002668:	00b4b423          	sd	a1,8(s1)
    if(tren != nullptr)tren->pret = nov;
    8000266c:	00078463          	beqz	a5,80002674 <_ZN16AlokatorMemorije8mem_freeEPv+0x78>
    80002670:	00b7b023          	sd	a1,0(a5)
    Spoji(nov);
    80002674:	00090513          	mv	a0,s2
    80002678:	00000097          	auipc	ra,0x0
    8000267c:	f30080e7          	jalr	-208(ra) # 800025a8 <_ZN16AlokatorMemorije5SpojiEPNS_16SlobodnaMemorijaE>
    Spoji(pret);
    80002680:	00048593          	mv	a1,s1
    80002684:	00090513          	mv	a0,s2
    80002688:	00000097          	auipc	ra,0x0
    8000268c:	f20080e7          	jalr	-224(ra) # 800025a8 <_ZN16AlokatorMemorije5SpojiEPNS_16SlobodnaMemorijaE>
    return 0;
    80002690:	00000513          	li	a0,0
}
    80002694:	01813083          	ld	ra,24(sp)
    80002698:	01013403          	ld	s0,16(sp)
    8000269c:	00813483          	ld	s1,8(sp)
    800026a0:	00013903          	ld	s2,0(sp)
    800026a4:	02010113          	addi	sp,sp,32
    800026a8:	00008067          	ret
    if(pret == nullptr) glava = nov;
    800026ac:	00b93023          	sd	a1,0(s2)
    800026b0:	fbdff06f          	j	8000266c <_ZN16AlokatorMemorije8mem_freeEPv+0x70>
    if((char*)pocAdr > HEAP_END_ADDR || (char*)pocAdr < HEAP_START_ADDR)return -1;
    800026b4:	fff00513          	li	a0,-1
}
    800026b8:	00008067          	ret
    if((char*)pocAdr > HEAP_END_ADDR || (char*)pocAdr < HEAP_START_ADDR)return -1;
    800026bc:	fff00513          	li	a0,-1
    800026c0:	fd5ff06f          	j	80002694 <_ZN16AlokatorMemorije8mem_freeEPv+0x98>

00000000800026c4 <_ZN5RiscV10popSppSpieEv>:
#include "../h/riscv.hpp"

void RiscV::popSppSpie() {
    800026c4:	ff010113          	addi	sp,sp,-16
    800026c8:	00813423          	sd	s0,8(sp)
    800026cc:	01010413          	addi	s0,sp,16
inline void RiscV::w_sstatus(uint64 sstatus) {
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus]"r"(sstatus));
}

inline void RiscV::mc_sstatus(uint64 mask) {
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800026d0:	10000793          	li	a5,256
    800026d4:	1007b073          	csrc	sstatus,a5
    mc_sstatus(1<<8);
    __asm__ volatile("csrw sepc, ra");
    800026d8:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    800026dc:	10200073          	sret
}
    800026e0:	00813403          	ld	s0,8(sp)
    800026e4:	01010113          	addi	sp,sp,16
    800026e8:	00008067          	ret

00000000800026ec <_ZN5RiscV20handleSupervisorTrapEv>:

void RiscV::handleSupervisorTrap() {
    800026ec:	f8010113          	addi	sp,sp,-128
    800026f0:	06113c23          	sd	ra,120(sp)
    800026f4:	06813823          	sd	s0,112(sp)
    800026f8:	06913423          	sd	s1,104(sp)
    800026fc:	08010413          	addi	s0,sp,128
    uint64 volatile a0, a1, a2, a3, a4;
    __asm__ volatile ("mv %[a0], a0" : [a0]"=r" (a0));
    80002700:	00050793          	mv	a5,a0
    80002704:	fcf43c23          	sd	a5,-40(s0)
    __asm__ volatile ("mv %[a1], a1" : [a1]"=r"(a1));
    80002708:	00058793          	mv	a5,a1
    8000270c:	fcf43823          	sd	a5,-48(s0)
    __asm__ volatile ("mv %[a2], a2" : [a2]"=r"(a2));
    80002710:	00060793          	mv	a5,a2
    80002714:	fcf43423          	sd	a5,-56(s0)
    __asm__ volatile ("mv %[a3], a3" : [a3]"=r"(a3));
    80002718:	00068793          	mv	a5,a3
    8000271c:	fcf43023          	sd	a5,-64(s0)
    __asm__ volatile ("mv %[a4], a4" : [a4]"=r"(a4));
    80002720:	00070793          	mv	a5,a4
    80002724:	faf43c23          	sd	a5,-72(s0)
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80002728:	142027f3          	csrr	a5,scause
    8000272c:	f8f43423          	sd	a5,-120(s0)
    return scause;
    80002730:	f8843783          	ld	a5,-120(s0)
    uint64 volatile scause = r_scause();
    80002734:	faf43823          	sd	a5,-80(s0)
    if(scause != 8 && scause != 9){
    80002738:	fb043703          	ld	a4,-80(s0)
    8000273c:	00800793          	li	a5,8
    80002740:	00f70863          	beq	a4,a5,80002750 <_ZN5RiscV20handleSupervisorTrapEv+0x64>
    80002744:	fb043703          	ld	a4,-80(s0)
    80002748:	00900793          	li	a5,9
    8000274c:	04f71863          	bne	a4,a5,8000279c <_ZN5RiscV20handleSupervisorTrapEv+0xb0>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc]"=r"(sepc));
    80002750:	141027f3          	csrr	a5,sepc
    80002754:	f8f43c23          	sd	a5,-104(s0)
    return sepc;
    80002758:	f9843783          	ld	a5,-104(s0)
        out->putc('\n');
        out->Isprazni();
        while(true);
    }
    //if(scause != 8 && scause != 9)printInt(scause);
    uint64 volatile sepc = r_sepc() + 4;
    8000275c:	00478793          	addi	a5,a5,4
    80002760:	faf43423          	sd	a5,-88(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus]"=r"(sstatus));
    80002764:	100027f3          	csrr	a5,sstatus
    80002768:	f8f43823          	sd	a5,-112(s0)
    return  sstatus;
    8000276c:	f9043783          	ld	a5,-112(s0)
    uint64 volatile sstatus = r_sstatus();
    80002770:	faf43023          	sd	a5,-96(s0)
    switch (a0) {
    80002774:	fd843783          	ld	a5,-40(s0)
    80002778:	04200713          	li	a4,66
    8000277c:	06f76e63          	bltu	a4,a5,800027f8 <_ZN5RiscV20handleSupervisorTrapEv+0x10c>
    80002780:	00279793          	slli	a5,a5,0x2
    80002784:	00007717          	auipc	a4,0x7
    80002788:	89c70713          	addi	a4,a4,-1892 # 80009020 <CONSOLE_STATUS+0x10>
    8000278c:	00e787b3          	add	a5,a5,a4
    80002790:	0007a783          	lw	a5,0(a5)
    80002794:	00e787b3          	add	a5,a5,a4
    80002798:	00078067          	jr	a5
        out->putc((char)scause + '0');
    8000279c:	fb043583          	ld	a1,-80(s0)
    800027a0:	0305859b          	addiw	a1,a1,48
    800027a4:	00009497          	auipc	s1,0x9
    800027a8:	eb44b483          	ld	s1,-332(s1) # 8000b658 <_GLOBAL_OFFSET_TABLE_+0x20>
    800027ac:	0ff5f593          	andi	a1,a1,255
    800027b0:	0004b503          	ld	a0,0(s1)
    800027b4:	00000097          	auipc	ra,0x0
    800027b8:	b5c080e7          	jalr	-1188(ra) # 80002310 <_ZN11KruzniBafer4putcEc>
        out->putc('\n');
    800027bc:	00a00593          	li	a1,10
    800027c0:	0004b503          	ld	a0,0(s1)
    800027c4:	00000097          	auipc	ra,0x0
    800027c8:	b4c080e7          	jalr	-1204(ra) # 80002310 <_ZN11KruzniBafer4putcEc>
        out->Isprazni();
    800027cc:	0004b503          	ld	a0,0(s1)
    800027d0:	00000097          	auipc	ra,0x0
    800027d4:	c04080e7          	jalr	-1020(ra) # 800023d4 <_ZN11KruzniBafer8IsprazniEv>
        while(true);
    800027d8:	0000006f          	j	800027d8 <_ZN5RiscV20handleSupervisorTrapEv+0xec>
        case 0x01:{ //mem_alloc
            size_t size = (size_t) a1;
    800027dc:	fd043483          	ld	s1,-48(s0)
            void* vrati = AlokatorMemorije::dohvatiInstancu()->mem_alloc(size);
    800027e0:	00000097          	auipc	ra,0x0
    800027e4:	c70080e7          	jalr	-912(ra) # 80002450 <_ZN16AlokatorMemorije15dohvatiInstancuEv>
    800027e8:	00048593          	mv	a1,s1
    800027ec:	00000097          	auipc	ra,0x0
    800027f0:	ce8080e7          	jalr	-792(ra) # 800024d4 <_ZN16AlokatorMemorije9mem_allocEm>
            __asm__ volatile ("mv a0, %[povratna]" : : [povratna]"r" (vrati));
    800027f4:	00050513          	mv	a0,a0
            out->putc(chr);
            //__putc(chr);
            break;
        }
    }
    w_sstatus(sstatus);
    800027f8:	fa043783          	ld	a5,-96(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus]"r"(sstatus));
    800027fc:	10079073          	csrw	sstatus,a5
    w_sepc(sepc);
    80002800:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc]"r"(sepc));
    80002804:	14179073          	csrw	sepc,a5
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002808:	00200793          	li	a5,2
    8000280c:	1447b073          	csrc	sip,a5
    mc_sip(SIP_SSIP);
}
    80002810:	07813083          	ld	ra,120(sp)
    80002814:	07013403          	ld	s0,112(sp)
    80002818:	06813483          	ld	s1,104(sp)
    8000281c:	08010113          	addi	sp,sp,128
    80002820:	00008067          	ret
            void* adr = (void*)a1;
    80002824:	fd043483          	ld	s1,-48(s0)
            int vrati = AlokatorMemorije::dohvatiInstancu()->mem_free(adr);
    80002828:	00000097          	auipc	ra,0x0
    8000282c:	c28080e7          	jalr	-984(ra) # 80002450 <_ZN16AlokatorMemorije15dohvatiInstancuEv>
    80002830:	00048593          	mv	a1,s1
    80002834:	00000097          	auipc	ra,0x0
    80002838:	dc8080e7          	jalr	-568(ra) # 800025fc <_ZN16AlokatorMemorije8mem_freeEPv>
            __asm__ volatile ("mv a0, %[povratna]" : : [povratna]"r" (vrati));
    8000283c:	00050513          	mv	a0,a0
            break;
    80002840:	fb9ff06f          	j	800027f8 <_ZN5RiscV20handleSupervisorTrapEv+0x10c>
            thread_t* handle = (thread_t*)a1;
    80002844:	fd043483          	ld	s1,-48(s0)
            void(*start_routine)(void*) = (funk)a2;
    80002848:	fc843503          	ld	a0,-56(s0)
            void* arg = (void*)a3;
    8000284c:	fc043583          	ld	a1,-64(s0)
            uint64* stek = (uint64*)a4;
    80002850:	fb843603          	ld	a2,-72(s0)
            *handle = TCB::NapraviInstancu(start_routine, arg, stek);
    80002854:	00000097          	auipc	ra,0x0
    80002858:	3c0080e7          	jalr	960(ra) # 80002c14 <_ZN3TCB15NapraviInstancuEPFvPvES0_Pm>
    8000285c:	00a4b023          	sd	a0,0(s1)
            if(a0 == 0x11)Scheduler::dohvatiInstancu()->Stavi(*handle);
    80002860:	fd843703          	ld	a4,-40(s0)
    80002864:	01100793          	li	a5,17
    80002868:	00f70c63          	beq	a4,a5,80002880 <_ZN5RiscV20handleSupervisorTrapEv+0x194>
            int vrati = (*handle != nullptr)? 0: -1;
    8000286c:	0004b783          	ld	a5,0(s1)
    80002870:	02078463          	beqz	a5,80002898 <_ZN5RiscV20handleSupervisorTrapEv+0x1ac>
    80002874:	00000793          	li	a5,0
            __asm__ volatile ("mv a0, %[povratna]" : : [povratna]"r" (vrati));
    80002878:	00078513          	mv	a0,a5
            break;
    8000287c:	f7dff06f          	j	800027f8 <_ZN5RiscV20handleSupervisorTrapEv+0x10c>
            if(a0 == 0x11)Scheduler::dohvatiInstancu()->Stavi(*handle);
    80002880:	fffff097          	auipc	ra,0xfffff
    80002884:	fc0080e7          	jalr	-64(ra) # 80001840 <_ZN9Scheduler15dohvatiInstancuEv>
    80002888:	0004b583          	ld	a1,0(s1)
    8000288c:	fffff097          	auipc	ra,0xfffff
    80002890:	040080e7          	jalr	64(ra) # 800018cc <_ZN9Scheduler5StaviEP3TCB>
    80002894:	fd9ff06f          	j	8000286c <_ZN5RiscV20handleSupervisorTrapEv+0x180>
            int vrati = (*handle != nullptr)? 0: -1;
    80002898:	fff00793          	li	a5,-1
    8000289c:	fddff06f          	j	80002878 <_ZN5RiscV20handleSupervisorTrapEv+0x18c>
            TCB::running->setGotov(true);
    800028a0:	00009797          	auipc	a5,0x9
    800028a4:	de07b783          	ld	a5,-544(a5) # 8000b680 <_GLOBAL_OFFSET_TABLE_+0x48>
    800028a8:	0007b503          	ld	a0,0(a5)
    void setGotov(bool gotov) {this->gotov = gotov;};
    800028ac:	00100793          	li	a5,1
    800028b0:	02f50823          	sb	a5,48(a0)
            TCB::running->Oslobodi();
    800028b4:	00000097          	auipc	ra,0x0
    800028b8:	4a4080e7          	jalr	1188(ra) # 80002d58 <_ZN3TCB8OslobodiEv>
            TCB::dispatch();
    800028bc:	00000097          	auipc	ra,0x0
    800028c0:	2c8080e7          	jalr	712(ra) # 80002b84 <_ZN3TCB8dispatchEv>
            __asm__ volatile ("mv a0, %[povratna]" : : [povratna]"r" (vrati));
    800028c4:	00000793          	li	a5,0
    800028c8:	00078513          	mv	a0,a5
            break;
    800028cc:	f2dff06f          	j	800027f8 <_ZN5RiscV20handleSupervisorTrapEv+0x10c>
            TCB::dispatch();
    800028d0:	00000097          	auipc	ra,0x0
    800028d4:	2b4080e7          	jalr	692(ra) # 80002b84 <_ZN3TCB8dispatchEv>
            break;
    800028d8:	f21ff06f          	j	800027f8 <_ZN5RiscV20handleSupervisorTrapEv+0x10c>
            thread_t handle = (thread_t)a1;
    800028dc:	fd043503          	ld	a0,-48(s0)
            TCB::join(handle);
    800028e0:	00000097          	auipc	ra,0x0
    800028e4:	3d8080e7          	jalr	984(ra) # 80002cb8 <_ZN3TCB4joinEPS_>
            __asm__ volatile ("mv a0, %[povratna]" : : [povratna]"r" (vrati));
    800028e8:	00000793          	li	a5,0
    800028ec:	00078513          	mv	a0,a5
            break;
    800028f0:	f09ff06f          	j	800027f8 <_ZN5RiscV20handleSupervisorTrapEv+0x10c>
            sem_t* handle = (sem_t*)a1;
    800028f4:	fd043483          	ld	s1,-48(s0)
            unsigned init = (unsigned)a2;
    800028f8:	fc843503          	ld	a0,-56(s0)
            *handle = Semafor::OtvoriSemafor(init);
    800028fc:	0005051b          	sext.w	a0,a0
    80002900:	fffff097          	auipc	ra,0xfffff
    80002904:	0fc080e7          	jalr	252(ra) # 800019fc <_ZN7Semafor13OtvoriSemaforEj>
    80002908:	00a4b023          	sd	a0,0(s1)
            int vrati = (*handle != nullptr)? 0: -1;
    8000290c:	00050863          	beqz	a0,8000291c <_ZN5RiscV20handleSupervisorTrapEv+0x230>
    80002910:	00000793          	li	a5,0
            __asm__ volatile ("mv a0, %[povratna]" : : [povratna]"r" (vrati));
    80002914:	00078513          	mv	a0,a5
            break;
    80002918:	ee1ff06f          	j	800027f8 <_ZN5RiscV20handleSupervisorTrapEv+0x10c>
            int vrati = (*handle != nullptr)? 0: -1;
    8000291c:	fff00793          	li	a5,-1
    80002920:	ff5ff06f          	j	80002914 <_ZN5RiscV20handleSupervisorTrapEv+0x228>
            sem_t handle = (sem_t)a1;
    80002924:	fd043503          	ld	a0,-48(s0)
            Semafor::ZatvoriSemafor(handle);
    80002928:	fffff097          	auipc	ra,0xfffff
    8000292c:	284080e7          	jalr	644(ra) # 80001bac <_ZN7Semafor14ZatvoriSemaforEPS_>
            __asm__ volatile ("mv a0, %[povratna]" : : [povratna]"r" (vrati));
    80002930:	00000793          	li	a5,0
    80002934:	00078513          	mv	a0,a5
            break;
    80002938:	ec1ff06f          	j	800027f8 <_ZN5RiscV20handleSupervisorTrapEv+0x10c>
            sem_t id = (sem_t)a1;
    8000293c:	fd043503          	ld	a0,-48(s0)
            int vrati = id->Wait();
    80002940:	fffff097          	auipc	ra,0xfffff
    80002944:	108080e7          	jalr	264(ra) # 80001a48 <_ZN7Semafor4WaitEv>
            __asm__ volatile ("mv a0, %[povratna]" : : [povratna]"r" (vrati));
    80002948:	00050513          	mv	a0,a0
            break;
    8000294c:	eadff06f          	j	800027f8 <_ZN5RiscV20handleSupervisorTrapEv+0x10c>
            sem_t id = (sem_t)a1;
    80002950:	fd043503          	ld	a0,-48(s0)
            id->Signal();
    80002954:	fffff097          	auipc	ra,0xfffff
    80002958:	1c4080e7          	jalr	452(ra) # 80001b18 <_ZN7Semafor6SignalEv>
            __asm__ volatile ("mv a0, %[povratna]" : : [povratna]"r" (vrati));
    8000295c:	00000793          	li	a5,0
    80002960:	00078513          	mv	a0,a5
            break;
    80002964:	e95ff06f          	j	800027f8 <_ZN5RiscV20handleSupervisorTrapEv+0x10c>
            time_t vreme = (time_t)a1;
    80002968:	fd043483          	ld	s1,-48(s0)
            int volatile vrati = 0;
    8000296c:	f8042223          	sw	zero,-124(s0)
            if(vreme == 0)vrati = -1;
    80002970:	00049c63          	bnez	s1,80002988 <_ZN5RiscV20handleSupervisorTrapEv+0x29c>
    80002974:	fff00793          	li	a5,-1
    80002978:	f8f42223          	sw	a5,-124(s0)
            __asm__ volatile ("mv a0, %[povratna]" : : [povratna]"r" (vrati));
    8000297c:	f8442783          	lw	a5,-124(s0)
    80002980:	00078513          	mv	a0,a5
            break;
    80002984:	e75ff06f          	j	800027f8 <_ZN5RiscV20handleSupervisorTrapEv+0x10c>
                STL::DohvatiInstancu()->Stavi(vreme);
    80002988:	fffff097          	auipc	ra,0xfffff
    8000298c:	cc8080e7          	jalr	-824(ra) # 80001650 <_ZN3STL15DohvatiInstancuEv>
    80002990:	00048593          	mv	a1,s1
    80002994:	fffff097          	auipc	ra,0xfffff
    80002998:	d1c080e7          	jalr	-740(ra) # 800016b0 <_ZN3STL5StaviEm>
                TCB::running->setUspavan(true);
    8000299c:	00009797          	auipc	a5,0x9
    800029a0:	ce47b783          	ld	a5,-796(a5) # 8000b680 <_GLOBAL_OFFSET_TABLE_+0x48>
    800029a4:	0007b783          	ld	a5,0(a5)
    void setUspavan(bool uspavan) {this->uspavan = uspavan;};
    800029a8:	00100713          	li	a4,1
    800029ac:	02e78923          	sb	a4,50(a5)
                TCB::dispatch();
    800029b0:	00000097          	auipc	ra,0x0
    800029b4:	1d4080e7          	jalr	468(ra) # 80002b84 <_ZN3TCB8dispatchEv>
    800029b8:	fc5ff06f          	j	8000297c <_ZN5RiscV20handleSupervisorTrapEv+0x290>
            char volatile vrati = in->getc();
    800029bc:	00009797          	auipc	a5,0x9
    800029c0:	ca47b783          	ld	a5,-860(a5) # 8000b660 <_GLOBAL_OFFSET_TABLE_+0x28>
    800029c4:	0007b503          	ld	a0,0(a5)
    800029c8:	00000097          	auipc	ra,0x0
    800029cc:	9a4080e7          	jalr	-1628(ra) # 8000236c <_ZN11KruzniBafer4getcEv>
    800029d0:	f8a401a3          	sb	a0,-125(s0)
            __asm__ volatile ("mv a0, %[povratna]" : : [povratna]"r" (vrati));
    800029d4:	f8344783          	lbu	a5,-125(s0)
    800029d8:	00078513          	mv	a0,a5
            break;
    800029dc:	e1dff06f          	j	800027f8 <_ZN5RiscV20handleSupervisorTrapEv+0x10c>
            char chr = (char)a1;
    800029e0:	fd043583          	ld	a1,-48(s0)
            out->putc(chr);
    800029e4:	0ff5f593          	andi	a1,a1,255
    800029e8:	00009797          	auipc	a5,0x9
    800029ec:	c707b783          	ld	a5,-912(a5) # 8000b658 <_GLOBAL_OFFSET_TABLE_+0x20>
    800029f0:	0007b503          	ld	a0,0(a5)
    800029f4:	00000097          	auipc	ra,0x0
    800029f8:	91c080e7          	jalr	-1764(ra) # 80002310 <_ZN11KruzniBafer4putcEc>
            break;
    800029fc:	dfdff06f          	j	800027f8 <_ZN5RiscV20handleSupervisorTrapEv+0x10c>

0000000080002a00 <_ZN5RiscV11HandleTimerEv>:

void RiscV::HandleTimer(){
    80002a00:	fc010113          	addi	sp,sp,-64
    80002a04:	02113c23          	sd	ra,56(sp)
    80002a08:	02813823          	sd	s0,48(sp)
    80002a0c:	02913423          	sd	s1,40(sp)
    80002a10:	04010413          	addi	s0,sp,64
    TCB::brojacDodeljivanja++;
    80002a14:	00009497          	auipc	s1,0x9
    80002a18:	c644b483          	ld	s1,-924(s1) # 8000b678 <_GLOBAL_OFFSET_TABLE_+0x40>
    80002a1c:	0004b783          	ld	a5,0(s1)
    80002a20:	00178793          	addi	a5,a5,1
    80002a24:	00f4b023          	sd	a5,0(s1)
    STL::DohvatiInstancu()->SmanjiIOslobodi();
    80002a28:	fffff097          	auipc	ra,0xfffff
    80002a2c:	c28080e7          	jalr	-984(ra) # 80001650 <_ZN3STL15DohvatiInstancuEv>
    80002a30:	fffff097          	auipc	ra,0xfffff
    80002a34:	d50080e7          	jalr	-688(ra) # 80001780 <_ZN3STL15SmanjiIOslobodiEv>
    80002a38:	00200793          	li	a5,2
    80002a3c:	1447b073          	csrc	sip,a5
    mc_sip(SIP_SSIP);
    if(TCB::brojacDodeljivanja >= TCB::running->getDodeljenoVreme()) {
    80002a40:	00009797          	auipc	a5,0x9
    80002a44:	c407b783          	ld	a5,-960(a5) # 8000b680 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002a48:	0007b783          	ld	a5,0(a5)
    uint64 getDodeljenoVreme() const {return dodeljenoVreme;}
    80002a4c:	0287b783          	ld	a5,40(a5)
    80002a50:	0004b703          	ld	a4,0(s1)
    80002a54:	00f77c63          	bgeu	a4,a5,80002a6c <_ZN5RiscV11HandleTimerEv+0x6c>
        TCB::brojacDodeljivanja = 0;
        TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);
    }
}
    80002a58:	03813083          	ld	ra,56(sp)
    80002a5c:	03013403          	ld	s0,48(sp)
    80002a60:	02813483          	ld	s1,40(sp)
    80002a64:	04010113          	addi	sp,sp,64
    80002a68:	00008067          	ret
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc]"=r"(sepc));
    80002a6c:	141027f3          	csrr	a5,sepc
    80002a70:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80002a74:	fd843783          	ld	a5,-40(s0)
        uint64 volatile sepc = r_sepc();
    80002a78:	fcf43023          	sd	a5,-64(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus]"=r"(sstatus));
    80002a7c:	100027f3          	csrr	a5,sstatus
    80002a80:	fcf43823          	sd	a5,-48(s0)
    return  sstatus;
    80002a84:	fd043783          	ld	a5,-48(s0)
        uint64 volatile sstatus = r_sstatus();
    80002a88:	fcf43423          	sd	a5,-56(s0)
        TCB::brojacDodeljivanja = 0;
    80002a8c:	0004b023          	sd	zero,0(s1)
        TCB::dispatch();
    80002a90:	00000097          	auipc	ra,0x0
    80002a94:	0f4080e7          	jalr	244(ra) # 80002b84 <_ZN3TCB8dispatchEv>
        w_sstatus(sstatus);
    80002a98:	fc843783          	ld	a5,-56(s0)
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus]"r"(sstatus));
    80002a9c:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80002aa0:	fc043783          	ld	a5,-64(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc]"r"(sepc));
    80002aa4:	14179073          	csrw	sepc,a5
}
    80002aa8:	fb1ff06f          	j	80002a58 <_ZN5RiscV11HandleTimerEv+0x58>

0000000080002aac <_ZN5RiscV13HandleConsoleEv>:

void RiscV::HandleConsole(){
    80002aac:	fe010113          	addi	sp,sp,-32
    80002ab0:	00113c23          	sd	ra,24(sp)
    80002ab4:	00813823          	sd	s0,16(sp)
    80002ab8:	02010413          	addi	s0,sp,32
    int volatile plic = plic_claim();
    80002abc:	00004097          	auipc	ra,0x4
    80002ac0:	248080e7          	jalr	584(ra) # 80006d04 <plic_claim>
    80002ac4:	fea42623          	sw	a0,-20(s0)
    while(*((char*)CONSOLE_STATUS) & CONSOLE_RX_STATUS_BIT){
    80002ac8:	00009797          	auipc	a5,0x9
    80002acc:	b807b783          	ld	a5,-1152(a5) # 8000b648 <_GLOBAL_OFFSET_TABLE_+0x10>
    80002ad0:	0007b783          	ld	a5,0(a5)
    80002ad4:	0007c783          	lbu	a5,0(a5)
    80002ad8:	0017f793          	andi	a5,a5,1
    80002adc:	02079263          	bnez	a5,80002b00 <_ZN5RiscV13HandleConsoleEv+0x54>
        char c = *((char*)CONSOLE_RX_DATA);
        in->putc(c);
        break;
    }
    plic_complete(plic);
    80002ae0:	fec42503          	lw	a0,-20(s0)
    80002ae4:	0005051b          	sext.w	a0,a0
    80002ae8:	00004097          	auipc	ra,0x4
    80002aec:	254080e7          	jalr	596(ra) # 80006d3c <plic_complete>
    80002af0:	01813083          	ld	ra,24(sp)
    80002af4:	01013403          	ld	s0,16(sp)
    80002af8:	02010113          	addi	sp,sp,32
    80002afc:	00008067          	ret
        char c = *((char*)CONSOLE_RX_DATA);
    80002b00:	00009797          	auipc	a5,0x9
    80002b04:	b407b783          	ld	a5,-1216(a5) # 8000b640 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002b08:	0007b783          	ld	a5,0(a5)
        in->putc(c);
    80002b0c:	0007c583          	lbu	a1,0(a5)
    80002b10:	00009797          	auipc	a5,0x9
    80002b14:	b507b783          	ld	a5,-1200(a5) # 8000b660 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002b18:	0007b503          	ld	a0,0(a5)
    80002b1c:	fffff097          	auipc	ra,0xfffff
    80002b20:	7f4080e7          	jalr	2036(ra) # 80002310 <_ZN11KruzniBafer4putcEc>
        break;
    80002b24:	fbdff06f          	j	80002ae0 <_ZN5RiscV13HandleConsoleEv+0x34>

0000000080002b28 <_ZN3TCB13threadWrapperEv>:
    running = Scheduler::dohvatiInstancu()->Uzmi();
    TCB::brojacDodeljivanja = 0;
    TCB::promenaKonteksta(&old->kontekst, &running->kontekst);
}

void TCB::threadWrapper() {
    80002b28:	ff010113          	addi	sp,sp,-16
    80002b2c:	00113423          	sd	ra,8(sp)
    80002b30:	00813023          	sd	s0,0(sp)
    80002b34:	01010413          	addi	s0,sp,16
    if(running->telo != &NitKonzola)RiscV::popSppSpie();
    80002b38:	00009797          	auipc	a5,0x9
    80002b3c:	bd87b783          	ld	a5,-1064(a5) # 8000b710 <_ZN3TCB7runningE>
    80002b40:	0007b703          	ld	a4,0(a5)
    80002b44:	00009797          	auipc	a5,0x9
    80002b48:	b547b783          	ld	a5,-1196(a5) # 8000b698 <_GLOBAL_OFFSET_TABLE_+0x60>
    80002b4c:	00f70663          	beq	a4,a5,80002b58 <_ZN3TCB13threadWrapperEv+0x30>
    80002b50:	00000097          	auipc	ra,0x0
    80002b54:	b74080e7          	jalr	-1164(ra) # 800026c4 <_ZN5RiscV10popSppSpieEv>
    running->telo(running->argument);
    80002b58:	00009797          	auipc	a5,0x9
    80002b5c:	bb87b783          	ld	a5,-1096(a5) # 8000b710 <_ZN3TCB7runningE>
    80002b60:	0007b703          	ld	a4,0(a5)
    80002b64:	0107b503          	ld	a0,16(a5)
    80002b68:	000700e7          	jalr	a4
    thread_exit();
    80002b6c:	fffff097          	auipc	ra,0xfffff
    80002b70:	94c080e7          	jalr	-1716(ra) # 800014b8 <_Z11thread_exitv>
}
    80002b74:	00813083          	ld	ra,8(sp)
    80002b78:	00013403          	ld	s0,0(sp)
    80002b7c:	01010113          	addi	sp,sp,16
    80002b80:	00008067          	ret

0000000080002b84 <_ZN3TCB8dispatchEv>:
void TCB::dispatch() {
    80002b84:	fe010113          	addi	sp,sp,-32
    80002b88:	00113c23          	sd	ra,24(sp)
    80002b8c:	00813823          	sd	s0,16(sp)
    80002b90:	00913423          	sd	s1,8(sp)
    80002b94:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80002b98:	00009497          	auipc	s1,0x9
    80002b9c:	b784b483          	ld	s1,-1160(s1) # 8000b710 <_ZN3TCB7runningE>
    bool isGotov() const {return gotov;};
    80002ba0:	0304c783          	lbu	a5,48(s1)
    if(!old->isGotov() && !old->isBlokiran() && !old->isUspavan()){ Scheduler::dohvatiInstancu()->Stavi(old);}
    80002ba4:	00079a63          	bnez	a5,80002bb8 <_ZN3TCB8dispatchEv+0x34>
    bool isBlokiran() const {return blokiran;};
    80002ba8:	0314c783          	lbu	a5,49(s1)
    80002bac:	00079663          	bnez	a5,80002bb8 <_ZN3TCB8dispatchEv+0x34>
    bool isUspavan() const {return uspavan;};
    80002bb0:	0324c783          	lbu	a5,50(s1)
    80002bb4:	04078463          	beqz	a5,80002bfc <_ZN3TCB8dispatchEv+0x78>
    running = Scheduler::dohvatiInstancu()->Uzmi();
    80002bb8:	fffff097          	auipc	ra,0xfffff
    80002bbc:	c88080e7          	jalr	-888(ra) # 80001840 <_ZN9Scheduler15dohvatiInstancuEv>
    80002bc0:	fffff097          	auipc	ra,0xfffff
    80002bc4:	d88080e7          	jalr	-632(ra) # 80001948 <_ZN9Scheduler4UzmiEv>
    80002bc8:	00009797          	auipc	a5,0x9
    80002bcc:	b4878793          	addi	a5,a5,-1208 # 8000b710 <_ZN3TCB7runningE>
    80002bd0:	00a7b023          	sd	a0,0(a5)
    TCB::brojacDodeljivanja = 0;
    80002bd4:	0007b423          	sd	zero,8(a5)
    TCB::promenaKonteksta(&old->kontekst, &running->kontekst);
    80002bd8:	01850593          	addi	a1,a0,24
    80002bdc:	01848513          	addi	a0,s1,24
    80002be0:	ffffe097          	auipc	ra,0xffffe
    80002be4:	758080e7          	jalr	1880(ra) # 80001338 <_ZN3TCB16promenaKontekstaEPNS_8KontekstES1_>
}
    80002be8:	01813083          	ld	ra,24(sp)
    80002bec:	01013403          	ld	s0,16(sp)
    80002bf0:	00813483          	ld	s1,8(sp)
    80002bf4:	02010113          	addi	sp,sp,32
    80002bf8:	00008067          	ret
    if(!old->isGotov() && !old->isBlokiran() && !old->isUspavan()){ Scheduler::dohvatiInstancu()->Stavi(old);}
    80002bfc:	fffff097          	auipc	ra,0xfffff
    80002c00:	c44080e7          	jalr	-956(ra) # 80001840 <_ZN9Scheduler15dohvatiInstancuEv>
    80002c04:	00048593          	mv	a1,s1
    80002c08:	fffff097          	auipc	ra,0xfffff
    80002c0c:	cc4080e7          	jalr	-828(ra) # 800018cc <_ZN9Scheduler5StaviEP3TCB>
    80002c10:	fa9ff06f          	j	80002bb8 <_ZN3TCB8dispatchEv+0x34>

0000000080002c14 <_ZN3TCB15NapraviInstancuEPFvPvES0_Pm>:

TCB *TCB::NapraviInstancu(TCB::Telo telo, void *arg, uint64* stek) {
    80002c14:	fd010113          	addi	sp,sp,-48
    80002c18:	02113423          	sd	ra,40(sp)
    80002c1c:	02813023          	sd	s0,32(sp)
    80002c20:	00913c23          	sd	s1,24(sp)
    80002c24:	01213823          	sd	s2,16(sp)
    80002c28:	01313423          	sd	s3,8(sp)
    80002c2c:	03010413          	addi	s0,sp,48
    80002c30:	00050993          	mv	s3,a0
    80002c34:	00058913          	mv	s2,a1
    80002c38:	00060493          	mv	s1,a2
    TCB* vrati = (TCB*)AlokatorMemorije::dohvatiInstancu()->mem_alloc(sizeof(TCB));
    80002c3c:	00000097          	auipc	ra,0x0
    80002c40:	814080e7          	jalr	-2028(ra) # 80002450 <_ZN16AlokatorMemorije15dohvatiInstancuEv>
    80002c44:	04800593          	li	a1,72
    80002c48:	00000097          	auipc	ra,0x0
    80002c4c:	88c080e7          	jalr	-1908(ra) # 800024d4 <_ZN16AlokatorMemorije9mem_allocEm>
    vrati->telo = telo;
    80002c50:	01353023          	sd	s3,0(a0)
    vrati->stek = stek;
    80002c54:	00953423          	sd	s1,8(a0)
    vrati->argument = arg;
    80002c58:	01253823          	sd	s2,16(a0)
    vrati->kontekst.ra = (uint64) &threadWrapper;
    80002c5c:	00000797          	auipc	a5,0x0
    80002c60:	ecc78793          	addi	a5,a5,-308 # 80002b28 <_ZN3TCB13threadWrapperEv>
    80002c64:	00f53c23          	sd	a5,24(a0)
    vrati->kontekst.sp = (vrati->stek != nullptr)?(uint64)&vrati->stek[DEFAULT_STACK_SIZE]:0;
    80002c68:	04048463          	beqz	s1,80002cb0 <_ZN3TCB15NapraviInstancuEPFvPvES0_Pm+0x9c>
    80002c6c:	00008637          	lui	a2,0x8
    80002c70:	00c484b3          	add	s1,s1,a2
    80002c74:	02953023          	sd	s1,32(a0)
    vrati->gotov = false;
    80002c78:	02050823          	sb	zero,48(a0)
    vrati->blokiran = false;
    80002c7c:	020508a3          	sb	zero,49(a0)
    vrati->uspavan = false;
    80002c80:	02050923          	sb	zero,50(a0)
    vrati->dodeljenoVreme = DEFAULT_TIME_SLICE;
    80002c84:	00200793          	li	a5,2
    80002c88:	02f53423          	sd	a5,40(a0)
    vrati->glava = vrati->rep = nullptr;
    80002c8c:	04053023          	sd	zero,64(a0)
    80002c90:	02053c23          	sd	zero,56(a0)
    return vrati;

}
    80002c94:	02813083          	ld	ra,40(sp)
    80002c98:	02013403          	ld	s0,32(sp)
    80002c9c:	01813483          	ld	s1,24(sp)
    80002ca0:	01013903          	ld	s2,16(sp)
    80002ca4:	00813983          	ld	s3,8(sp)
    80002ca8:	03010113          	addi	sp,sp,48
    80002cac:	00008067          	ret
    vrati->kontekst.sp = (vrati->stek != nullptr)?(uint64)&vrati->stek[DEFAULT_STACK_SIZE]:0;
    80002cb0:	00000493          	li	s1,0
    80002cb4:	fc1ff06f          	j	80002c74 <_ZN3TCB15NapraviInstancuEPFvPvES0_Pm+0x60>

0000000080002cb8 <_ZN3TCB4joinEPS_>:
    bool isGotov() const {return gotov;};
    80002cb8:	03054783          	lbu	a5,48(a0)

void TCB::join(thread_t handle) {
    if(handle->isGotov())return;
    80002cbc:	00078463          	beqz	a5,80002cc4 <_ZN3TCB4joinEPS_+0xc>
    80002cc0:	00008067          	ret
void TCB::join(thread_t handle) {
    80002cc4:	fe010113          	addi	sp,sp,-32
    80002cc8:	00113c23          	sd	ra,24(sp)
    80002ccc:	00813823          	sd	s0,16(sp)
    80002cd0:	00913423          	sd	s1,8(sp)
    80002cd4:	02010413          	addi	s0,sp,32
    80002cd8:	00050493          	mv	s1,a0
    Elem* nov = (Elem*)AlokatorMemorije::dohvatiInstancu()->mem_alloc(sizeof(Elem));
    80002cdc:	fffff097          	auipc	ra,0xfffff
    80002ce0:	774080e7          	jalr	1908(ra) # 80002450 <_ZN16AlokatorMemorije15dohvatiInstancuEv>
    80002ce4:	01000593          	li	a1,16
    80002ce8:	fffff097          	auipc	ra,0xfffff
    80002cec:	7ec080e7          	jalr	2028(ra) # 800024d4 <_ZN16AlokatorMemorije9mem_allocEm>
    nov->nit = running;
    80002cf0:	00009797          	auipc	a5,0x9
    80002cf4:	a207b783          	ld	a5,-1504(a5) # 8000b710 <_ZN3TCB7runningE>
    80002cf8:	00f53023          	sd	a5,0(a0)
    nov->sl = nullptr;
    80002cfc:	00053423          	sd	zero,8(a0)
    if(handle->glava == nullptr){
    80002d00:	0384b703          	ld	a4,56(s1)
    80002d04:	02070a63          	beqz	a4,80002d38 <_ZN3TCB4joinEPS_+0x80>
        handle->glava = nov;
        handle->rep = nov;
    }
    else {
        handle->rep->sl = nov;
    80002d08:	0404b703          	ld	a4,64(s1)
    80002d0c:	00a73423          	sd	a0,8(a4)
        handle->rep = handle->rep->sl;
    80002d10:	0404b703          	ld	a4,64(s1)
    80002d14:	00873703          	ld	a4,8(a4)
    80002d18:	04e4b023          	sd	a4,64(s1)
    void setBlokiran(bool blokiran) {this->blokiran = blokiran;};
    80002d1c:	00100713          	li	a4,1
    80002d20:	02e788a3          	sb	a4,49(a5)
    bool isGotov() const {return gotov;};
    80002d24:	0304c783          	lbu	a5,48(s1)
    }
    running->setBlokiran(true);
    while(!(handle->isGotov()))dispatch();
    80002d28:	00079e63          	bnez	a5,80002d44 <_ZN3TCB4joinEPS_+0x8c>
    80002d2c:	00000097          	auipc	ra,0x0
    80002d30:	e58080e7          	jalr	-424(ra) # 80002b84 <_ZN3TCB8dispatchEv>
    80002d34:	ff1ff06f          	j	80002d24 <_ZN3TCB4joinEPS_+0x6c>
        handle->glava = nov;
    80002d38:	02a4bc23          	sd	a0,56(s1)
        handle->rep = nov;
    80002d3c:	04a4b023          	sd	a0,64(s1)
    80002d40:	fddff06f          	j	80002d1c <_ZN3TCB4joinEPS_+0x64>
}
    80002d44:	01813083          	ld	ra,24(sp)
    80002d48:	01013403          	ld	s0,16(sp)
    80002d4c:	00813483          	ld	s1,8(sp)
    80002d50:	02010113          	addi	sp,sp,32
    80002d54:	00008067          	ret

0000000080002d58 <_ZN3TCB8OslobodiEv>:

void TCB::Oslobodi() {
    80002d58:	fe010113          	addi	sp,sp,-32
    80002d5c:	00113c23          	sd	ra,24(sp)
    80002d60:	00813823          	sd	s0,16(sp)
    80002d64:	00913423          	sd	s1,8(sp)
    80002d68:	01213023          	sd	s2,0(sp)
    80002d6c:	02010413          	addi	s0,sp,32
    80002d70:	00050913          	mv	s2,a0
    while(glava != nullptr){
    80002d74:	03893483          	ld	s1,56(s2)
    80002d78:	02048c63          	beqz	s1,80002db0 <_ZN3TCB8OslobodiEv+0x58>
        Elem* oslob = glava;
        glava = glava->sl;
    80002d7c:	0084b783          	ld	a5,8(s1)
    80002d80:	02f93c23          	sd	a5,56(s2)
        Scheduler::dohvatiInstancu()->Stavi(oslob->nit);
    80002d84:	fffff097          	auipc	ra,0xfffff
    80002d88:	abc080e7          	jalr	-1348(ra) # 80001840 <_ZN9Scheduler15dohvatiInstancuEv>
    80002d8c:	0004b583          	ld	a1,0(s1)
    80002d90:	fffff097          	auipc	ra,0xfffff
    80002d94:	b3c080e7          	jalr	-1220(ra) # 800018cc <_ZN9Scheduler5StaviEP3TCB>
        AlokatorMemorije::dohvatiInstancu()->mem_free(oslob);
    80002d98:	fffff097          	auipc	ra,0xfffff
    80002d9c:	6b8080e7          	jalr	1720(ra) # 80002450 <_ZN16AlokatorMemorije15dohvatiInstancuEv>
    80002da0:	00048593          	mv	a1,s1
    80002da4:	00000097          	auipc	ra,0x0
    80002da8:	858080e7          	jalr	-1960(ra) # 800025fc <_ZN16AlokatorMemorije8mem_freeEPv>
    while(glava != nullptr){
    80002dac:	fc9ff06f          	j	80002d74 <_ZN3TCB8OslobodiEv+0x1c>
    }
    rep = nullptr;
    80002db0:	04093023          	sd	zero,64(s2)
}
    80002db4:	01813083          	ld	ra,24(sp)
    80002db8:	01013403          	ld	s0,16(sp)
    80002dbc:	00813483          	ld	s1,8(sp)
    80002dc0:	00013903          	ld	s2,0(sp)
    80002dc4:	02010113          	addi	sp,sp,32
    80002dc8:	00008067          	ret

0000000080002dcc <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    80002dcc:	fe010113          	addi	sp,sp,-32
    80002dd0:	00113c23          	sd	ra,24(sp)
    80002dd4:	00813823          	sd	s0,16(sp)
    80002dd8:	00913423          	sd	s1,8(sp)
    80002ddc:	01213023          	sd	s2,0(sp)
    80002de0:	02010413          	addi	s0,sp,32
    80002de4:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80002de8:	00000913          	li	s2,0
    80002dec:	00c0006f          	j	80002df8 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002df0:	ffffe097          	auipc	ra,0xffffe
    80002df4:	6f0080e7          	jalr	1776(ra) # 800014e0 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80002df8:	fffff097          	auipc	ra,0xfffff
    80002dfc:	80c080e7          	jalr	-2036(ra) # 80001604 <_Z4getcv>
    80002e00:	0005059b          	sext.w	a1,a0
    80002e04:	01b00793          	li	a5,27
    80002e08:	02f58a63          	beq	a1,a5,80002e3c <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80002e0c:	0084b503          	ld	a0,8(s1)
    80002e10:	00003097          	auipc	ra,0x3
    80002e14:	414080e7          	jalr	1044(ra) # 80006224 <_ZN6Buffer3putEi>
        i++;
    80002e18:	0019071b          	addiw	a4,s2,1
    80002e1c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002e20:	0004a683          	lw	a3,0(s1)
    80002e24:	0026979b          	slliw	a5,a3,0x2
    80002e28:	00d787bb          	addw	a5,a5,a3
    80002e2c:	0017979b          	slliw	a5,a5,0x1
    80002e30:	02f767bb          	remw	a5,a4,a5
    80002e34:	fc0792e3          	bnez	a5,80002df8 <_ZL16producerKeyboardPv+0x2c>
    80002e38:	fb9ff06f          	j	80002df0 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80002e3c:	00100793          	li	a5,1
    80002e40:	00009717          	auipc	a4,0x9
    80002e44:	8ef72023          	sw	a5,-1824(a4) # 8000b720 <_ZL9threadEnd>
    data->buffer->put('!');
    80002e48:	02100593          	li	a1,33
    80002e4c:	0084b503          	ld	a0,8(s1)
    80002e50:	00003097          	auipc	ra,0x3
    80002e54:	3d4080e7          	jalr	980(ra) # 80006224 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002e58:	0104b503          	ld	a0,16(s1)
    80002e5c:	ffffe097          	auipc	ra,0xffffe
    80002e60:	750080e7          	jalr	1872(ra) # 800015ac <_Z10sem_signalP7Semafor>
}
    80002e64:	01813083          	ld	ra,24(sp)
    80002e68:	01013403          	ld	s0,16(sp)
    80002e6c:	00813483          	ld	s1,8(sp)
    80002e70:	00013903          	ld	s2,0(sp)
    80002e74:	02010113          	addi	sp,sp,32
    80002e78:	00008067          	ret

0000000080002e7c <_ZL8producerPv>:

static void producer(void *arg) {
    80002e7c:	fe010113          	addi	sp,sp,-32
    80002e80:	00113c23          	sd	ra,24(sp)
    80002e84:	00813823          	sd	s0,16(sp)
    80002e88:	00913423          	sd	s1,8(sp)
    80002e8c:	01213023          	sd	s2,0(sp)
    80002e90:	02010413          	addi	s0,sp,32
    80002e94:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002e98:	00000913          	li	s2,0
    80002e9c:	00c0006f          	j	80002ea8 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80002ea0:	ffffe097          	auipc	ra,0xffffe
    80002ea4:	640080e7          	jalr	1600(ra) # 800014e0 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80002ea8:	00009797          	auipc	a5,0x9
    80002eac:	8787a783          	lw	a5,-1928(a5) # 8000b720 <_ZL9threadEnd>
    80002eb0:	02079e63          	bnez	a5,80002eec <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80002eb4:	0004a583          	lw	a1,0(s1)
    80002eb8:	0305859b          	addiw	a1,a1,48
    80002ebc:	0084b503          	ld	a0,8(s1)
    80002ec0:	00003097          	auipc	ra,0x3
    80002ec4:	364080e7          	jalr	868(ra) # 80006224 <_ZN6Buffer3putEi>
        i++;
    80002ec8:	0019071b          	addiw	a4,s2,1
    80002ecc:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002ed0:	0004a683          	lw	a3,0(s1)
    80002ed4:	0026979b          	slliw	a5,a3,0x2
    80002ed8:	00d787bb          	addw	a5,a5,a3
    80002edc:	0017979b          	slliw	a5,a5,0x1
    80002ee0:	02f767bb          	remw	a5,a4,a5
    80002ee4:	fc0792e3          	bnez	a5,80002ea8 <_ZL8producerPv+0x2c>
    80002ee8:	fb9ff06f          	j	80002ea0 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80002eec:	0104b503          	ld	a0,16(s1)
    80002ef0:	ffffe097          	auipc	ra,0xffffe
    80002ef4:	6bc080e7          	jalr	1724(ra) # 800015ac <_Z10sem_signalP7Semafor>
}
    80002ef8:	01813083          	ld	ra,24(sp)
    80002efc:	01013403          	ld	s0,16(sp)
    80002f00:	00813483          	ld	s1,8(sp)
    80002f04:	00013903          	ld	s2,0(sp)
    80002f08:	02010113          	addi	sp,sp,32
    80002f0c:	00008067          	ret

0000000080002f10 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80002f10:	fd010113          	addi	sp,sp,-48
    80002f14:	02113423          	sd	ra,40(sp)
    80002f18:	02813023          	sd	s0,32(sp)
    80002f1c:	00913c23          	sd	s1,24(sp)
    80002f20:	01213823          	sd	s2,16(sp)
    80002f24:	01313423          	sd	s3,8(sp)
    80002f28:	03010413          	addi	s0,sp,48
    80002f2c:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002f30:	00000993          	li	s3,0
    80002f34:	01c0006f          	j	80002f50 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002f38:	ffffe097          	auipc	ra,0xffffe
    80002f3c:	5a8080e7          	jalr	1448(ra) # 800014e0 <_Z15thread_dispatchv>
    80002f40:	0500006f          	j	80002f90 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002f44:	00a00513          	li	a0,10
    80002f48:	ffffe097          	auipc	ra,0xffffe
    80002f4c:	6e4080e7          	jalr	1764(ra) # 8000162c <_Z4putcc>
    while (!threadEnd) {
    80002f50:	00008797          	auipc	a5,0x8
    80002f54:	7d07a783          	lw	a5,2000(a5) # 8000b720 <_ZL9threadEnd>
    80002f58:	06079063          	bnez	a5,80002fb8 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    80002f5c:	00893503          	ld	a0,8(s2)
    80002f60:	00003097          	auipc	ra,0x3
    80002f64:	354080e7          	jalr	852(ra) # 800062b4 <_ZN6Buffer3getEv>
        i++;
    80002f68:	0019849b          	addiw	s1,s3,1
    80002f6c:	0004899b          	sext.w	s3,s1
        putc(key);
    80002f70:	0ff57513          	andi	a0,a0,255
    80002f74:	ffffe097          	auipc	ra,0xffffe
    80002f78:	6b8080e7          	jalr	1720(ra) # 8000162c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80002f7c:	00092703          	lw	a4,0(s2)
    80002f80:	0027179b          	slliw	a5,a4,0x2
    80002f84:	00e787bb          	addw	a5,a5,a4
    80002f88:	02f4e7bb          	remw	a5,s1,a5
    80002f8c:	fa0786e3          	beqz	a5,80002f38 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002f90:	05000793          	li	a5,80
    80002f94:	02f4e4bb          	remw	s1,s1,a5
    80002f98:	fa049ce3          	bnez	s1,80002f50 <_ZL8consumerPv+0x40>
    80002f9c:	fa9ff06f          	j	80002f44 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80002fa0:	00893503          	ld	a0,8(s2)
    80002fa4:	00003097          	auipc	ra,0x3
    80002fa8:	310080e7          	jalr	784(ra) # 800062b4 <_ZN6Buffer3getEv>
        putc(key);
    80002fac:	0ff57513          	andi	a0,a0,255
    80002fb0:	ffffe097          	auipc	ra,0xffffe
    80002fb4:	67c080e7          	jalr	1660(ra) # 8000162c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80002fb8:	00893503          	ld	a0,8(s2)
    80002fbc:	00003097          	auipc	ra,0x3
    80002fc0:	384080e7          	jalr	900(ra) # 80006340 <_ZN6Buffer6getCntEv>
    80002fc4:	fca04ee3          	bgtz	a0,80002fa0 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80002fc8:	01093503          	ld	a0,16(s2)
    80002fcc:	ffffe097          	auipc	ra,0xffffe
    80002fd0:	5e0080e7          	jalr	1504(ra) # 800015ac <_Z10sem_signalP7Semafor>
}
    80002fd4:	02813083          	ld	ra,40(sp)
    80002fd8:	02013403          	ld	s0,32(sp)
    80002fdc:	01813483          	ld	s1,24(sp)
    80002fe0:	01013903          	ld	s2,16(sp)
    80002fe4:	00813983          	ld	s3,8(sp)
    80002fe8:	03010113          	addi	sp,sp,48
    80002fec:	00008067          	ret

0000000080002ff0 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80002ff0:	f9010113          	addi	sp,sp,-112
    80002ff4:	06113423          	sd	ra,104(sp)
    80002ff8:	06813023          	sd	s0,96(sp)
    80002ffc:	04913c23          	sd	s1,88(sp)
    80003000:	05213823          	sd	s2,80(sp)
    80003004:	05313423          	sd	s3,72(sp)
    80003008:	05413023          	sd	s4,64(sp)
    8000300c:	03513c23          	sd	s5,56(sp)
    80003010:	03613823          	sd	s6,48(sp)
    80003014:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80003018:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    8000301c:	00006517          	auipc	a0,0x6
    80003020:	11450513          	addi	a0,a0,276 # 80009130 <CONSOLE_STATUS+0x120>
    80003024:	00002097          	auipc	ra,0x2
    80003028:	24c080e7          	jalr	588(ra) # 80005270 <_Z11printStringPKc>
    getString(input, 30);
    8000302c:	01e00593          	li	a1,30
    80003030:	fa040493          	addi	s1,s0,-96
    80003034:	00048513          	mv	a0,s1
    80003038:	00002097          	auipc	ra,0x2
    8000303c:	2c0080e7          	jalr	704(ra) # 800052f8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003040:	00048513          	mv	a0,s1
    80003044:	00002097          	auipc	ra,0x2
    80003048:	38c080e7          	jalr	908(ra) # 800053d0 <_Z11stringToIntPKc>
    8000304c:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003050:	00006517          	auipc	a0,0x6
    80003054:	10050513          	addi	a0,a0,256 # 80009150 <CONSOLE_STATUS+0x140>
    80003058:	00002097          	auipc	ra,0x2
    8000305c:	218080e7          	jalr	536(ra) # 80005270 <_Z11printStringPKc>
    getString(input, 30);
    80003060:	01e00593          	li	a1,30
    80003064:	00048513          	mv	a0,s1
    80003068:	00002097          	auipc	ra,0x2
    8000306c:	290080e7          	jalr	656(ra) # 800052f8 <_Z9getStringPci>
    n = stringToInt(input);
    80003070:	00048513          	mv	a0,s1
    80003074:	00002097          	auipc	ra,0x2
    80003078:	35c080e7          	jalr	860(ra) # 800053d0 <_Z11stringToIntPKc>
    8000307c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003080:	00006517          	auipc	a0,0x6
    80003084:	0f050513          	addi	a0,a0,240 # 80009170 <CONSOLE_STATUS+0x160>
    80003088:	00002097          	auipc	ra,0x2
    8000308c:	1e8080e7          	jalr	488(ra) # 80005270 <_Z11printStringPKc>
    80003090:	00000613          	li	a2,0
    80003094:	00a00593          	li	a1,10
    80003098:	00090513          	mv	a0,s2
    8000309c:	00002097          	auipc	ra,0x2
    800030a0:	384080e7          	jalr	900(ra) # 80005420 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800030a4:	00006517          	auipc	a0,0x6
    800030a8:	0e450513          	addi	a0,a0,228 # 80009188 <CONSOLE_STATUS+0x178>
    800030ac:	00002097          	auipc	ra,0x2
    800030b0:	1c4080e7          	jalr	452(ra) # 80005270 <_Z11printStringPKc>
    800030b4:	00000613          	li	a2,0
    800030b8:	00a00593          	li	a1,10
    800030bc:	00048513          	mv	a0,s1
    800030c0:	00002097          	auipc	ra,0x2
    800030c4:	360080e7          	jalr	864(ra) # 80005420 <_Z8printIntiii>
    printString(".\n");
    800030c8:	00006517          	auipc	a0,0x6
    800030cc:	0d850513          	addi	a0,a0,216 # 800091a0 <CONSOLE_STATUS+0x190>
    800030d0:	00002097          	auipc	ra,0x2
    800030d4:	1a0080e7          	jalr	416(ra) # 80005270 <_Z11printStringPKc>
    if(threadNum > n) {
    800030d8:	0324c463          	blt	s1,s2,80003100 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800030dc:	03205c63          	blez	s2,80003114 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800030e0:	03800513          	li	a0,56
    800030e4:	fffff097          	auipc	ra,0xfffff
    800030e8:	cfc080e7          	jalr	-772(ra) # 80001de0 <_Znwm>
    800030ec:	00050a13          	mv	s4,a0
    800030f0:	00048593          	mv	a1,s1
    800030f4:	00003097          	auipc	ra,0x3
    800030f8:	094080e7          	jalr	148(ra) # 80006188 <_ZN6BufferC1Ei>
    800030fc:	0300006f          	j	8000312c <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003100:	00006517          	auipc	a0,0x6
    80003104:	0a850513          	addi	a0,a0,168 # 800091a8 <CONSOLE_STATUS+0x198>
    80003108:	00002097          	auipc	ra,0x2
    8000310c:	168080e7          	jalr	360(ra) # 80005270 <_Z11printStringPKc>
        return;
    80003110:	0140006f          	j	80003124 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003114:	00006517          	auipc	a0,0x6
    80003118:	0d450513          	addi	a0,a0,212 # 800091e8 <CONSOLE_STATUS+0x1d8>
    8000311c:	00002097          	auipc	ra,0x2
    80003120:	154080e7          	jalr	340(ra) # 80005270 <_Z11printStringPKc>
        return;
    80003124:	000b0113          	mv	sp,s6
    80003128:	1500006f          	j	80003278 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    8000312c:	00000593          	li	a1,0
    80003130:	00008517          	auipc	a0,0x8
    80003134:	5f850513          	addi	a0,a0,1528 # 8000b728 <_ZL10waitForAll>
    80003138:	ffffe097          	auipc	ra,0xffffe
    8000313c:	3ec080e7          	jalr	1004(ra) # 80001524 <_Z8sem_openPP7Semaforj>
    thread_t threads[threadNum];
    80003140:	00391793          	slli	a5,s2,0x3
    80003144:	00f78793          	addi	a5,a5,15
    80003148:	ff07f793          	andi	a5,a5,-16
    8000314c:	40f10133          	sub	sp,sp,a5
    80003150:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80003154:	0019071b          	addiw	a4,s2,1
    80003158:	00171793          	slli	a5,a4,0x1
    8000315c:	00e787b3          	add	a5,a5,a4
    80003160:	00379793          	slli	a5,a5,0x3
    80003164:	00f78793          	addi	a5,a5,15
    80003168:	ff07f793          	andi	a5,a5,-16
    8000316c:	40f10133          	sub	sp,sp,a5
    80003170:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80003174:	00191613          	slli	a2,s2,0x1
    80003178:	012607b3          	add	a5,a2,s2
    8000317c:	00379793          	slli	a5,a5,0x3
    80003180:	00f987b3          	add	a5,s3,a5
    80003184:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003188:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    8000318c:	00008717          	auipc	a4,0x8
    80003190:	59c73703          	ld	a4,1436(a4) # 8000b728 <_ZL10waitForAll>
    80003194:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80003198:	00078613          	mv	a2,a5
    8000319c:	00000597          	auipc	a1,0x0
    800031a0:	d7458593          	addi	a1,a1,-652 # 80002f10 <_ZL8consumerPv>
    800031a4:	f9840513          	addi	a0,s0,-104
    800031a8:	ffffe097          	auipc	ra,0xffffe
    800031ac:	218080e7          	jalr	536(ra) # 800013c0 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800031b0:	00000493          	li	s1,0
    800031b4:	0280006f          	j	800031dc <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    800031b8:	00000597          	auipc	a1,0x0
    800031bc:	c1458593          	addi	a1,a1,-1004 # 80002dcc <_ZL16producerKeyboardPv>
                      data + i);
    800031c0:	00179613          	slli	a2,a5,0x1
    800031c4:	00f60633          	add	a2,a2,a5
    800031c8:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800031cc:	00c98633          	add	a2,s3,a2
    800031d0:	ffffe097          	auipc	ra,0xffffe
    800031d4:	1f0080e7          	jalr	496(ra) # 800013c0 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800031d8:	0014849b          	addiw	s1,s1,1
    800031dc:	0524d263          	bge	s1,s2,80003220 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    800031e0:	00149793          	slli	a5,s1,0x1
    800031e4:	009787b3          	add	a5,a5,s1
    800031e8:	00379793          	slli	a5,a5,0x3
    800031ec:	00f987b3          	add	a5,s3,a5
    800031f0:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800031f4:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800031f8:	00008717          	auipc	a4,0x8
    800031fc:	53073703          	ld	a4,1328(a4) # 8000b728 <_ZL10waitForAll>
    80003200:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80003204:	00048793          	mv	a5,s1
    80003208:	00349513          	slli	a0,s1,0x3
    8000320c:	00aa8533          	add	a0,s5,a0
    80003210:	fa9054e3          	blez	s1,800031b8 <_Z22producerConsumer_C_APIv+0x1c8>
    80003214:	00000597          	auipc	a1,0x0
    80003218:	c6858593          	addi	a1,a1,-920 # 80002e7c <_ZL8producerPv>
    8000321c:	fa5ff06f          	j	800031c0 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80003220:	ffffe097          	auipc	ra,0xffffe
    80003224:	2c0080e7          	jalr	704(ra) # 800014e0 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80003228:	00000493          	li	s1,0
    8000322c:	00994e63          	blt	s2,s1,80003248 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80003230:	00008517          	auipc	a0,0x8
    80003234:	4f853503          	ld	a0,1272(a0) # 8000b728 <_ZL10waitForAll>
    80003238:	ffffe097          	auipc	ra,0xffffe
    8000323c:	348080e7          	jalr	840(ra) # 80001580 <_Z8sem_waitP7Semafor>
    for (int i = 0; i <= threadNum; i++) {
    80003240:	0014849b          	addiw	s1,s1,1
    80003244:	fe9ff06f          	j	8000322c <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80003248:	00008517          	auipc	a0,0x8
    8000324c:	4e053503          	ld	a0,1248(a0) # 8000b728 <_ZL10waitForAll>
    80003250:	ffffe097          	auipc	ra,0xffffe
    80003254:	304080e7          	jalr	772(ra) # 80001554 <_Z9sem_closeP7Semafor>
    delete buffer;
    80003258:	000a0e63          	beqz	s4,80003274 <_Z22producerConsumer_C_APIv+0x284>
    8000325c:	000a0513          	mv	a0,s4
    80003260:	00003097          	auipc	ra,0x3
    80003264:	168080e7          	jalr	360(ra) # 800063c8 <_ZN6BufferD1Ev>
    80003268:	000a0513          	mv	a0,s4
    8000326c:	fffff097          	auipc	ra,0xfffff
    80003270:	b9c080e7          	jalr	-1124(ra) # 80001e08 <_ZdlPv>
    80003274:	000b0113          	mv	sp,s6

}
    80003278:	f9040113          	addi	sp,s0,-112
    8000327c:	06813083          	ld	ra,104(sp)
    80003280:	06013403          	ld	s0,96(sp)
    80003284:	05813483          	ld	s1,88(sp)
    80003288:	05013903          	ld	s2,80(sp)
    8000328c:	04813983          	ld	s3,72(sp)
    80003290:	04013a03          	ld	s4,64(sp)
    80003294:	03813a83          	ld	s5,56(sp)
    80003298:	03013b03          	ld	s6,48(sp)
    8000329c:	07010113          	addi	sp,sp,112
    800032a0:	00008067          	ret
    800032a4:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800032a8:	000a0513          	mv	a0,s4
    800032ac:	fffff097          	auipc	ra,0xfffff
    800032b0:	b5c080e7          	jalr	-1188(ra) # 80001e08 <_ZdlPv>
    800032b4:	00048513          	mv	a0,s1
    800032b8:	00009097          	auipc	ra,0x9
    800032bc:	590080e7          	jalr	1424(ra) # 8000c848 <_Unwind_Resume>

00000000800032c0 <_ZL9fibonaccim>:
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;
static Thread* a = nullptr;

static uint64 fibonacci(uint64 n) {
    800032c0:	fe010113          	addi	sp,sp,-32
    800032c4:	00113c23          	sd	ra,24(sp)
    800032c8:	00813823          	sd	s0,16(sp)
    800032cc:	00913423          	sd	s1,8(sp)
    800032d0:	01213023          	sd	s2,0(sp)
    800032d4:	02010413          	addi	s0,sp,32
    800032d8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800032dc:	00100793          	li	a5,1
    800032e0:	02a7f863          	bgeu	a5,a0,80003310 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800032e4:	00a00793          	li	a5,10
    800032e8:	02f577b3          	remu	a5,a0,a5
    800032ec:	02078e63          	beqz	a5,80003328 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800032f0:	fff48513          	addi	a0,s1,-1
    800032f4:	00000097          	auipc	ra,0x0
    800032f8:	fcc080e7          	jalr	-52(ra) # 800032c0 <_ZL9fibonaccim>
    800032fc:	00050913          	mv	s2,a0
    80003300:	ffe48513          	addi	a0,s1,-2
    80003304:	00000097          	auipc	ra,0x0
    80003308:	fbc080e7          	jalr	-68(ra) # 800032c0 <_ZL9fibonaccim>
    8000330c:	00a90533          	add	a0,s2,a0
}
    80003310:	01813083          	ld	ra,24(sp)
    80003314:	01013403          	ld	s0,16(sp)
    80003318:	00813483          	ld	s1,8(sp)
    8000331c:	00013903          	ld	s2,0(sp)
    80003320:	02010113          	addi	sp,sp,32
    80003324:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80003328:	ffffe097          	auipc	ra,0xffffe
    8000332c:	1b8080e7          	jalr	440(ra) # 800014e0 <_Z15thread_dispatchv>
    80003330:	fc1ff06f          	j	800032f0 <_ZL9fibonaccim+0x30>

0000000080003334 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80003334:	fe010113          	addi	sp,sp,-32
    80003338:	00113c23          	sd	ra,24(sp)
    8000333c:	00813823          	sd	s0,16(sp)
    80003340:	00913423          	sd	s1,8(sp)
    80003344:	01213023          	sd	s2,0(sp)
    80003348:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    8000334c:	00000913          	li	s2,0
    80003350:	0380006f          	j	80003388 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003354:	ffffe097          	auipc	ra,0xffffe
    80003358:	18c080e7          	jalr	396(ra) # 800014e0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000335c:	00148493          	addi	s1,s1,1
    80003360:	000027b7          	lui	a5,0x2
    80003364:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003368:	0097ee63          	bltu	a5,s1,80003384 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000336c:	00000713          	li	a4,0
    80003370:	000077b7          	lui	a5,0x7
    80003374:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003378:	fce7eee3          	bltu	a5,a4,80003354 <_ZN7WorkerA11workerBodyAEPv+0x20>
    8000337c:	00170713          	addi	a4,a4,1
    80003380:	ff1ff06f          	j	80003370 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80003384:	00190913          	addi	s2,s2,1
    80003388:	00900793          	li	a5,9
    8000338c:	0527e063          	bltu	a5,s2,800033cc <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80003390:	00006517          	auipc	a0,0x6
    80003394:	e8850513          	addi	a0,a0,-376 # 80009218 <CONSOLE_STATUS+0x208>
    80003398:	00002097          	auipc	ra,0x2
    8000339c:	ed8080e7          	jalr	-296(ra) # 80005270 <_Z11printStringPKc>
    800033a0:	00000613          	li	a2,0
    800033a4:	00a00593          	li	a1,10
    800033a8:	0009051b          	sext.w	a0,s2
    800033ac:	00002097          	auipc	ra,0x2
    800033b0:	074080e7          	jalr	116(ra) # 80005420 <_Z8printIntiii>
    800033b4:	00006517          	auipc	a0,0x6
    800033b8:	0b450513          	addi	a0,a0,180 # 80009468 <CONSOLE_STATUS+0x458>
    800033bc:	00002097          	auipc	ra,0x2
    800033c0:	eb4080e7          	jalr	-332(ra) # 80005270 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800033c4:	00000493          	li	s1,0
    800033c8:	f99ff06f          	j	80003360 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }

    printString("A finished!\n");
    800033cc:	00006517          	auipc	a0,0x6
    800033d0:	e5450513          	addi	a0,a0,-428 # 80009220 <CONSOLE_STATUS+0x210>
    800033d4:	00002097          	auipc	ra,0x2
    800033d8:	e9c080e7          	jalr	-356(ra) # 80005270 <_Z11printStringPKc>
    finishedA = true;
    800033dc:	00100793          	li	a5,1
    800033e0:	00008717          	auipc	a4,0x8
    800033e4:	34f70823          	sb	a5,848(a4) # 8000b730 <_ZL9finishedA>
}
    800033e8:	01813083          	ld	ra,24(sp)
    800033ec:	01013403          	ld	s0,16(sp)
    800033f0:	00813483          	ld	s1,8(sp)
    800033f4:	00013903          	ld	s2,0(sp)
    800033f8:	02010113          	addi	sp,sp,32
    800033fc:	00008067          	ret

0000000080003400 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80003400:	fe010113          	addi	sp,sp,-32
    80003404:	00113c23          	sd	ra,24(sp)
    80003408:	00813823          	sd	s0,16(sp)
    8000340c:	00913423          	sd	s1,8(sp)
    80003410:	01213023          	sd	s2,0(sp)
    80003414:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80003418:	00000913          	li	s2,0
    8000341c:	0380006f          	j	80003454 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80003420:	ffffe097          	auipc	ra,0xffffe
    80003424:	0c0080e7          	jalr	192(ra) # 800014e0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003428:	00148493          	addi	s1,s1,1
    8000342c:	000027b7          	lui	a5,0x2
    80003430:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80003434:	0097ee63          	bltu	a5,s1,80003450 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80003438:	00000713          	li	a4,0
    8000343c:	000077b7          	lui	a5,0x7
    80003440:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80003444:	fce7eee3          	bltu	a5,a4,80003420 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80003448:	00170713          	addi	a4,a4,1
    8000344c:	ff1ff06f          	j	8000343c <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80003450:	00190913          	addi	s2,s2,1
    80003454:	00f00793          	li	a5,15
    80003458:	0527e063          	bltu	a5,s2,80003498 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    8000345c:	00006517          	auipc	a0,0x6
    80003460:	dd450513          	addi	a0,a0,-556 # 80009230 <CONSOLE_STATUS+0x220>
    80003464:	00002097          	auipc	ra,0x2
    80003468:	e0c080e7          	jalr	-500(ra) # 80005270 <_Z11printStringPKc>
    8000346c:	00000613          	li	a2,0
    80003470:	00a00593          	li	a1,10
    80003474:	0009051b          	sext.w	a0,s2
    80003478:	00002097          	auipc	ra,0x2
    8000347c:	fa8080e7          	jalr	-88(ra) # 80005420 <_Z8printIntiii>
    80003480:	00006517          	auipc	a0,0x6
    80003484:	fe850513          	addi	a0,a0,-24 # 80009468 <CONSOLE_STATUS+0x458>
    80003488:	00002097          	auipc	ra,0x2
    8000348c:	de8080e7          	jalr	-536(ra) # 80005270 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003490:	00000493          	li	s1,0
    80003494:	f99ff06f          	j	8000342c <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80003498:	00006517          	auipc	a0,0x6
    8000349c:	da050513          	addi	a0,a0,-608 # 80009238 <CONSOLE_STATUS+0x228>
    800034a0:	00002097          	auipc	ra,0x2
    800034a4:	dd0080e7          	jalr	-560(ra) # 80005270 <_Z11printStringPKc>
    finishedB = true;
    800034a8:	00100793          	li	a5,1
    800034ac:	00008717          	auipc	a4,0x8
    800034b0:	28f702a3          	sb	a5,645(a4) # 8000b731 <_ZL9finishedB>
    thread_dispatch();
    800034b4:	ffffe097          	auipc	ra,0xffffe
    800034b8:	02c080e7          	jalr	44(ra) # 800014e0 <_Z15thread_dispatchv>

}
    800034bc:	01813083          	ld	ra,24(sp)
    800034c0:	01013403          	ld	s0,16(sp)
    800034c4:	00813483          	ld	s1,8(sp)
    800034c8:	00013903          	ld	s2,0(sp)
    800034cc:	02010113          	addi	sp,sp,32
    800034d0:	00008067          	ret

00000000800034d4 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    800034d4:	fe010113          	addi	sp,sp,-32
    800034d8:	00113c23          	sd	ra,24(sp)
    800034dc:	00813823          	sd	s0,16(sp)
    800034e0:	00913423          	sd	s1,8(sp)
    800034e4:	01213023          	sd	s2,0(sp)
    800034e8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800034ec:	00000493          	li	s1,0
    800034f0:	0400006f          	j	80003530 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800034f4:	00006517          	auipc	a0,0x6
    800034f8:	d5450513          	addi	a0,a0,-684 # 80009248 <CONSOLE_STATUS+0x238>
    800034fc:	00002097          	auipc	ra,0x2
    80003500:	d74080e7          	jalr	-652(ra) # 80005270 <_Z11printStringPKc>
    80003504:	00000613          	li	a2,0
    80003508:	00a00593          	li	a1,10
    8000350c:	00048513          	mv	a0,s1
    80003510:	00002097          	auipc	ra,0x2
    80003514:	f10080e7          	jalr	-240(ra) # 80005420 <_Z8printIntiii>
    80003518:	00006517          	auipc	a0,0x6
    8000351c:	f5050513          	addi	a0,a0,-176 # 80009468 <CONSOLE_STATUS+0x458>
    80003520:	00002097          	auipc	ra,0x2
    80003524:	d50080e7          	jalr	-688(ra) # 80005270 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80003528:	0014849b          	addiw	s1,s1,1
    8000352c:	0ff4f493          	andi	s1,s1,255
    80003530:	00200793          	li	a5,2
    80003534:	fc97f0e3          	bgeu	a5,s1,800034f4 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80003538:	00006517          	auipc	a0,0x6
    8000353c:	d1850513          	addi	a0,a0,-744 # 80009250 <CONSOLE_STATUS+0x240>
    80003540:	00002097          	auipc	ra,0x2
    80003544:	d30080e7          	jalr	-720(ra) # 80005270 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80003548:	00700313          	li	t1,7
    thread_dispatch();
    8000354c:	ffffe097          	auipc	ra,0xffffe
    80003550:	f94080e7          	jalr	-108(ra) # 800014e0 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003554:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80003558:	00006517          	auipc	a0,0x6
    8000355c:	d0850513          	addi	a0,a0,-760 # 80009260 <CONSOLE_STATUS+0x250>
    80003560:	00002097          	auipc	ra,0x2
    80003564:	d10080e7          	jalr	-752(ra) # 80005270 <_Z11printStringPKc>
    80003568:	00000613          	li	a2,0
    8000356c:	00a00593          	li	a1,10
    80003570:	0009051b          	sext.w	a0,s2
    80003574:	00002097          	auipc	ra,0x2
    80003578:	eac080e7          	jalr	-340(ra) # 80005420 <_Z8printIntiii>
    8000357c:	00006517          	auipc	a0,0x6
    80003580:	eec50513          	addi	a0,a0,-276 # 80009468 <CONSOLE_STATUS+0x458>
    80003584:	00002097          	auipc	ra,0x2
    80003588:	cec080e7          	jalr	-788(ra) # 80005270 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    8000358c:	00c00513          	li	a0,12
    80003590:	00000097          	auipc	ra,0x0
    80003594:	d30080e7          	jalr	-720(ra) # 800032c0 <_ZL9fibonaccim>
    80003598:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000359c:	00006517          	auipc	a0,0x6
    800035a0:	ccc50513          	addi	a0,a0,-820 # 80009268 <CONSOLE_STATUS+0x258>
    800035a4:	00002097          	auipc	ra,0x2
    800035a8:	ccc080e7          	jalr	-820(ra) # 80005270 <_Z11printStringPKc>
    800035ac:	00000613          	li	a2,0
    800035b0:	00a00593          	li	a1,10
    800035b4:	0009051b          	sext.w	a0,s2
    800035b8:	00002097          	auipc	ra,0x2
    800035bc:	e68080e7          	jalr	-408(ra) # 80005420 <_Z8printIntiii>
    800035c0:	00006517          	auipc	a0,0x6
    800035c4:	ea850513          	addi	a0,a0,-344 # 80009468 <CONSOLE_STATUS+0x458>
    800035c8:	00002097          	auipc	ra,0x2
    800035cc:	ca8080e7          	jalr	-856(ra) # 80005270 <_Z11printStringPKc>
    800035d0:	0400006f          	j	80003610 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800035d4:	00006517          	auipc	a0,0x6
    800035d8:	c7450513          	addi	a0,a0,-908 # 80009248 <CONSOLE_STATUS+0x238>
    800035dc:	00002097          	auipc	ra,0x2
    800035e0:	c94080e7          	jalr	-876(ra) # 80005270 <_Z11printStringPKc>
    800035e4:	00000613          	li	a2,0
    800035e8:	00a00593          	li	a1,10
    800035ec:	00048513          	mv	a0,s1
    800035f0:	00002097          	auipc	ra,0x2
    800035f4:	e30080e7          	jalr	-464(ra) # 80005420 <_Z8printIntiii>
    800035f8:	00006517          	auipc	a0,0x6
    800035fc:	e7050513          	addi	a0,a0,-400 # 80009468 <CONSOLE_STATUS+0x458>
    80003600:	00002097          	auipc	ra,0x2
    80003604:	c70080e7          	jalr	-912(ra) # 80005270 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80003608:	0014849b          	addiw	s1,s1,1
    8000360c:	0ff4f493          	andi	s1,s1,255
    80003610:	00500793          	li	a5,5
    80003614:	fc97f0e3          	bgeu	a5,s1,800035d4 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }
    a->join();
    80003618:	00008497          	auipc	s1,0x8
    8000361c:	11848493          	addi	s1,s1,280 # 8000b730 <_ZL9finishedA>
    80003620:	0084b503          	ld	a0,8(s1)
    80003624:	fffff097          	auipc	ra,0xfffff
    80003628:	aa0080e7          	jalr	-1376(ra) # 800020c4 <_ZN6Thread4joinEv>
    printString("A finished!\n");
    8000362c:	00006517          	auipc	a0,0x6
    80003630:	bf450513          	addi	a0,a0,-1036 # 80009220 <CONSOLE_STATUS+0x210>
    80003634:	00002097          	auipc	ra,0x2
    80003638:	c3c080e7          	jalr	-964(ra) # 80005270 <_Z11printStringPKc>
    finishedC = true;
    8000363c:	00100793          	li	a5,1
    80003640:	00f48823          	sb	a5,16(s1)
    thread_dispatch();
    80003644:	ffffe097          	auipc	ra,0xffffe
    80003648:	e9c080e7          	jalr	-356(ra) # 800014e0 <_Z15thread_dispatchv>
}
    8000364c:	01813083          	ld	ra,24(sp)
    80003650:	01013403          	ld	s0,16(sp)
    80003654:	00813483          	ld	s1,8(sp)
    80003658:	00013903          	ld	s2,0(sp)
    8000365c:	02010113          	addi	sp,sp,32
    80003660:	00008067          	ret

0000000080003664 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80003664:	fe010113          	addi	sp,sp,-32
    80003668:	00113c23          	sd	ra,24(sp)
    8000366c:	00813823          	sd	s0,16(sp)
    80003670:	00913423          	sd	s1,8(sp)
    80003674:	01213023          	sd	s2,0(sp)
    80003678:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000367c:	00a00493          	li	s1,10
    80003680:	0400006f          	j	800036c0 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003684:	00006517          	auipc	a0,0x6
    80003688:	bf450513          	addi	a0,a0,-1036 # 80009278 <CONSOLE_STATUS+0x268>
    8000368c:	00002097          	auipc	ra,0x2
    80003690:	be4080e7          	jalr	-1052(ra) # 80005270 <_Z11printStringPKc>
    80003694:	00000613          	li	a2,0
    80003698:	00a00593          	li	a1,10
    8000369c:	00048513          	mv	a0,s1
    800036a0:	00002097          	auipc	ra,0x2
    800036a4:	d80080e7          	jalr	-640(ra) # 80005420 <_Z8printIntiii>
    800036a8:	00006517          	auipc	a0,0x6
    800036ac:	dc050513          	addi	a0,a0,-576 # 80009468 <CONSOLE_STATUS+0x458>
    800036b0:	00002097          	auipc	ra,0x2
    800036b4:	bc0080e7          	jalr	-1088(ra) # 80005270 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800036b8:	0014849b          	addiw	s1,s1,1
    800036bc:	0ff4f493          	andi	s1,s1,255
    800036c0:	00c00793          	li	a5,12
    800036c4:	fc97f0e3          	bgeu	a5,s1,80003684 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    800036c8:	00006517          	auipc	a0,0x6
    800036cc:	bb850513          	addi	a0,a0,-1096 # 80009280 <CONSOLE_STATUS+0x270>
    800036d0:	00002097          	auipc	ra,0x2
    800036d4:	ba0080e7          	jalr	-1120(ra) # 80005270 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800036d8:	00500313          	li	t1,5
    thread_dispatch();
    800036dc:	ffffe097          	auipc	ra,0xffffe
    800036e0:	e04080e7          	jalr	-508(ra) # 800014e0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800036e4:	01000513          	li	a0,16
    800036e8:	00000097          	auipc	ra,0x0
    800036ec:	bd8080e7          	jalr	-1064(ra) # 800032c0 <_ZL9fibonaccim>
    800036f0:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800036f4:	00006517          	auipc	a0,0x6
    800036f8:	b9c50513          	addi	a0,a0,-1124 # 80009290 <CONSOLE_STATUS+0x280>
    800036fc:	00002097          	auipc	ra,0x2
    80003700:	b74080e7          	jalr	-1164(ra) # 80005270 <_Z11printStringPKc>
    80003704:	00000613          	li	a2,0
    80003708:	00a00593          	li	a1,10
    8000370c:	0009051b          	sext.w	a0,s2
    80003710:	00002097          	auipc	ra,0x2
    80003714:	d10080e7          	jalr	-752(ra) # 80005420 <_Z8printIntiii>
    80003718:	00006517          	auipc	a0,0x6
    8000371c:	d5050513          	addi	a0,a0,-688 # 80009468 <CONSOLE_STATUS+0x458>
    80003720:	00002097          	auipc	ra,0x2
    80003724:	b50080e7          	jalr	-1200(ra) # 80005270 <_Z11printStringPKc>
    80003728:	0400006f          	j	80003768 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    8000372c:	00006517          	auipc	a0,0x6
    80003730:	b4c50513          	addi	a0,a0,-1204 # 80009278 <CONSOLE_STATUS+0x268>
    80003734:	00002097          	auipc	ra,0x2
    80003738:	b3c080e7          	jalr	-1220(ra) # 80005270 <_Z11printStringPKc>
    8000373c:	00000613          	li	a2,0
    80003740:	00a00593          	li	a1,10
    80003744:	00048513          	mv	a0,s1
    80003748:	00002097          	auipc	ra,0x2
    8000374c:	cd8080e7          	jalr	-808(ra) # 80005420 <_Z8printIntiii>
    80003750:	00006517          	auipc	a0,0x6
    80003754:	d1850513          	addi	a0,a0,-744 # 80009468 <CONSOLE_STATUS+0x458>
    80003758:	00002097          	auipc	ra,0x2
    8000375c:	b18080e7          	jalr	-1256(ra) # 80005270 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80003760:	0014849b          	addiw	s1,s1,1
    80003764:	0ff4f493          	andi	s1,s1,255
    80003768:	00f00793          	li	a5,15
    8000376c:	fc97f0e3          	bgeu	a5,s1,8000372c <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }
    a->join();
    80003770:	00008497          	auipc	s1,0x8
    80003774:	fc048493          	addi	s1,s1,-64 # 8000b730 <_ZL9finishedA>
    80003778:	0084b503          	ld	a0,8(s1)
    8000377c:	fffff097          	auipc	ra,0xfffff
    80003780:	948080e7          	jalr	-1720(ra) # 800020c4 <_ZN6Thread4joinEv>
    printString("D finished!\n");
    80003784:	00006517          	auipc	a0,0x6
    80003788:	b1c50513          	addi	a0,a0,-1252 # 800092a0 <CONSOLE_STATUS+0x290>
    8000378c:	00002097          	auipc	ra,0x2
    80003790:	ae4080e7          	jalr	-1308(ra) # 80005270 <_Z11printStringPKc>
    finishedD = true;
    80003794:	00100793          	li	a5,1
    80003798:	00f488a3          	sb	a5,17(s1)
    thread_dispatch();
    8000379c:	ffffe097          	auipc	ra,0xffffe
    800037a0:	d44080e7          	jalr	-700(ra) # 800014e0 <_Z15thread_dispatchv>
}
    800037a4:	01813083          	ld	ra,24(sp)
    800037a8:	01013403          	ld	s0,16(sp)
    800037ac:	00813483          	ld	s1,8(sp)
    800037b0:	00013903          	ld	s2,0(sp)
    800037b4:	02010113          	addi	sp,sp,32
    800037b8:	00008067          	ret

00000000800037bc <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    800037bc:	fc010113          	addi	sp,sp,-64
    800037c0:	02113c23          	sd	ra,56(sp)
    800037c4:	02813823          	sd	s0,48(sp)
    800037c8:	02913423          	sd	s1,40(sp)
    800037cc:	03213023          	sd	s2,32(sp)
    800037d0:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    800037d4:	02000513          	li	a0,32
    800037d8:	ffffe097          	auipc	ra,0xffffe
    800037dc:	608080e7          	jalr	1544(ra) # 80001de0 <_Znwm>
    800037e0:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    800037e4:	fffff097          	auipc	ra,0xfffff
    800037e8:	874080e7          	jalr	-1932(ra) # 80002058 <_ZN6ThreadC1Ev>
    800037ec:	00008797          	auipc	a5,0x8
    800037f0:	cb478793          	addi	a5,a5,-844 # 8000b4a0 <_ZTV7WorkerA+0x10>
    800037f4:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    800037f8:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    800037fc:	00006517          	auipc	a0,0x6
    80003800:	ab450513          	addi	a0,a0,-1356 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80003804:	00002097          	auipc	ra,0x2
    80003808:	a6c080e7          	jalr	-1428(ra) # 80005270 <_Z11printStringPKc>
    a = threads[0];
    8000380c:	fc043783          	ld	a5,-64(s0)
    80003810:	00008717          	auipc	a4,0x8
    80003814:	f2f73423          	sd	a5,-216(a4) # 8000b738 <_ZL1a>

    threads[1] = new WorkerB();
    80003818:	02000513          	li	a0,32
    8000381c:	ffffe097          	auipc	ra,0xffffe
    80003820:	5c4080e7          	jalr	1476(ra) # 80001de0 <_Znwm>
    80003824:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80003828:	fffff097          	auipc	ra,0xfffff
    8000382c:	830080e7          	jalr	-2000(ra) # 80002058 <_ZN6ThreadC1Ev>
    80003830:	00008797          	auipc	a5,0x8
    80003834:	c9878793          	addi	a5,a5,-872 # 8000b4c8 <_ZTV7WorkerB+0x10>
    80003838:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    8000383c:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80003840:	00006517          	auipc	a0,0x6
    80003844:	a8850513          	addi	a0,a0,-1400 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80003848:	00002097          	auipc	ra,0x2
    8000384c:	a28080e7          	jalr	-1496(ra) # 80005270 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80003850:	02000513          	li	a0,32
    80003854:	ffffe097          	auipc	ra,0xffffe
    80003858:	58c080e7          	jalr	1420(ra) # 80001de0 <_Znwm>
    8000385c:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80003860:	ffffe097          	auipc	ra,0xffffe
    80003864:	7f8080e7          	jalr	2040(ra) # 80002058 <_ZN6ThreadC1Ev>
    80003868:	00008797          	auipc	a5,0x8
    8000386c:	c8878793          	addi	a5,a5,-888 # 8000b4f0 <_ZTV7WorkerC+0x10>
    80003870:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80003874:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80003878:	00006517          	auipc	a0,0x6
    8000387c:	a6850513          	addi	a0,a0,-1432 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80003880:	00002097          	auipc	ra,0x2
    80003884:	9f0080e7          	jalr	-1552(ra) # 80005270 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80003888:	02000513          	li	a0,32
    8000388c:	ffffe097          	auipc	ra,0xffffe
    80003890:	554080e7          	jalr	1364(ra) # 80001de0 <_Znwm>
    80003894:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80003898:	ffffe097          	auipc	ra,0xffffe
    8000389c:	7c0080e7          	jalr	1984(ra) # 80002058 <_ZN6ThreadC1Ev>
    800038a0:	00008797          	auipc	a5,0x8
    800038a4:	c7878793          	addi	a5,a5,-904 # 8000b518 <_ZTV7WorkerD+0x10>
    800038a8:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    800038ac:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    800038b0:	00006517          	auipc	a0,0x6
    800038b4:	a4850513          	addi	a0,a0,-1464 # 800092f8 <CONSOLE_STATUS+0x2e8>
    800038b8:	00002097          	auipc	ra,0x2
    800038bc:	9b8080e7          	jalr	-1608(ra) # 80005270 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    800038c0:	00000493          	li	s1,0
    800038c4:	00300793          	li	a5,3
    800038c8:	0297c663          	blt	a5,s1,800038f4 <_Z20Threads_CPP_API_testv+0x138>
        threads[i]->start();
    800038cc:	00349793          	slli	a5,s1,0x3
    800038d0:	fe040713          	addi	a4,s0,-32
    800038d4:	00f707b3          	add	a5,a4,a5
    800038d8:	fe07b503          	ld	a0,-32(a5)
    800038dc:	ffffe097          	auipc	ra,0xffffe
    800038e0:	710080e7          	jalr	1808(ra) # 80001fec <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    800038e4:	0014849b          	addiw	s1,s1,1
    800038e8:	fddff06f          	j	800038c4 <_Z20Threads_CPP_API_testv+0x108>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    800038ec:	ffffe097          	auipc	ra,0xffffe
    800038f0:	744080e7          	jalr	1860(ra) # 80002030 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800038f4:	00008797          	auipc	a5,0x8
    800038f8:	e3c7c783          	lbu	a5,-452(a5) # 8000b730 <_ZL9finishedA>
    800038fc:	fe0788e3          	beqz	a5,800038ec <_Z20Threads_CPP_API_testv+0x130>
    80003900:	00008797          	auipc	a5,0x8
    80003904:	e317c783          	lbu	a5,-463(a5) # 8000b731 <_ZL9finishedB>
    80003908:	fe0782e3          	beqz	a5,800038ec <_Z20Threads_CPP_API_testv+0x130>
    8000390c:	00008797          	auipc	a5,0x8
    80003910:	e347c783          	lbu	a5,-460(a5) # 8000b740 <_ZL9finishedC>
    80003914:	fc078ce3          	beqz	a5,800038ec <_Z20Threads_CPP_API_testv+0x130>
    80003918:	00008797          	auipc	a5,0x8
    8000391c:	e297c783          	lbu	a5,-471(a5) # 8000b741 <_ZL9finishedD>
    80003920:	fc0786e3          	beqz	a5,800038ec <_Z20Threads_CPP_API_testv+0x130>
    80003924:	fc040493          	addi	s1,s0,-64
    80003928:	0080006f          	j	80003930 <_Z20Threads_CPP_API_testv+0x174>
    }

    for (auto thread: threads) { delete thread; }
    8000392c:	00848493          	addi	s1,s1,8
    80003930:	fe040793          	addi	a5,s0,-32
    80003934:	08f48663          	beq	s1,a5,800039c0 <_Z20Threads_CPP_API_testv+0x204>
    80003938:	0004b503          	ld	a0,0(s1)
    8000393c:	fe0508e3          	beqz	a0,8000392c <_Z20Threads_CPP_API_testv+0x170>
    80003940:	00053783          	ld	a5,0(a0)
    80003944:	0087b783          	ld	a5,8(a5)
    80003948:	000780e7          	jalr	a5
    8000394c:	fe1ff06f          	j	8000392c <_Z20Threads_CPP_API_testv+0x170>
    80003950:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80003954:	00048513          	mv	a0,s1
    80003958:	ffffe097          	auipc	ra,0xffffe
    8000395c:	4b0080e7          	jalr	1200(ra) # 80001e08 <_ZdlPv>
    80003960:	00090513          	mv	a0,s2
    80003964:	00009097          	auipc	ra,0x9
    80003968:	ee4080e7          	jalr	-284(ra) # 8000c848 <_Unwind_Resume>
    8000396c:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80003970:	00048513          	mv	a0,s1
    80003974:	ffffe097          	auipc	ra,0xffffe
    80003978:	494080e7          	jalr	1172(ra) # 80001e08 <_ZdlPv>
    8000397c:	00090513          	mv	a0,s2
    80003980:	00009097          	auipc	ra,0x9
    80003984:	ec8080e7          	jalr	-312(ra) # 8000c848 <_Unwind_Resume>
    80003988:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    8000398c:	00048513          	mv	a0,s1
    80003990:	ffffe097          	auipc	ra,0xffffe
    80003994:	478080e7          	jalr	1144(ra) # 80001e08 <_ZdlPv>
    80003998:	00090513          	mv	a0,s2
    8000399c:	00009097          	auipc	ra,0x9
    800039a0:	eac080e7          	jalr	-340(ra) # 8000c848 <_Unwind_Resume>
    800039a4:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    800039a8:	00048513          	mv	a0,s1
    800039ac:	ffffe097          	auipc	ra,0xffffe
    800039b0:	45c080e7          	jalr	1116(ra) # 80001e08 <_ZdlPv>
    800039b4:	00090513          	mv	a0,s2
    800039b8:	00009097          	auipc	ra,0x9
    800039bc:	e90080e7          	jalr	-368(ra) # 8000c848 <_Unwind_Resume>
}
    800039c0:	03813083          	ld	ra,56(sp)
    800039c4:	03013403          	ld	s0,48(sp)
    800039c8:	02813483          	ld	s1,40(sp)
    800039cc:	02013903          	ld	s2,32(sp)
    800039d0:	04010113          	addi	sp,sp,64
    800039d4:	00008067          	ret

00000000800039d8 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    800039d8:	ff010113          	addi	sp,sp,-16
    800039dc:	00113423          	sd	ra,8(sp)
    800039e0:	00813023          	sd	s0,0(sp)
    800039e4:	01010413          	addi	s0,sp,16
    800039e8:	00008797          	auipc	a5,0x8
    800039ec:	ab878793          	addi	a5,a5,-1352 # 8000b4a0 <_ZTV7WorkerA+0x10>
    800039f0:	00f53023          	sd	a5,0(a0)
    800039f4:	ffffe097          	auipc	ra,0xffffe
    800039f8:	43c080e7          	jalr	1084(ra) # 80001e30 <_ZN6ThreadD1Ev>
    800039fc:	00813083          	ld	ra,8(sp)
    80003a00:	00013403          	ld	s0,0(sp)
    80003a04:	01010113          	addi	sp,sp,16
    80003a08:	00008067          	ret

0000000080003a0c <_ZN7WorkerAD0Ev>:
    80003a0c:	fe010113          	addi	sp,sp,-32
    80003a10:	00113c23          	sd	ra,24(sp)
    80003a14:	00813823          	sd	s0,16(sp)
    80003a18:	00913423          	sd	s1,8(sp)
    80003a1c:	02010413          	addi	s0,sp,32
    80003a20:	00050493          	mv	s1,a0
    80003a24:	00008797          	auipc	a5,0x8
    80003a28:	a7c78793          	addi	a5,a5,-1412 # 8000b4a0 <_ZTV7WorkerA+0x10>
    80003a2c:	00f53023          	sd	a5,0(a0)
    80003a30:	ffffe097          	auipc	ra,0xffffe
    80003a34:	400080e7          	jalr	1024(ra) # 80001e30 <_ZN6ThreadD1Ev>
    80003a38:	00048513          	mv	a0,s1
    80003a3c:	ffffe097          	auipc	ra,0xffffe
    80003a40:	3cc080e7          	jalr	972(ra) # 80001e08 <_ZdlPv>
    80003a44:	01813083          	ld	ra,24(sp)
    80003a48:	01013403          	ld	s0,16(sp)
    80003a4c:	00813483          	ld	s1,8(sp)
    80003a50:	02010113          	addi	sp,sp,32
    80003a54:	00008067          	ret

0000000080003a58 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80003a58:	ff010113          	addi	sp,sp,-16
    80003a5c:	00113423          	sd	ra,8(sp)
    80003a60:	00813023          	sd	s0,0(sp)
    80003a64:	01010413          	addi	s0,sp,16
    80003a68:	00008797          	auipc	a5,0x8
    80003a6c:	a6078793          	addi	a5,a5,-1440 # 8000b4c8 <_ZTV7WorkerB+0x10>
    80003a70:	00f53023          	sd	a5,0(a0)
    80003a74:	ffffe097          	auipc	ra,0xffffe
    80003a78:	3bc080e7          	jalr	956(ra) # 80001e30 <_ZN6ThreadD1Ev>
    80003a7c:	00813083          	ld	ra,8(sp)
    80003a80:	00013403          	ld	s0,0(sp)
    80003a84:	01010113          	addi	sp,sp,16
    80003a88:	00008067          	ret

0000000080003a8c <_ZN7WorkerBD0Ev>:
    80003a8c:	fe010113          	addi	sp,sp,-32
    80003a90:	00113c23          	sd	ra,24(sp)
    80003a94:	00813823          	sd	s0,16(sp)
    80003a98:	00913423          	sd	s1,8(sp)
    80003a9c:	02010413          	addi	s0,sp,32
    80003aa0:	00050493          	mv	s1,a0
    80003aa4:	00008797          	auipc	a5,0x8
    80003aa8:	a2478793          	addi	a5,a5,-1500 # 8000b4c8 <_ZTV7WorkerB+0x10>
    80003aac:	00f53023          	sd	a5,0(a0)
    80003ab0:	ffffe097          	auipc	ra,0xffffe
    80003ab4:	380080e7          	jalr	896(ra) # 80001e30 <_ZN6ThreadD1Ev>
    80003ab8:	00048513          	mv	a0,s1
    80003abc:	ffffe097          	auipc	ra,0xffffe
    80003ac0:	34c080e7          	jalr	844(ra) # 80001e08 <_ZdlPv>
    80003ac4:	01813083          	ld	ra,24(sp)
    80003ac8:	01013403          	ld	s0,16(sp)
    80003acc:	00813483          	ld	s1,8(sp)
    80003ad0:	02010113          	addi	sp,sp,32
    80003ad4:	00008067          	ret

0000000080003ad8 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80003ad8:	ff010113          	addi	sp,sp,-16
    80003adc:	00113423          	sd	ra,8(sp)
    80003ae0:	00813023          	sd	s0,0(sp)
    80003ae4:	01010413          	addi	s0,sp,16
    80003ae8:	00008797          	auipc	a5,0x8
    80003aec:	a0878793          	addi	a5,a5,-1528 # 8000b4f0 <_ZTV7WorkerC+0x10>
    80003af0:	00f53023          	sd	a5,0(a0)
    80003af4:	ffffe097          	auipc	ra,0xffffe
    80003af8:	33c080e7          	jalr	828(ra) # 80001e30 <_ZN6ThreadD1Ev>
    80003afc:	00813083          	ld	ra,8(sp)
    80003b00:	00013403          	ld	s0,0(sp)
    80003b04:	01010113          	addi	sp,sp,16
    80003b08:	00008067          	ret

0000000080003b0c <_ZN7WorkerCD0Ev>:
    80003b0c:	fe010113          	addi	sp,sp,-32
    80003b10:	00113c23          	sd	ra,24(sp)
    80003b14:	00813823          	sd	s0,16(sp)
    80003b18:	00913423          	sd	s1,8(sp)
    80003b1c:	02010413          	addi	s0,sp,32
    80003b20:	00050493          	mv	s1,a0
    80003b24:	00008797          	auipc	a5,0x8
    80003b28:	9cc78793          	addi	a5,a5,-1588 # 8000b4f0 <_ZTV7WorkerC+0x10>
    80003b2c:	00f53023          	sd	a5,0(a0)
    80003b30:	ffffe097          	auipc	ra,0xffffe
    80003b34:	300080e7          	jalr	768(ra) # 80001e30 <_ZN6ThreadD1Ev>
    80003b38:	00048513          	mv	a0,s1
    80003b3c:	ffffe097          	auipc	ra,0xffffe
    80003b40:	2cc080e7          	jalr	716(ra) # 80001e08 <_ZdlPv>
    80003b44:	01813083          	ld	ra,24(sp)
    80003b48:	01013403          	ld	s0,16(sp)
    80003b4c:	00813483          	ld	s1,8(sp)
    80003b50:	02010113          	addi	sp,sp,32
    80003b54:	00008067          	ret

0000000080003b58 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80003b58:	ff010113          	addi	sp,sp,-16
    80003b5c:	00113423          	sd	ra,8(sp)
    80003b60:	00813023          	sd	s0,0(sp)
    80003b64:	01010413          	addi	s0,sp,16
    80003b68:	00008797          	auipc	a5,0x8
    80003b6c:	9b078793          	addi	a5,a5,-1616 # 8000b518 <_ZTV7WorkerD+0x10>
    80003b70:	00f53023          	sd	a5,0(a0)
    80003b74:	ffffe097          	auipc	ra,0xffffe
    80003b78:	2bc080e7          	jalr	700(ra) # 80001e30 <_ZN6ThreadD1Ev>
    80003b7c:	00813083          	ld	ra,8(sp)
    80003b80:	00013403          	ld	s0,0(sp)
    80003b84:	01010113          	addi	sp,sp,16
    80003b88:	00008067          	ret

0000000080003b8c <_ZN7WorkerDD0Ev>:
    80003b8c:	fe010113          	addi	sp,sp,-32
    80003b90:	00113c23          	sd	ra,24(sp)
    80003b94:	00813823          	sd	s0,16(sp)
    80003b98:	00913423          	sd	s1,8(sp)
    80003b9c:	02010413          	addi	s0,sp,32
    80003ba0:	00050493          	mv	s1,a0
    80003ba4:	00008797          	auipc	a5,0x8
    80003ba8:	97478793          	addi	a5,a5,-1676 # 8000b518 <_ZTV7WorkerD+0x10>
    80003bac:	00f53023          	sd	a5,0(a0)
    80003bb0:	ffffe097          	auipc	ra,0xffffe
    80003bb4:	280080e7          	jalr	640(ra) # 80001e30 <_ZN6ThreadD1Ev>
    80003bb8:	00048513          	mv	a0,s1
    80003bbc:	ffffe097          	auipc	ra,0xffffe
    80003bc0:	24c080e7          	jalr	588(ra) # 80001e08 <_ZdlPv>
    80003bc4:	01813083          	ld	ra,24(sp)
    80003bc8:	01013403          	ld	s0,16(sp)
    80003bcc:	00813483          	ld	s1,8(sp)
    80003bd0:	02010113          	addi	sp,sp,32
    80003bd4:	00008067          	ret

0000000080003bd8 <_ZN7WorkerA3runEv>:
    void run() override {
    80003bd8:	ff010113          	addi	sp,sp,-16
    80003bdc:	00113423          	sd	ra,8(sp)
    80003be0:	00813023          	sd	s0,0(sp)
    80003be4:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80003be8:	00000593          	li	a1,0
    80003bec:	fffff097          	auipc	ra,0xfffff
    80003bf0:	748080e7          	jalr	1864(ra) # 80003334 <_ZN7WorkerA11workerBodyAEPv>
    }
    80003bf4:	00813083          	ld	ra,8(sp)
    80003bf8:	00013403          	ld	s0,0(sp)
    80003bfc:	01010113          	addi	sp,sp,16
    80003c00:	00008067          	ret

0000000080003c04 <_ZN7WorkerB3runEv>:
    void run() override {
    80003c04:	ff010113          	addi	sp,sp,-16
    80003c08:	00113423          	sd	ra,8(sp)
    80003c0c:	00813023          	sd	s0,0(sp)
    80003c10:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80003c14:	00000593          	li	a1,0
    80003c18:	fffff097          	auipc	ra,0xfffff
    80003c1c:	7e8080e7          	jalr	2024(ra) # 80003400 <_ZN7WorkerB11workerBodyBEPv>
    }
    80003c20:	00813083          	ld	ra,8(sp)
    80003c24:	00013403          	ld	s0,0(sp)
    80003c28:	01010113          	addi	sp,sp,16
    80003c2c:	00008067          	ret

0000000080003c30 <_ZN7WorkerC3runEv>:
    void run() override {
    80003c30:	ff010113          	addi	sp,sp,-16
    80003c34:	00113423          	sd	ra,8(sp)
    80003c38:	00813023          	sd	s0,0(sp)
    80003c3c:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003c40:	00000593          	li	a1,0
    80003c44:	00000097          	auipc	ra,0x0
    80003c48:	890080e7          	jalr	-1904(ra) # 800034d4 <_ZN7WorkerC11workerBodyCEPv>
    }
    80003c4c:	00813083          	ld	ra,8(sp)
    80003c50:	00013403          	ld	s0,0(sp)
    80003c54:	01010113          	addi	sp,sp,16
    80003c58:	00008067          	ret

0000000080003c5c <_ZN7WorkerD3runEv>:
    void run() override {
    80003c5c:	ff010113          	addi	sp,sp,-16
    80003c60:	00113423          	sd	ra,8(sp)
    80003c64:	00813023          	sd	s0,0(sp)
    80003c68:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003c6c:	00000593          	li	a1,0
    80003c70:	00000097          	auipc	ra,0x0
    80003c74:	9f4080e7          	jalr	-1548(ra) # 80003664 <_ZN7WorkerD11workerBodyDEPv>
    }
    80003c78:	00813083          	ld	ra,8(sp)
    80003c7c:	00013403          	ld	s0,0(sp)
    80003c80:	01010113          	addi	sp,sp,16
    80003c84:	00008067          	ret

0000000080003c88 <_Z20testConsumerProducerv>:

        td->sem->signal();
    }
};

void testConsumerProducer() {
    80003c88:	f8010113          	addi	sp,sp,-128
    80003c8c:	06113c23          	sd	ra,120(sp)
    80003c90:	06813823          	sd	s0,112(sp)
    80003c94:	06913423          	sd	s1,104(sp)
    80003c98:	07213023          	sd	s2,96(sp)
    80003c9c:	05313c23          	sd	s3,88(sp)
    80003ca0:	05413823          	sd	s4,80(sp)
    80003ca4:	05513423          	sd	s5,72(sp)
    80003ca8:	05613023          	sd	s6,64(sp)
    80003cac:	03713c23          	sd	s7,56(sp)
    80003cb0:	03813823          	sd	s8,48(sp)
    80003cb4:	03913423          	sd	s9,40(sp)
    80003cb8:	08010413          	addi	s0,sp,128
    delete waitForAll;
    for (int i = 0; i < threadNum; i++) {
        delete producers[i];
    }
    delete consumer;
    delete buffer;
    80003cbc:	00010c13          	mv	s8,sp
    printString("Unesite broj proizvodjaca?\n");
    80003cc0:	00005517          	auipc	a0,0x5
    80003cc4:	47050513          	addi	a0,a0,1136 # 80009130 <CONSOLE_STATUS+0x120>
    80003cc8:	00001097          	auipc	ra,0x1
    80003ccc:	5a8080e7          	jalr	1448(ra) # 80005270 <_Z11printStringPKc>
    getString(input, 30);
    80003cd0:	01e00593          	li	a1,30
    80003cd4:	f8040493          	addi	s1,s0,-128
    80003cd8:	00048513          	mv	a0,s1
    80003cdc:	00001097          	auipc	ra,0x1
    80003ce0:	61c080e7          	jalr	1564(ra) # 800052f8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003ce4:	00048513          	mv	a0,s1
    80003ce8:	00001097          	auipc	ra,0x1
    80003cec:	6e8080e7          	jalr	1768(ra) # 800053d0 <_Z11stringToIntPKc>
    80003cf0:	00050993          	mv	s3,a0
    printString("Unesite velicinu bafera?\n");
    80003cf4:	00005517          	auipc	a0,0x5
    80003cf8:	45c50513          	addi	a0,a0,1116 # 80009150 <CONSOLE_STATUS+0x140>
    80003cfc:	00001097          	auipc	ra,0x1
    80003d00:	574080e7          	jalr	1396(ra) # 80005270 <_Z11printStringPKc>
    getString(input, 30);
    80003d04:	01e00593          	li	a1,30
    80003d08:	00048513          	mv	a0,s1
    80003d0c:	00001097          	auipc	ra,0x1
    80003d10:	5ec080e7          	jalr	1516(ra) # 800052f8 <_Z9getStringPci>
    n = stringToInt(input);
    80003d14:	00048513          	mv	a0,s1
    80003d18:	00001097          	auipc	ra,0x1
    80003d1c:	6b8080e7          	jalr	1720(ra) # 800053d0 <_Z11stringToIntPKc>
    80003d20:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca ");
    80003d24:	00005517          	auipc	a0,0x5
    80003d28:	44c50513          	addi	a0,a0,1100 # 80009170 <CONSOLE_STATUS+0x160>
    80003d2c:	00001097          	auipc	ra,0x1
    80003d30:	544080e7          	jalr	1348(ra) # 80005270 <_Z11printStringPKc>
    printInt(threadNum);
    80003d34:	00000613          	li	a2,0
    80003d38:	00a00593          	li	a1,10
    80003d3c:	00098513          	mv	a0,s3
    80003d40:	00001097          	auipc	ra,0x1
    80003d44:	6e0080e7          	jalr	1760(ra) # 80005420 <_Z8printIntiii>
    printString(" i velicina bafera ");
    80003d48:	00005517          	auipc	a0,0x5
    80003d4c:	44050513          	addi	a0,a0,1088 # 80009188 <CONSOLE_STATUS+0x178>
    80003d50:	00001097          	auipc	ra,0x1
    80003d54:	520080e7          	jalr	1312(ra) # 80005270 <_Z11printStringPKc>
    printInt(n);
    80003d58:	00000613          	li	a2,0
    80003d5c:	00a00593          	li	a1,10
    80003d60:	00048513          	mv	a0,s1
    80003d64:	00001097          	auipc	ra,0x1
    80003d68:	6bc080e7          	jalr	1724(ra) # 80005420 <_Z8printIntiii>
    printString(".\n");
    80003d6c:	00005517          	auipc	a0,0x5
    80003d70:	43450513          	addi	a0,a0,1076 # 800091a0 <CONSOLE_STATUS+0x190>
    80003d74:	00001097          	auipc	ra,0x1
    80003d78:	4fc080e7          	jalr	1276(ra) # 80005270 <_Z11printStringPKc>
    if (threadNum > n) {
    80003d7c:	0334c463          	blt	s1,s3,80003da4 <_Z20testConsumerProducerv+0x11c>
    } else if (threadNum < 1) {
    80003d80:	03305c63          	blez	s3,80003db8 <_Z20testConsumerProducerv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003d84:	03800513          	li	a0,56
    80003d88:	ffffe097          	auipc	ra,0xffffe
    80003d8c:	058080e7          	jalr	88(ra) # 80001de0 <_Znwm>
    80003d90:	00050a93          	mv	s5,a0
    80003d94:	00048593          	mv	a1,s1
    80003d98:	00001097          	auipc	ra,0x1
    80003d9c:	7a8080e7          	jalr	1960(ra) # 80005540 <_ZN9BufferCPPC1Ei>
    80003da0:	0300006f          	j	80003dd0 <_Z20testConsumerProducerv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003da4:	00005517          	auipc	a0,0x5
    80003da8:	40450513          	addi	a0,a0,1028 # 800091a8 <CONSOLE_STATUS+0x198>
    80003dac:	00001097          	auipc	ra,0x1
    80003db0:	4c4080e7          	jalr	1220(ra) # 80005270 <_Z11printStringPKc>
        return;
    80003db4:	0140006f          	j	80003dc8 <_Z20testConsumerProducerv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003db8:	00005517          	auipc	a0,0x5
    80003dbc:	43050513          	addi	a0,a0,1072 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80003dc0:	00001097          	auipc	ra,0x1
    80003dc4:	4b0080e7          	jalr	1200(ra) # 80005270 <_Z11printStringPKc>
        return;
    80003dc8:	000c0113          	mv	sp,s8
    80003dcc:	2140006f          	j	80003fe0 <_Z20testConsumerProducerv+0x358>
    waitForAll = new Semaphore(0);
    80003dd0:	01000513          	li	a0,16
    80003dd4:	ffffe097          	auipc	ra,0xffffe
    80003dd8:	00c080e7          	jalr	12(ra) # 80001de0 <_Znwm>
    80003ddc:	00050913          	mv	s2,a0
    80003de0:	00000593          	li	a1,0
    80003de4:	ffffe097          	auipc	ra,0xffffe
    80003de8:	314080e7          	jalr	788(ra) # 800020f8 <_ZN9SemaphoreC1Ej>
    80003dec:	00008797          	auipc	a5,0x8
    80003df0:	9727b223          	sd	s2,-1692(a5) # 8000b750 <_ZL10waitForAll>
    Thread *producers[threadNum];
    80003df4:	00399793          	slli	a5,s3,0x3
    80003df8:	00f78793          	addi	a5,a5,15
    80003dfc:	ff07f793          	andi	a5,a5,-16
    80003e00:	40f10133          	sub	sp,sp,a5
    80003e04:	00010a13          	mv	s4,sp
    thread_data threadData[threadNum + 1];
    80003e08:	0019871b          	addiw	a4,s3,1
    80003e0c:	00171793          	slli	a5,a4,0x1
    80003e10:	00e787b3          	add	a5,a5,a4
    80003e14:	00379793          	slli	a5,a5,0x3
    80003e18:	00f78793          	addi	a5,a5,15
    80003e1c:	ff07f793          	andi	a5,a5,-16
    80003e20:	40f10133          	sub	sp,sp,a5
    80003e24:	00010b13          	mv	s6,sp
    threadData[threadNum].id = threadNum;
    80003e28:	00199493          	slli	s1,s3,0x1
    80003e2c:	013484b3          	add	s1,s1,s3
    80003e30:	00349493          	slli	s1,s1,0x3
    80003e34:	009b04b3          	add	s1,s6,s1
    80003e38:	0134a023          	sw	s3,0(s1)
    threadData[threadNum].buffer = buffer;
    80003e3c:	0154b423          	sd	s5,8(s1)
    threadData[threadNum].sem = waitForAll;
    80003e40:	0124b823          	sd	s2,16(s1)
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80003e44:	02800513          	li	a0,40
    80003e48:	ffffe097          	auipc	ra,0xffffe
    80003e4c:	f98080e7          	jalr	-104(ra) # 80001de0 <_Znwm>
    80003e50:	00050b93          	mv	s7,a0
    Consumer(thread_data *_td) : Thread(), td(_td) {}
    80003e54:	ffffe097          	auipc	ra,0xffffe
    80003e58:	204080e7          	jalr	516(ra) # 80002058 <_ZN6ThreadC1Ev>
    80003e5c:	00007797          	auipc	a5,0x7
    80003e60:	73478793          	addi	a5,a5,1844 # 8000b590 <_ZTV8Consumer+0x10>
    80003e64:	00fbb023          	sd	a5,0(s7)
    80003e68:	029bb023          	sd	s1,32(s7)
    consumer->start();
    80003e6c:	000b8513          	mv	a0,s7
    80003e70:	ffffe097          	auipc	ra,0xffffe
    80003e74:	17c080e7          	jalr	380(ra) # 80001fec <_ZN6Thread5startEv>
    threadData[0].id = 0;
    80003e78:	000b2023          	sw	zero,0(s6)
    threadData[0].buffer = buffer;
    80003e7c:	015b3423          	sd	s5,8(s6)
    threadData[0].sem = waitForAll;
    80003e80:	00008797          	auipc	a5,0x8
    80003e84:	8d07b783          	ld	a5,-1840(a5) # 8000b750 <_ZL10waitForAll>
    80003e88:	00fb3823          	sd	a5,16(s6)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003e8c:	02800513          	li	a0,40
    80003e90:	ffffe097          	auipc	ra,0xffffe
    80003e94:	f50080e7          	jalr	-176(ra) # 80001de0 <_Znwm>
    80003e98:	00050493          	mv	s1,a0
    ProducerKeyborad(thread_data *_td) : Thread(), td(_td) {}
    80003e9c:	ffffe097          	auipc	ra,0xffffe
    80003ea0:	1bc080e7          	jalr	444(ra) # 80002058 <_ZN6ThreadC1Ev>
    80003ea4:	00007797          	auipc	a5,0x7
    80003ea8:	69c78793          	addi	a5,a5,1692 # 8000b540 <_ZTV16ProducerKeyborad+0x10>
    80003eac:	00f4b023          	sd	a5,0(s1)
    80003eb0:	0364b023          	sd	s6,32(s1)
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80003eb4:	009a3023          	sd	s1,0(s4)
    producers[0]->start();
    80003eb8:	00048513          	mv	a0,s1
    80003ebc:	ffffe097          	auipc	ra,0xffffe
    80003ec0:	130080e7          	jalr	304(ra) # 80001fec <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003ec4:	00100913          	li	s2,1
    80003ec8:	0300006f          	j	80003ef8 <_Z20testConsumerProducerv+0x270>
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003ecc:	00007797          	auipc	a5,0x7
    80003ed0:	69c78793          	addi	a5,a5,1692 # 8000b568 <_ZTV8Producer+0x10>
    80003ed4:	00fcb023          	sd	a5,0(s9)
    80003ed8:	029cb023          	sd	s1,32(s9)
        producers[i] = new Producer(&threadData[i]);
    80003edc:	00391793          	slli	a5,s2,0x3
    80003ee0:	00fa07b3          	add	a5,s4,a5
    80003ee4:	0197b023          	sd	s9,0(a5)
        producers[i]->start();
    80003ee8:	000c8513          	mv	a0,s9
    80003eec:	ffffe097          	auipc	ra,0xffffe
    80003ef0:	100080e7          	jalr	256(ra) # 80001fec <_ZN6Thread5startEv>
    for (int i = 1; i < threadNum; i++) {
    80003ef4:	0019091b          	addiw	s2,s2,1
    80003ef8:	05395263          	bge	s2,s3,80003f3c <_Z20testConsumerProducerv+0x2b4>
        threadData[i].id = i;
    80003efc:	00191493          	slli	s1,s2,0x1
    80003f00:	012484b3          	add	s1,s1,s2
    80003f04:	00349493          	slli	s1,s1,0x3
    80003f08:	009b04b3          	add	s1,s6,s1
    80003f0c:	0124a023          	sw	s2,0(s1)
        threadData[i].buffer = buffer;
    80003f10:	0154b423          	sd	s5,8(s1)
        threadData[i].sem = waitForAll;
    80003f14:	00008797          	auipc	a5,0x8
    80003f18:	83c7b783          	ld	a5,-1988(a5) # 8000b750 <_ZL10waitForAll>
    80003f1c:	00f4b823          	sd	a5,16(s1)
        producers[i] = new Producer(&threadData[i]);
    80003f20:	02800513          	li	a0,40
    80003f24:	ffffe097          	auipc	ra,0xffffe
    80003f28:	ebc080e7          	jalr	-324(ra) # 80001de0 <_Znwm>
    80003f2c:	00050c93          	mv	s9,a0
    Producer(thread_data *_td) : Thread(), td(_td) {}
    80003f30:	ffffe097          	auipc	ra,0xffffe
    80003f34:	128080e7          	jalr	296(ra) # 80002058 <_ZN6ThreadC1Ev>
    80003f38:	f95ff06f          	j	80003ecc <_Z20testConsumerProducerv+0x244>
    Thread::dispatch();
    80003f3c:	ffffe097          	auipc	ra,0xffffe
    80003f40:	0f4080e7          	jalr	244(ra) # 80002030 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80003f44:	00000493          	li	s1,0
    80003f48:	0099ce63          	blt	s3,s1,80003f64 <_Z20testConsumerProducerv+0x2dc>
        waitForAll->wait();
    80003f4c:	00008517          	auipc	a0,0x8
    80003f50:	80453503          	ld	a0,-2044(a0) # 8000b750 <_ZL10waitForAll>
    80003f54:	ffffe097          	auipc	ra,0xffffe
    80003f58:	1dc080e7          	jalr	476(ra) # 80002130 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80003f5c:	0014849b          	addiw	s1,s1,1
    80003f60:	fe9ff06f          	j	80003f48 <_Z20testConsumerProducerv+0x2c0>
    delete waitForAll;
    80003f64:	00007517          	auipc	a0,0x7
    80003f68:	7ec53503          	ld	a0,2028(a0) # 8000b750 <_ZL10waitForAll>
    80003f6c:	00050863          	beqz	a0,80003f7c <_Z20testConsumerProducerv+0x2f4>
    80003f70:	00053783          	ld	a5,0(a0)
    80003f74:	0087b783          	ld	a5,8(a5)
    80003f78:	000780e7          	jalr	a5
    for (int i = 0; i <= threadNum; i++) {
    80003f7c:	00000493          	li	s1,0
    80003f80:	0080006f          	j	80003f88 <_Z20testConsumerProducerv+0x300>
    for (int i = 0; i < threadNum; i++) {
    80003f84:	0014849b          	addiw	s1,s1,1
    80003f88:	0334d263          	bge	s1,s3,80003fac <_Z20testConsumerProducerv+0x324>
        delete producers[i];
    80003f8c:	00349793          	slli	a5,s1,0x3
    80003f90:	00fa07b3          	add	a5,s4,a5
    80003f94:	0007b503          	ld	a0,0(a5)
    80003f98:	fe0506e3          	beqz	a0,80003f84 <_Z20testConsumerProducerv+0x2fc>
    80003f9c:	00053783          	ld	a5,0(a0)
    80003fa0:	0087b783          	ld	a5,8(a5)
    80003fa4:	000780e7          	jalr	a5
    80003fa8:	fddff06f          	j	80003f84 <_Z20testConsumerProducerv+0x2fc>
    delete consumer;
    80003fac:	000b8a63          	beqz	s7,80003fc0 <_Z20testConsumerProducerv+0x338>
    80003fb0:	000bb783          	ld	a5,0(s7)
    80003fb4:	0087b783          	ld	a5,8(a5)
    80003fb8:	000b8513          	mv	a0,s7
    80003fbc:	000780e7          	jalr	a5
    delete buffer;
    80003fc0:	000a8e63          	beqz	s5,80003fdc <_Z20testConsumerProducerv+0x354>
    80003fc4:	000a8513          	mv	a0,s5
    80003fc8:	00002097          	auipc	ra,0x2
    80003fcc:	870080e7          	jalr	-1936(ra) # 80005838 <_ZN9BufferCPPD1Ev>
    80003fd0:	000a8513          	mv	a0,s5
    80003fd4:	ffffe097          	auipc	ra,0xffffe
    80003fd8:	e34080e7          	jalr	-460(ra) # 80001e08 <_ZdlPv>
    80003fdc:	000c0113          	mv	sp,s8
}
    80003fe0:	f8040113          	addi	sp,s0,-128
    80003fe4:	07813083          	ld	ra,120(sp)
    80003fe8:	07013403          	ld	s0,112(sp)
    80003fec:	06813483          	ld	s1,104(sp)
    80003ff0:	06013903          	ld	s2,96(sp)
    80003ff4:	05813983          	ld	s3,88(sp)
    80003ff8:	05013a03          	ld	s4,80(sp)
    80003ffc:	04813a83          	ld	s5,72(sp)
    80004000:	04013b03          	ld	s6,64(sp)
    80004004:	03813b83          	ld	s7,56(sp)
    80004008:	03013c03          	ld	s8,48(sp)
    8000400c:	02813c83          	ld	s9,40(sp)
    80004010:	08010113          	addi	sp,sp,128
    80004014:	00008067          	ret
    80004018:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    8000401c:	000a8513          	mv	a0,s5
    80004020:	ffffe097          	auipc	ra,0xffffe
    80004024:	de8080e7          	jalr	-536(ra) # 80001e08 <_ZdlPv>
    80004028:	00048513          	mv	a0,s1
    8000402c:	00009097          	auipc	ra,0x9
    80004030:	81c080e7          	jalr	-2020(ra) # 8000c848 <_Unwind_Resume>
    80004034:	00050493          	mv	s1,a0
    waitForAll = new Semaphore(0);
    80004038:	00090513          	mv	a0,s2
    8000403c:	ffffe097          	auipc	ra,0xffffe
    80004040:	dcc080e7          	jalr	-564(ra) # 80001e08 <_ZdlPv>
    80004044:	00048513          	mv	a0,s1
    80004048:	00009097          	auipc	ra,0x9
    8000404c:	800080e7          	jalr	-2048(ra) # 8000c848 <_Unwind_Resume>
    80004050:	00050493          	mv	s1,a0
    Thread *consumer = new Consumer(&threadData[threadNum]);
    80004054:	000b8513          	mv	a0,s7
    80004058:	ffffe097          	auipc	ra,0xffffe
    8000405c:	db0080e7          	jalr	-592(ra) # 80001e08 <_ZdlPv>
    80004060:	00048513          	mv	a0,s1
    80004064:	00008097          	auipc	ra,0x8
    80004068:	7e4080e7          	jalr	2020(ra) # 8000c848 <_Unwind_Resume>
    8000406c:	00050913          	mv	s2,a0
    producers[0] = new ProducerKeyborad(&threadData[0]);
    80004070:	00048513          	mv	a0,s1
    80004074:	ffffe097          	auipc	ra,0xffffe
    80004078:	d94080e7          	jalr	-620(ra) # 80001e08 <_ZdlPv>
    8000407c:	00090513          	mv	a0,s2
    80004080:	00008097          	auipc	ra,0x8
    80004084:	7c8080e7          	jalr	1992(ra) # 8000c848 <_Unwind_Resume>
    80004088:	00050493          	mv	s1,a0
        producers[i] = new Producer(&threadData[i]);
    8000408c:	000c8513          	mv	a0,s9
    80004090:	ffffe097          	auipc	ra,0xffffe
    80004094:	d78080e7          	jalr	-648(ra) # 80001e08 <_ZdlPv>
    80004098:	00048513          	mv	a0,s1
    8000409c:	00008097          	auipc	ra,0x8
    800040a0:	7ac080e7          	jalr	1964(ra) # 8000c848 <_Unwind_Resume>

00000000800040a4 <_ZN8Consumer3runEv>:
    void run() override {
    800040a4:	fd010113          	addi	sp,sp,-48
    800040a8:	02113423          	sd	ra,40(sp)
    800040ac:	02813023          	sd	s0,32(sp)
    800040b0:	00913c23          	sd	s1,24(sp)
    800040b4:	01213823          	sd	s2,16(sp)
    800040b8:	01313423          	sd	s3,8(sp)
    800040bc:	03010413          	addi	s0,sp,48
    800040c0:	00050913          	mv	s2,a0
        int i = 0;
    800040c4:	00000993          	li	s3,0
    800040c8:	0100006f          	j	800040d8 <_ZN8Consumer3runEv+0x34>
                Console::putc('\n');
    800040cc:	00a00513          	li	a0,10
    800040d0:	ffffe097          	auipc	ra,0xffffe
    800040d4:	0e0080e7          	jalr	224(ra) # 800021b0 <_ZN7Console4putcEc>
        while (!threadEnd) {
    800040d8:	00007797          	auipc	a5,0x7
    800040dc:	6707a783          	lw	a5,1648(a5) # 8000b748 <_ZL9threadEnd>
    800040e0:	04079a63          	bnez	a5,80004134 <_ZN8Consumer3runEv+0x90>
            int key = td->buffer->get();
    800040e4:	02093783          	ld	a5,32(s2)
    800040e8:	0087b503          	ld	a0,8(a5)
    800040ec:	00001097          	auipc	ra,0x1
    800040f0:	638080e7          	jalr	1592(ra) # 80005724 <_ZN9BufferCPP3getEv>
            i++;
    800040f4:	0019849b          	addiw	s1,s3,1
    800040f8:	0004899b          	sext.w	s3,s1
            Console::putc(key);
    800040fc:	0ff57513          	andi	a0,a0,255
    80004100:	ffffe097          	auipc	ra,0xffffe
    80004104:	0b0080e7          	jalr	176(ra) # 800021b0 <_ZN7Console4putcEc>
            if (i % 80 == 0) {
    80004108:	05000793          	li	a5,80
    8000410c:	02f4e4bb          	remw	s1,s1,a5
    80004110:	fc0494e3          	bnez	s1,800040d8 <_ZN8Consumer3runEv+0x34>
    80004114:	fb9ff06f          	j	800040cc <_ZN8Consumer3runEv+0x28>
            int key = td->buffer->get();
    80004118:	02093783          	ld	a5,32(s2)
    8000411c:	0087b503          	ld	a0,8(a5)
    80004120:	00001097          	auipc	ra,0x1
    80004124:	604080e7          	jalr	1540(ra) # 80005724 <_ZN9BufferCPP3getEv>
            Console::putc(key);
    80004128:	0ff57513          	andi	a0,a0,255
    8000412c:	ffffe097          	auipc	ra,0xffffe
    80004130:	084080e7          	jalr	132(ra) # 800021b0 <_ZN7Console4putcEc>
        while (td->buffer->getCnt() > 0) {
    80004134:	02093783          	ld	a5,32(s2)
    80004138:	0087b503          	ld	a0,8(a5)
    8000413c:	00001097          	auipc	ra,0x1
    80004140:	674080e7          	jalr	1652(ra) # 800057b0 <_ZN9BufferCPP6getCntEv>
    80004144:	fca04ae3          	bgtz	a0,80004118 <_ZN8Consumer3runEv+0x74>
        td->sem->signal();
    80004148:	02093783          	ld	a5,32(s2)
    8000414c:	0107b503          	ld	a0,16(a5)
    80004150:	ffffe097          	auipc	ra,0xffffe
    80004154:	00c080e7          	jalr	12(ra) # 8000215c <_ZN9Semaphore6signalEv>
    }
    80004158:	02813083          	ld	ra,40(sp)
    8000415c:	02013403          	ld	s0,32(sp)
    80004160:	01813483          	ld	s1,24(sp)
    80004164:	01013903          	ld	s2,16(sp)
    80004168:	00813983          	ld	s3,8(sp)
    8000416c:	03010113          	addi	sp,sp,48
    80004170:	00008067          	ret

0000000080004174 <_ZN8ConsumerD1Ev>:
class Consumer : public Thread {
    80004174:	ff010113          	addi	sp,sp,-16
    80004178:	00113423          	sd	ra,8(sp)
    8000417c:	00813023          	sd	s0,0(sp)
    80004180:	01010413          	addi	s0,sp,16
    80004184:	00007797          	auipc	a5,0x7
    80004188:	40c78793          	addi	a5,a5,1036 # 8000b590 <_ZTV8Consumer+0x10>
    8000418c:	00f53023          	sd	a5,0(a0)
    80004190:	ffffe097          	auipc	ra,0xffffe
    80004194:	ca0080e7          	jalr	-864(ra) # 80001e30 <_ZN6ThreadD1Ev>
    80004198:	00813083          	ld	ra,8(sp)
    8000419c:	00013403          	ld	s0,0(sp)
    800041a0:	01010113          	addi	sp,sp,16
    800041a4:	00008067          	ret

00000000800041a8 <_ZN8ConsumerD0Ev>:
    800041a8:	fe010113          	addi	sp,sp,-32
    800041ac:	00113c23          	sd	ra,24(sp)
    800041b0:	00813823          	sd	s0,16(sp)
    800041b4:	00913423          	sd	s1,8(sp)
    800041b8:	02010413          	addi	s0,sp,32
    800041bc:	00050493          	mv	s1,a0
    800041c0:	00007797          	auipc	a5,0x7
    800041c4:	3d078793          	addi	a5,a5,976 # 8000b590 <_ZTV8Consumer+0x10>
    800041c8:	00f53023          	sd	a5,0(a0)
    800041cc:	ffffe097          	auipc	ra,0xffffe
    800041d0:	c64080e7          	jalr	-924(ra) # 80001e30 <_ZN6ThreadD1Ev>
    800041d4:	00048513          	mv	a0,s1
    800041d8:	ffffe097          	auipc	ra,0xffffe
    800041dc:	c30080e7          	jalr	-976(ra) # 80001e08 <_ZdlPv>
    800041e0:	01813083          	ld	ra,24(sp)
    800041e4:	01013403          	ld	s0,16(sp)
    800041e8:	00813483          	ld	s1,8(sp)
    800041ec:	02010113          	addi	sp,sp,32
    800041f0:	00008067          	ret

00000000800041f4 <_ZN16ProducerKeyboradD1Ev>:
class ProducerKeyborad : public Thread {
    800041f4:	ff010113          	addi	sp,sp,-16
    800041f8:	00113423          	sd	ra,8(sp)
    800041fc:	00813023          	sd	s0,0(sp)
    80004200:	01010413          	addi	s0,sp,16
    80004204:	00007797          	auipc	a5,0x7
    80004208:	33c78793          	addi	a5,a5,828 # 8000b540 <_ZTV16ProducerKeyborad+0x10>
    8000420c:	00f53023          	sd	a5,0(a0)
    80004210:	ffffe097          	auipc	ra,0xffffe
    80004214:	c20080e7          	jalr	-992(ra) # 80001e30 <_ZN6ThreadD1Ev>
    80004218:	00813083          	ld	ra,8(sp)
    8000421c:	00013403          	ld	s0,0(sp)
    80004220:	01010113          	addi	sp,sp,16
    80004224:	00008067          	ret

0000000080004228 <_ZN16ProducerKeyboradD0Ev>:
    80004228:	fe010113          	addi	sp,sp,-32
    8000422c:	00113c23          	sd	ra,24(sp)
    80004230:	00813823          	sd	s0,16(sp)
    80004234:	00913423          	sd	s1,8(sp)
    80004238:	02010413          	addi	s0,sp,32
    8000423c:	00050493          	mv	s1,a0
    80004240:	00007797          	auipc	a5,0x7
    80004244:	30078793          	addi	a5,a5,768 # 8000b540 <_ZTV16ProducerKeyborad+0x10>
    80004248:	00f53023          	sd	a5,0(a0)
    8000424c:	ffffe097          	auipc	ra,0xffffe
    80004250:	be4080e7          	jalr	-1052(ra) # 80001e30 <_ZN6ThreadD1Ev>
    80004254:	00048513          	mv	a0,s1
    80004258:	ffffe097          	auipc	ra,0xffffe
    8000425c:	bb0080e7          	jalr	-1104(ra) # 80001e08 <_ZdlPv>
    80004260:	01813083          	ld	ra,24(sp)
    80004264:	01013403          	ld	s0,16(sp)
    80004268:	00813483          	ld	s1,8(sp)
    8000426c:	02010113          	addi	sp,sp,32
    80004270:	00008067          	ret

0000000080004274 <_ZN8ProducerD1Ev>:
class Producer : public Thread {
    80004274:	ff010113          	addi	sp,sp,-16
    80004278:	00113423          	sd	ra,8(sp)
    8000427c:	00813023          	sd	s0,0(sp)
    80004280:	01010413          	addi	s0,sp,16
    80004284:	00007797          	auipc	a5,0x7
    80004288:	2e478793          	addi	a5,a5,740 # 8000b568 <_ZTV8Producer+0x10>
    8000428c:	00f53023          	sd	a5,0(a0)
    80004290:	ffffe097          	auipc	ra,0xffffe
    80004294:	ba0080e7          	jalr	-1120(ra) # 80001e30 <_ZN6ThreadD1Ev>
    80004298:	00813083          	ld	ra,8(sp)
    8000429c:	00013403          	ld	s0,0(sp)
    800042a0:	01010113          	addi	sp,sp,16
    800042a4:	00008067          	ret

00000000800042a8 <_ZN8ProducerD0Ev>:
    800042a8:	fe010113          	addi	sp,sp,-32
    800042ac:	00113c23          	sd	ra,24(sp)
    800042b0:	00813823          	sd	s0,16(sp)
    800042b4:	00913423          	sd	s1,8(sp)
    800042b8:	02010413          	addi	s0,sp,32
    800042bc:	00050493          	mv	s1,a0
    800042c0:	00007797          	auipc	a5,0x7
    800042c4:	2a878793          	addi	a5,a5,680 # 8000b568 <_ZTV8Producer+0x10>
    800042c8:	00f53023          	sd	a5,0(a0)
    800042cc:	ffffe097          	auipc	ra,0xffffe
    800042d0:	b64080e7          	jalr	-1180(ra) # 80001e30 <_ZN6ThreadD1Ev>
    800042d4:	00048513          	mv	a0,s1
    800042d8:	ffffe097          	auipc	ra,0xffffe
    800042dc:	b30080e7          	jalr	-1232(ra) # 80001e08 <_ZdlPv>
    800042e0:	01813083          	ld	ra,24(sp)
    800042e4:	01013403          	ld	s0,16(sp)
    800042e8:	00813483          	ld	s1,8(sp)
    800042ec:	02010113          	addi	sp,sp,32
    800042f0:	00008067          	ret

00000000800042f4 <_ZN16ProducerKeyborad3runEv>:
    void run() override {
    800042f4:	fe010113          	addi	sp,sp,-32
    800042f8:	00113c23          	sd	ra,24(sp)
    800042fc:	00813823          	sd	s0,16(sp)
    80004300:	00913423          	sd	s1,8(sp)
    80004304:	02010413          	addi	s0,sp,32
    80004308:	00050493          	mv	s1,a0
        while ((key = getc()) != 0x1b) {
    8000430c:	ffffd097          	auipc	ra,0xffffd
    80004310:	2f8080e7          	jalr	760(ra) # 80001604 <_Z4getcv>
    80004314:	0005059b          	sext.w	a1,a0
    80004318:	01b00793          	li	a5,27
    8000431c:	00f58c63          	beq	a1,a5,80004334 <_ZN16ProducerKeyborad3runEv+0x40>
            td->buffer->put(key);
    80004320:	0204b783          	ld	a5,32(s1)
    80004324:	0087b503          	ld	a0,8(a5)
    80004328:	00001097          	auipc	ra,0x1
    8000432c:	36c080e7          	jalr	876(ra) # 80005694 <_ZN9BufferCPP3putEi>
        while ((key = getc()) != 0x1b) {
    80004330:	fddff06f          	j	8000430c <_ZN16ProducerKeyborad3runEv+0x18>
        threadEnd = 1;
    80004334:	00100793          	li	a5,1
    80004338:	00007717          	auipc	a4,0x7
    8000433c:	40f72823          	sw	a5,1040(a4) # 8000b748 <_ZL9threadEnd>
        td->buffer->put('!');
    80004340:	0204b783          	ld	a5,32(s1)
    80004344:	02100593          	li	a1,33
    80004348:	0087b503          	ld	a0,8(a5)
    8000434c:	00001097          	auipc	ra,0x1
    80004350:	348080e7          	jalr	840(ra) # 80005694 <_ZN9BufferCPP3putEi>
        td->sem->signal();
    80004354:	0204b783          	ld	a5,32(s1)
    80004358:	0107b503          	ld	a0,16(a5)
    8000435c:	ffffe097          	auipc	ra,0xffffe
    80004360:	e00080e7          	jalr	-512(ra) # 8000215c <_ZN9Semaphore6signalEv>
    }
    80004364:	01813083          	ld	ra,24(sp)
    80004368:	01013403          	ld	s0,16(sp)
    8000436c:	00813483          	ld	s1,8(sp)
    80004370:	02010113          	addi	sp,sp,32
    80004374:	00008067          	ret

0000000080004378 <_ZN8Producer3runEv>:
    void run() override {
    80004378:	fe010113          	addi	sp,sp,-32
    8000437c:	00113c23          	sd	ra,24(sp)
    80004380:	00813823          	sd	s0,16(sp)
    80004384:	00913423          	sd	s1,8(sp)
    80004388:	01213023          	sd	s2,0(sp)
    8000438c:	02010413          	addi	s0,sp,32
    80004390:	00050493          	mv	s1,a0
        int i = 0;
    80004394:	00000913          	li	s2,0
        while (!threadEnd) {
    80004398:	00007797          	auipc	a5,0x7
    8000439c:	3b07a783          	lw	a5,944(a5) # 8000b748 <_ZL9threadEnd>
    800043a0:	04079263          	bnez	a5,800043e4 <_ZN8Producer3runEv+0x6c>
            td->buffer->put(td->id + '0');
    800043a4:	0204b783          	ld	a5,32(s1)
    800043a8:	0007a583          	lw	a1,0(a5)
    800043ac:	0305859b          	addiw	a1,a1,48
    800043b0:	0087b503          	ld	a0,8(a5)
    800043b4:	00001097          	auipc	ra,0x1
    800043b8:	2e0080e7          	jalr	736(ra) # 80005694 <_ZN9BufferCPP3putEi>
            i++;
    800043bc:	0019071b          	addiw	a4,s2,1
    800043c0:	0007091b          	sext.w	s2,a4
            Thread::sleep((i + td->id) % 5);
    800043c4:	0204b783          	ld	a5,32(s1)
    800043c8:	0007a783          	lw	a5,0(a5)
    800043cc:	00e787bb          	addw	a5,a5,a4
    800043d0:	00500513          	li	a0,5
    800043d4:	02a7e53b          	remw	a0,a5,a0
    800043d8:	ffffe097          	auipc	ra,0xffffe
    800043dc:	cc4080e7          	jalr	-828(ra) # 8000209c <_ZN6Thread5sleepEm>
        while (!threadEnd) {
    800043e0:	fb9ff06f          	j	80004398 <_ZN8Producer3runEv+0x20>
        td->sem->signal();
    800043e4:	0204b783          	ld	a5,32(s1)
    800043e8:	0107b503          	ld	a0,16(a5)
    800043ec:	ffffe097          	auipc	ra,0xffffe
    800043f0:	d70080e7          	jalr	-656(ra) # 8000215c <_ZN9Semaphore6signalEv>
    }
    800043f4:	01813083          	ld	ra,24(sp)
    800043f8:	01013403          	ld	s0,16(sp)
    800043fc:	00813483          	ld	s1,8(sp)
    80004400:	00013903          	ld	s2,0(sp)
    80004404:	02010113          	addi	sp,sp,32
    80004408:	00008067          	ret

000000008000440c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000440c:	fe010113          	addi	sp,sp,-32
    80004410:	00113c23          	sd	ra,24(sp)
    80004414:	00813823          	sd	s0,16(sp)
    80004418:	00913423          	sd	s1,8(sp)
    8000441c:	01213023          	sd	s2,0(sp)
    80004420:	02010413          	addi	s0,sp,32
    80004424:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80004428:	00100793          	li	a5,1
    8000442c:	02a7f863          	bgeu	a5,a0,8000445c <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80004430:	00a00793          	li	a5,10
    80004434:	02f577b3          	remu	a5,a0,a5
    80004438:	02078e63          	beqz	a5,80004474 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000443c:	fff48513          	addi	a0,s1,-1
    80004440:	00000097          	auipc	ra,0x0
    80004444:	fcc080e7          	jalr	-52(ra) # 8000440c <_ZL9fibonaccim>
    80004448:	00050913          	mv	s2,a0
    8000444c:	ffe48513          	addi	a0,s1,-2
    80004450:	00000097          	auipc	ra,0x0
    80004454:	fbc080e7          	jalr	-68(ra) # 8000440c <_ZL9fibonaccim>
    80004458:	00a90533          	add	a0,s2,a0
}
    8000445c:	01813083          	ld	ra,24(sp)
    80004460:	01013403          	ld	s0,16(sp)
    80004464:	00813483          	ld	s1,8(sp)
    80004468:	00013903          	ld	s2,0(sp)
    8000446c:	02010113          	addi	sp,sp,32
    80004470:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004474:	ffffd097          	auipc	ra,0xffffd
    80004478:	06c080e7          	jalr	108(ra) # 800014e0 <_Z15thread_dispatchv>
    8000447c:	fc1ff06f          	j	8000443c <_ZL9fibonaccim+0x30>

0000000080004480 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004480:	fe010113          	addi	sp,sp,-32
    80004484:	00113c23          	sd	ra,24(sp)
    80004488:	00813823          	sd	s0,16(sp)
    8000448c:	00913423          	sd	s1,8(sp)
    80004490:	01213023          	sd	s2,0(sp)
    80004494:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80004498:	00a00493          	li	s1,10
    8000449c:	0400006f          	j	800044dc <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800044a0:	00005517          	auipc	a0,0x5
    800044a4:	dd850513          	addi	a0,a0,-552 # 80009278 <CONSOLE_STATUS+0x268>
    800044a8:	00001097          	auipc	ra,0x1
    800044ac:	dc8080e7          	jalr	-568(ra) # 80005270 <_Z11printStringPKc>
    800044b0:	00000613          	li	a2,0
    800044b4:	00a00593          	li	a1,10
    800044b8:	00048513          	mv	a0,s1
    800044bc:	00001097          	auipc	ra,0x1
    800044c0:	f64080e7          	jalr	-156(ra) # 80005420 <_Z8printIntiii>
    800044c4:	00005517          	auipc	a0,0x5
    800044c8:	fa450513          	addi	a0,a0,-92 # 80009468 <CONSOLE_STATUS+0x458>
    800044cc:	00001097          	auipc	ra,0x1
    800044d0:	da4080e7          	jalr	-604(ra) # 80005270 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800044d4:	0014849b          	addiw	s1,s1,1
    800044d8:	0ff4f493          	andi	s1,s1,255
    800044dc:	00c00793          	li	a5,12
    800044e0:	fc97f0e3          	bgeu	a5,s1,800044a0 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800044e4:	00005517          	auipc	a0,0x5
    800044e8:	d9c50513          	addi	a0,a0,-612 # 80009280 <CONSOLE_STATUS+0x270>
    800044ec:	00001097          	auipc	ra,0x1
    800044f0:	d84080e7          	jalr	-636(ra) # 80005270 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800044f4:	00500313          	li	t1,5
    thread_dispatch();
    800044f8:	ffffd097          	auipc	ra,0xffffd
    800044fc:	fe8080e7          	jalr	-24(ra) # 800014e0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80004500:	01000513          	li	a0,16
    80004504:	00000097          	auipc	ra,0x0
    80004508:	f08080e7          	jalr	-248(ra) # 8000440c <_ZL9fibonaccim>
    8000450c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80004510:	00005517          	auipc	a0,0x5
    80004514:	d8050513          	addi	a0,a0,-640 # 80009290 <CONSOLE_STATUS+0x280>
    80004518:	00001097          	auipc	ra,0x1
    8000451c:	d58080e7          	jalr	-680(ra) # 80005270 <_Z11printStringPKc>
    80004520:	00000613          	li	a2,0
    80004524:	00a00593          	li	a1,10
    80004528:	0009051b          	sext.w	a0,s2
    8000452c:	00001097          	auipc	ra,0x1
    80004530:	ef4080e7          	jalr	-268(ra) # 80005420 <_Z8printIntiii>
    80004534:	00005517          	auipc	a0,0x5
    80004538:	f3450513          	addi	a0,a0,-204 # 80009468 <CONSOLE_STATUS+0x458>
    8000453c:	00001097          	auipc	ra,0x1
    80004540:	d34080e7          	jalr	-716(ra) # 80005270 <_Z11printStringPKc>
    80004544:	0400006f          	j	80004584 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004548:	00005517          	auipc	a0,0x5
    8000454c:	d3050513          	addi	a0,a0,-720 # 80009278 <CONSOLE_STATUS+0x268>
    80004550:	00001097          	auipc	ra,0x1
    80004554:	d20080e7          	jalr	-736(ra) # 80005270 <_Z11printStringPKc>
    80004558:	00000613          	li	a2,0
    8000455c:	00a00593          	li	a1,10
    80004560:	00048513          	mv	a0,s1
    80004564:	00001097          	auipc	ra,0x1
    80004568:	ebc080e7          	jalr	-324(ra) # 80005420 <_Z8printIntiii>
    8000456c:	00005517          	auipc	a0,0x5
    80004570:	efc50513          	addi	a0,a0,-260 # 80009468 <CONSOLE_STATUS+0x458>
    80004574:	00001097          	auipc	ra,0x1
    80004578:	cfc080e7          	jalr	-772(ra) # 80005270 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000457c:	0014849b          	addiw	s1,s1,1
    80004580:	0ff4f493          	andi	s1,s1,255
    80004584:	00f00793          	li	a5,15
    80004588:	fc97f0e3          	bgeu	a5,s1,80004548 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    8000458c:	00005517          	auipc	a0,0x5
    80004590:	d1450513          	addi	a0,a0,-748 # 800092a0 <CONSOLE_STATUS+0x290>
    80004594:	00001097          	auipc	ra,0x1
    80004598:	cdc080e7          	jalr	-804(ra) # 80005270 <_Z11printStringPKc>
    finishedD = true;
    8000459c:	00100793          	li	a5,1
    800045a0:	00007717          	auipc	a4,0x7
    800045a4:	1af70c23          	sb	a5,440(a4) # 8000b758 <_ZL9finishedD>
    thread_dispatch();
    800045a8:	ffffd097          	auipc	ra,0xffffd
    800045ac:	f38080e7          	jalr	-200(ra) # 800014e0 <_Z15thread_dispatchv>
}
    800045b0:	01813083          	ld	ra,24(sp)
    800045b4:	01013403          	ld	s0,16(sp)
    800045b8:	00813483          	ld	s1,8(sp)
    800045bc:	00013903          	ld	s2,0(sp)
    800045c0:	02010113          	addi	sp,sp,32
    800045c4:	00008067          	ret

00000000800045c8 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    800045c8:	fe010113          	addi	sp,sp,-32
    800045cc:	00113c23          	sd	ra,24(sp)
    800045d0:	00813823          	sd	s0,16(sp)
    800045d4:	00913423          	sd	s1,8(sp)
    800045d8:	01213023          	sd	s2,0(sp)
    800045dc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800045e0:	00000493          	li	s1,0
    800045e4:	0400006f          	j	80004624 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    800045e8:	00005517          	auipc	a0,0x5
    800045ec:	c6050513          	addi	a0,a0,-928 # 80009248 <CONSOLE_STATUS+0x238>
    800045f0:	00001097          	auipc	ra,0x1
    800045f4:	c80080e7          	jalr	-896(ra) # 80005270 <_Z11printStringPKc>
    800045f8:	00000613          	li	a2,0
    800045fc:	00a00593          	li	a1,10
    80004600:	00048513          	mv	a0,s1
    80004604:	00001097          	auipc	ra,0x1
    80004608:	e1c080e7          	jalr	-484(ra) # 80005420 <_Z8printIntiii>
    8000460c:	00005517          	auipc	a0,0x5
    80004610:	e5c50513          	addi	a0,a0,-420 # 80009468 <CONSOLE_STATUS+0x458>
    80004614:	00001097          	auipc	ra,0x1
    80004618:	c5c080e7          	jalr	-932(ra) # 80005270 <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000461c:	0014849b          	addiw	s1,s1,1
    80004620:	0ff4f493          	andi	s1,s1,255
    80004624:	00200793          	li	a5,2
    80004628:	fc97f0e3          	bgeu	a5,s1,800045e8 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    8000462c:	00005517          	auipc	a0,0x5
    80004630:	c2450513          	addi	a0,a0,-988 # 80009250 <CONSOLE_STATUS+0x240>
    80004634:	00001097          	auipc	ra,0x1
    80004638:	c3c080e7          	jalr	-964(ra) # 80005270 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000463c:	00700313          	li	t1,7
    thread_dispatch();
    80004640:	ffffd097          	auipc	ra,0xffffd
    80004644:	ea0080e7          	jalr	-352(ra) # 800014e0 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004648:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    8000464c:	00005517          	auipc	a0,0x5
    80004650:	c1450513          	addi	a0,a0,-1004 # 80009260 <CONSOLE_STATUS+0x250>
    80004654:	00001097          	auipc	ra,0x1
    80004658:	c1c080e7          	jalr	-996(ra) # 80005270 <_Z11printStringPKc>
    8000465c:	00000613          	li	a2,0
    80004660:	00a00593          	li	a1,10
    80004664:	0009051b          	sext.w	a0,s2
    80004668:	00001097          	auipc	ra,0x1
    8000466c:	db8080e7          	jalr	-584(ra) # 80005420 <_Z8printIntiii>
    80004670:	00005517          	auipc	a0,0x5
    80004674:	df850513          	addi	a0,a0,-520 # 80009468 <CONSOLE_STATUS+0x458>
    80004678:	00001097          	auipc	ra,0x1
    8000467c:	bf8080e7          	jalr	-1032(ra) # 80005270 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004680:	00c00513          	li	a0,12
    80004684:	00000097          	auipc	ra,0x0
    80004688:	d88080e7          	jalr	-632(ra) # 8000440c <_ZL9fibonaccim>
    8000468c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004690:	00005517          	auipc	a0,0x5
    80004694:	bd850513          	addi	a0,a0,-1064 # 80009268 <CONSOLE_STATUS+0x258>
    80004698:	00001097          	auipc	ra,0x1
    8000469c:	bd8080e7          	jalr	-1064(ra) # 80005270 <_Z11printStringPKc>
    800046a0:	00000613          	li	a2,0
    800046a4:	00a00593          	li	a1,10
    800046a8:	0009051b          	sext.w	a0,s2
    800046ac:	00001097          	auipc	ra,0x1
    800046b0:	d74080e7          	jalr	-652(ra) # 80005420 <_Z8printIntiii>
    800046b4:	00005517          	auipc	a0,0x5
    800046b8:	db450513          	addi	a0,a0,-588 # 80009468 <CONSOLE_STATUS+0x458>
    800046bc:	00001097          	auipc	ra,0x1
    800046c0:	bb4080e7          	jalr	-1100(ra) # 80005270 <_Z11printStringPKc>
    800046c4:	0400006f          	j	80004704 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    800046c8:	00005517          	auipc	a0,0x5
    800046cc:	b8050513          	addi	a0,a0,-1152 # 80009248 <CONSOLE_STATUS+0x238>
    800046d0:	00001097          	auipc	ra,0x1
    800046d4:	ba0080e7          	jalr	-1120(ra) # 80005270 <_Z11printStringPKc>
    800046d8:	00000613          	li	a2,0
    800046dc:	00a00593          	li	a1,10
    800046e0:	00048513          	mv	a0,s1
    800046e4:	00001097          	auipc	ra,0x1
    800046e8:	d3c080e7          	jalr	-708(ra) # 80005420 <_Z8printIntiii>
    800046ec:	00005517          	auipc	a0,0x5
    800046f0:	d7c50513          	addi	a0,a0,-644 # 80009468 <CONSOLE_STATUS+0x458>
    800046f4:	00001097          	auipc	ra,0x1
    800046f8:	b7c080e7          	jalr	-1156(ra) # 80005270 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800046fc:	0014849b          	addiw	s1,s1,1
    80004700:	0ff4f493          	andi	s1,s1,255
    80004704:	00500793          	li	a5,5
    80004708:	fc97f0e3          	bgeu	a5,s1,800046c8 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    8000470c:	00005517          	auipc	a0,0x5
    80004710:	b1450513          	addi	a0,a0,-1260 # 80009220 <CONSOLE_STATUS+0x210>
    80004714:	00001097          	auipc	ra,0x1
    80004718:	b5c080e7          	jalr	-1188(ra) # 80005270 <_Z11printStringPKc>
    finishedC = true;
    8000471c:	00100793          	li	a5,1
    80004720:	00007717          	auipc	a4,0x7
    80004724:	02f70ca3          	sb	a5,57(a4) # 8000b759 <_ZL9finishedC>
    thread_dispatch();
    80004728:	ffffd097          	auipc	ra,0xffffd
    8000472c:	db8080e7          	jalr	-584(ra) # 800014e0 <_Z15thread_dispatchv>
}
    80004730:	01813083          	ld	ra,24(sp)
    80004734:	01013403          	ld	s0,16(sp)
    80004738:	00813483          	ld	s1,8(sp)
    8000473c:	00013903          	ld	s2,0(sp)
    80004740:	02010113          	addi	sp,sp,32
    80004744:	00008067          	ret

0000000080004748 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004748:	fe010113          	addi	sp,sp,-32
    8000474c:	00113c23          	sd	ra,24(sp)
    80004750:	00813823          	sd	s0,16(sp)
    80004754:	00913423          	sd	s1,8(sp)
    80004758:	01213023          	sd	s2,0(sp)
    8000475c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004760:	00000913          	li	s2,0
    80004764:	0380006f          	j	8000479c <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    80004768:	ffffd097          	auipc	ra,0xffffd
    8000476c:	d78080e7          	jalr	-648(ra) # 800014e0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004770:	00148493          	addi	s1,s1,1
    80004774:	000027b7          	lui	a5,0x2
    80004778:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000477c:	0097ee63          	bltu	a5,s1,80004798 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004780:	00000713          	li	a4,0
    80004784:	000077b7          	lui	a5,0x7
    80004788:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000478c:	fce7eee3          	bltu	a5,a4,80004768 <_ZL11workerBodyBPv+0x20>
    80004790:	00170713          	addi	a4,a4,1
    80004794:	ff1ff06f          	j	80004784 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80004798:	00190913          	addi	s2,s2,1
    8000479c:	00f00793          	li	a5,15
    800047a0:	0527e063          	bltu	a5,s2,800047e0 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800047a4:	00005517          	auipc	a0,0x5
    800047a8:	a8c50513          	addi	a0,a0,-1396 # 80009230 <CONSOLE_STATUS+0x220>
    800047ac:	00001097          	auipc	ra,0x1
    800047b0:	ac4080e7          	jalr	-1340(ra) # 80005270 <_Z11printStringPKc>
    800047b4:	00000613          	li	a2,0
    800047b8:	00a00593          	li	a1,10
    800047bc:	0009051b          	sext.w	a0,s2
    800047c0:	00001097          	auipc	ra,0x1
    800047c4:	c60080e7          	jalr	-928(ra) # 80005420 <_Z8printIntiii>
    800047c8:	00005517          	auipc	a0,0x5
    800047cc:	ca050513          	addi	a0,a0,-864 # 80009468 <CONSOLE_STATUS+0x458>
    800047d0:	00001097          	auipc	ra,0x1
    800047d4:	aa0080e7          	jalr	-1376(ra) # 80005270 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800047d8:	00000493          	li	s1,0
    800047dc:	f99ff06f          	j	80004774 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    800047e0:	00005517          	auipc	a0,0x5
    800047e4:	a5850513          	addi	a0,a0,-1448 # 80009238 <CONSOLE_STATUS+0x228>
    800047e8:	00001097          	auipc	ra,0x1
    800047ec:	a88080e7          	jalr	-1400(ra) # 80005270 <_Z11printStringPKc>
    finishedB = true;
    800047f0:	00100793          	li	a5,1
    800047f4:	00007717          	auipc	a4,0x7
    800047f8:	f6f70323          	sb	a5,-154(a4) # 8000b75a <_ZL9finishedB>
    thread_dispatch();
    800047fc:	ffffd097          	auipc	ra,0xffffd
    80004800:	ce4080e7          	jalr	-796(ra) # 800014e0 <_Z15thread_dispatchv>
}
    80004804:	01813083          	ld	ra,24(sp)
    80004808:	01013403          	ld	s0,16(sp)
    8000480c:	00813483          	ld	s1,8(sp)
    80004810:	00013903          	ld	s2,0(sp)
    80004814:	02010113          	addi	sp,sp,32
    80004818:	00008067          	ret

000000008000481c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    8000481c:	fe010113          	addi	sp,sp,-32
    80004820:	00113c23          	sd	ra,24(sp)
    80004824:	00813823          	sd	s0,16(sp)
    80004828:	00913423          	sd	s1,8(sp)
    8000482c:	01213023          	sd	s2,0(sp)
    80004830:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004834:	00000913          	li	s2,0
    80004838:	0380006f          	j	80004870 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    8000483c:	ffffd097          	auipc	ra,0xffffd
    80004840:	ca4080e7          	jalr	-860(ra) # 800014e0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004844:	00148493          	addi	s1,s1,1
    80004848:	000027b7          	lui	a5,0x2
    8000484c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004850:	0097ee63          	bltu	a5,s1,8000486c <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004854:	00000713          	li	a4,0
    80004858:	000077b7          	lui	a5,0x7
    8000485c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004860:	fce7eee3          	bltu	a5,a4,8000483c <_ZL11workerBodyAPv+0x20>
    80004864:	00170713          	addi	a4,a4,1
    80004868:	ff1ff06f          	j	80004858 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000486c:	00190913          	addi	s2,s2,1
    80004870:	00900793          	li	a5,9
    80004874:	0527e063          	bltu	a5,s2,800048b4 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004878:	00005517          	auipc	a0,0x5
    8000487c:	9a050513          	addi	a0,a0,-1632 # 80009218 <CONSOLE_STATUS+0x208>
    80004880:	00001097          	auipc	ra,0x1
    80004884:	9f0080e7          	jalr	-1552(ra) # 80005270 <_Z11printStringPKc>
    80004888:	00000613          	li	a2,0
    8000488c:	00a00593          	li	a1,10
    80004890:	0009051b          	sext.w	a0,s2
    80004894:	00001097          	auipc	ra,0x1
    80004898:	b8c080e7          	jalr	-1140(ra) # 80005420 <_Z8printIntiii>
    8000489c:	00005517          	auipc	a0,0x5
    800048a0:	bcc50513          	addi	a0,a0,-1076 # 80009468 <CONSOLE_STATUS+0x458>
    800048a4:	00001097          	auipc	ra,0x1
    800048a8:	9cc080e7          	jalr	-1588(ra) # 80005270 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800048ac:	00000493          	li	s1,0
    800048b0:	f99ff06f          	j	80004848 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    800048b4:	00005517          	auipc	a0,0x5
    800048b8:	96c50513          	addi	a0,a0,-1684 # 80009220 <CONSOLE_STATUS+0x210>
    800048bc:	00001097          	auipc	ra,0x1
    800048c0:	9b4080e7          	jalr	-1612(ra) # 80005270 <_Z11printStringPKc>
    finishedA = true;
    800048c4:	00100793          	li	a5,1
    800048c8:	00007717          	auipc	a4,0x7
    800048cc:	e8f709a3          	sb	a5,-365(a4) # 8000b75b <_ZL9finishedA>
}
    800048d0:	01813083          	ld	ra,24(sp)
    800048d4:	01013403          	ld	s0,16(sp)
    800048d8:	00813483          	ld	s1,8(sp)
    800048dc:	00013903          	ld	s2,0(sp)
    800048e0:	02010113          	addi	sp,sp,32
    800048e4:	00008067          	ret

00000000800048e8 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800048e8:	fd010113          	addi	sp,sp,-48
    800048ec:	02113423          	sd	ra,40(sp)
    800048f0:	02813023          	sd	s0,32(sp)
    800048f4:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800048f8:	00000613          	li	a2,0
    800048fc:	00000597          	auipc	a1,0x0
    80004900:	f2058593          	addi	a1,a1,-224 # 8000481c <_ZL11workerBodyAPv>
    80004904:	fd040513          	addi	a0,s0,-48
    80004908:	ffffd097          	auipc	ra,0xffffd
    8000490c:	ab8080e7          	jalr	-1352(ra) # 800013c0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80004910:	00005517          	auipc	a0,0x5
    80004914:	9a050513          	addi	a0,a0,-1632 # 800092b0 <CONSOLE_STATUS+0x2a0>
    80004918:	00001097          	auipc	ra,0x1
    8000491c:	958080e7          	jalr	-1704(ra) # 80005270 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004920:	00000613          	li	a2,0
    80004924:	00000597          	auipc	a1,0x0
    80004928:	e2458593          	addi	a1,a1,-476 # 80004748 <_ZL11workerBodyBPv>
    8000492c:	fd840513          	addi	a0,s0,-40
    80004930:	ffffd097          	auipc	ra,0xffffd
    80004934:	a90080e7          	jalr	-1392(ra) # 800013c0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80004938:	00005517          	auipc	a0,0x5
    8000493c:	99050513          	addi	a0,a0,-1648 # 800092c8 <CONSOLE_STATUS+0x2b8>
    80004940:	00001097          	auipc	ra,0x1
    80004944:	930080e7          	jalr	-1744(ra) # 80005270 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004948:	00000613          	li	a2,0
    8000494c:	00000597          	auipc	a1,0x0
    80004950:	c7c58593          	addi	a1,a1,-900 # 800045c8 <_ZL11workerBodyCPv>
    80004954:	fe040513          	addi	a0,s0,-32
    80004958:	ffffd097          	auipc	ra,0xffffd
    8000495c:	a68080e7          	jalr	-1432(ra) # 800013c0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80004960:	00005517          	auipc	a0,0x5
    80004964:	98050513          	addi	a0,a0,-1664 # 800092e0 <CONSOLE_STATUS+0x2d0>
    80004968:	00001097          	auipc	ra,0x1
    8000496c:	908080e7          	jalr	-1784(ra) # 80005270 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004970:	00000613          	li	a2,0
    80004974:	00000597          	auipc	a1,0x0
    80004978:	b0c58593          	addi	a1,a1,-1268 # 80004480 <_ZL11workerBodyDPv>
    8000497c:	fe840513          	addi	a0,s0,-24
    80004980:	ffffd097          	auipc	ra,0xffffd
    80004984:	a40080e7          	jalr	-1472(ra) # 800013c0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004988:	00005517          	auipc	a0,0x5
    8000498c:	97050513          	addi	a0,a0,-1680 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80004990:	00001097          	auipc	ra,0x1
    80004994:	8e0080e7          	jalr	-1824(ra) # 80005270 <_Z11printStringPKc>
    80004998:	00c0006f          	j	800049a4 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    8000499c:	ffffd097          	auipc	ra,0xffffd
    800049a0:	b44080e7          	jalr	-1212(ra) # 800014e0 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800049a4:	00007797          	auipc	a5,0x7
    800049a8:	db77c783          	lbu	a5,-585(a5) # 8000b75b <_ZL9finishedA>
    800049ac:	fe0788e3          	beqz	a5,8000499c <_Z18Threads_C_API_testv+0xb4>
    800049b0:	00007797          	auipc	a5,0x7
    800049b4:	daa7c783          	lbu	a5,-598(a5) # 8000b75a <_ZL9finishedB>
    800049b8:	fe0782e3          	beqz	a5,8000499c <_Z18Threads_C_API_testv+0xb4>
    800049bc:	00007797          	auipc	a5,0x7
    800049c0:	d9d7c783          	lbu	a5,-611(a5) # 8000b759 <_ZL9finishedC>
    800049c4:	fc078ce3          	beqz	a5,8000499c <_Z18Threads_C_API_testv+0xb4>
    800049c8:	00007797          	auipc	a5,0x7
    800049cc:	d907c783          	lbu	a5,-624(a5) # 8000b758 <_ZL9finishedD>
    800049d0:	fc0786e3          	beqz	a5,8000499c <_Z18Threads_C_API_testv+0xb4>
    }

}
    800049d4:	02813083          	ld	ra,40(sp)
    800049d8:	02013403          	ld	s0,32(sp)
    800049dc:	03010113          	addi	sp,sp,48
    800049e0:	00008067          	ret

00000000800049e4 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    800049e4:	fd010113          	addi	sp,sp,-48
    800049e8:	02113423          	sd	ra,40(sp)
    800049ec:	02813023          	sd	s0,32(sp)
    800049f0:	00913c23          	sd	s1,24(sp)
    800049f4:	01213823          	sd	s2,16(sp)
    800049f8:	01313423          	sd	s3,8(sp)
    800049fc:	03010413          	addi	s0,sp,48
    80004a00:	00050993          	mv	s3,a0
    80004a04:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80004a08:	00000913          	li	s2,0
    80004a0c:	00c0006f          	j	80004a18 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004a10:	ffffd097          	auipc	ra,0xffffd
    80004a14:	620080e7          	jalr	1568(ra) # 80002030 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80004a18:	ffffd097          	auipc	ra,0xffffd
    80004a1c:	bec080e7          	jalr	-1044(ra) # 80001604 <_Z4getcv>
    80004a20:	0005059b          	sext.w	a1,a0
    80004a24:	01b00793          	li	a5,27
    80004a28:	02f58a63          	beq	a1,a5,80004a5c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    80004a2c:	0084b503          	ld	a0,8(s1)
    80004a30:	00001097          	auipc	ra,0x1
    80004a34:	c64080e7          	jalr	-924(ra) # 80005694 <_ZN9BufferCPP3putEi>
        i++;
    80004a38:	0019071b          	addiw	a4,s2,1
    80004a3c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004a40:	0004a683          	lw	a3,0(s1)
    80004a44:	0026979b          	slliw	a5,a3,0x2
    80004a48:	00d787bb          	addw	a5,a5,a3
    80004a4c:	0017979b          	slliw	a5,a5,0x1
    80004a50:	02f767bb          	remw	a5,a4,a5
    80004a54:	fc0792e3          	bnez	a5,80004a18 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80004a58:	fb9ff06f          	j	80004a10 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    80004a5c:	00100793          	li	a5,1
    80004a60:	00007717          	auipc	a4,0x7
    80004a64:	d0f72023          	sw	a5,-768(a4) # 8000b760 <_ZL9threadEnd>
    td->buffer->put('!');
    80004a68:	0209b783          	ld	a5,32(s3)
    80004a6c:	02100593          	li	a1,33
    80004a70:	0087b503          	ld	a0,8(a5)
    80004a74:	00001097          	auipc	ra,0x1
    80004a78:	c20080e7          	jalr	-992(ra) # 80005694 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    80004a7c:	0104b503          	ld	a0,16(s1)
    80004a80:	ffffd097          	auipc	ra,0xffffd
    80004a84:	6dc080e7          	jalr	1756(ra) # 8000215c <_ZN9Semaphore6signalEv>
}
    80004a88:	02813083          	ld	ra,40(sp)
    80004a8c:	02013403          	ld	s0,32(sp)
    80004a90:	01813483          	ld	s1,24(sp)
    80004a94:	01013903          	ld	s2,16(sp)
    80004a98:	00813983          	ld	s3,8(sp)
    80004a9c:	03010113          	addi	sp,sp,48
    80004aa0:	00008067          	ret

0000000080004aa4 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    80004aa4:	fe010113          	addi	sp,sp,-32
    80004aa8:	00113c23          	sd	ra,24(sp)
    80004aac:	00813823          	sd	s0,16(sp)
    80004ab0:	00913423          	sd	s1,8(sp)
    80004ab4:	01213023          	sd	s2,0(sp)
    80004ab8:	02010413          	addi	s0,sp,32
    80004abc:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004ac0:	00000913          	li	s2,0
    80004ac4:	00c0006f          	j	80004ad0 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80004ac8:	ffffd097          	auipc	ra,0xffffd
    80004acc:	568080e7          	jalr	1384(ra) # 80002030 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80004ad0:	00007797          	auipc	a5,0x7
    80004ad4:	c907a783          	lw	a5,-880(a5) # 8000b760 <_ZL9threadEnd>
    80004ad8:	02079e63          	bnez	a5,80004b14 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    80004adc:	0004a583          	lw	a1,0(s1)
    80004ae0:	0305859b          	addiw	a1,a1,48
    80004ae4:	0084b503          	ld	a0,8(s1)
    80004ae8:	00001097          	auipc	ra,0x1
    80004aec:	bac080e7          	jalr	-1108(ra) # 80005694 <_ZN9BufferCPP3putEi>
        i++;
    80004af0:	0019071b          	addiw	a4,s2,1
    80004af4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80004af8:	0004a683          	lw	a3,0(s1)
    80004afc:	0026979b          	slliw	a5,a3,0x2
    80004b00:	00d787bb          	addw	a5,a5,a3
    80004b04:	0017979b          	slliw	a5,a5,0x1
    80004b08:	02f767bb          	remw	a5,a4,a5
    80004b0c:	fc0792e3          	bnez	a5,80004ad0 <_ZN12ProducerSync8producerEPv+0x2c>
    80004b10:	fb9ff06f          	j	80004ac8 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80004b14:	0104b503          	ld	a0,16(s1)
    80004b18:	ffffd097          	auipc	ra,0xffffd
    80004b1c:	644080e7          	jalr	1604(ra) # 8000215c <_ZN9Semaphore6signalEv>
}
    80004b20:	01813083          	ld	ra,24(sp)
    80004b24:	01013403          	ld	s0,16(sp)
    80004b28:	00813483          	ld	s1,8(sp)
    80004b2c:	00013903          	ld	s2,0(sp)
    80004b30:	02010113          	addi	sp,sp,32
    80004b34:	00008067          	ret

0000000080004b38 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80004b38:	fd010113          	addi	sp,sp,-48
    80004b3c:	02113423          	sd	ra,40(sp)
    80004b40:	02813023          	sd	s0,32(sp)
    80004b44:	00913c23          	sd	s1,24(sp)
    80004b48:	01213823          	sd	s2,16(sp)
    80004b4c:	01313423          	sd	s3,8(sp)
    80004b50:	01413023          	sd	s4,0(sp)
    80004b54:	03010413          	addi	s0,sp,48
    80004b58:	00050993          	mv	s3,a0
    80004b5c:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80004b60:	00000a13          	li	s4,0
    80004b64:	01c0006f          	j	80004b80 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80004b68:	ffffd097          	auipc	ra,0xffffd
    80004b6c:	4c8080e7          	jalr	1224(ra) # 80002030 <_ZN6Thread8dispatchEv>
    80004b70:	0500006f          	j	80004bc0 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80004b74:	00a00513          	li	a0,10
    80004b78:	ffffd097          	auipc	ra,0xffffd
    80004b7c:	ab4080e7          	jalr	-1356(ra) # 8000162c <_Z4putcc>
    while (!threadEnd) {
    80004b80:	00007797          	auipc	a5,0x7
    80004b84:	be07a783          	lw	a5,-1056(a5) # 8000b760 <_ZL9threadEnd>
    80004b88:	06079263          	bnez	a5,80004bec <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    80004b8c:	00893503          	ld	a0,8(s2)
    80004b90:	00001097          	auipc	ra,0x1
    80004b94:	b94080e7          	jalr	-1132(ra) # 80005724 <_ZN9BufferCPP3getEv>
        i++;
    80004b98:	001a049b          	addiw	s1,s4,1
    80004b9c:	00048a1b          	sext.w	s4,s1
        putc(key);
    80004ba0:	0ff57513          	andi	a0,a0,255
    80004ba4:	ffffd097          	auipc	ra,0xffffd
    80004ba8:	a88080e7          	jalr	-1400(ra) # 8000162c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80004bac:	00092703          	lw	a4,0(s2)
    80004bb0:	0027179b          	slliw	a5,a4,0x2
    80004bb4:	00e787bb          	addw	a5,a5,a4
    80004bb8:	02f4e7bb          	remw	a5,s1,a5
    80004bbc:	fa0786e3          	beqz	a5,80004b68 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80004bc0:	05000793          	li	a5,80
    80004bc4:	02f4e4bb          	remw	s1,s1,a5
    80004bc8:	fa049ce3          	bnez	s1,80004b80 <_ZN12ConsumerSync8consumerEPv+0x48>
    80004bcc:	fa9ff06f          	j	80004b74 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80004bd0:	0209b783          	ld	a5,32(s3)
    80004bd4:	0087b503          	ld	a0,8(a5)
    80004bd8:	00001097          	auipc	ra,0x1
    80004bdc:	b4c080e7          	jalr	-1204(ra) # 80005724 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80004be0:	0ff57513          	andi	a0,a0,255
    80004be4:	ffffd097          	auipc	ra,0xffffd
    80004be8:	5cc080e7          	jalr	1484(ra) # 800021b0 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80004bec:	0209b783          	ld	a5,32(s3)
    80004bf0:	0087b503          	ld	a0,8(a5)
    80004bf4:	00001097          	auipc	ra,0x1
    80004bf8:	bbc080e7          	jalr	-1092(ra) # 800057b0 <_ZN9BufferCPP6getCntEv>
    80004bfc:	fca04ae3          	bgtz	a0,80004bd0 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80004c00:	01093503          	ld	a0,16(s2)
    80004c04:	ffffd097          	auipc	ra,0xffffd
    80004c08:	558080e7          	jalr	1368(ra) # 8000215c <_ZN9Semaphore6signalEv>
}
    80004c0c:	02813083          	ld	ra,40(sp)
    80004c10:	02013403          	ld	s0,32(sp)
    80004c14:	01813483          	ld	s1,24(sp)
    80004c18:	01013903          	ld	s2,16(sp)
    80004c1c:	00813983          	ld	s3,8(sp)
    80004c20:	00013a03          	ld	s4,0(sp)
    80004c24:	03010113          	addi	sp,sp,48
    80004c28:	00008067          	ret

0000000080004c2c <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80004c2c:	f8010113          	addi	sp,sp,-128
    80004c30:	06113c23          	sd	ra,120(sp)
    80004c34:	06813823          	sd	s0,112(sp)
    80004c38:	06913423          	sd	s1,104(sp)
    80004c3c:	07213023          	sd	s2,96(sp)
    80004c40:	05313c23          	sd	s3,88(sp)
    80004c44:	05413823          	sd	s4,80(sp)
    80004c48:	05513423          	sd	s5,72(sp)
    80004c4c:	05613023          	sd	s6,64(sp)
    80004c50:	03713c23          	sd	s7,56(sp)
    80004c54:	03813823          	sd	s8,48(sp)
    80004c58:	03913423          	sd	s9,40(sp)
    80004c5c:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80004c60:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80004c64:	00004517          	auipc	a0,0x4
    80004c68:	4cc50513          	addi	a0,a0,1228 # 80009130 <CONSOLE_STATUS+0x120>
    80004c6c:	00000097          	auipc	ra,0x0
    80004c70:	604080e7          	jalr	1540(ra) # 80005270 <_Z11printStringPKc>
    getString(input, 30);
    80004c74:	01e00593          	li	a1,30
    80004c78:	f8040493          	addi	s1,s0,-128
    80004c7c:	00048513          	mv	a0,s1
    80004c80:	00000097          	auipc	ra,0x0
    80004c84:	678080e7          	jalr	1656(ra) # 800052f8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80004c88:	00048513          	mv	a0,s1
    80004c8c:	00000097          	auipc	ra,0x0
    80004c90:	744080e7          	jalr	1860(ra) # 800053d0 <_Z11stringToIntPKc>
    80004c94:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80004c98:	00004517          	auipc	a0,0x4
    80004c9c:	4b850513          	addi	a0,a0,1208 # 80009150 <CONSOLE_STATUS+0x140>
    80004ca0:	00000097          	auipc	ra,0x0
    80004ca4:	5d0080e7          	jalr	1488(ra) # 80005270 <_Z11printStringPKc>
    getString(input, 30);
    80004ca8:	01e00593          	li	a1,30
    80004cac:	00048513          	mv	a0,s1
    80004cb0:	00000097          	auipc	ra,0x0
    80004cb4:	648080e7          	jalr	1608(ra) # 800052f8 <_Z9getStringPci>
    n = stringToInt(input);
    80004cb8:	00048513          	mv	a0,s1
    80004cbc:	00000097          	auipc	ra,0x0
    80004cc0:	714080e7          	jalr	1812(ra) # 800053d0 <_Z11stringToIntPKc>
    80004cc4:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80004cc8:	00004517          	auipc	a0,0x4
    80004ccc:	4a850513          	addi	a0,a0,1192 # 80009170 <CONSOLE_STATUS+0x160>
    80004cd0:	00000097          	auipc	ra,0x0
    80004cd4:	5a0080e7          	jalr	1440(ra) # 80005270 <_Z11printStringPKc>
    80004cd8:	00000613          	li	a2,0
    80004cdc:	00a00593          	li	a1,10
    80004ce0:	00090513          	mv	a0,s2
    80004ce4:	00000097          	auipc	ra,0x0
    80004ce8:	73c080e7          	jalr	1852(ra) # 80005420 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80004cec:	00004517          	auipc	a0,0x4
    80004cf0:	49c50513          	addi	a0,a0,1180 # 80009188 <CONSOLE_STATUS+0x178>
    80004cf4:	00000097          	auipc	ra,0x0
    80004cf8:	57c080e7          	jalr	1404(ra) # 80005270 <_Z11printStringPKc>
    80004cfc:	00000613          	li	a2,0
    80004d00:	00a00593          	li	a1,10
    80004d04:	00048513          	mv	a0,s1
    80004d08:	00000097          	auipc	ra,0x0
    80004d0c:	718080e7          	jalr	1816(ra) # 80005420 <_Z8printIntiii>
    printString(".\n");
    80004d10:	00004517          	auipc	a0,0x4
    80004d14:	49050513          	addi	a0,a0,1168 # 800091a0 <CONSOLE_STATUS+0x190>
    80004d18:	00000097          	auipc	ra,0x0
    80004d1c:	558080e7          	jalr	1368(ra) # 80005270 <_Z11printStringPKc>
    if(threadNum > n) {
    80004d20:	0324c463          	blt	s1,s2,80004d48 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80004d24:	03205c63          	blez	s2,80004d5c <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80004d28:	03800513          	li	a0,56
    80004d2c:	ffffd097          	auipc	ra,0xffffd
    80004d30:	0b4080e7          	jalr	180(ra) # 80001de0 <_Znwm>
    80004d34:	00050a93          	mv	s5,a0
    80004d38:	00048593          	mv	a1,s1
    80004d3c:	00001097          	auipc	ra,0x1
    80004d40:	804080e7          	jalr	-2044(ra) # 80005540 <_ZN9BufferCPPC1Ei>
    80004d44:	0300006f          	j	80004d74 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80004d48:	00004517          	auipc	a0,0x4
    80004d4c:	46050513          	addi	a0,a0,1120 # 800091a8 <CONSOLE_STATUS+0x198>
    80004d50:	00000097          	auipc	ra,0x0
    80004d54:	520080e7          	jalr	1312(ra) # 80005270 <_Z11printStringPKc>
        return;
    80004d58:	0140006f          	j	80004d6c <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80004d5c:	00004517          	auipc	a0,0x4
    80004d60:	48c50513          	addi	a0,a0,1164 # 800091e8 <CONSOLE_STATUS+0x1d8>
    80004d64:	00000097          	auipc	ra,0x0
    80004d68:	50c080e7          	jalr	1292(ra) # 80005270 <_Z11printStringPKc>
        return;
    80004d6c:	000b8113          	mv	sp,s7
    80004d70:	2380006f          	j	80004fa8 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80004d74:	01000513          	li	a0,16
    80004d78:	ffffd097          	auipc	ra,0xffffd
    80004d7c:	068080e7          	jalr	104(ra) # 80001de0 <_Znwm>
    80004d80:	00050493          	mv	s1,a0
    80004d84:	00000593          	li	a1,0
    80004d88:	ffffd097          	auipc	ra,0xffffd
    80004d8c:	370080e7          	jalr	880(ra) # 800020f8 <_ZN9SemaphoreC1Ej>
    80004d90:	00007797          	auipc	a5,0x7
    80004d94:	9c97bc23          	sd	s1,-1576(a5) # 8000b768 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80004d98:	00391793          	slli	a5,s2,0x3
    80004d9c:	00f78793          	addi	a5,a5,15
    80004da0:	ff07f793          	andi	a5,a5,-16
    80004da4:	40f10133          	sub	sp,sp,a5
    80004da8:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80004dac:	0019071b          	addiw	a4,s2,1
    80004db0:	00171793          	slli	a5,a4,0x1
    80004db4:	00e787b3          	add	a5,a5,a4
    80004db8:	00379793          	slli	a5,a5,0x3
    80004dbc:	00f78793          	addi	a5,a5,15
    80004dc0:	ff07f793          	andi	a5,a5,-16
    80004dc4:	40f10133          	sub	sp,sp,a5
    80004dc8:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80004dcc:	00191c13          	slli	s8,s2,0x1
    80004dd0:	012c07b3          	add	a5,s8,s2
    80004dd4:	00379793          	slli	a5,a5,0x3
    80004dd8:	00fa07b3          	add	a5,s4,a5
    80004ddc:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80004de0:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80004de4:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80004de8:	02800513          	li	a0,40
    80004dec:	ffffd097          	auipc	ra,0xffffd
    80004df0:	ff4080e7          	jalr	-12(ra) # 80001de0 <_Znwm>
    80004df4:	00050b13          	mv	s6,a0
    80004df8:	012c0c33          	add	s8,s8,s2
    80004dfc:	003c1c13          	slli	s8,s8,0x3
    80004e00:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80004e04:	ffffd097          	auipc	ra,0xffffd
    80004e08:	254080e7          	jalr	596(ra) # 80002058 <_ZN6ThreadC1Ev>
    80004e0c:	00006797          	auipc	a5,0x6
    80004e10:	7fc78793          	addi	a5,a5,2044 # 8000b608 <_ZTV12ConsumerSync+0x10>
    80004e14:	00fb3023          	sd	a5,0(s6)
    80004e18:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80004e1c:	000b0513          	mv	a0,s6
    80004e20:	ffffd097          	auipc	ra,0xffffd
    80004e24:	1cc080e7          	jalr	460(ra) # 80001fec <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004e28:	00000493          	li	s1,0
    80004e2c:	0380006f          	j	80004e64 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004e30:	00006797          	auipc	a5,0x6
    80004e34:	7b078793          	addi	a5,a5,1968 # 8000b5e0 <_ZTV12ProducerSync+0x10>
    80004e38:	00fcb023          	sd	a5,0(s9)
    80004e3c:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80004e40:	00349793          	slli	a5,s1,0x3
    80004e44:	00f987b3          	add	a5,s3,a5
    80004e48:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80004e4c:	00349793          	slli	a5,s1,0x3
    80004e50:	00f987b3          	add	a5,s3,a5
    80004e54:	0007b503          	ld	a0,0(a5)
    80004e58:	ffffd097          	auipc	ra,0xffffd
    80004e5c:	194080e7          	jalr	404(ra) # 80001fec <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80004e60:	0014849b          	addiw	s1,s1,1
    80004e64:	0b24d063          	bge	s1,s2,80004f04 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80004e68:	00149793          	slli	a5,s1,0x1
    80004e6c:	009787b3          	add	a5,a5,s1
    80004e70:	00379793          	slli	a5,a5,0x3
    80004e74:	00fa07b3          	add	a5,s4,a5
    80004e78:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80004e7c:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80004e80:	00007717          	auipc	a4,0x7
    80004e84:	8e873703          	ld	a4,-1816(a4) # 8000b768 <_ZL10waitForAll>
    80004e88:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80004e8c:	02905863          	blez	s1,80004ebc <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80004e90:	02800513          	li	a0,40
    80004e94:	ffffd097          	auipc	ra,0xffffd
    80004e98:	f4c080e7          	jalr	-180(ra) # 80001de0 <_Znwm>
    80004e9c:	00050c93          	mv	s9,a0
    80004ea0:	00149c13          	slli	s8,s1,0x1
    80004ea4:	009c0c33          	add	s8,s8,s1
    80004ea8:	003c1c13          	slli	s8,s8,0x3
    80004eac:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80004eb0:	ffffd097          	auipc	ra,0xffffd
    80004eb4:	1a8080e7          	jalr	424(ra) # 80002058 <_ZN6ThreadC1Ev>
    80004eb8:	f79ff06f          	j	80004e30 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80004ebc:	02800513          	li	a0,40
    80004ec0:	ffffd097          	auipc	ra,0xffffd
    80004ec4:	f20080e7          	jalr	-224(ra) # 80001de0 <_Znwm>
    80004ec8:	00050c93          	mv	s9,a0
    80004ecc:	00149c13          	slli	s8,s1,0x1
    80004ed0:	009c0c33          	add	s8,s8,s1
    80004ed4:	003c1c13          	slli	s8,s8,0x3
    80004ed8:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80004edc:	ffffd097          	auipc	ra,0xffffd
    80004ee0:	17c080e7          	jalr	380(ra) # 80002058 <_ZN6ThreadC1Ev>
    80004ee4:	00006797          	auipc	a5,0x6
    80004ee8:	6d478793          	addi	a5,a5,1748 # 8000b5b8 <_ZTV16ProducerKeyboard+0x10>
    80004eec:	00fcb023          	sd	a5,0(s9)
    80004ef0:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80004ef4:	00349793          	slli	a5,s1,0x3
    80004ef8:	00f987b3          	add	a5,s3,a5
    80004efc:	0197b023          	sd	s9,0(a5)
    80004f00:	f4dff06f          	j	80004e4c <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80004f04:	ffffd097          	auipc	ra,0xffffd
    80004f08:	12c080e7          	jalr	300(ra) # 80002030 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80004f0c:	00000493          	li	s1,0
    80004f10:	00994e63          	blt	s2,s1,80004f2c <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80004f14:	00007517          	auipc	a0,0x7
    80004f18:	85453503          	ld	a0,-1964(a0) # 8000b768 <_ZL10waitForAll>
    80004f1c:	ffffd097          	auipc	ra,0xffffd
    80004f20:	214080e7          	jalr	532(ra) # 80002130 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80004f24:	0014849b          	addiw	s1,s1,1
    80004f28:	fe9ff06f          	j	80004f10 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80004f2c:	00000493          	li	s1,0
    80004f30:	0080006f          	j	80004f38 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80004f34:	0014849b          	addiw	s1,s1,1
    80004f38:	0324d263          	bge	s1,s2,80004f5c <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80004f3c:	00349793          	slli	a5,s1,0x3
    80004f40:	00f987b3          	add	a5,s3,a5
    80004f44:	0007b503          	ld	a0,0(a5)
    80004f48:	fe0506e3          	beqz	a0,80004f34 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80004f4c:	00053783          	ld	a5,0(a0)
    80004f50:	0087b783          	ld	a5,8(a5)
    80004f54:	000780e7          	jalr	a5
    80004f58:	fddff06f          	j	80004f34 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80004f5c:	000b0a63          	beqz	s6,80004f70 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80004f60:	000b3783          	ld	a5,0(s6)
    80004f64:	0087b783          	ld	a5,8(a5)
    80004f68:	000b0513          	mv	a0,s6
    80004f6c:	000780e7          	jalr	a5
    delete waitForAll;
    80004f70:	00006517          	auipc	a0,0x6
    80004f74:	7f853503          	ld	a0,2040(a0) # 8000b768 <_ZL10waitForAll>
    80004f78:	00050863          	beqz	a0,80004f88 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80004f7c:	00053783          	ld	a5,0(a0)
    80004f80:	0087b783          	ld	a5,8(a5)
    80004f84:	000780e7          	jalr	a5
    delete buffer;
    80004f88:	000a8e63          	beqz	s5,80004fa4 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80004f8c:	000a8513          	mv	a0,s5
    80004f90:	00001097          	auipc	ra,0x1
    80004f94:	8a8080e7          	jalr	-1880(ra) # 80005838 <_ZN9BufferCPPD1Ev>
    80004f98:	000a8513          	mv	a0,s5
    80004f9c:	ffffd097          	auipc	ra,0xffffd
    80004fa0:	e6c080e7          	jalr	-404(ra) # 80001e08 <_ZdlPv>
    80004fa4:	000b8113          	mv	sp,s7

}
    80004fa8:	f8040113          	addi	sp,s0,-128
    80004fac:	07813083          	ld	ra,120(sp)
    80004fb0:	07013403          	ld	s0,112(sp)
    80004fb4:	06813483          	ld	s1,104(sp)
    80004fb8:	06013903          	ld	s2,96(sp)
    80004fbc:	05813983          	ld	s3,88(sp)
    80004fc0:	05013a03          	ld	s4,80(sp)
    80004fc4:	04813a83          	ld	s5,72(sp)
    80004fc8:	04013b03          	ld	s6,64(sp)
    80004fcc:	03813b83          	ld	s7,56(sp)
    80004fd0:	03013c03          	ld	s8,48(sp)
    80004fd4:	02813c83          	ld	s9,40(sp)
    80004fd8:	08010113          	addi	sp,sp,128
    80004fdc:	00008067          	ret
    80004fe0:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80004fe4:	000a8513          	mv	a0,s5
    80004fe8:	ffffd097          	auipc	ra,0xffffd
    80004fec:	e20080e7          	jalr	-480(ra) # 80001e08 <_ZdlPv>
    80004ff0:	00048513          	mv	a0,s1
    80004ff4:	00008097          	auipc	ra,0x8
    80004ff8:	854080e7          	jalr	-1964(ra) # 8000c848 <_Unwind_Resume>
    80004ffc:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80005000:	00048513          	mv	a0,s1
    80005004:	ffffd097          	auipc	ra,0xffffd
    80005008:	e04080e7          	jalr	-508(ra) # 80001e08 <_ZdlPv>
    8000500c:	00090513          	mv	a0,s2
    80005010:	00008097          	auipc	ra,0x8
    80005014:	838080e7          	jalr	-1992(ra) # 8000c848 <_Unwind_Resume>
    80005018:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    8000501c:	000b0513          	mv	a0,s6
    80005020:	ffffd097          	auipc	ra,0xffffd
    80005024:	de8080e7          	jalr	-536(ra) # 80001e08 <_ZdlPv>
    80005028:	00048513          	mv	a0,s1
    8000502c:	00008097          	auipc	ra,0x8
    80005030:	81c080e7          	jalr	-2020(ra) # 8000c848 <_Unwind_Resume>
    80005034:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80005038:	000c8513          	mv	a0,s9
    8000503c:	ffffd097          	auipc	ra,0xffffd
    80005040:	dcc080e7          	jalr	-564(ra) # 80001e08 <_ZdlPv>
    80005044:	00048513          	mv	a0,s1
    80005048:	00008097          	auipc	ra,0x8
    8000504c:	800080e7          	jalr	-2048(ra) # 8000c848 <_Unwind_Resume>
    80005050:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80005054:	000c8513          	mv	a0,s9
    80005058:	ffffd097          	auipc	ra,0xffffd
    8000505c:	db0080e7          	jalr	-592(ra) # 80001e08 <_ZdlPv>
    80005060:	00048513          	mv	a0,s1
    80005064:	00007097          	auipc	ra,0x7
    80005068:	7e4080e7          	jalr	2020(ra) # 8000c848 <_Unwind_Resume>

000000008000506c <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    8000506c:	ff010113          	addi	sp,sp,-16
    80005070:	00113423          	sd	ra,8(sp)
    80005074:	00813023          	sd	s0,0(sp)
    80005078:	01010413          	addi	s0,sp,16
    8000507c:	00006797          	auipc	a5,0x6
    80005080:	58c78793          	addi	a5,a5,1420 # 8000b608 <_ZTV12ConsumerSync+0x10>
    80005084:	00f53023          	sd	a5,0(a0)
    80005088:	ffffd097          	auipc	ra,0xffffd
    8000508c:	da8080e7          	jalr	-600(ra) # 80001e30 <_ZN6ThreadD1Ev>
    80005090:	00813083          	ld	ra,8(sp)
    80005094:	00013403          	ld	s0,0(sp)
    80005098:	01010113          	addi	sp,sp,16
    8000509c:	00008067          	ret

00000000800050a0 <_ZN12ConsumerSyncD0Ev>:
    800050a0:	fe010113          	addi	sp,sp,-32
    800050a4:	00113c23          	sd	ra,24(sp)
    800050a8:	00813823          	sd	s0,16(sp)
    800050ac:	00913423          	sd	s1,8(sp)
    800050b0:	02010413          	addi	s0,sp,32
    800050b4:	00050493          	mv	s1,a0
    800050b8:	00006797          	auipc	a5,0x6
    800050bc:	55078793          	addi	a5,a5,1360 # 8000b608 <_ZTV12ConsumerSync+0x10>
    800050c0:	00f53023          	sd	a5,0(a0)
    800050c4:	ffffd097          	auipc	ra,0xffffd
    800050c8:	d6c080e7          	jalr	-660(ra) # 80001e30 <_ZN6ThreadD1Ev>
    800050cc:	00048513          	mv	a0,s1
    800050d0:	ffffd097          	auipc	ra,0xffffd
    800050d4:	d38080e7          	jalr	-712(ra) # 80001e08 <_ZdlPv>
    800050d8:	01813083          	ld	ra,24(sp)
    800050dc:	01013403          	ld	s0,16(sp)
    800050e0:	00813483          	ld	s1,8(sp)
    800050e4:	02010113          	addi	sp,sp,32
    800050e8:	00008067          	ret

00000000800050ec <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    800050ec:	ff010113          	addi	sp,sp,-16
    800050f0:	00113423          	sd	ra,8(sp)
    800050f4:	00813023          	sd	s0,0(sp)
    800050f8:	01010413          	addi	s0,sp,16
    800050fc:	00006797          	auipc	a5,0x6
    80005100:	4e478793          	addi	a5,a5,1252 # 8000b5e0 <_ZTV12ProducerSync+0x10>
    80005104:	00f53023          	sd	a5,0(a0)
    80005108:	ffffd097          	auipc	ra,0xffffd
    8000510c:	d28080e7          	jalr	-728(ra) # 80001e30 <_ZN6ThreadD1Ev>
    80005110:	00813083          	ld	ra,8(sp)
    80005114:	00013403          	ld	s0,0(sp)
    80005118:	01010113          	addi	sp,sp,16
    8000511c:	00008067          	ret

0000000080005120 <_ZN12ProducerSyncD0Ev>:
    80005120:	fe010113          	addi	sp,sp,-32
    80005124:	00113c23          	sd	ra,24(sp)
    80005128:	00813823          	sd	s0,16(sp)
    8000512c:	00913423          	sd	s1,8(sp)
    80005130:	02010413          	addi	s0,sp,32
    80005134:	00050493          	mv	s1,a0
    80005138:	00006797          	auipc	a5,0x6
    8000513c:	4a878793          	addi	a5,a5,1192 # 8000b5e0 <_ZTV12ProducerSync+0x10>
    80005140:	00f53023          	sd	a5,0(a0)
    80005144:	ffffd097          	auipc	ra,0xffffd
    80005148:	cec080e7          	jalr	-788(ra) # 80001e30 <_ZN6ThreadD1Ev>
    8000514c:	00048513          	mv	a0,s1
    80005150:	ffffd097          	auipc	ra,0xffffd
    80005154:	cb8080e7          	jalr	-840(ra) # 80001e08 <_ZdlPv>
    80005158:	01813083          	ld	ra,24(sp)
    8000515c:	01013403          	ld	s0,16(sp)
    80005160:	00813483          	ld	s1,8(sp)
    80005164:	02010113          	addi	sp,sp,32
    80005168:	00008067          	ret

000000008000516c <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    8000516c:	ff010113          	addi	sp,sp,-16
    80005170:	00113423          	sd	ra,8(sp)
    80005174:	00813023          	sd	s0,0(sp)
    80005178:	01010413          	addi	s0,sp,16
    8000517c:	00006797          	auipc	a5,0x6
    80005180:	43c78793          	addi	a5,a5,1084 # 8000b5b8 <_ZTV16ProducerKeyboard+0x10>
    80005184:	00f53023          	sd	a5,0(a0)
    80005188:	ffffd097          	auipc	ra,0xffffd
    8000518c:	ca8080e7          	jalr	-856(ra) # 80001e30 <_ZN6ThreadD1Ev>
    80005190:	00813083          	ld	ra,8(sp)
    80005194:	00013403          	ld	s0,0(sp)
    80005198:	01010113          	addi	sp,sp,16
    8000519c:	00008067          	ret

00000000800051a0 <_ZN16ProducerKeyboardD0Ev>:
    800051a0:	fe010113          	addi	sp,sp,-32
    800051a4:	00113c23          	sd	ra,24(sp)
    800051a8:	00813823          	sd	s0,16(sp)
    800051ac:	00913423          	sd	s1,8(sp)
    800051b0:	02010413          	addi	s0,sp,32
    800051b4:	00050493          	mv	s1,a0
    800051b8:	00006797          	auipc	a5,0x6
    800051bc:	40078793          	addi	a5,a5,1024 # 8000b5b8 <_ZTV16ProducerKeyboard+0x10>
    800051c0:	00f53023          	sd	a5,0(a0)
    800051c4:	ffffd097          	auipc	ra,0xffffd
    800051c8:	c6c080e7          	jalr	-916(ra) # 80001e30 <_ZN6ThreadD1Ev>
    800051cc:	00048513          	mv	a0,s1
    800051d0:	ffffd097          	auipc	ra,0xffffd
    800051d4:	c38080e7          	jalr	-968(ra) # 80001e08 <_ZdlPv>
    800051d8:	01813083          	ld	ra,24(sp)
    800051dc:	01013403          	ld	s0,16(sp)
    800051e0:	00813483          	ld	s1,8(sp)
    800051e4:	02010113          	addi	sp,sp,32
    800051e8:	00008067          	ret

00000000800051ec <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    800051ec:	ff010113          	addi	sp,sp,-16
    800051f0:	00113423          	sd	ra,8(sp)
    800051f4:	00813023          	sd	s0,0(sp)
    800051f8:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    800051fc:	02053583          	ld	a1,32(a0)
    80005200:	fffff097          	auipc	ra,0xfffff
    80005204:	7e4080e7          	jalr	2020(ra) # 800049e4 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80005208:	00813083          	ld	ra,8(sp)
    8000520c:	00013403          	ld	s0,0(sp)
    80005210:	01010113          	addi	sp,sp,16
    80005214:	00008067          	ret

0000000080005218 <_ZN12ProducerSync3runEv>:
    void run() override {
    80005218:	ff010113          	addi	sp,sp,-16
    8000521c:	00113423          	sd	ra,8(sp)
    80005220:	00813023          	sd	s0,0(sp)
    80005224:	01010413          	addi	s0,sp,16
        producer(td);
    80005228:	02053583          	ld	a1,32(a0)
    8000522c:	00000097          	auipc	ra,0x0
    80005230:	878080e7          	jalr	-1928(ra) # 80004aa4 <_ZN12ProducerSync8producerEPv>
    }
    80005234:	00813083          	ld	ra,8(sp)
    80005238:	00013403          	ld	s0,0(sp)
    8000523c:	01010113          	addi	sp,sp,16
    80005240:	00008067          	ret

0000000080005244 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80005244:	ff010113          	addi	sp,sp,-16
    80005248:	00113423          	sd	ra,8(sp)
    8000524c:	00813023          	sd	s0,0(sp)
    80005250:	01010413          	addi	s0,sp,16
        consumer(td);
    80005254:	02053583          	ld	a1,32(a0)
    80005258:	00000097          	auipc	ra,0x0
    8000525c:	8e0080e7          	jalr	-1824(ra) # 80004b38 <_ZN12ConsumerSync8consumerEPv>
    }
    80005260:	00813083          	ld	ra,8(sp)
    80005264:	00013403          	ld	s0,0(sp)
    80005268:	01010113          	addi	sp,sp,16
    8000526c:	00008067          	ret

0000000080005270 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80005270:	fe010113          	addi	sp,sp,-32
    80005274:	00113c23          	sd	ra,24(sp)
    80005278:	00813823          	sd	s0,16(sp)
    8000527c:	00913423          	sd	s1,8(sp)
    80005280:	02010413          	addi	s0,sp,32
    80005284:	00050493          	mv	s1,a0
    LOCK();
    80005288:	00100613          	li	a2,1
    8000528c:	00000593          	li	a1,0
    80005290:	00006517          	auipc	a0,0x6
    80005294:	4e050513          	addi	a0,a0,1248 # 8000b770 <lockPrint>
    80005298:	ffffc097          	auipc	ra,0xffffc
    8000529c:	0b4080e7          	jalr	180(ra) # 8000134c <copy_and_swap>
    800052a0:	00050863          	beqz	a0,800052b0 <_Z11printStringPKc+0x40>
    800052a4:	ffffc097          	auipc	ra,0xffffc
    800052a8:	23c080e7          	jalr	572(ra) # 800014e0 <_Z15thread_dispatchv>
    800052ac:	fddff06f          	j	80005288 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800052b0:	0004c503          	lbu	a0,0(s1)
    800052b4:	00050a63          	beqz	a0,800052c8 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    800052b8:	ffffc097          	auipc	ra,0xffffc
    800052bc:	374080e7          	jalr	884(ra) # 8000162c <_Z4putcc>
        string++;
    800052c0:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800052c4:	fedff06f          	j	800052b0 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    800052c8:	00000613          	li	a2,0
    800052cc:	00100593          	li	a1,1
    800052d0:	00006517          	auipc	a0,0x6
    800052d4:	4a050513          	addi	a0,a0,1184 # 8000b770 <lockPrint>
    800052d8:	ffffc097          	auipc	ra,0xffffc
    800052dc:	074080e7          	jalr	116(ra) # 8000134c <copy_and_swap>
    800052e0:	fe0514e3          	bnez	a0,800052c8 <_Z11printStringPKc+0x58>
}
    800052e4:	01813083          	ld	ra,24(sp)
    800052e8:	01013403          	ld	s0,16(sp)
    800052ec:	00813483          	ld	s1,8(sp)
    800052f0:	02010113          	addi	sp,sp,32
    800052f4:	00008067          	ret

00000000800052f8 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800052f8:	fd010113          	addi	sp,sp,-48
    800052fc:	02113423          	sd	ra,40(sp)
    80005300:	02813023          	sd	s0,32(sp)
    80005304:	00913c23          	sd	s1,24(sp)
    80005308:	01213823          	sd	s2,16(sp)
    8000530c:	01313423          	sd	s3,8(sp)
    80005310:	01413023          	sd	s4,0(sp)
    80005314:	03010413          	addi	s0,sp,48
    80005318:	00050993          	mv	s3,a0
    8000531c:	00058a13          	mv	s4,a1
    LOCK();
    80005320:	00100613          	li	a2,1
    80005324:	00000593          	li	a1,0
    80005328:	00006517          	auipc	a0,0x6
    8000532c:	44850513          	addi	a0,a0,1096 # 8000b770 <lockPrint>
    80005330:	ffffc097          	auipc	ra,0xffffc
    80005334:	01c080e7          	jalr	28(ra) # 8000134c <copy_and_swap>
    80005338:	00050863          	beqz	a0,80005348 <_Z9getStringPci+0x50>
    8000533c:	ffffc097          	auipc	ra,0xffffc
    80005340:	1a4080e7          	jalr	420(ra) # 800014e0 <_Z15thread_dispatchv>
    80005344:	fddff06f          	j	80005320 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80005348:	00000913          	li	s2,0
    8000534c:	00090493          	mv	s1,s2
    80005350:	0019091b          	addiw	s2,s2,1
    80005354:	03495a63          	bge	s2,s4,80005388 <_Z9getStringPci+0x90>
        cc = getc();
    80005358:	ffffc097          	auipc	ra,0xffffc
    8000535c:	2ac080e7          	jalr	684(ra) # 80001604 <_Z4getcv>
        if(cc < 1)
    80005360:	02050463          	beqz	a0,80005388 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    80005364:	009984b3          	add	s1,s3,s1
    80005368:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    8000536c:	00a00793          	li	a5,10
    80005370:	00f50a63          	beq	a0,a5,80005384 <_Z9getStringPci+0x8c>
    80005374:	00d00793          	li	a5,13
    80005378:	fcf51ae3          	bne	a0,a5,8000534c <_Z9getStringPci+0x54>
        buf[i++] = c;
    8000537c:	00090493          	mv	s1,s2
    80005380:	0080006f          	j	80005388 <_Z9getStringPci+0x90>
    80005384:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80005388:	009984b3          	add	s1,s3,s1
    8000538c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80005390:	00000613          	li	a2,0
    80005394:	00100593          	li	a1,1
    80005398:	00006517          	auipc	a0,0x6
    8000539c:	3d850513          	addi	a0,a0,984 # 8000b770 <lockPrint>
    800053a0:	ffffc097          	auipc	ra,0xffffc
    800053a4:	fac080e7          	jalr	-84(ra) # 8000134c <copy_and_swap>
    800053a8:	fe0514e3          	bnez	a0,80005390 <_Z9getStringPci+0x98>
    return buf;
}
    800053ac:	00098513          	mv	a0,s3
    800053b0:	02813083          	ld	ra,40(sp)
    800053b4:	02013403          	ld	s0,32(sp)
    800053b8:	01813483          	ld	s1,24(sp)
    800053bc:	01013903          	ld	s2,16(sp)
    800053c0:	00813983          	ld	s3,8(sp)
    800053c4:	00013a03          	ld	s4,0(sp)
    800053c8:	03010113          	addi	sp,sp,48
    800053cc:	00008067          	ret

00000000800053d0 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800053d0:	ff010113          	addi	sp,sp,-16
    800053d4:	00813423          	sd	s0,8(sp)
    800053d8:	01010413          	addi	s0,sp,16
    800053dc:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800053e0:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800053e4:	0006c603          	lbu	a2,0(a3)
    800053e8:	fd06071b          	addiw	a4,a2,-48
    800053ec:	0ff77713          	andi	a4,a4,255
    800053f0:	00900793          	li	a5,9
    800053f4:	02e7e063          	bltu	a5,a4,80005414 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800053f8:	0025179b          	slliw	a5,a0,0x2
    800053fc:	00a787bb          	addw	a5,a5,a0
    80005400:	0017979b          	slliw	a5,a5,0x1
    80005404:	00168693          	addi	a3,a3,1
    80005408:	00c787bb          	addw	a5,a5,a2
    8000540c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80005410:	fd5ff06f          	j	800053e4 <_Z11stringToIntPKc+0x14>
    return n;
}
    80005414:	00813403          	ld	s0,8(sp)
    80005418:	01010113          	addi	sp,sp,16
    8000541c:	00008067          	ret

0000000080005420 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80005420:	fc010113          	addi	sp,sp,-64
    80005424:	02113c23          	sd	ra,56(sp)
    80005428:	02813823          	sd	s0,48(sp)
    8000542c:	02913423          	sd	s1,40(sp)
    80005430:	03213023          	sd	s2,32(sp)
    80005434:	01313c23          	sd	s3,24(sp)
    80005438:	04010413          	addi	s0,sp,64
    8000543c:	00050493          	mv	s1,a0
    80005440:	00058913          	mv	s2,a1
    80005444:	00060993          	mv	s3,a2
    LOCK();
    80005448:	00100613          	li	a2,1
    8000544c:	00000593          	li	a1,0
    80005450:	00006517          	auipc	a0,0x6
    80005454:	32050513          	addi	a0,a0,800 # 8000b770 <lockPrint>
    80005458:	ffffc097          	auipc	ra,0xffffc
    8000545c:	ef4080e7          	jalr	-268(ra) # 8000134c <copy_and_swap>
    80005460:	00050863          	beqz	a0,80005470 <_Z8printIntiii+0x50>
    80005464:	ffffc097          	auipc	ra,0xffffc
    80005468:	07c080e7          	jalr	124(ra) # 800014e0 <_Z15thread_dispatchv>
    8000546c:	fddff06f          	j	80005448 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005470:	00098463          	beqz	s3,80005478 <_Z8printIntiii+0x58>
    80005474:	0804c463          	bltz	s1,800054fc <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80005478:	0004851b          	sext.w	a0,s1
    neg = 0;
    8000547c:	00000593          	li	a1,0
    }

    i = 0;
    80005480:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005484:	0009079b          	sext.w	a5,s2
    80005488:	0325773b          	remuw	a4,a0,s2
    8000548c:	00048613          	mv	a2,s1
    80005490:	0014849b          	addiw	s1,s1,1
    80005494:	02071693          	slli	a3,a4,0x20
    80005498:	0206d693          	srli	a3,a3,0x20
    8000549c:	00006717          	auipc	a4,0x6
    800054a0:	18470713          	addi	a4,a4,388 # 8000b620 <digits>
    800054a4:	00d70733          	add	a4,a4,a3
    800054a8:	00074683          	lbu	a3,0(a4)
    800054ac:	fd040713          	addi	a4,s0,-48
    800054b0:	00c70733          	add	a4,a4,a2
    800054b4:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800054b8:	0005071b          	sext.w	a4,a0
    800054bc:	0325553b          	divuw	a0,a0,s2
    800054c0:	fcf772e3          	bgeu	a4,a5,80005484 <_Z8printIntiii+0x64>
    if(neg)
    800054c4:	00058c63          	beqz	a1,800054dc <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    800054c8:	fd040793          	addi	a5,s0,-48
    800054cc:	009784b3          	add	s1,a5,s1
    800054d0:	02d00793          	li	a5,45
    800054d4:	fef48823          	sb	a5,-16(s1)
    800054d8:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800054dc:	fff4849b          	addiw	s1,s1,-1
    800054e0:	0204c463          	bltz	s1,80005508 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    800054e4:	fd040793          	addi	a5,s0,-48
    800054e8:	009787b3          	add	a5,a5,s1
    800054ec:	ff07c503          	lbu	a0,-16(a5)
    800054f0:	ffffc097          	auipc	ra,0xffffc
    800054f4:	13c080e7          	jalr	316(ra) # 8000162c <_Z4putcc>
    800054f8:	fe5ff06f          	j	800054dc <_Z8printIntiii+0xbc>
        x = -xx;
    800054fc:	4090053b          	negw	a0,s1
        neg = 1;
    80005500:	00100593          	li	a1,1
        x = -xx;
    80005504:	f7dff06f          	j	80005480 <_Z8printIntiii+0x60>

    UNLOCK();
    80005508:	00000613          	li	a2,0
    8000550c:	00100593          	li	a1,1
    80005510:	00006517          	auipc	a0,0x6
    80005514:	26050513          	addi	a0,a0,608 # 8000b770 <lockPrint>
    80005518:	ffffc097          	auipc	ra,0xffffc
    8000551c:	e34080e7          	jalr	-460(ra) # 8000134c <copy_and_swap>
    80005520:	fe0514e3          	bnez	a0,80005508 <_Z8printIntiii+0xe8>
    80005524:	03813083          	ld	ra,56(sp)
    80005528:	03013403          	ld	s0,48(sp)
    8000552c:	02813483          	ld	s1,40(sp)
    80005530:	02013903          	ld	s2,32(sp)
    80005534:	01813983          	ld	s3,24(sp)
    80005538:	04010113          	addi	sp,sp,64
    8000553c:	00008067          	ret

0000000080005540 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005540:	fd010113          	addi	sp,sp,-48
    80005544:	02113423          	sd	ra,40(sp)
    80005548:	02813023          	sd	s0,32(sp)
    8000554c:	00913c23          	sd	s1,24(sp)
    80005550:	01213823          	sd	s2,16(sp)
    80005554:	01313423          	sd	s3,8(sp)
    80005558:	03010413          	addi	s0,sp,48
    8000555c:	00050493          	mv	s1,a0
    80005560:	00058913          	mv	s2,a1
    80005564:	0015879b          	addiw	a5,a1,1
    80005568:	0007851b          	sext.w	a0,a5
    8000556c:	00f4a023          	sw	a5,0(s1)
    80005570:	0004a823          	sw	zero,16(s1)
    80005574:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005578:	00251513          	slli	a0,a0,0x2
    8000557c:	ffffc097          	auipc	ra,0xffffc
    80005580:	df0080e7          	jalr	-528(ra) # 8000136c <_Z9mem_allocm>
    80005584:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80005588:	01000513          	li	a0,16
    8000558c:	ffffd097          	auipc	ra,0xffffd
    80005590:	854080e7          	jalr	-1964(ra) # 80001de0 <_Znwm>
    80005594:	00050993          	mv	s3,a0
    80005598:	00000593          	li	a1,0
    8000559c:	ffffd097          	auipc	ra,0xffffd
    800055a0:	b5c080e7          	jalr	-1188(ra) # 800020f8 <_ZN9SemaphoreC1Ej>
    800055a4:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800055a8:	01000513          	li	a0,16
    800055ac:	ffffd097          	auipc	ra,0xffffd
    800055b0:	834080e7          	jalr	-1996(ra) # 80001de0 <_Znwm>
    800055b4:	00050993          	mv	s3,a0
    800055b8:	00090593          	mv	a1,s2
    800055bc:	ffffd097          	auipc	ra,0xffffd
    800055c0:	b3c080e7          	jalr	-1220(ra) # 800020f8 <_ZN9SemaphoreC1Ej>
    800055c4:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    800055c8:	01000513          	li	a0,16
    800055cc:	ffffd097          	auipc	ra,0xffffd
    800055d0:	814080e7          	jalr	-2028(ra) # 80001de0 <_Znwm>
    800055d4:	00050913          	mv	s2,a0
    800055d8:	00100593          	li	a1,1
    800055dc:	ffffd097          	auipc	ra,0xffffd
    800055e0:	b1c080e7          	jalr	-1252(ra) # 800020f8 <_ZN9SemaphoreC1Ej>
    800055e4:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800055e8:	01000513          	li	a0,16
    800055ec:	ffffc097          	auipc	ra,0xffffc
    800055f0:	7f4080e7          	jalr	2036(ra) # 80001de0 <_Znwm>
    800055f4:	00050913          	mv	s2,a0
    800055f8:	00100593          	li	a1,1
    800055fc:	ffffd097          	auipc	ra,0xffffd
    80005600:	afc080e7          	jalr	-1284(ra) # 800020f8 <_ZN9SemaphoreC1Ej>
    80005604:	0324b823          	sd	s2,48(s1)
}
    80005608:	02813083          	ld	ra,40(sp)
    8000560c:	02013403          	ld	s0,32(sp)
    80005610:	01813483          	ld	s1,24(sp)
    80005614:	01013903          	ld	s2,16(sp)
    80005618:	00813983          	ld	s3,8(sp)
    8000561c:	03010113          	addi	sp,sp,48
    80005620:	00008067          	ret
    80005624:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80005628:	00098513          	mv	a0,s3
    8000562c:	ffffc097          	auipc	ra,0xffffc
    80005630:	7dc080e7          	jalr	2012(ra) # 80001e08 <_ZdlPv>
    80005634:	00048513          	mv	a0,s1
    80005638:	00007097          	auipc	ra,0x7
    8000563c:	210080e7          	jalr	528(ra) # 8000c848 <_Unwind_Resume>
    80005640:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80005644:	00098513          	mv	a0,s3
    80005648:	ffffc097          	auipc	ra,0xffffc
    8000564c:	7c0080e7          	jalr	1984(ra) # 80001e08 <_ZdlPv>
    80005650:	00048513          	mv	a0,s1
    80005654:	00007097          	auipc	ra,0x7
    80005658:	1f4080e7          	jalr	500(ra) # 8000c848 <_Unwind_Resume>
    8000565c:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005660:	00090513          	mv	a0,s2
    80005664:	ffffc097          	auipc	ra,0xffffc
    80005668:	7a4080e7          	jalr	1956(ra) # 80001e08 <_ZdlPv>
    8000566c:	00048513          	mv	a0,s1
    80005670:	00007097          	auipc	ra,0x7
    80005674:	1d8080e7          	jalr	472(ra) # 8000c848 <_Unwind_Resume>
    80005678:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    8000567c:	00090513          	mv	a0,s2
    80005680:	ffffc097          	auipc	ra,0xffffc
    80005684:	788080e7          	jalr	1928(ra) # 80001e08 <_ZdlPv>
    80005688:	00048513          	mv	a0,s1
    8000568c:	00007097          	auipc	ra,0x7
    80005690:	1bc080e7          	jalr	444(ra) # 8000c848 <_Unwind_Resume>

0000000080005694 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005694:	fe010113          	addi	sp,sp,-32
    80005698:	00113c23          	sd	ra,24(sp)
    8000569c:	00813823          	sd	s0,16(sp)
    800056a0:	00913423          	sd	s1,8(sp)
    800056a4:	01213023          	sd	s2,0(sp)
    800056a8:	02010413          	addi	s0,sp,32
    800056ac:	00050493          	mv	s1,a0
    800056b0:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800056b4:	01853503          	ld	a0,24(a0)
    800056b8:	ffffd097          	auipc	ra,0xffffd
    800056bc:	a78080e7          	jalr	-1416(ra) # 80002130 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800056c0:	0304b503          	ld	a0,48(s1)
    800056c4:	ffffd097          	auipc	ra,0xffffd
    800056c8:	a6c080e7          	jalr	-1428(ra) # 80002130 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800056cc:	0084b783          	ld	a5,8(s1)
    800056d0:	0144a703          	lw	a4,20(s1)
    800056d4:	00271713          	slli	a4,a4,0x2
    800056d8:	00e787b3          	add	a5,a5,a4
    800056dc:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800056e0:	0144a783          	lw	a5,20(s1)
    800056e4:	0017879b          	addiw	a5,a5,1
    800056e8:	0004a703          	lw	a4,0(s1)
    800056ec:	02e7e7bb          	remw	a5,a5,a4
    800056f0:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800056f4:	0304b503          	ld	a0,48(s1)
    800056f8:	ffffd097          	auipc	ra,0xffffd
    800056fc:	a64080e7          	jalr	-1436(ra) # 8000215c <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80005700:	0204b503          	ld	a0,32(s1)
    80005704:	ffffd097          	auipc	ra,0xffffd
    80005708:	a58080e7          	jalr	-1448(ra) # 8000215c <_ZN9Semaphore6signalEv>

}
    8000570c:	01813083          	ld	ra,24(sp)
    80005710:	01013403          	ld	s0,16(sp)
    80005714:	00813483          	ld	s1,8(sp)
    80005718:	00013903          	ld	s2,0(sp)
    8000571c:	02010113          	addi	sp,sp,32
    80005720:	00008067          	ret

0000000080005724 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80005724:	fe010113          	addi	sp,sp,-32
    80005728:	00113c23          	sd	ra,24(sp)
    8000572c:	00813823          	sd	s0,16(sp)
    80005730:	00913423          	sd	s1,8(sp)
    80005734:	01213023          	sd	s2,0(sp)
    80005738:	02010413          	addi	s0,sp,32
    8000573c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80005740:	02053503          	ld	a0,32(a0)
    80005744:	ffffd097          	auipc	ra,0xffffd
    80005748:	9ec080e7          	jalr	-1556(ra) # 80002130 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    8000574c:	0284b503          	ld	a0,40(s1)
    80005750:	ffffd097          	auipc	ra,0xffffd
    80005754:	9e0080e7          	jalr	-1568(ra) # 80002130 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80005758:	0084b703          	ld	a4,8(s1)
    8000575c:	0104a783          	lw	a5,16(s1)
    80005760:	00279693          	slli	a3,a5,0x2
    80005764:	00d70733          	add	a4,a4,a3
    80005768:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000576c:	0017879b          	addiw	a5,a5,1
    80005770:	0004a703          	lw	a4,0(s1)
    80005774:	02e7e7bb          	remw	a5,a5,a4
    80005778:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    8000577c:	0284b503          	ld	a0,40(s1)
    80005780:	ffffd097          	auipc	ra,0xffffd
    80005784:	9dc080e7          	jalr	-1572(ra) # 8000215c <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80005788:	0184b503          	ld	a0,24(s1)
    8000578c:	ffffd097          	auipc	ra,0xffffd
    80005790:	9d0080e7          	jalr	-1584(ra) # 8000215c <_ZN9Semaphore6signalEv>

    return ret;
}
    80005794:	00090513          	mv	a0,s2
    80005798:	01813083          	ld	ra,24(sp)
    8000579c:	01013403          	ld	s0,16(sp)
    800057a0:	00813483          	ld	s1,8(sp)
    800057a4:	00013903          	ld	s2,0(sp)
    800057a8:	02010113          	addi	sp,sp,32
    800057ac:	00008067          	ret

00000000800057b0 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800057b0:	fe010113          	addi	sp,sp,-32
    800057b4:	00113c23          	sd	ra,24(sp)
    800057b8:	00813823          	sd	s0,16(sp)
    800057bc:	00913423          	sd	s1,8(sp)
    800057c0:	01213023          	sd	s2,0(sp)
    800057c4:	02010413          	addi	s0,sp,32
    800057c8:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800057cc:	02853503          	ld	a0,40(a0)
    800057d0:	ffffd097          	auipc	ra,0xffffd
    800057d4:	960080e7          	jalr	-1696(ra) # 80002130 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800057d8:	0304b503          	ld	a0,48(s1)
    800057dc:	ffffd097          	auipc	ra,0xffffd
    800057e0:	954080e7          	jalr	-1708(ra) # 80002130 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800057e4:	0144a783          	lw	a5,20(s1)
    800057e8:	0104a903          	lw	s2,16(s1)
    800057ec:	0327ce63          	blt	a5,s2,80005828 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800057f0:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800057f4:	0304b503          	ld	a0,48(s1)
    800057f8:	ffffd097          	auipc	ra,0xffffd
    800057fc:	964080e7          	jalr	-1692(ra) # 8000215c <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80005800:	0284b503          	ld	a0,40(s1)
    80005804:	ffffd097          	auipc	ra,0xffffd
    80005808:	958080e7          	jalr	-1704(ra) # 8000215c <_ZN9Semaphore6signalEv>

    return ret;
}
    8000580c:	00090513          	mv	a0,s2
    80005810:	01813083          	ld	ra,24(sp)
    80005814:	01013403          	ld	s0,16(sp)
    80005818:	00813483          	ld	s1,8(sp)
    8000581c:	00013903          	ld	s2,0(sp)
    80005820:	02010113          	addi	sp,sp,32
    80005824:	00008067          	ret
        ret = cap - head + tail;
    80005828:	0004a703          	lw	a4,0(s1)
    8000582c:	4127093b          	subw	s2,a4,s2
    80005830:	00f9093b          	addw	s2,s2,a5
    80005834:	fc1ff06f          	j	800057f4 <_ZN9BufferCPP6getCntEv+0x44>

0000000080005838 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80005838:	fe010113          	addi	sp,sp,-32
    8000583c:	00113c23          	sd	ra,24(sp)
    80005840:	00813823          	sd	s0,16(sp)
    80005844:	00913423          	sd	s1,8(sp)
    80005848:	02010413          	addi	s0,sp,32
    8000584c:	00050493          	mv	s1,a0
    Console::putc('\n');
    80005850:	00a00513          	li	a0,10
    80005854:	ffffd097          	auipc	ra,0xffffd
    80005858:	95c080e7          	jalr	-1700(ra) # 800021b0 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    8000585c:	00004517          	auipc	a0,0x4
    80005860:	ab450513          	addi	a0,a0,-1356 # 80009310 <CONSOLE_STATUS+0x300>
    80005864:	00000097          	auipc	ra,0x0
    80005868:	a0c080e7          	jalr	-1524(ra) # 80005270 <_Z11printStringPKc>
    while (getCnt()) {
    8000586c:	00048513          	mv	a0,s1
    80005870:	00000097          	auipc	ra,0x0
    80005874:	f40080e7          	jalr	-192(ra) # 800057b0 <_ZN9BufferCPP6getCntEv>
    80005878:	02050c63          	beqz	a0,800058b0 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    8000587c:	0084b783          	ld	a5,8(s1)
    80005880:	0104a703          	lw	a4,16(s1)
    80005884:	00271713          	slli	a4,a4,0x2
    80005888:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    8000588c:	0007c503          	lbu	a0,0(a5)
    80005890:	ffffd097          	auipc	ra,0xffffd
    80005894:	920080e7          	jalr	-1760(ra) # 800021b0 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80005898:	0104a783          	lw	a5,16(s1)
    8000589c:	0017879b          	addiw	a5,a5,1
    800058a0:	0004a703          	lw	a4,0(s1)
    800058a4:	02e7e7bb          	remw	a5,a5,a4
    800058a8:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800058ac:	fc1ff06f          	j	8000586c <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800058b0:	02100513          	li	a0,33
    800058b4:	ffffd097          	auipc	ra,0xffffd
    800058b8:	8fc080e7          	jalr	-1796(ra) # 800021b0 <_ZN7Console4putcEc>
    Console::putc('\n');
    800058bc:	00a00513          	li	a0,10
    800058c0:	ffffd097          	auipc	ra,0xffffd
    800058c4:	8f0080e7          	jalr	-1808(ra) # 800021b0 <_ZN7Console4putcEc>
    mem_free(buffer);
    800058c8:	0084b503          	ld	a0,8(s1)
    800058cc:	ffffc097          	auipc	ra,0xffffc
    800058d0:	ac8080e7          	jalr	-1336(ra) # 80001394 <_Z8mem_freePv>
    delete itemAvailable;
    800058d4:	0204b503          	ld	a0,32(s1)
    800058d8:	00050863          	beqz	a0,800058e8 <_ZN9BufferCPPD1Ev+0xb0>
    800058dc:	00053783          	ld	a5,0(a0)
    800058e0:	0087b783          	ld	a5,8(a5)
    800058e4:	000780e7          	jalr	a5
    delete spaceAvailable;
    800058e8:	0184b503          	ld	a0,24(s1)
    800058ec:	00050863          	beqz	a0,800058fc <_ZN9BufferCPPD1Ev+0xc4>
    800058f0:	00053783          	ld	a5,0(a0)
    800058f4:	0087b783          	ld	a5,8(a5)
    800058f8:	000780e7          	jalr	a5
    delete mutexTail;
    800058fc:	0304b503          	ld	a0,48(s1)
    80005900:	00050863          	beqz	a0,80005910 <_ZN9BufferCPPD1Ev+0xd8>
    80005904:	00053783          	ld	a5,0(a0)
    80005908:	0087b783          	ld	a5,8(a5)
    8000590c:	000780e7          	jalr	a5
    delete mutexHead;
    80005910:	0284b503          	ld	a0,40(s1)
    80005914:	00050863          	beqz	a0,80005924 <_ZN9BufferCPPD1Ev+0xec>
    80005918:	00053783          	ld	a5,0(a0)
    8000591c:	0087b783          	ld	a5,8(a5)
    80005920:	000780e7          	jalr	a5
}
    80005924:	01813083          	ld	ra,24(sp)
    80005928:	01013403          	ld	s0,16(sp)
    8000592c:	00813483          	ld	s1,8(sp)
    80005930:	02010113          	addi	sp,sp,32
    80005934:	00008067          	ret

0000000080005938 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80005938:	fe010113          	addi	sp,sp,-32
    8000593c:	00113c23          	sd	ra,24(sp)
    80005940:	00813823          	sd	s0,16(sp)
    80005944:	00913423          	sd	s1,8(sp)
    80005948:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    8000594c:	00004517          	auipc	a0,0x4
    80005950:	9dc50513          	addi	a0,a0,-1572 # 80009328 <CONSOLE_STATUS+0x318>
    80005954:	00000097          	auipc	ra,0x0
    80005958:	91c080e7          	jalr	-1764(ra) # 80005270 <_Z11printStringPKc>
    int test = getc() - '0';
    8000595c:	ffffc097          	auipc	ra,0xffffc
    80005960:	ca8080e7          	jalr	-856(ra) # 80001604 <_Z4getcv>
    80005964:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    80005968:	ffffc097          	auipc	ra,0xffffc
    8000596c:	c9c080e7          	jalr	-868(ra) # 80001604 <_Z4getcv>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    80005970:	00700793          	li	a5,7
    80005974:	1097e263          	bltu	a5,s1,80005a78 <_Z8userMainv+0x140>
    80005978:	00249493          	slli	s1,s1,0x2
    8000597c:	00004717          	auipc	a4,0x4
    80005980:	c0470713          	addi	a4,a4,-1020 # 80009580 <CONSOLE_STATUS+0x570>
    80005984:	00e484b3          	add	s1,s1,a4
    80005988:	0004a783          	lw	a5,0(s1)
    8000598c:	00e787b3          	add	a5,a5,a4
    80005990:	00078067          	jr	a5
        case 1:
#if LEVEL_2_IMPLEMENTED == 1
            Threads_C_API_test();
    80005994:	fffff097          	auipc	ra,0xfffff
    80005998:	f54080e7          	jalr	-172(ra) # 800048e8 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    8000599c:	00004517          	auipc	a0,0x4
    800059a0:	9ac50513          	addi	a0,a0,-1620 # 80009348 <CONSOLE_STATUS+0x338>
    800059a4:	00000097          	auipc	ra,0x0
    800059a8:	8cc080e7          	jalr	-1844(ra) # 80005270 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    800059ac:	01813083          	ld	ra,24(sp)
    800059b0:	01013403          	ld	s0,16(sp)
    800059b4:	00813483          	ld	s1,8(sp)
    800059b8:	02010113          	addi	sp,sp,32
    800059bc:	00008067          	ret
            Threads_CPP_API_test();
    800059c0:	ffffe097          	auipc	ra,0xffffe
    800059c4:	dfc080e7          	jalr	-516(ra) # 800037bc <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    800059c8:	00004517          	auipc	a0,0x4
    800059cc:	9c050513          	addi	a0,a0,-1600 # 80009388 <CONSOLE_STATUS+0x378>
    800059d0:	00000097          	auipc	ra,0x0
    800059d4:	8a0080e7          	jalr	-1888(ra) # 80005270 <_Z11printStringPKc>
            break;
    800059d8:	fd5ff06f          	j	800059ac <_Z8userMainv+0x74>
            producerConsumer_C_API();
    800059dc:	ffffd097          	auipc	ra,0xffffd
    800059e0:	614080e7          	jalr	1556(ra) # 80002ff0 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    800059e4:	00004517          	auipc	a0,0x4
    800059e8:	9e450513          	addi	a0,a0,-1564 # 800093c8 <CONSOLE_STATUS+0x3b8>
    800059ec:	00000097          	auipc	ra,0x0
    800059f0:	884080e7          	jalr	-1916(ra) # 80005270 <_Z11printStringPKc>
            break;
    800059f4:	fb9ff06f          	j	800059ac <_Z8userMainv+0x74>
            producerConsumer_CPP_Sync_API();
    800059f8:	fffff097          	auipc	ra,0xfffff
    800059fc:	234080e7          	jalr	564(ra) # 80004c2c <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    80005a00:	00004517          	auipc	a0,0x4
    80005a04:	a1850513          	addi	a0,a0,-1512 # 80009418 <CONSOLE_STATUS+0x408>
    80005a08:	00000097          	auipc	ra,0x0
    80005a0c:	868080e7          	jalr	-1944(ra) # 80005270 <_Z11printStringPKc>
            break;
    80005a10:	f9dff06f          	j	800059ac <_Z8userMainv+0x74>
            testSleeping();
    80005a14:	00000097          	auipc	ra,0x0
    80005a18:	11c080e7          	jalr	284(ra) # 80005b30 <_Z12testSleepingv>
            printString("TEST 5 (zadatak 4., thread_sleep test C API)\n");
    80005a1c:	00004517          	auipc	a0,0x4
    80005a20:	a5450513          	addi	a0,a0,-1452 # 80009470 <CONSOLE_STATUS+0x460>
    80005a24:	00000097          	auipc	ra,0x0
    80005a28:	84c080e7          	jalr	-1972(ra) # 80005270 <_Z11printStringPKc>
            break;
    80005a2c:	f81ff06f          	j	800059ac <_Z8userMainv+0x74>
            testConsumerProducer();
    80005a30:	ffffe097          	auipc	ra,0xffffe
    80005a34:	258080e7          	jalr	600(ra) # 80003c88 <_Z20testConsumerProducerv>
            printString("TEST 6 (zadatak 4. CPP API i asinhrona promena konteksta)\n");
    80005a38:	00004517          	auipc	a0,0x4
    80005a3c:	a6850513          	addi	a0,a0,-1432 # 800094a0 <CONSOLE_STATUS+0x490>
    80005a40:	00000097          	auipc	ra,0x0
    80005a44:	830080e7          	jalr	-2000(ra) # 80005270 <_Z11printStringPKc>
            break;
    80005a48:	f65ff06f          	j	800059ac <_Z8userMainv+0x74>
            System_Mode_test();
    80005a4c:	00000097          	auipc	ra,0x0
    80005a50:	640080e7          	jalr	1600(ra) # 8000608c <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80005a54:	00004517          	auipc	a0,0x4
    80005a58:	a8c50513          	addi	a0,a0,-1396 # 800094e0 <CONSOLE_STATUS+0x4d0>
    80005a5c:	00000097          	auipc	ra,0x0
    80005a60:	814080e7          	jalr	-2028(ra) # 80005270 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    80005a64:	00004517          	auipc	a0,0x4
    80005a68:	a9c50513          	addi	a0,a0,-1380 # 80009500 <CONSOLE_STATUS+0x4f0>
    80005a6c:	00000097          	auipc	ra,0x0
    80005a70:	804080e7          	jalr	-2044(ra) # 80005270 <_Z11printStringPKc>
            break;
    80005a74:	f39ff06f          	j	800059ac <_Z8userMainv+0x74>
            printString("Niste uneli odgovarajuci broj za test\n");
    80005a78:	00004517          	auipc	a0,0x4
    80005a7c:	ae050513          	addi	a0,a0,-1312 # 80009558 <CONSOLE_STATUS+0x548>
    80005a80:	fffff097          	auipc	ra,0xfffff
    80005a84:	7f0080e7          	jalr	2032(ra) # 80005270 <_Z11printStringPKc>
    80005a88:	f25ff06f          	j	800059ac <_Z8userMainv+0x74>

0000000080005a8c <_ZL9sleepyRunPv>:

#include "printing.hpp"

static volatile bool finished[2];

static void sleepyRun(void *arg) {
    80005a8c:	fe010113          	addi	sp,sp,-32
    80005a90:	00113c23          	sd	ra,24(sp)
    80005a94:	00813823          	sd	s0,16(sp)
    80005a98:	00913423          	sd	s1,8(sp)
    80005a9c:	01213023          	sd	s2,0(sp)
    80005aa0:	02010413          	addi	s0,sp,32
    time_t sleep_time = *((time_t *) arg);
    80005aa4:	00053903          	ld	s2,0(a0)
    int i = 6;
    80005aa8:	00600493          	li	s1,6
    while (--i > 0) {
    80005aac:	fff4849b          	addiw	s1,s1,-1
    80005ab0:	04905463          	blez	s1,80005af8 <_ZL9sleepyRunPv+0x6c>

        printString("Hello ");
    80005ab4:	00004517          	auipc	a0,0x4
    80005ab8:	aec50513          	addi	a0,a0,-1300 # 800095a0 <CONSOLE_STATUS+0x590>
    80005abc:	fffff097          	auipc	ra,0xfffff
    80005ac0:	7b4080e7          	jalr	1972(ra) # 80005270 <_Z11printStringPKc>
        printInt(sleep_time);
    80005ac4:	00000613          	li	a2,0
    80005ac8:	00a00593          	li	a1,10
    80005acc:	0009051b          	sext.w	a0,s2
    80005ad0:	00000097          	auipc	ra,0x0
    80005ad4:	950080e7          	jalr	-1712(ra) # 80005420 <_Z8printIntiii>
        printString(" !\n");
    80005ad8:	00004517          	auipc	a0,0x4
    80005adc:	ad050513          	addi	a0,a0,-1328 # 800095a8 <CONSOLE_STATUS+0x598>
    80005ae0:	fffff097          	auipc	ra,0xfffff
    80005ae4:	790080e7          	jalr	1936(ra) # 80005270 <_Z11printStringPKc>
        time_sleep(sleep_time);
    80005ae8:	00090513          	mv	a0,s2
    80005aec:	ffffc097          	auipc	ra,0xffffc
    80005af0:	aec080e7          	jalr	-1300(ra) # 800015d8 <_Z10time_sleepm>
    while (--i > 0) {
    80005af4:	fb9ff06f          	j	80005aac <_ZL9sleepyRunPv+0x20>
    }
    finished[sleep_time/10-1] = true;
    80005af8:	00a00793          	li	a5,10
    80005afc:	02f95933          	divu	s2,s2,a5
    80005b00:	fff90913          	addi	s2,s2,-1
    80005b04:	00006797          	auipc	a5,0x6
    80005b08:	c7478793          	addi	a5,a5,-908 # 8000b778 <_ZL8finished>
    80005b0c:	01278933          	add	s2,a5,s2
    80005b10:	00100793          	li	a5,1
    80005b14:	00f90023          	sb	a5,0(s2)
}
    80005b18:	01813083          	ld	ra,24(sp)
    80005b1c:	01013403          	ld	s0,16(sp)
    80005b20:	00813483          	ld	s1,8(sp)
    80005b24:	00013903          	ld	s2,0(sp)
    80005b28:	02010113          	addi	sp,sp,32
    80005b2c:	00008067          	ret

0000000080005b30 <_Z12testSleepingv>:

void testSleeping() {
    80005b30:	fc010113          	addi	sp,sp,-64
    80005b34:	02113c23          	sd	ra,56(sp)
    80005b38:	02813823          	sd	s0,48(sp)
    80005b3c:	02913423          	sd	s1,40(sp)
    80005b40:	04010413          	addi	s0,sp,64
    const int sleepy_thread_count = 2;
    time_t sleep_times[sleepy_thread_count] = {10, 20};
    80005b44:	00a00793          	li	a5,10
    80005b48:	fcf43823          	sd	a5,-48(s0)
    80005b4c:	01400793          	li	a5,20
    80005b50:	fcf43c23          	sd	a5,-40(s0)
    thread_t sleepyThread[sleepy_thread_count];

    for (int i = 0; i < sleepy_thread_count; i++) {
    80005b54:	00000493          	li	s1,0
    80005b58:	02c0006f          	j	80005b84 <_Z12testSleepingv+0x54>
        thread_create(&sleepyThread[i], sleepyRun, sleep_times + i);
    80005b5c:	00349793          	slli	a5,s1,0x3
    80005b60:	fd040613          	addi	a2,s0,-48
    80005b64:	00f60633          	add	a2,a2,a5
    80005b68:	00000597          	auipc	a1,0x0
    80005b6c:	f2458593          	addi	a1,a1,-220 # 80005a8c <_ZL9sleepyRunPv>
    80005b70:	fc040513          	addi	a0,s0,-64
    80005b74:	00f50533          	add	a0,a0,a5
    80005b78:	ffffc097          	auipc	ra,0xffffc
    80005b7c:	848080e7          	jalr	-1976(ra) # 800013c0 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < sleepy_thread_count; i++) {
    80005b80:	0014849b          	addiw	s1,s1,1
    80005b84:	00100793          	li	a5,1
    80005b88:	fc97dae3          	bge	a5,s1,80005b5c <_Z12testSleepingv+0x2c>
    }

    while (!(finished[0] && finished[1])) {}
    80005b8c:	00006797          	auipc	a5,0x6
    80005b90:	bec7c783          	lbu	a5,-1044(a5) # 8000b778 <_ZL8finished>
    80005b94:	fe078ce3          	beqz	a5,80005b8c <_Z12testSleepingv+0x5c>
    80005b98:	00006797          	auipc	a5,0x6
    80005b9c:	be17c783          	lbu	a5,-1055(a5) # 8000b779 <_ZL8finished+0x1>
    80005ba0:	fe0786e3          	beqz	a5,80005b8c <_Z12testSleepingv+0x5c>
}
    80005ba4:	03813083          	ld	ra,56(sp)
    80005ba8:	03013403          	ld	s0,48(sp)
    80005bac:	02813483          	ld	s1,40(sp)
    80005bb0:	04010113          	addi	sp,sp,64
    80005bb4:	00008067          	ret

0000000080005bb8 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    80005bb8:	fe010113          	addi	sp,sp,-32
    80005bbc:	00113c23          	sd	ra,24(sp)
    80005bc0:	00813823          	sd	s0,16(sp)
    80005bc4:	00913423          	sd	s1,8(sp)
    80005bc8:	01213023          	sd	s2,0(sp)
    80005bcc:	02010413          	addi	s0,sp,32
    80005bd0:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005bd4:	00100793          	li	a5,1
    80005bd8:	02a7f863          	bgeu	a5,a0,80005c08 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80005bdc:	00a00793          	li	a5,10
    80005be0:	02f577b3          	remu	a5,a0,a5
    80005be4:	02078e63          	beqz	a5,80005c20 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80005be8:	fff48513          	addi	a0,s1,-1
    80005bec:	00000097          	auipc	ra,0x0
    80005bf0:	fcc080e7          	jalr	-52(ra) # 80005bb8 <_ZL9fibonaccim>
    80005bf4:	00050913          	mv	s2,a0
    80005bf8:	ffe48513          	addi	a0,s1,-2
    80005bfc:	00000097          	auipc	ra,0x0
    80005c00:	fbc080e7          	jalr	-68(ra) # 80005bb8 <_ZL9fibonaccim>
    80005c04:	00a90533          	add	a0,s2,a0
}
    80005c08:	01813083          	ld	ra,24(sp)
    80005c0c:	01013403          	ld	s0,16(sp)
    80005c10:	00813483          	ld	s1,8(sp)
    80005c14:	00013903          	ld	s2,0(sp)
    80005c18:	02010113          	addi	sp,sp,32
    80005c1c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80005c20:	ffffc097          	auipc	ra,0xffffc
    80005c24:	8c0080e7          	jalr	-1856(ra) # 800014e0 <_Z15thread_dispatchv>
    80005c28:	fc1ff06f          	j	80005be8 <_ZL9fibonaccim+0x30>

0000000080005c2c <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80005c2c:	fe010113          	addi	sp,sp,-32
    80005c30:	00113c23          	sd	ra,24(sp)
    80005c34:	00813823          	sd	s0,16(sp)
    80005c38:	00913423          	sd	s1,8(sp)
    80005c3c:	01213023          	sd	s2,0(sp)
    80005c40:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005c44:	00a00493          	li	s1,10
    80005c48:	0400006f          	j	80005c88 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005c4c:	00003517          	auipc	a0,0x3
    80005c50:	62c50513          	addi	a0,a0,1580 # 80009278 <CONSOLE_STATUS+0x268>
    80005c54:	fffff097          	auipc	ra,0xfffff
    80005c58:	61c080e7          	jalr	1564(ra) # 80005270 <_Z11printStringPKc>
    80005c5c:	00000613          	li	a2,0
    80005c60:	00a00593          	li	a1,10
    80005c64:	00048513          	mv	a0,s1
    80005c68:	fffff097          	auipc	ra,0xfffff
    80005c6c:	7b8080e7          	jalr	1976(ra) # 80005420 <_Z8printIntiii>
    80005c70:	00003517          	auipc	a0,0x3
    80005c74:	7f850513          	addi	a0,a0,2040 # 80009468 <CONSOLE_STATUS+0x458>
    80005c78:	fffff097          	auipc	ra,0xfffff
    80005c7c:	5f8080e7          	jalr	1528(ra) # 80005270 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80005c80:	0014849b          	addiw	s1,s1,1
    80005c84:	0ff4f493          	andi	s1,s1,255
    80005c88:	00c00793          	li	a5,12
    80005c8c:	fc97f0e3          	bgeu	a5,s1,80005c4c <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80005c90:	00003517          	auipc	a0,0x3
    80005c94:	5f050513          	addi	a0,a0,1520 # 80009280 <CONSOLE_STATUS+0x270>
    80005c98:	fffff097          	auipc	ra,0xfffff
    80005c9c:	5d8080e7          	jalr	1496(ra) # 80005270 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80005ca0:	00500313          	li	t1,5
    thread_dispatch();
    80005ca4:	ffffc097          	auipc	ra,0xffffc
    80005ca8:	83c080e7          	jalr	-1988(ra) # 800014e0 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80005cac:	01000513          	li	a0,16
    80005cb0:	00000097          	auipc	ra,0x0
    80005cb4:	f08080e7          	jalr	-248(ra) # 80005bb8 <_ZL9fibonaccim>
    80005cb8:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005cbc:	00003517          	auipc	a0,0x3
    80005cc0:	5d450513          	addi	a0,a0,1492 # 80009290 <CONSOLE_STATUS+0x280>
    80005cc4:	fffff097          	auipc	ra,0xfffff
    80005cc8:	5ac080e7          	jalr	1452(ra) # 80005270 <_Z11printStringPKc>
    80005ccc:	00000613          	li	a2,0
    80005cd0:	00a00593          	li	a1,10
    80005cd4:	0009051b          	sext.w	a0,s2
    80005cd8:	fffff097          	auipc	ra,0xfffff
    80005cdc:	748080e7          	jalr	1864(ra) # 80005420 <_Z8printIntiii>
    80005ce0:	00003517          	auipc	a0,0x3
    80005ce4:	78850513          	addi	a0,a0,1928 # 80009468 <CONSOLE_STATUS+0x458>
    80005ce8:	fffff097          	auipc	ra,0xfffff
    80005cec:	588080e7          	jalr	1416(ra) # 80005270 <_Z11printStringPKc>
    80005cf0:	0400006f          	j	80005d30 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005cf4:	00003517          	auipc	a0,0x3
    80005cf8:	58450513          	addi	a0,a0,1412 # 80009278 <CONSOLE_STATUS+0x268>
    80005cfc:	fffff097          	auipc	ra,0xfffff
    80005d00:	574080e7          	jalr	1396(ra) # 80005270 <_Z11printStringPKc>
    80005d04:	00000613          	li	a2,0
    80005d08:	00a00593          	li	a1,10
    80005d0c:	00048513          	mv	a0,s1
    80005d10:	fffff097          	auipc	ra,0xfffff
    80005d14:	710080e7          	jalr	1808(ra) # 80005420 <_Z8printIntiii>
    80005d18:	00003517          	auipc	a0,0x3
    80005d1c:	75050513          	addi	a0,a0,1872 # 80009468 <CONSOLE_STATUS+0x458>
    80005d20:	fffff097          	auipc	ra,0xfffff
    80005d24:	550080e7          	jalr	1360(ra) # 80005270 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80005d28:	0014849b          	addiw	s1,s1,1
    80005d2c:	0ff4f493          	andi	s1,s1,255
    80005d30:	00f00793          	li	a5,15
    80005d34:	fc97f0e3          	bgeu	a5,s1,80005cf4 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80005d38:	00003517          	auipc	a0,0x3
    80005d3c:	56850513          	addi	a0,a0,1384 # 800092a0 <CONSOLE_STATUS+0x290>
    80005d40:	fffff097          	auipc	ra,0xfffff
    80005d44:	530080e7          	jalr	1328(ra) # 80005270 <_Z11printStringPKc>
    finishedD = true;
    80005d48:	00100793          	li	a5,1
    80005d4c:	00006717          	auipc	a4,0x6
    80005d50:	a2f70723          	sb	a5,-1490(a4) # 8000b77a <_ZL9finishedD>
    thread_dispatch();
    80005d54:	ffffb097          	auipc	ra,0xffffb
    80005d58:	78c080e7          	jalr	1932(ra) # 800014e0 <_Z15thread_dispatchv>
}
    80005d5c:	01813083          	ld	ra,24(sp)
    80005d60:	01013403          	ld	s0,16(sp)
    80005d64:	00813483          	ld	s1,8(sp)
    80005d68:	00013903          	ld	s2,0(sp)
    80005d6c:	02010113          	addi	sp,sp,32
    80005d70:	00008067          	ret

0000000080005d74 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80005d74:	fe010113          	addi	sp,sp,-32
    80005d78:	00113c23          	sd	ra,24(sp)
    80005d7c:	00813823          	sd	s0,16(sp)
    80005d80:	00913423          	sd	s1,8(sp)
    80005d84:	01213023          	sd	s2,0(sp)
    80005d88:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005d8c:	00000493          	li	s1,0
    80005d90:	0400006f          	j	80005dd0 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80005d94:	00003517          	auipc	a0,0x3
    80005d98:	4b450513          	addi	a0,a0,1204 # 80009248 <CONSOLE_STATUS+0x238>
    80005d9c:	fffff097          	auipc	ra,0xfffff
    80005da0:	4d4080e7          	jalr	1236(ra) # 80005270 <_Z11printStringPKc>
    80005da4:	00000613          	li	a2,0
    80005da8:	00a00593          	li	a1,10
    80005dac:	00048513          	mv	a0,s1
    80005db0:	fffff097          	auipc	ra,0xfffff
    80005db4:	670080e7          	jalr	1648(ra) # 80005420 <_Z8printIntiii>
    80005db8:	00003517          	auipc	a0,0x3
    80005dbc:	6b050513          	addi	a0,a0,1712 # 80009468 <CONSOLE_STATUS+0x458>
    80005dc0:	fffff097          	auipc	ra,0xfffff
    80005dc4:	4b0080e7          	jalr	1200(ra) # 80005270 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005dc8:	0014849b          	addiw	s1,s1,1
    80005dcc:	0ff4f493          	andi	s1,s1,255
    80005dd0:	00200793          	li	a5,2
    80005dd4:	fc97f0e3          	bgeu	a5,s1,80005d94 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80005dd8:	00003517          	auipc	a0,0x3
    80005ddc:	47850513          	addi	a0,a0,1144 # 80009250 <CONSOLE_STATUS+0x240>
    80005de0:	fffff097          	auipc	ra,0xfffff
    80005de4:	490080e7          	jalr	1168(ra) # 80005270 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005de8:	00700313          	li	t1,7
    thread_dispatch();
    80005dec:	ffffb097          	auipc	ra,0xffffb
    80005df0:	6f4080e7          	jalr	1780(ra) # 800014e0 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005df4:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80005df8:	00003517          	auipc	a0,0x3
    80005dfc:	46850513          	addi	a0,a0,1128 # 80009260 <CONSOLE_STATUS+0x250>
    80005e00:	fffff097          	auipc	ra,0xfffff
    80005e04:	470080e7          	jalr	1136(ra) # 80005270 <_Z11printStringPKc>
    80005e08:	00000613          	li	a2,0
    80005e0c:	00a00593          	li	a1,10
    80005e10:	0009051b          	sext.w	a0,s2
    80005e14:	fffff097          	auipc	ra,0xfffff
    80005e18:	60c080e7          	jalr	1548(ra) # 80005420 <_Z8printIntiii>
    80005e1c:	00003517          	auipc	a0,0x3
    80005e20:	64c50513          	addi	a0,a0,1612 # 80009468 <CONSOLE_STATUS+0x458>
    80005e24:	fffff097          	auipc	ra,0xfffff
    80005e28:	44c080e7          	jalr	1100(ra) # 80005270 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80005e2c:	00c00513          	li	a0,12
    80005e30:	00000097          	auipc	ra,0x0
    80005e34:	d88080e7          	jalr	-632(ra) # 80005bb8 <_ZL9fibonaccim>
    80005e38:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80005e3c:	00003517          	auipc	a0,0x3
    80005e40:	42c50513          	addi	a0,a0,1068 # 80009268 <CONSOLE_STATUS+0x258>
    80005e44:	fffff097          	auipc	ra,0xfffff
    80005e48:	42c080e7          	jalr	1068(ra) # 80005270 <_Z11printStringPKc>
    80005e4c:	00000613          	li	a2,0
    80005e50:	00a00593          	li	a1,10
    80005e54:	0009051b          	sext.w	a0,s2
    80005e58:	fffff097          	auipc	ra,0xfffff
    80005e5c:	5c8080e7          	jalr	1480(ra) # 80005420 <_Z8printIntiii>
    80005e60:	00003517          	auipc	a0,0x3
    80005e64:	60850513          	addi	a0,a0,1544 # 80009468 <CONSOLE_STATUS+0x458>
    80005e68:	fffff097          	auipc	ra,0xfffff
    80005e6c:	408080e7          	jalr	1032(ra) # 80005270 <_Z11printStringPKc>
    80005e70:	0400006f          	j	80005eb0 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80005e74:	00003517          	auipc	a0,0x3
    80005e78:	3d450513          	addi	a0,a0,980 # 80009248 <CONSOLE_STATUS+0x238>
    80005e7c:	fffff097          	auipc	ra,0xfffff
    80005e80:	3f4080e7          	jalr	1012(ra) # 80005270 <_Z11printStringPKc>
    80005e84:	00000613          	li	a2,0
    80005e88:	00a00593          	li	a1,10
    80005e8c:	00048513          	mv	a0,s1
    80005e90:	fffff097          	auipc	ra,0xfffff
    80005e94:	590080e7          	jalr	1424(ra) # 80005420 <_Z8printIntiii>
    80005e98:	00003517          	auipc	a0,0x3
    80005e9c:	5d050513          	addi	a0,a0,1488 # 80009468 <CONSOLE_STATUS+0x458>
    80005ea0:	fffff097          	auipc	ra,0xfffff
    80005ea4:	3d0080e7          	jalr	976(ra) # 80005270 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005ea8:	0014849b          	addiw	s1,s1,1
    80005eac:	0ff4f493          	andi	s1,s1,255
    80005eb0:	00500793          	li	a5,5
    80005eb4:	fc97f0e3          	bgeu	a5,s1,80005e74 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80005eb8:	00003517          	auipc	a0,0x3
    80005ebc:	36850513          	addi	a0,a0,872 # 80009220 <CONSOLE_STATUS+0x210>
    80005ec0:	fffff097          	auipc	ra,0xfffff
    80005ec4:	3b0080e7          	jalr	944(ra) # 80005270 <_Z11printStringPKc>
    finishedC = true;
    80005ec8:	00100793          	li	a5,1
    80005ecc:	00006717          	auipc	a4,0x6
    80005ed0:	8af707a3          	sb	a5,-1873(a4) # 8000b77b <_ZL9finishedC>
    thread_dispatch();
    80005ed4:	ffffb097          	auipc	ra,0xffffb
    80005ed8:	60c080e7          	jalr	1548(ra) # 800014e0 <_Z15thread_dispatchv>
}
    80005edc:	01813083          	ld	ra,24(sp)
    80005ee0:	01013403          	ld	s0,16(sp)
    80005ee4:	00813483          	ld	s1,8(sp)
    80005ee8:	00013903          	ld	s2,0(sp)
    80005eec:	02010113          	addi	sp,sp,32
    80005ef0:	00008067          	ret

0000000080005ef4 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80005ef4:	fe010113          	addi	sp,sp,-32
    80005ef8:	00113c23          	sd	ra,24(sp)
    80005efc:	00813823          	sd	s0,16(sp)
    80005f00:	00913423          	sd	s1,8(sp)
    80005f04:	01213023          	sd	s2,0(sp)
    80005f08:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80005f0c:	00000913          	li	s2,0
    80005f10:	0200006f          	j	80005f30 <_ZL11workerBodyBPv+0x3c>
            thread_dispatch();
    80005f14:	ffffb097          	auipc	ra,0xffffb
    80005f18:	5cc080e7          	jalr	1484(ra) # 800014e0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 1; j++) {
    80005f1c:	00148493          	addi	s1,s1,1
    80005f20:	0500006f          	j	80005f70 <_ZL11workerBodyBPv+0x7c>
        if (i == 10) {
    80005f24:	00a00793          	li	a5,10
    80005f28:	06f90063          	beq	s2,a5,80005f88 <_ZL11workerBodyBPv+0x94>
    for (uint64 i = 0; i < 16; i++) {
    80005f2c:	00190913          	addi	s2,s2,1
    80005f30:	00f00793          	li	a5,15
    80005f34:	0527ee63          	bltu	a5,s2,80005f90 <_ZL11workerBodyBPv+0x9c>
        printString("B: i="); printInt(i); printString("\n");
    80005f38:	00003517          	auipc	a0,0x3
    80005f3c:	2f850513          	addi	a0,a0,760 # 80009230 <CONSOLE_STATUS+0x220>
    80005f40:	fffff097          	auipc	ra,0xfffff
    80005f44:	330080e7          	jalr	816(ra) # 80005270 <_Z11printStringPKc>
    80005f48:	00000613          	li	a2,0
    80005f4c:	00a00593          	li	a1,10
    80005f50:	0009051b          	sext.w	a0,s2
    80005f54:	fffff097          	auipc	ra,0xfffff
    80005f58:	4cc080e7          	jalr	1228(ra) # 80005420 <_Z8printIntiii>
    80005f5c:	00003517          	auipc	a0,0x3
    80005f60:	50c50513          	addi	a0,a0,1292 # 80009468 <CONSOLE_STATUS+0x458>
    80005f64:	fffff097          	auipc	ra,0xfffff
    80005f68:	30c080e7          	jalr	780(ra) # 80005270 <_Z11printStringPKc>
        for (uint64 j = 0; j < 1; j++) {
    80005f6c:	00000493          	li	s1,0
    80005f70:	fa049ae3          	bnez	s1,80005f24 <_ZL11workerBodyBPv+0x30>
            for (uint64 k = 0; k < 3; k++) { /* busy wait */ }
    80005f74:	00048793          	mv	a5,s1
    80005f78:	00200713          	li	a4,2
    80005f7c:	f8f76ce3          	bltu	a4,a5,80005f14 <_ZL11workerBodyBPv+0x20>
    80005f80:	00178793          	addi	a5,a5,1
    80005f84:	ff5ff06f          	j	80005f78 <_ZL11workerBodyBPv+0x84>
            asm volatile("csrr t6, sepc");
    80005f88:	14102ff3          	csrr	t6,sepc
    80005f8c:	fa1ff06f          	j	80005f2c <_ZL11workerBodyBPv+0x38>
    printString("B finished!\n");
    80005f90:	00003517          	auipc	a0,0x3
    80005f94:	2a850513          	addi	a0,a0,680 # 80009238 <CONSOLE_STATUS+0x228>
    80005f98:	fffff097          	auipc	ra,0xfffff
    80005f9c:	2d8080e7          	jalr	728(ra) # 80005270 <_Z11printStringPKc>
    finishedB = true;
    80005fa0:	00100793          	li	a5,1
    80005fa4:	00005717          	auipc	a4,0x5
    80005fa8:	7cf70c23          	sb	a5,2008(a4) # 8000b77c <_ZL9finishedB>
    thread_dispatch();
    80005fac:	ffffb097          	auipc	ra,0xffffb
    80005fb0:	534080e7          	jalr	1332(ra) # 800014e0 <_Z15thread_dispatchv>
}
    80005fb4:	01813083          	ld	ra,24(sp)
    80005fb8:	01013403          	ld	s0,16(sp)
    80005fbc:	00813483          	ld	s1,8(sp)
    80005fc0:	00013903          	ld	s2,0(sp)
    80005fc4:	02010113          	addi	sp,sp,32
    80005fc8:	00008067          	ret

0000000080005fcc <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80005fcc:	fe010113          	addi	sp,sp,-32
    80005fd0:	00113c23          	sd	ra,24(sp)
    80005fd4:	00813823          	sd	s0,16(sp)
    80005fd8:	00913423          	sd	s1,8(sp)
    80005fdc:	01213023          	sd	s2,0(sp)
    80005fe0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80005fe4:	00000913          	li	s2,0
    80005fe8:	0240006f          	j	8000600c <_ZL11workerBodyAPv+0x40>
            for (uint64 k = 0; k < 3; k++) { /* busy wait */ }
    80005fec:	00178793          	addi	a5,a5,1
    80005ff0:	00200713          	li	a4,2
    80005ff4:	fef77ce3          	bgeu	a4,a5,80005fec <_ZL11workerBodyAPv+0x20>
            thread_dispatch();
    80005ff8:	ffffb097          	auipc	ra,0xffffb
    80005ffc:	4e8080e7          	jalr	1256(ra) # 800014e0 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 1; j++) {
    80006000:	00148493          	addi	s1,s1,1
    80006004:	0480006f          	j	8000604c <_ZL11workerBodyAPv+0x80>
    for (uint64 i = 0; i < 10; i++) {
    80006008:	00190913          	addi	s2,s2,1
    8000600c:	00900793          	li	a5,9
    80006010:	0527e463          	bltu	a5,s2,80006058 <_ZL11workerBodyAPv+0x8c>
        printString("A: i="); printInt(i); printString("\n");
    80006014:	00003517          	auipc	a0,0x3
    80006018:	20450513          	addi	a0,a0,516 # 80009218 <CONSOLE_STATUS+0x208>
    8000601c:	fffff097          	auipc	ra,0xfffff
    80006020:	254080e7          	jalr	596(ra) # 80005270 <_Z11printStringPKc>
    80006024:	00000613          	li	a2,0
    80006028:	00a00593          	li	a1,10
    8000602c:	0009051b          	sext.w	a0,s2
    80006030:	fffff097          	auipc	ra,0xfffff
    80006034:	3f0080e7          	jalr	1008(ra) # 80005420 <_Z8printIntiii>
    80006038:	00003517          	auipc	a0,0x3
    8000603c:	43050513          	addi	a0,a0,1072 # 80009468 <CONSOLE_STATUS+0x458>
    80006040:	fffff097          	auipc	ra,0xfffff
    80006044:	230080e7          	jalr	560(ra) # 80005270 <_Z11printStringPKc>
        for (uint64 j = 0; j < 1; j++) {
    80006048:	00000493          	li	s1,0
    8000604c:	fa049ee3          	bnez	s1,80006008 <_ZL11workerBodyAPv+0x3c>
            for (uint64 k = 0; k < 3; k++) { /* busy wait */ }
    80006050:	00048793          	mv	a5,s1
    80006054:	f9dff06f          	j	80005ff0 <_ZL11workerBodyAPv+0x24>
    printString("A finished!\n");
    80006058:	00003517          	auipc	a0,0x3
    8000605c:	1c850513          	addi	a0,a0,456 # 80009220 <CONSOLE_STATUS+0x210>
    80006060:	fffff097          	auipc	ra,0xfffff
    80006064:	210080e7          	jalr	528(ra) # 80005270 <_Z11printStringPKc>
    finishedA = true;
    80006068:	00100793          	li	a5,1
    8000606c:	00005717          	auipc	a4,0x5
    80006070:	70f708a3          	sb	a5,1809(a4) # 8000b77d <_ZL9finishedA>
}
    80006074:	01813083          	ld	ra,24(sp)
    80006078:	01013403          	ld	s0,16(sp)
    8000607c:	00813483          	ld	s1,8(sp)
    80006080:	00013903          	ld	s2,0(sp)
    80006084:	02010113          	addi	sp,sp,32
    80006088:	00008067          	ret

000000008000608c <_Z16System_Mode_testv>:


void System_Mode_test() {
    8000608c:	fd010113          	addi	sp,sp,-48
    80006090:	02113423          	sd	ra,40(sp)
    80006094:	02813023          	sd	s0,32(sp)
    80006098:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    8000609c:	00000613          	li	a2,0
    800060a0:	00000597          	auipc	a1,0x0
    800060a4:	f2c58593          	addi	a1,a1,-212 # 80005fcc <_ZL11workerBodyAPv>
    800060a8:	fd040513          	addi	a0,s0,-48
    800060ac:	ffffb097          	auipc	ra,0xffffb
    800060b0:	314080e7          	jalr	788(ra) # 800013c0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800060b4:	00003517          	auipc	a0,0x3
    800060b8:	1fc50513          	addi	a0,a0,508 # 800092b0 <CONSOLE_STATUS+0x2a0>
    800060bc:	fffff097          	auipc	ra,0xfffff
    800060c0:	1b4080e7          	jalr	436(ra) # 80005270 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800060c4:	00000613          	li	a2,0
    800060c8:	00000597          	auipc	a1,0x0
    800060cc:	e2c58593          	addi	a1,a1,-468 # 80005ef4 <_ZL11workerBodyBPv>
    800060d0:	fd840513          	addi	a0,s0,-40
    800060d4:	ffffb097          	auipc	ra,0xffffb
    800060d8:	2ec080e7          	jalr	748(ra) # 800013c0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    800060dc:	00003517          	auipc	a0,0x3
    800060e0:	1ec50513          	addi	a0,a0,492 # 800092c8 <CONSOLE_STATUS+0x2b8>
    800060e4:	fffff097          	auipc	ra,0xfffff
    800060e8:	18c080e7          	jalr	396(ra) # 80005270 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    800060ec:	00000613          	li	a2,0
    800060f0:	00000597          	auipc	a1,0x0
    800060f4:	c8458593          	addi	a1,a1,-892 # 80005d74 <_ZL11workerBodyCPv>
    800060f8:	fe040513          	addi	a0,s0,-32
    800060fc:	ffffb097          	auipc	ra,0xffffb
    80006100:	2c4080e7          	jalr	708(ra) # 800013c0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80006104:	00003517          	auipc	a0,0x3
    80006108:	1dc50513          	addi	a0,a0,476 # 800092e0 <CONSOLE_STATUS+0x2d0>
    8000610c:	fffff097          	auipc	ra,0xfffff
    80006110:	164080e7          	jalr	356(ra) # 80005270 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80006114:	00000613          	li	a2,0
    80006118:	00000597          	auipc	a1,0x0
    8000611c:	b1458593          	addi	a1,a1,-1260 # 80005c2c <_ZL11workerBodyDPv>
    80006120:	fe840513          	addi	a0,s0,-24
    80006124:	ffffb097          	auipc	ra,0xffffb
    80006128:	29c080e7          	jalr	668(ra) # 800013c0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    8000612c:	00003517          	auipc	a0,0x3
    80006130:	1cc50513          	addi	a0,a0,460 # 800092f8 <CONSOLE_STATUS+0x2e8>
    80006134:	fffff097          	auipc	ra,0xfffff
    80006138:	13c080e7          	jalr	316(ra) # 80005270 <_Z11printStringPKc>
    8000613c:	00c0006f          	j	80006148 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80006140:	ffffb097          	auipc	ra,0xffffb
    80006144:	3a0080e7          	jalr	928(ra) # 800014e0 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80006148:	00005797          	auipc	a5,0x5
    8000614c:	6357c783          	lbu	a5,1589(a5) # 8000b77d <_ZL9finishedA>
    80006150:	fe0788e3          	beqz	a5,80006140 <_Z16System_Mode_testv+0xb4>
    80006154:	00005797          	auipc	a5,0x5
    80006158:	6287c783          	lbu	a5,1576(a5) # 8000b77c <_ZL9finishedB>
    8000615c:	fe0782e3          	beqz	a5,80006140 <_Z16System_Mode_testv+0xb4>
    80006160:	00005797          	auipc	a5,0x5
    80006164:	61b7c783          	lbu	a5,1563(a5) # 8000b77b <_ZL9finishedC>
    80006168:	fc078ce3          	beqz	a5,80006140 <_Z16System_Mode_testv+0xb4>
    8000616c:	00005797          	auipc	a5,0x5
    80006170:	60e7c783          	lbu	a5,1550(a5) # 8000b77a <_ZL9finishedD>
    80006174:	fc0786e3          	beqz	a5,80006140 <_Z16System_Mode_testv+0xb4>
    }

}
    80006178:	02813083          	ld	ra,40(sp)
    8000617c:	02013403          	ld	s0,32(sp)
    80006180:	03010113          	addi	sp,sp,48
    80006184:	00008067          	ret

0000000080006188 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80006188:	fe010113          	addi	sp,sp,-32
    8000618c:	00113c23          	sd	ra,24(sp)
    80006190:	00813823          	sd	s0,16(sp)
    80006194:	00913423          	sd	s1,8(sp)
    80006198:	01213023          	sd	s2,0(sp)
    8000619c:	02010413          	addi	s0,sp,32
    800061a0:	00050493          	mv	s1,a0
    800061a4:	00058913          	mv	s2,a1
    800061a8:	0015879b          	addiw	a5,a1,1
    800061ac:	0007851b          	sext.w	a0,a5
    800061b0:	00f4a023          	sw	a5,0(s1)
    800061b4:	0004a823          	sw	zero,16(s1)
    800061b8:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800061bc:	00251513          	slli	a0,a0,0x2
    800061c0:	ffffb097          	auipc	ra,0xffffb
    800061c4:	1ac080e7          	jalr	428(ra) # 8000136c <_Z9mem_allocm>
    800061c8:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800061cc:	00000593          	li	a1,0
    800061d0:	02048513          	addi	a0,s1,32
    800061d4:	ffffb097          	auipc	ra,0xffffb
    800061d8:	350080e7          	jalr	848(ra) # 80001524 <_Z8sem_openPP7Semaforj>
    sem_open(&spaceAvailable, _cap);
    800061dc:	00090593          	mv	a1,s2
    800061e0:	01848513          	addi	a0,s1,24
    800061e4:	ffffb097          	auipc	ra,0xffffb
    800061e8:	340080e7          	jalr	832(ra) # 80001524 <_Z8sem_openPP7Semaforj>
    sem_open(&mutexHead, 1);
    800061ec:	00100593          	li	a1,1
    800061f0:	02848513          	addi	a0,s1,40
    800061f4:	ffffb097          	auipc	ra,0xffffb
    800061f8:	330080e7          	jalr	816(ra) # 80001524 <_Z8sem_openPP7Semaforj>
    sem_open(&mutexTail, 1);
    800061fc:	00100593          	li	a1,1
    80006200:	03048513          	addi	a0,s1,48
    80006204:	ffffb097          	auipc	ra,0xffffb
    80006208:	320080e7          	jalr	800(ra) # 80001524 <_Z8sem_openPP7Semaforj>
}
    8000620c:	01813083          	ld	ra,24(sp)
    80006210:	01013403          	ld	s0,16(sp)
    80006214:	00813483          	ld	s1,8(sp)
    80006218:	00013903          	ld	s2,0(sp)
    8000621c:	02010113          	addi	sp,sp,32
    80006220:	00008067          	ret

0000000080006224 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80006224:	fe010113          	addi	sp,sp,-32
    80006228:	00113c23          	sd	ra,24(sp)
    8000622c:	00813823          	sd	s0,16(sp)
    80006230:	00913423          	sd	s1,8(sp)
    80006234:	01213023          	sd	s2,0(sp)
    80006238:	02010413          	addi	s0,sp,32
    8000623c:	00050493          	mv	s1,a0
    80006240:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80006244:	01853503          	ld	a0,24(a0)
    80006248:	ffffb097          	auipc	ra,0xffffb
    8000624c:	338080e7          	jalr	824(ra) # 80001580 <_Z8sem_waitP7Semafor>

    sem_wait(mutexTail);
    80006250:	0304b503          	ld	a0,48(s1)
    80006254:	ffffb097          	auipc	ra,0xffffb
    80006258:	32c080e7          	jalr	812(ra) # 80001580 <_Z8sem_waitP7Semafor>
    buffer[tail] = val;
    8000625c:	0084b783          	ld	a5,8(s1)
    80006260:	0144a703          	lw	a4,20(s1)
    80006264:	00271713          	slli	a4,a4,0x2
    80006268:	00e787b3          	add	a5,a5,a4
    8000626c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80006270:	0144a783          	lw	a5,20(s1)
    80006274:	0017879b          	addiw	a5,a5,1
    80006278:	0004a703          	lw	a4,0(s1)
    8000627c:	02e7e7bb          	remw	a5,a5,a4
    80006280:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80006284:	0304b503          	ld	a0,48(s1)
    80006288:	ffffb097          	auipc	ra,0xffffb
    8000628c:	324080e7          	jalr	804(ra) # 800015ac <_Z10sem_signalP7Semafor>

    sem_signal(itemAvailable);
    80006290:	0204b503          	ld	a0,32(s1)
    80006294:	ffffb097          	auipc	ra,0xffffb
    80006298:	318080e7          	jalr	792(ra) # 800015ac <_Z10sem_signalP7Semafor>

}
    8000629c:	01813083          	ld	ra,24(sp)
    800062a0:	01013403          	ld	s0,16(sp)
    800062a4:	00813483          	ld	s1,8(sp)
    800062a8:	00013903          	ld	s2,0(sp)
    800062ac:	02010113          	addi	sp,sp,32
    800062b0:	00008067          	ret

00000000800062b4 <_ZN6Buffer3getEv>:

int Buffer::get() {
    800062b4:	fe010113          	addi	sp,sp,-32
    800062b8:	00113c23          	sd	ra,24(sp)
    800062bc:	00813823          	sd	s0,16(sp)
    800062c0:	00913423          	sd	s1,8(sp)
    800062c4:	01213023          	sd	s2,0(sp)
    800062c8:	02010413          	addi	s0,sp,32
    800062cc:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800062d0:	02053503          	ld	a0,32(a0)
    800062d4:	ffffb097          	auipc	ra,0xffffb
    800062d8:	2ac080e7          	jalr	684(ra) # 80001580 <_Z8sem_waitP7Semafor>

    sem_wait(mutexHead);
    800062dc:	0284b503          	ld	a0,40(s1)
    800062e0:	ffffb097          	auipc	ra,0xffffb
    800062e4:	2a0080e7          	jalr	672(ra) # 80001580 <_Z8sem_waitP7Semafor>

    int ret = buffer[head];
    800062e8:	0084b703          	ld	a4,8(s1)
    800062ec:	0104a783          	lw	a5,16(s1)
    800062f0:	00279693          	slli	a3,a5,0x2
    800062f4:	00d70733          	add	a4,a4,a3
    800062f8:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800062fc:	0017879b          	addiw	a5,a5,1
    80006300:	0004a703          	lw	a4,0(s1)
    80006304:	02e7e7bb          	remw	a5,a5,a4
    80006308:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    8000630c:	0284b503          	ld	a0,40(s1)
    80006310:	ffffb097          	auipc	ra,0xffffb
    80006314:	29c080e7          	jalr	668(ra) # 800015ac <_Z10sem_signalP7Semafor>

    sem_signal(spaceAvailable);
    80006318:	0184b503          	ld	a0,24(s1)
    8000631c:	ffffb097          	auipc	ra,0xffffb
    80006320:	290080e7          	jalr	656(ra) # 800015ac <_Z10sem_signalP7Semafor>

    return ret;
}
    80006324:	00090513          	mv	a0,s2
    80006328:	01813083          	ld	ra,24(sp)
    8000632c:	01013403          	ld	s0,16(sp)
    80006330:	00813483          	ld	s1,8(sp)
    80006334:	00013903          	ld	s2,0(sp)
    80006338:	02010113          	addi	sp,sp,32
    8000633c:	00008067          	ret

0000000080006340 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80006340:	fe010113          	addi	sp,sp,-32
    80006344:	00113c23          	sd	ra,24(sp)
    80006348:	00813823          	sd	s0,16(sp)
    8000634c:	00913423          	sd	s1,8(sp)
    80006350:	01213023          	sd	s2,0(sp)
    80006354:	02010413          	addi	s0,sp,32
    80006358:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    8000635c:	02853503          	ld	a0,40(a0)
    80006360:	ffffb097          	auipc	ra,0xffffb
    80006364:	220080e7          	jalr	544(ra) # 80001580 <_Z8sem_waitP7Semafor>
    sem_wait(mutexTail);
    80006368:	0304b503          	ld	a0,48(s1)
    8000636c:	ffffb097          	auipc	ra,0xffffb
    80006370:	214080e7          	jalr	532(ra) # 80001580 <_Z8sem_waitP7Semafor>

    if (tail >= head) {
    80006374:	0144a783          	lw	a5,20(s1)
    80006378:	0104a903          	lw	s2,16(s1)
    8000637c:	0327ce63          	blt	a5,s2,800063b8 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80006380:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80006384:	0304b503          	ld	a0,48(s1)
    80006388:	ffffb097          	auipc	ra,0xffffb
    8000638c:	224080e7          	jalr	548(ra) # 800015ac <_Z10sem_signalP7Semafor>
    sem_signal(mutexHead);
    80006390:	0284b503          	ld	a0,40(s1)
    80006394:	ffffb097          	auipc	ra,0xffffb
    80006398:	218080e7          	jalr	536(ra) # 800015ac <_Z10sem_signalP7Semafor>

    return ret;
}
    8000639c:	00090513          	mv	a0,s2
    800063a0:	01813083          	ld	ra,24(sp)
    800063a4:	01013403          	ld	s0,16(sp)
    800063a8:	00813483          	ld	s1,8(sp)
    800063ac:	00013903          	ld	s2,0(sp)
    800063b0:	02010113          	addi	sp,sp,32
    800063b4:	00008067          	ret
        ret = cap - head + tail;
    800063b8:	0004a703          	lw	a4,0(s1)
    800063bc:	4127093b          	subw	s2,a4,s2
    800063c0:	00f9093b          	addw	s2,s2,a5
    800063c4:	fc1ff06f          	j	80006384 <_ZN6Buffer6getCntEv+0x44>

00000000800063c8 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800063c8:	fe010113          	addi	sp,sp,-32
    800063cc:	00113c23          	sd	ra,24(sp)
    800063d0:	00813823          	sd	s0,16(sp)
    800063d4:	00913423          	sd	s1,8(sp)
    800063d8:	02010413          	addi	s0,sp,32
    800063dc:	00050493          	mv	s1,a0
    putc('\n');
    800063e0:	00a00513          	li	a0,10
    800063e4:	ffffb097          	auipc	ra,0xffffb
    800063e8:	248080e7          	jalr	584(ra) # 8000162c <_Z4putcc>
    printString("Buffer deleted!\n");
    800063ec:	00003517          	auipc	a0,0x3
    800063f0:	f2450513          	addi	a0,a0,-220 # 80009310 <CONSOLE_STATUS+0x300>
    800063f4:	fffff097          	auipc	ra,0xfffff
    800063f8:	e7c080e7          	jalr	-388(ra) # 80005270 <_Z11printStringPKc>
    while (getCnt() > 0) {
    800063fc:	00048513          	mv	a0,s1
    80006400:	00000097          	auipc	ra,0x0
    80006404:	f40080e7          	jalr	-192(ra) # 80006340 <_ZN6Buffer6getCntEv>
    80006408:	02a05c63          	blez	a0,80006440 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    8000640c:	0084b783          	ld	a5,8(s1)
    80006410:	0104a703          	lw	a4,16(s1)
    80006414:	00271713          	slli	a4,a4,0x2
    80006418:	00e787b3          	add	a5,a5,a4
        putc(ch);
    8000641c:	0007c503          	lbu	a0,0(a5)
    80006420:	ffffb097          	auipc	ra,0xffffb
    80006424:	20c080e7          	jalr	524(ra) # 8000162c <_Z4putcc>
        head = (head + 1) % cap;
    80006428:	0104a783          	lw	a5,16(s1)
    8000642c:	0017879b          	addiw	a5,a5,1
    80006430:	0004a703          	lw	a4,0(s1)
    80006434:	02e7e7bb          	remw	a5,a5,a4
    80006438:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    8000643c:	fc1ff06f          	j	800063fc <_ZN6BufferD1Ev+0x34>
    putc('!');
    80006440:	02100513          	li	a0,33
    80006444:	ffffb097          	auipc	ra,0xffffb
    80006448:	1e8080e7          	jalr	488(ra) # 8000162c <_Z4putcc>
    putc('\n');
    8000644c:	00a00513          	li	a0,10
    80006450:	ffffb097          	auipc	ra,0xffffb
    80006454:	1dc080e7          	jalr	476(ra) # 8000162c <_Z4putcc>
    mem_free(buffer);
    80006458:	0084b503          	ld	a0,8(s1)
    8000645c:	ffffb097          	auipc	ra,0xffffb
    80006460:	f38080e7          	jalr	-200(ra) # 80001394 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80006464:	0204b503          	ld	a0,32(s1)
    80006468:	ffffb097          	auipc	ra,0xffffb
    8000646c:	0ec080e7          	jalr	236(ra) # 80001554 <_Z9sem_closeP7Semafor>
    sem_close(spaceAvailable);
    80006470:	0184b503          	ld	a0,24(s1)
    80006474:	ffffb097          	auipc	ra,0xffffb
    80006478:	0e0080e7          	jalr	224(ra) # 80001554 <_Z9sem_closeP7Semafor>
    sem_close(mutexTail);
    8000647c:	0304b503          	ld	a0,48(s1)
    80006480:	ffffb097          	auipc	ra,0xffffb
    80006484:	0d4080e7          	jalr	212(ra) # 80001554 <_Z9sem_closeP7Semafor>
    sem_close(mutexHead);
    80006488:	0284b503          	ld	a0,40(s1)
    8000648c:	ffffb097          	auipc	ra,0xffffb
    80006490:	0c8080e7          	jalr	200(ra) # 80001554 <_Z9sem_closeP7Semafor>
}
    80006494:	01813083          	ld	ra,24(sp)
    80006498:	01013403          	ld	s0,16(sp)
    8000649c:	00813483          	ld	s1,8(sp)
    800064a0:	02010113          	addi	sp,sp,32
    800064a4:	00008067          	ret

00000000800064a8 <start>:
    800064a8:	ff010113          	addi	sp,sp,-16
    800064ac:	00813423          	sd	s0,8(sp)
    800064b0:	01010413          	addi	s0,sp,16
    800064b4:	300027f3          	csrr	a5,mstatus
    800064b8:	ffffe737          	lui	a4,0xffffe
    800064bc:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff1e1f>
    800064c0:	00e7f7b3          	and	a5,a5,a4
    800064c4:	00001737          	lui	a4,0x1
    800064c8:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800064cc:	00e7e7b3          	or	a5,a5,a4
    800064d0:	30079073          	csrw	mstatus,a5
    800064d4:	00000797          	auipc	a5,0x0
    800064d8:	16078793          	addi	a5,a5,352 # 80006634 <system_main>
    800064dc:	34179073          	csrw	mepc,a5
    800064e0:	00000793          	li	a5,0
    800064e4:	18079073          	csrw	satp,a5
    800064e8:	000107b7          	lui	a5,0x10
    800064ec:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800064f0:	30279073          	csrw	medeleg,a5
    800064f4:	30379073          	csrw	mideleg,a5
    800064f8:	104027f3          	csrr	a5,sie
    800064fc:	2227e793          	ori	a5,a5,546
    80006500:	10479073          	csrw	sie,a5
    80006504:	fff00793          	li	a5,-1
    80006508:	00a7d793          	srli	a5,a5,0xa
    8000650c:	3b079073          	csrw	pmpaddr0,a5
    80006510:	00f00793          	li	a5,15
    80006514:	3a079073          	csrw	pmpcfg0,a5
    80006518:	f14027f3          	csrr	a5,mhartid
    8000651c:	0200c737          	lui	a4,0x200c
    80006520:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80006524:	0007869b          	sext.w	a3,a5
    80006528:	00269713          	slli	a4,a3,0x2
    8000652c:	000f4637          	lui	a2,0xf4
    80006530:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80006534:	00d70733          	add	a4,a4,a3
    80006538:	0037979b          	slliw	a5,a5,0x3
    8000653c:	020046b7          	lui	a3,0x2004
    80006540:	00d787b3          	add	a5,a5,a3
    80006544:	00c585b3          	add	a1,a1,a2
    80006548:	00371693          	slli	a3,a4,0x3
    8000654c:	00005717          	auipc	a4,0x5
    80006550:	23470713          	addi	a4,a4,564 # 8000b780 <timer_scratch>
    80006554:	00b7b023          	sd	a1,0(a5)
    80006558:	00d70733          	add	a4,a4,a3
    8000655c:	00f73c23          	sd	a5,24(a4)
    80006560:	02c73023          	sd	a2,32(a4)
    80006564:	34071073          	csrw	mscratch,a4
    80006568:	00000797          	auipc	a5,0x0
    8000656c:	6e878793          	addi	a5,a5,1768 # 80006c50 <timervec>
    80006570:	30579073          	csrw	mtvec,a5
    80006574:	300027f3          	csrr	a5,mstatus
    80006578:	0087e793          	ori	a5,a5,8
    8000657c:	30079073          	csrw	mstatus,a5
    80006580:	304027f3          	csrr	a5,mie
    80006584:	0807e793          	ori	a5,a5,128
    80006588:	30479073          	csrw	mie,a5
    8000658c:	f14027f3          	csrr	a5,mhartid
    80006590:	0007879b          	sext.w	a5,a5
    80006594:	00078213          	mv	tp,a5
    80006598:	30200073          	mret
    8000659c:	00813403          	ld	s0,8(sp)
    800065a0:	01010113          	addi	sp,sp,16
    800065a4:	00008067          	ret

00000000800065a8 <timerinit>:
    800065a8:	ff010113          	addi	sp,sp,-16
    800065ac:	00813423          	sd	s0,8(sp)
    800065b0:	01010413          	addi	s0,sp,16
    800065b4:	f14027f3          	csrr	a5,mhartid
    800065b8:	0200c737          	lui	a4,0x200c
    800065bc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800065c0:	0007869b          	sext.w	a3,a5
    800065c4:	00269713          	slli	a4,a3,0x2
    800065c8:	000f4637          	lui	a2,0xf4
    800065cc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800065d0:	00d70733          	add	a4,a4,a3
    800065d4:	0037979b          	slliw	a5,a5,0x3
    800065d8:	020046b7          	lui	a3,0x2004
    800065dc:	00d787b3          	add	a5,a5,a3
    800065e0:	00c585b3          	add	a1,a1,a2
    800065e4:	00371693          	slli	a3,a4,0x3
    800065e8:	00005717          	auipc	a4,0x5
    800065ec:	19870713          	addi	a4,a4,408 # 8000b780 <timer_scratch>
    800065f0:	00b7b023          	sd	a1,0(a5)
    800065f4:	00d70733          	add	a4,a4,a3
    800065f8:	00f73c23          	sd	a5,24(a4)
    800065fc:	02c73023          	sd	a2,32(a4)
    80006600:	34071073          	csrw	mscratch,a4
    80006604:	00000797          	auipc	a5,0x0
    80006608:	64c78793          	addi	a5,a5,1612 # 80006c50 <timervec>
    8000660c:	30579073          	csrw	mtvec,a5
    80006610:	300027f3          	csrr	a5,mstatus
    80006614:	0087e793          	ori	a5,a5,8
    80006618:	30079073          	csrw	mstatus,a5
    8000661c:	304027f3          	csrr	a5,mie
    80006620:	0807e793          	ori	a5,a5,128
    80006624:	30479073          	csrw	mie,a5
    80006628:	00813403          	ld	s0,8(sp)
    8000662c:	01010113          	addi	sp,sp,16
    80006630:	00008067          	ret

0000000080006634 <system_main>:
    80006634:	fe010113          	addi	sp,sp,-32
    80006638:	00813823          	sd	s0,16(sp)
    8000663c:	00913423          	sd	s1,8(sp)
    80006640:	00113c23          	sd	ra,24(sp)
    80006644:	02010413          	addi	s0,sp,32
    80006648:	00000097          	auipc	ra,0x0
    8000664c:	0c4080e7          	jalr	196(ra) # 8000670c <cpuid>
    80006650:	00005497          	auipc	s1,0x5
    80006654:	06048493          	addi	s1,s1,96 # 8000b6b0 <started>
    80006658:	02050263          	beqz	a0,8000667c <system_main+0x48>
    8000665c:	0004a783          	lw	a5,0(s1)
    80006660:	0007879b          	sext.w	a5,a5
    80006664:	fe078ce3          	beqz	a5,8000665c <system_main+0x28>
    80006668:	0ff0000f          	fence
    8000666c:	00003517          	auipc	a0,0x3
    80006670:	f7450513          	addi	a0,a0,-140 # 800095e0 <CONSOLE_STATUS+0x5d0>
    80006674:	00001097          	auipc	ra,0x1
    80006678:	a78080e7          	jalr	-1416(ra) # 800070ec <panic>
    8000667c:	00001097          	auipc	ra,0x1
    80006680:	9cc080e7          	jalr	-1588(ra) # 80007048 <consoleinit>
    80006684:	00001097          	auipc	ra,0x1
    80006688:	158080e7          	jalr	344(ra) # 800077dc <printfinit>
    8000668c:	00003517          	auipc	a0,0x3
    80006690:	ddc50513          	addi	a0,a0,-548 # 80009468 <CONSOLE_STATUS+0x458>
    80006694:	00001097          	auipc	ra,0x1
    80006698:	ab4080e7          	jalr	-1356(ra) # 80007148 <__printf>
    8000669c:	00003517          	auipc	a0,0x3
    800066a0:	f1450513          	addi	a0,a0,-236 # 800095b0 <CONSOLE_STATUS+0x5a0>
    800066a4:	00001097          	auipc	ra,0x1
    800066a8:	aa4080e7          	jalr	-1372(ra) # 80007148 <__printf>
    800066ac:	00003517          	auipc	a0,0x3
    800066b0:	dbc50513          	addi	a0,a0,-580 # 80009468 <CONSOLE_STATUS+0x458>
    800066b4:	00001097          	auipc	ra,0x1
    800066b8:	a94080e7          	jalr	-1388(ra) # 80007148 <__printf>
    800066bc:	00001097          	auipc	ra,0x1
    800066c0:	4ac080e7          	jalr	1196(ra) # 80007b68 <kinit>
    800066c4:	00000097          	auipc	ra,0x0
    800066c8:	148080e7          	jalr	328(ra) # 8000680c <trapinit>
    800066cc:	00000097          	auipc	ra,0x0
    800066d0:	16c080e7          	jalr	364(ra) # 80006838 <trapinithart>
    800066d4:	00000097          	auipc	ra,0x0
    800066d8:	5bc080e7          	jalr	1468(ra) # 80006c90 <plicinit>
    800066dc:	00000097          	auipc	ra,0x0
    800066e0:	5dc080e7          	jalr	1500(ra) # 80006cb8 <plicinithart>
    800066e4:	00000097          	auipc	ra,0x0
    800066e8:	078080e7          	jalr	120(ra) # 8000675c <userinit>
    800066ec:	0ff0000f          	fence
    800066f0:	00100793          	li	a5,1
    800066f4:	00003517          	auipc	a0,0x3
    800066f8:	ed450513          	addi	a0,a0,-300 # 800095c8 <CONSOLE_STATUS+0x5b8>
    800066fc:	00f4a023          	sw	a5,0(s1)
    80006700:	00001097          	auipc	ra,0x1
    80006704:	a48080e7          	jalr	-1464(ra) # 80007148 <__printf>
    80006708:	0000006f          	j	80006708 <system_main+0xd4>

000000008000670c <cpuid>:
    8000670c:	ff010113          	addi	sp,sp,-16
    80006710:	00813423          	sd	s0,8(sp)
    80006714:	01010413          	addi	s0,sp,16
    80006718:	00020513          	mv	a0,tp
    8000671c:	00813403          	ld	s0,8(sp)
    80006720:	0005051b          	sext.w	a0,a0
    80006724:	01010113          	addi	sp,sp,16
    80006728:	00008067          	ret

000000008000672c <mycpu>:
    8000672c:	ff010113          	addi	sp,sp,-16
    80006730:	00813423          	sd	s0,8(sp)
    80006734:	01010413          	addi	s0,sp,16
    80006738:	00020793          	mv	a5,tp
    8000673c:	00813403          	ld	s0,8(sp)
    80006740:	0007879b          	sext.w	a5,a5
    80006744:	00779793          	slli	a5,a5,0x7
    80006748:	00006517          	auipc	a0,0x6
    8000674c:	06850513          	addi	a0,a0,104 # 8000c7b0 <cpus>
    80006750:	00f50533          	add	a0,a0,a5
    80006754:	01010113          	addi	sp,sp,16
    80006758:	00008067          	ret

000000008000675c <userinit>:
    8000675c:	ff010113          	addi	sp,sp,-16
    80006760:	00813423          	sd	s0,8(sp)
    80006764:	01010413          	addi	s0,sp,16
    80006768:	00813403          	ld	s0,8(sp)
    8000676c:	01010113          	addi	sp,sp,16
    80006770:	ffffb317          	auipc	t1,0xffffb
    80006774:	52430067          	jr	1316(t1) # 80001c94 <main>

0000000080006778 <either_copyout>:
    80006778:	ff010113          	addi	sp,sp,-16
    8000677c:	00813023          	sd	s0,0(sp)
    80006780:	00113423          	sd	ra,8(sp)
    80006784:	01010413          	addi	s0,sp,16
    80006788:	02051663          	bnez	a0,800067b4 <either_copyout+0x3c>
    8000678c:	00058513          	mv	a0,a1
    80006790:	00060593          	mv	a1,a2
    80006794:	0006861b          	sext.w	a2,a3
    80006798:	00002097          	auipc	ra,0x2
    8000679c:	c5c080e7          	jalr	-932(ra) # 800083f4 <__memmove>
    800067a0:	00813083          	ld	ra,8(sp)
    800067a4:	00013403          	ld	s0,0(sp)
    800067a8:	00000513          	li	a0,0
    800067ac:	01010113          	addi	sp,sp,16
    800067b0:	00008067          	ret
    800067b4:	00003517          	auipc	a0,0x3
    800067b8:	e5450513          	addi	a0,a0,-428 # 80009608 <CONSOLE_STATUS+0x5f8>
    800067bc:	00001097          	auipc	ra,0x1
    800067c0:	930080e7          	jalr	-1744(ra) # 800070ec <panic>

00000000800067c4 <either_copyin>:
    800067c4:	ff010113          	addi	sp,sp,-16
    800067c8:	00813023          	sd	s0,0(sp)
    800067cc:	00113423          	sd	ra,8(sp)
    800067d0:	01010413          	addi	s0,sp,16
    800067d4:	02059463          	bnez	a1,800067fc <either_copyin+0x38>
    800067d8:	00060593          	mv	a1,a2
    800067dc:	0006861b          	sext.w	a2,a3
    800067e0:	00002097          	auipc	ra,0x2
    800067e4:	c14080e7          	jalr	-1004(ra) # 800083f4 <__memmove>
    800067e8:	00813083          	ld	ra,8(sp)
    800067ec:	00013403          	ld	s0,0(sp)
    800067f0:	00000513          	li	a0,0
    800067f4:	01010113          	addi	sp,sp,16
    800067f8:	00008067          	ret
    800067fc:	00003517          	auipc	a0,0x3
    80006800:	e3450513          	addi	a0,a0,-460 # 80009630 <CONSOLE_STATUS+0x620>
    80006804:	00001097          	auipc	ra,0x1
    80006808:	8e8080e7          	jalr	-1816(ra) # 800070ec <panic>

000000008000680c <trapinit>:
    8000680c:	ff010113          	addi	sp,sp,-16
    80006810:	00813423          	sd	s0,8(sp)
    80006814:	01010413          	addi	s0,sp,16
    80006818:	00813403          	ld	s0,8(sp)
    8000681c:	00003597          	auipc	a1,0x3
    80006820:	e3c58593          	addi	a1,a1,-452 # 80009658 <CONSOLE_STATUS+0x648>
    80006824:	00006517          	auipc	a0,0x6
    80006828:	00c50513          	addi	a0,a0,12 # 8000c830 <tickslock>
    8000682c:	01010113          	addi	sp,sp,16
    80006830:	00001317          	auipc	t1,0x1
    80006834:	5c830067          	jr	1480(t1) # 80007df8 <initlock>

0000000080006838 <trapinithart>:
    80006838:	ff010113          	addi	sp,sp,-16
    8000683c:	00813423          	sd	s0,8(sp)
    80006840:	01010413          	addi	s0,sp,16
    80006844:	00000797          	auipc	a5,0x0
    80006848:	2fc78793          	addi	a5,a5,764 # 80006b40 <kernelvec>
    8000684c:	10579073          	csrw	stvec,a5
    80006850:	00813403          	ld	s0,8(sp)
    80006854:	01010113          	addi	sp,sp,16
    80006858:	00008067          	ret

000000008000685c <usertrap>:
    8000685c:	ff010113          	addi	sp,sp,-16
    80006860:	00813423          	sd	s0,8(sp)
    80006864:	01010413          	addi	s0,sp,16
    80006868:	00813403          	ld	s0,8(sp)
    8000686c:	01010113          	addi	sp,sp,16
    80006870:	00008067          	ret

0000000080006874 <usertrapret>:
    80006874:	ff010113          	addi	sp,sp,-16
    80006878:	00813423          	sd	s0,8(sp)
    8000687c:	01010413          	addi	s0,sp,16
    80006880:	00813403          	ld	s0,8(sp)
    80006884:	01010113          	addi	sp,sp,16
    80006888:	00008067          	ret

000000008000688c <kerneltrap>:
    8000688c:	fe010113          	addi	sp,sp,-32
    80006890:	00813823          	sd	s0,16(sp)
    80006894:	00113c23          	sd	ra,24(sp)
    80006898:	00913423          	sd	s1,8(sp)
    8000689c:	02010413          	addi	s0,sp,32
    800068a0:	142025f3          	csrr	a1,scause
    800068a4:	100027f3          	csrr	a5,sstatus
    800068a8:	0027f793          	andi	a5,a5,2
    800068ac:	10079c63          	bnez	a5,800069c4 <kerneltrap+0x138>
    800068b0:	142027f3          	csrr	a5,scause
    800068b4:	0207ce63          	bltz	a5,800068f0 <kerneltrap+0x64>
    800068b8:	00003517          	auipc	a0,0x3
    800068bc:	de850513          	addi	a0,a0,-536 # 800096a0 <CONSOLE_STATUS+0x690>
    800068c0:	00001097          	auipc	ra,0x1
    800068c4:	888080e7          	jalr	-1912(ra) # 80007148 <__printf>
    800068c8:	141025f3          	csrr	a1,sepc
    800068cc:	14302673          	csrr	a2,stval
    800068d0:	00003517          	auipc	a0,0x3
    800068d4:	de050513          	addi	a0,a0,-544 # 800096b0 <CONSOLE_STATUS+0x6a0>
    800068d8:	00001097          	auipc	ra,0x1
    800068dc:	870080e7          	jalr	-1936(ra) # 80007148 <__printf>
    800068e0:	00003517          	auipc	a0,0x3
    800068e4:	de850513          	addi	a0,a0,-536 # 800096c8 <CONSOLE_STATUS+0x6b8>
    800068e8:	00001097          	auipc	ra,0x1
    800068ec:	804080e7          	jalr	-2044(ra) # 800070ec <panic>
    800068f0:	0ff7f713          	andi	a4,a5,255
    800068f4:	00900693          	li	a3,9
    800068f8:	04d70063          	beq	a4,a3,80006938 <kerneltrap+0xac>
    800068fc:	fff00713          	li	a4,-1
    80006900:	03f71713          	slli	a4,a4,0x3f
    80006904:	00170713          	addi	a4,a4,1
    80006908:	fae798e3          	bne	a5,a4,800068b8 <kerneltrap+0x2c>
    8000690c:	00000097          	auipc	ra,0x0
    80006910:	e00080e7          	jalr	-512(ra) # 8000670c <cpuid>
    80006914:	06050663          	beqz	a0,80006980 <kerneltrap+0xf4>
    80006918:	144027f3          	csrr	a5,sip
    8000691c:	ffd7f793          	andi	a5,a5,-3
    80006920:	14479073          	csrw	sip,a5
    80006924:	01813083          	ld	ra,24(sp)
    80006928:	01013403          	ld	s0,16(sp)
    8000692c:	00813483          	ld	s1,8(sp)
    80006930:	02010113          	addi	sp,sp,32
    80006934:	00008067          	ret
    80006938:	00000097          	auipc	ra,0x0
    8000693c:	3cc080e7          	jalr	972(ra) # 80006d04 <plic_claim>
    80006940:	00a00793          	li	a5,10
    80006944:	00050493          	mv	s1,a0
    80006948:	06f50863          	beq	a0,a5,800069b8 <kerneltrap+0x12c>
    8000694c:	fc050ce3          	beqz	a0,80006924 <kerneltrap+0x98>
    80006950:	00050593          	mv	a1,a0
    80006954:	00003517          	auipc	a0,0x3
    80006958:	d2c50513          	addi	a0,a0,-724 # 80009680 <CONSOLE_STATUS+0x670>
    8000695c:	00000097          	auipc	ra,0x0
    80006960:	7ec080e7          	jalr	2028(ra) # 80007148 <__printf>
    80006964:	01013403          	ld	s0,16(sp)
    80006968:	01813083          	ld	ra,24(sp)
    8000696c:	00048513          	mv	a0,s1
    80006970:	00813483          	ld	s1,8(sp)
    80006974:	02010113          	addi	sp,sp,32
    80006978:	00000317          	auipc	t1,0x0
    8000697c:	3c430067          	jr	964(t1) # 80006d3c <plic_complete>
    80006980:	00006517          	auipc	a0,0x6
    80006984:	eb050513          	addi	a0,a0,-336 # 8000c830 <tickslock>
    80006988:	00001097          	auipc	ra,0x1
    8000698c:	494080e7          	jalr	1172(ra) # 80007e1c <acquire>
    80006990:	00005717          	auipc	a4,0x5
    80006994:	d2470713          	addi	a4,a4,-732 # 8000b6b4 <ticks>
    80006998:	00072783          	lw	a5,0(a4)
    8000699c:	00006517          	auipc	a0,0x6
    800069a0:	e9450513          	addi	a0,a0,-364 # 8000c830 <tickslock>
    800069a4:	0017879b          	addiw	a5,a5,1
    800069a8:	00f72023          	sw	a5,0(a4)
    800069ac:	00001097          	auipc	ra,0x1
    800069b0:	53c080e7          	jalr	1340(ra) # 80007ee8 <release>
    800069b4:	f65ff06f          	j	80006918 <kerneltrap+0x8c>
    800069b8:	00001097          	auipc	ra,0x1
    800069bc:	098080e7          	jalr	152(ra) # 80007a50 <uartintr>
    800069c0:	fa5ff06f          	j	80006964 <kerneltrap+0xd8>
    800069c4:	00003517          	auipc	a0,0x3
    800069c8:	c9c50513          	addi	a0,a0,-868 # 80009660 <CONSOLE_STATUS+0x650>
    800069cc:	00000097          	auipc	ra,0x0
    800069d0:	720080e7          	jalr	1824(ra) # 800070ec <panic>

00000000800069d4 <clockintr>:
    800069d4:	fe010113          	addi	sp,sp,-32
    800069d8:	00813823          	sd	s0,16(sp)
    800069dc:	00913423          	sd	s1,8(sp)
    800069e0:	00113c23          	sd	ra,24(sp)
    800069e4:	02010413          	addi	s0,sp,32
    800069e8:	00006497          	auipc	s1,0x6
    800069ec:	e4848493          	addi	s1,s1,-440 # 8000c830 <tickslock>
    800069f0:	00048513          	mv	a0,s1
    800069f4:	00001097          	auipc	ra,0x1
    800069f8:	428080e7          	jalr	1064(ra) # 80007e1c <acquire>
    800069fc:	00005717          	auipc	a4,0x5
    80006a00:	cb870713          	addi	a4,a4,-840 # 8000b6b4 <ticks>
    80006a04:	00072783          	lw	a5,0(a4)
    80006a08:	01013403          	ld	s0,16(sp)
    80006a0c:	01813083          	ld	ra,24(sp)
    80006a10:	00048513          	mv	a0,s1
    80006a14:	0017879b          	addiw	a5,a5,1
    80006a18:	00813483          	ld	s1,8(sp)
    80006a1c:	00f72023          	sw	a5,0(a4)
    80006a20:	02010113          	addi	sp,sp,32
    80006a24:	00001317          	auipc	t1,0x1
    80006a28:	4c430067          	jr	1220(t1) # 80007ee8 <release>

0000000080006a2c <devintr>:
    80006a2c:	142027f3          	csrr	a5,scause
    80006a30:	00000513          	li	a0,0
    80006a34:	0007c463          	bltz	a5,80006a3c <devintr+0x10>
    80006a38:	00008067          	ret
    80006a3c:	fe010113          	addi	sp,sp,-32
    80006a40:	00813823          	sd	s0,16(sp)
    80006a44:	00113c23          	sd	ra,24(sp)
    80006a48:	00913423          	sd	s1,8(sp)
    80006a4c:	02010413          	addi	s0,sp,32
    80006a50:	0ff7f713          	andi	a4,a5,255
    80006a54:	00900693          	li	a3,9
    80006a58:	04d70c63          	beq	a4,a3,80006ab0 <devintr+0x84>
    80006a5c:	fff00713          	li	a4,-1
    80006a60:	03f71713          	slli	a4,a4,0x3f
    80006a64:	00170713          	addi	a4,a4,1
    80006a68:	00e78c63          	beq	a5,a4,80006a80 <devintr+0x54>
    80006a6c:	01813083          	ld	ra,24(sp)
    80006a70:	01013403          	ld	s0,16(sp)
    80006a74:	00813483          	ld	s1,8(sp)
    80006a78:	02010113          	addi	sp,sp,32
    80006a7c:	00008067          	ret
    80006a80:	00000097          	auipc	ra,0x0
    80006a84:	c8c080e7          	jalr	-884(ra) # 8000670c <cpuid>
    80006a88:	06050663          	beqz	a0,80006af4 <devintr+0xc8>
    80006a8c:	144027f3          	csrr	a5,sip
    80006a90:	ffd7f793          	andi	a5,a5,-3
    80006a94:	14479073          	csrw	sip,a5
    80006a98:	01813083          	ld	ra,24(sp)
    80006a9c:	01013403          	ld	s0,16(sp)
    80006aa0:	00813483          	ld	s1,8(sp)
    80006aa4:	00200513          	li	a0,2
    80006aa8:	02010113          	addi	sp,sp,32
    80006aac:	00008067          	ret
    80006ab0:	00000097          	auipc	ra,0x0
    80006ab4:	254080e7          	jalr	596(ra) # 80006d04 <plic_claim>
    80006ab8:	00a00793          	li	a5,10
    80006abc:	00050493          	mv	s1,a0
    80006ac0:	06f50663          	beq	a0,a5,80006b2c <devintr+0x100>
    80006ac4:	00100513          	li	a0,1
    80006ac8:	fa0482e3          	beqz	s1,80006a6c <devintr+0x40>
    80006acc:	00048593          	mv	a1,s1
    80006ad0:	00003517          	auipc	a0,0x3
    80006ad4:	bb050513          	addi	a0,a0,-1104 # 80009680 <CONSOLE_STATUS+0x670>
    80006ad8:	00000097          	auipc	ra,0x0
    80006adc:	670080e7          	jalr	1648(ra) # 80007148 <__printf>
    80006ae0:	00048513          	mv	a0,s1
    80006ae4:	00000097          	auipc	ra,0x0
    80006ae8:	258080e7          	jalr	600(ra) # 80006d3c <plic_complete>
    80006aec:	00100513          	li	a0,1
    80006af0:	f7dff06f          	j	80006a6c <devintr+0x40>
    80006af4:	00006517          	auipc	a0,0x6
    80006af8:	d3c50513          	addi	a0,a0,-708 # 8000c830 <tickslock>
    80006afc:	00001097          	auipc	ra,0x1
    80006b00:	320080e7          	jalr	800(ra) # 80007e1c <acquire>
    80006b04:	00005717          	auipc	a4,0x5
    80006b08:	bb070713          	addi	a4,a4,-1104 # 8000b6b4 <ticks>
    80006b0c:	00072783          	lw	a5,0(a4)
    80006b10:	00006517          	auipc	a0,0x6
    80006b14:	d2050513          	addi	a0,a0,-736 # 8000c830 <tickslock>
    80006b18:	0017879b          	addiw	a5,a5,1
    80006b1c:	00f72023          	sw	a5,0(a4)
    80006b20:	00001097          	auipc	ra,0x1
    80006b24:	3c8080e7          	jalr	968(ra) # 80007ee8 <release>
    80006b28:	f65ff06f          	j	80006a8c <devintr+0x60>
    80006b2c:	00001097          	auipc	ra,0x1
    80006b30:	f24080e7          	jalr	-220(ra) # 80007a50 <uartintr>
    80006b34:	fadff06f          	j	80006ae0 <devintr+0xb4>
	...

0000000080006b40 <kernelvec>:
    80006b40:	f0010113          	addi	sp,sp,-256
    80006b44:	00113023          	sd	ra,0(sp)
    80006b48:	00213423          	sd	sp,8(sp)
    80006b4c:	00313823          	sd	gp,16(sp)
    80006b50:	00413c23          	sd	tp,24(sp)
    80006b54:	02513023          	sd	t0,32(sp)
    80006b58:	02613423          	sd	t1,40(sp)
    80006b5c:	02713823          	sd	t2,48(sp)
    80006b60:	02813c23          	sd	s0,56(sp)
    80006b64:	04913023          	sd	s1,64(sp)
    80006b68:	04a13423          	sd	a0,72(sp)
    80006b6c:	04b13823          	sd	a1,80(sp)
    80006b70:	04c13c23          	sd	a2,88(sp)
    80006b74:	06d13023          	sd	a3,96(sp)
    80006b78:	06e13423          	sd	a4,104(sp)
    80006b7c:	06f13823          	sd	a5,112(sp)
    80006b80:	07013c23          	sd	a6,120(sp)
    80006b84:	09113023          	sd	a7,128(sp)
    80006b88:	09213423          	sd	s2,136(sp)
    80006b8c:	09313823          	sd	s3,144(sp)
    80006b90:	09413c23          	sd	s4,152(sp)
    80006b94:	0b513023          	sd	s5,160(sp)
    80006b98:	0b613423          	sd	s6,168(sp)
    80006b9c:	0b713823          	sd	s7,176(sp)
    80006ba0:	0b813c23          	sd	s8,184(sp)
    80006ba4:	0d913023          	sd	s9,192(sp)
    80006ba8:	0da13423          	sd	s10,200(sp)
    80006bac:	0db13823          	sd	s11,208(sp)
    80006bb0:	0dc13c23          	sd	t3,216(sp)
    80006bb4:	0fd13023          	sd	t4,224(sp)
    80006bb8:	0fe13423          	sd	t5,232(sp)
    80006bbc:	0ff13823          	sd	t6,240(sp)
    80006bc0:	ccdff0ef          	jal	ra,8000688c <kerneltrap>
    80006bc4:	00013083          	ld	ra,0(sp)
    80006bc8:	00813103          	ld	sp,8(sp)
    80006bcc:	01013183          	ld	gp,16(sp)
    80006bd0:	02013283          	ld	t0,32(sp)
    80006bd4:	02813303          	ld	t1,40(sp)
    80006bd8:	03013383          	ld	t2,48(sp)
    80006bdc:	03813403          	ld	s0,56(sp)
    80006be0:	04013483          	ld	s1,64(sp)
    80006be4:	04813503          	ld	a0,72(sp)
    80006be8:	05013583          	ld	a1,80(sp)
    80006bec:	05813603          	ld	a2,88(sp)
    80006bf0:	06013683          	ld	a3,96(sp)
    80006bf4:	06813703          	ld	a4,104(sp)
    80006bf8:	07013783          	ld	a5,112(sp)
    80006bfc:	07813803          	ld	a6,120(sp)
    80006c00:	08013883          	ld	a7,128(sp)
    80006c04:	08813903          	ld	s2,136(sp)
    80006c08:	09013983          	ld	s3,144(sp)
    80006c0c:	09813a03          	ld	s4,152(sp)
    80006c10:	0a013a83          	ld	s5,160(sp)
    80006c14:	0a813b03          	ld	s6,168(sp)
    80006c18:	0b013b83          	ld	s7,176(sp)
    80006c1c:	0b813c03          	ld	s8,184(sp)
    80006c20:	0c013c83          	ld	s9,192(sp)
    80006c24:	0c813d03          	ld	s10,200(sp)
    80006c28:	0d013d83          	ld	s11,208(sp)
    80006c2c:	0d813e03          	ld	t3,216(sp)
    80006c30:	0e013e83          	ld	t4,224(sp)
    80006c34:	0e813f03          	ld	t5,232(sp)
    80006c38:	0f013f83          	ld	t6,240(sp)
    80006c3c:	10010113          	addi	sp,sp,256
    80006c40:	10200073          	sret
    80006c44:	00000013          	nop
    80006c48:	00000013          	nop
    80006c4c:	00000013          	nop

0000000080006c50 <timervec>:
    80006c50:	34051573          	csrrw	a0,mscratch,a0
    80006c54:	00b53023          	sd	a1,0(a0)
    80006c58:	00c53423          	sd	a2,8(a0)
    80006c5c:	00d53823          	sd	a3,16(a0)
    80006c60:	01853583          	ld	a1,24(a0)
    80006c64:	02053603          	ld	a2,32(a0)
    80006c68:	0005b683          	ld	a3,0(a1)
    80006c6c:	00c686b3          	add	a3,a3,a2
    80006c70:	00d5b023          	sd	a3,0(a1)
    80006c74:	00200593          	li	a1,2
    80006c78:	14459073          	csrw	sip,a1
    80006c7c:	01053683          	ld	a3,16(a0)
    80006c80:	00853603          	ld	a2,8(a0)
    80006c84:	00053583          	ld	a1,0(a0)
    80006c88:	34051573          	csrrw	a0,mscratch,a0
    80006c8c:	30200073          	mret

0000000080006c90 <plicinit>:
    80006c90:	ff010113          	addi	sp,sp,-16
    80006c94:	00813423          	sd	s0,8(sp)
    80006c98:	01010413          	addi	s0,sp,16
    80006c9c:	00813403          	ld	s0,8(sp)
    80006ca0:	0c0007b7          	lui	a5,0xc000
    80006ca4:	00100713          	li	a4,1
    80006ca8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80006cac:	00e7a223          	sw	a4,4(a5)
    80006cb0:	01010113          	addi	sp,sp,16
    80006cb4:	00008067          	ret

0000000080006cb8 <plicinithart>:
    80006cb8:	ff010113          	addi	sp,sp,-16
    80006cbc:	00813023          	sd	s0,0(sp)
    80006cc0:	00113423          	sd	ra,8(sp)
    80006cc4:	01010413          	addi	s0,sp,16
    80006cc8:	00000097          	auipc	ra,0x0
    80006ccc:	a44080e7          	jalr	-1468(ra) # 8000670c <cpuid>
    80006cd0:	0085171b          	slliw	a4,a0,0x8
    80006cd4:	0c0027b7          	lui	a5,0xc002
    80006cd8:	00e787b3          	add	a5,a5,a4
    80006cdc:	40200713          	li	a4,1026
    80006ce0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006ce4:	00813083          	ld	ra,8(sp)
    80006ce8:	00013403          	ld	s0,0(sp)
    80006cec:	00d5151b          	slliw	a0,a0,0xd
    80006cf0:	0c2017b7          	lui	a5,0xc201
    80006cf4:	00a78533          	add	a0,a5,a0
    80006cf8:	00052023          	sw	zero,0(a0)
    80006cfc:	01010113          	addi	sp,sp,16
    80006d00:	00008067          	ret

0000000080006d04 <plic_claim>:
    80006d04:	ff010113          	addi	sp,sp,-16
    80006d08:	00813023          	sd	s0,0(sp)
    80006d0c:	00113423          	sd	ra,8(sp)
    80006d10:	01010413          	addi	s0,sp,16
    80006d14:	00000097          	auipc	ra,0x0
    80006d18:	9f8080e7          	jalr	-1544(ra) # 8000670c <cpuid>
    80006d1c:	00813083          	ld	ra,8(sp)
    80006d20:	00013403          	ld	s0,0(sp)
    80006d24:	00d5151b          	slliw	a0,a0,0xd
    80006d28:	0c2017b7          	lui	a5,0xc201
    80006d2c:	00a78533          	add	a0,a5,a0
    80006d30:	00452503          	lw	a0,4(a0)
    80006d34:	01010113          	addi	sp,sp,16
    80006d38:	00008067          	ret

0000000080006d3c <plic_complete>:
    80006d3c:	fe010113          	addi	sp,sp,-32
    80006d40:	00813823          	sd	s0,16(sp)
    80006d44:	00913423          	sd	s1,8(sp)
    80006d48:	00113c23          	sd	ra,24(sp)
    80006d4c:	02010413          	addi	s0,sp,32
    80006d50:	00050493          	mv	s1,a0
    80006d54:	00000097          	auipc	ra,0x0
    80006d58:	9b8080e7          	jalr	-1608(ra) # 8000670c <cpuid>
    80006d5c:	01813083          	ld	ra,24(sp)
    80006d60:	01013403          	ld	s0,16(sp)
    80006d64:	00d5179b          	slliw	a5,a0,0xd
    80006d68:	0c201737          	lui	a4,0xc201
    80006d6c:	00f707b3          	add	a5,a4,a5
    80006d70:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80006d74:	00813483          	ld	s1,8(sp)
    80006d78:	02010113          	addi	sp,sp,32
    80006d7c:	00008067          	ret

0000000080006d80 <consolewrite>:
    80006d80:	fb010113          	addi	sp,sp,-80
    80006d84:	04813023          	sd	s0,64(sp)
    80006d88:	04113423          	sd	ra,72(sp)
    80006d8c:	02913c23          	sd	s1,56(sp)
    80006d90:	03213823          	sd	s2,48(sp)
    80006d94:	03313423          	sd	s3,40(sp)
    80006d98:	03413023          	sd	s4,32(sp)
    80006d9c:	01513c23          	sd	s5,24(sp)
    80006da0:	05010413          	addi	s0,sp,80
    80006da4:	06c05c63          	blez	a2,80006e1c <consolewrite+0x9c>
    80006da8:	00060993          	mv	s3,a2
    80006dac:	00050a13          	mv	s4,a0
    80006db0:	00058493          	mv	s1,a1
    80006db4:	00000913          	li	s2,0
    80006db8:	fff00a93          	li	s5,-1
    80006dbc:	01c0006f          	j	80006dd8 <consolewrite+0x58>
    80006dc0:	fbf44503          	lbu	a0,-65(s0)
    80006dc4:	0019091b          	addiw	s2,s2,1
    80006dc8:	00148493          	addi	s1,s1,1
    80006dcc:	00001097          	auipc	ra,0x1
    80006dd0:	a9c080e7          	jalr	-1380(ra) # 80007868 <uartputc>
    80006dd4:	03298063          	beq	s3,s2,80006df4 <consolewrite+0x74>
    80006dd8:	00048613          	mv	a2,s1
    80006ddc:	00100693          	li	a3,1
    80006de0:	000a0593          	mv	a1,s4
    80006de4:	fbf40513          	addi	a0,s0,-65
    80006de8:	00000097          	auipc	ra,0x0
    80006dec:	9dc080e7          	jalr	-1572(ra) # 800067c4 <either_copyin>
    80006df0:	fd5518e3          	bne	a0,s5,80006dc0 <consolewrite+0x40>
    80006df4:	04813083          	ld	ra,72(sp)
    80006df8:	04013403          	ld	s0,64(sp)
    80006dfc:	03813483          	ld	s1,56(sp)
    80006e00:	02813983          	ld	s3,40(sp)
    80006e04:	02013a03          	ld	s4,32(sp)
    80006e08:	01813a83          	ld	s5,24(sp)
    80006e0c:	00090513          	mv	a0,s2
    80006e10:	03013903          	ld	s2,48(sp)
    80006e14:	05010113          	addi	sp,sp,80
    80006e18:	00008067          	ret
    80006e1c:	00000913          	li	s2,0
    80006e20:	fd5ff06f          	j	80006df4 <consolewrite+0x74>

0000000080006e24 <consoleread>:
    80006e24:	f9010113          	addi	sp,sp,-112
    80006e28:	06813023          	sd	s0,96(sp)
    80006e2c:	04913c23          	sd	s1,88(sp)
    80006e30:	05213823          	sd	s2,80(sp)
    80006e34:	05313423          	sd	s3,72(sp)
    80006e38:	05413023          	sd	s4,64(sp)
    80006e3c:	03513c23          	sd	s5,56(sp)
    80006e40:	03613823          	sd	s6,48(sp)
    80006e44:	03713423          	sd	s7,40(sp)
    80006e48:	03813023          	sd	s8,32(sp)
    80006e4c:	06113423          	sd	ra,104(sp)
    80006e50:	01913c23          	sd	s9,24(sp)
    80006e54:	07010413          	addi	s0,sp,112
    80006e58:	00060b93          	mv	s7,a2
    80006e5c:	00050913          	mv	s2,a0
    80006e60:	00058c13          	mv	s8,a1
    80006e64:	00060b1b          	sext.w	s6,a2
    80006e68:	00006497          	auipc	s1,0x6
    80006e6c:	9f048493          	addi	s1,s1,-1552 # 8000c858 <cons>
    80006e70:	00400993          	li	s3,4
    80006e74:	fff00a13          	li	s4,-1
    80006e78:	00a00a93          	li	s5,10
    80006e7c:	05705e63          	blez	s7,80006ed8 <consoleread+0xb4>
    80006e80:	09c4a703          	lw	a4,156(s1)
    80006e84:	0984a783          	lw	a5,152(s1)
    80006e88:	0007071b          	sext.w	a4,a4
    80006e8c:	08e78463          	beq	a5,a4,80006f14 <consoleread+0xf0>
    80006e90:	07f7f713          	andi	a4,a5,127
    80006e94:	00e48733          	add	a4,s1,a4
    80006e98:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80006e9c:	0017869b          	addiw	a3,a5,1
    80006ea0:	08d4ac23          	sw	a3,152(s1)
    80006ea4:	00070c9b          	sext.w	s9,a4
    80006ea8:	0b370663          	beq	a4,s3,80006f54 <consoleread+0x130>
    80006eac:	00100693          	li	a3,1
    80006eb0:	f9f40613          	addi	a2,s0,-97
    80006eb4:	000c0593          	mv	a1,s8
    80006eb8:	00090513          	mv	a0,s2
    80006ebc:	f8e40fa3          	sb	a4,-97(s0)
    80006ec0:	00000097          	auipc	ra,0x0
    80006ec4:	8b8080e7          	jalr	-1864(ra) # 80006778 <either_copyout>
    80006ec8:	01450863          	beq	a0,s4,80006ed8 <consoleread+0xb4>
    80006ecc:	001c0c13          	addi	s8,s8,1
    80006ed0:	fffb8b9b          	addiw	s7,s7,-1
    80006ed4:	fb5c94e3          	bne	s9,s5,80006e7c <consoleread+0x58>
    80006ed8:	000b851b          	sext.w	a0,s7
    80006edc:	06813083          	ld	ra,104(sp)
    80006ee0:	06013403          	ld	s0,96(sp)
    80006ee4:	05813483          	ld	s1,88(sp)
    80006ee8:	05013903          	ld	s2,80(sp)
    80006eec:	04813983          	ld	s3,72(sp)
    80006ef0:	04013a03          	ld	s4,64(sp)
    80006ef4:	03813a83          	ld	s5,56(sp)
    80006ef8:	02813b83          	ld	s7,40(sp)
    80006efc:	02013c03          	ld	s8,32(sp)
    80006f00:	01813c83          	ld	s9,24(sp)
    80006f04:	40ab053b          	subw	a0,s6,a0
    80006f08:	03013b03          	ld	s6,48(sp)
    80006f0c:	07010113          	addi	sp,sp,112
    80006f10:	00008067          	ret
    80006f14:	00001097          	auipc	ra,0x1
    80006f18:	1d8080e7          	jalr	472(ra) # 800080ec <push_on>
    80006f1c:	0984a703          	lw	a4,152(s1)
    80006f20:	09c4a783          	lw	a5,156(s1)
    80006f24:	0007879b          	sext.w	a5,a5
    80006f28:	fef70ce3          	beq	a4,a5,80006f20 <consoleread+0xfc>
    80006f2c:	00001097          	auipc	ra,0x1
    80006f30:	234080e7          	jalr	564(ra) # 80008160 <pop_on>
    80006f34:	0984a783          	lw	a5,152(s1)
    80006f38:	07f7f713          	andi	a4,a5,127
    80006f3c:	00e48733          	add	a4,s1,a4
    80006f40:	01874703          	lbu	a4,24(a4)
    80006f44:	0017869b          	addiw	a3,a5,1
    80006f48:	08d4ac23          	sw	a3,152(s1)
    80006f4c:	00070c9b          	sext.w	s9,a4
    80006f50:	f5371ee3          	bne	a4,s3,80006eac <consoleread+0x88>
    80006f54:	000b851b          	sext.w	a0,s7
    80006f58:	f96bf2e3          	bgeu	s7,s6,80006edc <consoleread+0xb8>
    80006f5c:	08f4ac23          	sw	a5,152(s1)
    80006f60:	f7dff06f          	j	80006edc <consoleread+0xb8>

0000000080006f64 <consputc>:
    80006f64:	10000793          	li	a5,256
    80006f68:	00f50663          	beq	a0,a5,80006f74 <consputc+0x10>
    80006f6c:	00001317          	auipc	t1,0x1
    80006f70:	9f430067          	jr	-1548(t1) # 80007960 <uartputc_sync>
    80006f74:	ff010113          	addi	sp,sp,-16
    80006f78:	00113423          	sd	ra,8(sp)
    80006f7c:	00813023          	sd	s0,0(sp)
    80006f80:	01010413          	addi	s0,sp,16
    80006f84:	00800513          	li	a0,8
    80006f88:	00001097          	auipc	ra,0x1
    80006f8c:	9d8080e7          	jalr	-1576(ra) # 80007960 <uartputc_sync>
    80006f90:	02000513          	li	a0,32
    80006f94:	00001097          	auipc	ra,0x1
    80006f98:	9cc080e7          	jalr	-1588(ra) # 80007960 <uartputc_sync>
    80006f9c:	00013403          	ld	s0,0(sp)
    80006fa0:	00813083          	ld	ra,8(sp)
    80006fa4:	00800513          	li	a0,8
    80006fa8:	01010113          	addi	sp,sp,16
    80006fac:	00001317          	auipc	t1,0x1
    80006fb0:	9b430067          	jr	-1612(t1) # 80007960 <uartputc_sync>

0000000080006fb4 <consoleintr>:
    80006fb4:	fe010113          	addi	sp,sp,-32
    80006fb8:	00813823          	sd	s0,16(sp)
    80006fbc:	00913423          	sd	s1,8(sp)
    80006fc0:	01213023          	sd	s2,0(sp)
    80006fc4:	00113c23          	sd	ra,24(sp)
    80006fc8:	02010413          	addi	s0,sp,32
    80006fcc:	00006917          	auipc	s2,0x6
    80006fd0:	88c90913          	addi	s2,s2,-1908 # 8000c858 <cons>
    80006fd4:	00050493          	mv	s1,a0
    80006fd8:	00090513          	mv	a0,s2
    80006fdc:	00001097          	auipc	ra,0x1
    80006fe0:	e40080e7          	jalr	-448(ra) # 80007e1c <acquire>
    80006fe4:	02048c63          	beqz	s1,8000701c <consoleintr+0x68>
    80006fe8:	0a092783          	lw	a5,160(s2)
    80006fec:	09892703          	lw	a4,152(s2)
    80006ff0:	07f00693          	li	a3,127
    80006ff4:	40e7873b          	subw	a4,a5,a4
    80006ff8:	02e6e263          	bltu	a3,a4,8000701c <consoleintr+0x68>
    80006ffc:	00d00713          	li	a4,13
    80007000:	04e48063          	beq	s1,a4,80007040 <consoleintr+0x8c>
    80007004:	07f7f713          	andi	a4,a5,127
    80007008:	00e90733          	add	a4,s2,a4
    8000700c:	0017879b          	addiw	a5,a5,1
    80007010:	0af92023          	sw	a5,160(s2)
    80007014:	00970c23          	sb	s1,24(a4)
    80007018:	08f92e23          	sw	a5,156(s2)
    8000701c:	01013403          	ld	s0,16(sp)
    80007020:	01813083          	ld	ra,24(sp)
    80007024:	00813483          	ld	s1,8(sp)
    80007028:	00013903          	ld	s2,0(sp)
    8000702c:	00006517          	auipc	a0,0x6
    80007030:	82c50513          	addi	a0,a0,-2004 # 8000c858 <cons>
    80007034:	02010113          	addi	sp,sp,32
    80007038:	00001317          	auipc	t1,0x1
    8000703c:	eb030067          	jr	-336(t1) # 80007ee8 <release>
    80007040:	00a00493          	li	s1,10
    80007044:	fc1ff06f          	j	80007004 <consoleintr+0x50>

0000000080007048 <consoleinit>:
    80007048:	fe010113          	addi	sp,sp,-32
    8000704c:	00113c23          	sd	ra,24(sp)
    80007050:	00813823          	sd	s0,16(sp)
    80007054:	00913423          	sd	s1,8(sp)
    80007058:	02010413          	addi	s0,sp,32
    8000705c:	00005497          	auipc	s1,0x5
    80007060:	7fc48493          	addi	s1,s1,2044 # 8000c858 <cons>
    80007064:	00048513          	mv	a0,s1
    80007068:	00002597          	auipc	a1,0x2
    8000706c:	67058593          	addi	a1,a1,1648 # 800096d8 <CONSOLE_STATUS+0x6c8>
    80007070:	00001097          	auipc	ra,0x1
    80007074:	d88080e7          	jalr	-632(ra) # 80007df8 <initlock>
    80007078:	00000097          	auipc	ra,0x0
    8000707c:	7ac080e7          	jalr	1964(ra) # 80007824 <uartinit>
    80007080:	01813083          	ld	ra,24(sp)
    80007084:	01013403          	ld	s0,16(sp)
    80007088:	00000797          	auipc	a5,0x0
    8000708c:	d9c78793          	addi	a5,a5,-612 # 80006e24 <consoleread>
    80007090:	0af4bc23          	sd	a5,184(s1)
    80007094:	00000797          	auipc	a5,0x0
    80007098:	cec78793          	addi	a5,a5,-788 # 80006d80 <consolewrite>
    8000709c:	0cf4b023          	sd	a5,192(s1)
    800070a0:	00813483          	ld	s1,8(sp)
    800070a4:	02010113          	addi	sp,sp,32
    800070a8:	00008067          	ret

00000000800070ac <console_read>:
    800070ac:	ff010113          	addi	sp,sp,-16
    800070b0:	00813423          	sd	s0,8(sp)
    800070b4:	01010413          	addi	s0,sp,16
    800070b8:	00813403          	ld	s0,8(sp)
    800070bc:	00006317          	auipc	t1,0x6
    800070c0:	85433303          	ld	t1,-1964(t1) # 8000c910 <devsw+0x10>
    800070c4:	01010113          	addi	sp,sp,16
    800070c8:	00030067          	jr	t1

00000000800070cc <console_write>:
    800070cc:	ff010113          	addi	sp,sp,-16
    800070d0:	00813423          	sd	s0,8(sp)
    800070d4:	01010413          	addi	s0,sp,16
    800070d8:	00813403          	ld	s0,8(sp)
    800070dc:	00006317          	auipc	t1,0x6
    800070e0:	83c33303          	ld	t1,-1988(t1) # 8000c918 <devsw+0x18>
    800070e4:	01010113          	addi	sp,sp,16
    800070e8:	00030067          	jr	t1

00000000800070ec <panic>:
    800070ec:	fe010113          	addi	sp,sp,-32
    800070f0:	00113c23          	sd	ra,24(sp)
    800070f4:	00813823          	sd	s0,16(sp)
    800070f8:	00913423          	sd	s1,8(sp)
    800070fc:	02010413          	addi	s0,sp,32
    80007100:	00050493          	mv	s1,a0
    80007104:	00002517          	auipc	a0,0x2
    80007108:	5dc50513          	addi	a0,a0,1500 # 800096e0 <CONSOLE_STATUS+0x6d0>
    8000710c:	00006797          	auipc	a5,0x6
    80007110:	8a07a623          	sw	zero,-1876(a5) # 8000c9b8 <pr+0x18>
    80007114:	00000097          	auipc	ra,0x0
    80007118:	034080e7          	jalr	52(ra) # 80007148 <__printf>
    8000711c:	00048513          	mv	a0,s1
    80007120:	00000097          	auipc	ra,0x0
    80007124:	028080e7          	jalr	40(ra) # 80007148 <__printf>
    80007128:	00002517          	auipc	a0,0x2
    8000712c:	34050513          	addi	a0,a0,832 # 80009468 <CONSOLE_STATUS+0x458>
    80007130:	00000097          	auipc	ra,0x0
    80007134:	018080e7          	jalr	24(ra) # 80007148 <__printf>
    80007138:	00100793          	li	a5,1
    8000713c:	00004717          	auipc	a4,0x4
    80007140:	56f72e23          	sw	a5,1404(a4) # 8000b6b8 <panicked>
    80007144:	0000006f          	j	80007144 <panic+0x58>

0000000080007148 <__printf>:
    80007148:	f3010113          	addi	sp,sp,-208
    8000714c:	08813023          	sd	s0,128(sp)
    80007150:	07313423          	sd	s3,104(sp)
    80007154:	09010413          	addi	s0,sp,144
    80007158:	05813023          	sd	s8,64(sp)
    8000715c:	08113423          	sd	ra,136(sp)
    80007160:	06913c23          	sd	s1,120(sp)
    80007164:	07213823          	sd	s2,112(sp)
    80007168:	07413023          	sd	s4,96(sp)
    8000716c:	05513c23          	sd	s5,88(sp)
    80007170:	05613823          	sd	s6,80(sp)
    80007174:	05713423          	sd	s7,72(sp)
    80007178:	03913c23          	sd	s9,56(sp)
    8000717c:	03a13823          	sd	s10,48(sp)
    80007180:	03b13423          	sd	s11,40(sp)
    80007184:	00006317          	auipc	t1,0x6
    80007188:	81c30313          	addi	t1,t1,-2020 # 8000c9a0 <pr>
    8000718c:	01832c03          	lw	s8,24(t1)
    80007190:	00b43423          	sd	a1,8(s0)
    80007194:	00c43823          	sd	a2,16(s0)
    80007198:	00d43c23          	sd	a3,24(s0)
    8000719c:	02e43023          	sd	a4,32(s0)
    800071a0:	02f43423          	sd	a5,40(s0)
    800071a4:	03043823          	sd	a6,48(s0)
    800071a8:	03143c23          	sd	a7,56(s0)
    800071ac:	00050993          	mv	s3,a0
    800071b0:	4a0c1663          	bnez	s8,8000765c <__printf+0x514>
    800071b4:	60098c63          	beqz	s3,800077cc <__printf+0x684>
    800071b8:	0009c503          	lbu	a0,0(s3)
    800071bc:	00840793          	addi	a5,s0,8
    800071c0:	f6f43c23          	sd	a5,-136(s0)
    800071c4:	00000493          	li	s1,0
    800071c8:	22050063          	beqz	a0,800073e8 <__printf+0x2a0>
    800071cc:	00002a37          	lui	s4,0x2
    800071d0:	00018ab7          	lui	s5,0x18
    800071d4:	000f4b37          	lui	s6,0xf4
    800071d8:	00989bb7          	lui	s7,0x989
    800071dc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800071e0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800071e4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800071e8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800071ec:	00148c9b          	addiw	s9,s1,1
    800071f0:	02500793          	li	a5,37
    800071f4:	01998933          	add	s2,s3,s9
    800071f8:	38f51263          	bne	a0,a5,8000757c <__printf+0x434>
    800071fc:	00094783          	lbu	a5,0(s2)
    80007200:	00078c9b          	sext.w	s9,a5
    80007204:	1e078263          	beqz	a5,800073e8 <__printf+0x2a0>
    80007208:	0024849b          	addiw	s1,s1,2
    8000720c:	07000713          	li	a4,112
    80007210:	00998933          	add	s2,s3,s1
    80007214:	38e78a63          	beq	a5,a4,800075a8 <__printf+0x460>
    80007218:	20f76863          	bltu	a4,a5,80007428 <__printf+0x2e0>
    8000721c:	42a78863          	beq	a5,a0,8000764c <__printf+0x504>
    80007220:	06400713          	li	a4,100
    80007224:	40e79663          	bne	a5,a4,80007630 <__printf+0x4e8>
    80007228:	f7843783          	ld	a5,-136(s0)
    8000722c:	0007a603          	lw	a2,0(a5)
    80007230:	00878793          	addi	a5,a5,8
    80007234:	f6f43c23          	sd	a5,-136(s0)
    80007238:	42064a63          	bltz	a2,8000766c <__printf+0x524>
    8000723c:	00a00713          	li	a4,10
    80007240:	02e677bb          	remuw	a5,a2,a4
    80007244:	00002d97          	auipc	s11,0x2
    80007248:	4c4d8d93          	addi	s11,s11,1220 # 80009708 <digits>
    8000724c:	00900593          	li	a1,9
    80007250:	0006051b          	sext.w	a0,a2
    80007254:	00000c93          	li	s9,0
    80007258:	02079793          	slli	a5,a5,0x20
    8000725c:	0207d793          	srli	a5,a5,0x20
    80007260:	00fd87b3          	add	a5,s11,a5
    80007264:	0007c783          	lbu	a5,0(a5)
    80007268:	02e656bb          	divuw	a3,a2,a4
    8000726c:	f8f40023          	sb	a5,-128(s0)
    80007270:	14c5d863          	bge	a1,a2,800073c0 <__printf+0x278>
    80007274:	06300593          	li	a1,99
    80007278:	00100c93          	li	s9,1
    8000727c:	02e6f7bb          	remuw	a5,a3,a4
    80007280:	02079793          	slli	a5,a5,0x20
    80007284:	0207d793          	srli	a5,a5,0x20
    80007288:	00fd87b3          	add	a5,s11,a5
    8000728c:	0007c783          	lbu	a5,0(a5)
    80007290:	02e6d73b          	divuw	a4,a3,a4
    80007294:	f8f400a3          	sb	a5,-127(s0)
    80007298:	12a5f463          	bgeu	a1,a0,800073c0 <__printf+0x278>
    8000729c:	00a00693          	li	a3,10
    800072a0:	00900593          	li	a1,9
    800072a4:	02d777bb          	remuw	a5,a4,a3
    800072a8:	02079793          	slli	a5,a5,0x20
    800072ac:	0207d793          	srli	a5,a5,0x20
    800072b0:	00fd87b3          	add	a5,s11,a5
    800072b4:	0007c503          	lbu	a0,0(a5)
    800072b8:	02d757bb          	divuw	a5,a4,a3
    800072bc:	f8a40123          	sb	a0,-126(s0)
    800072c0:	48e5f263          	bgeu	a1,a4,80007744 <__printf+0x5fc>
    800072c4:	06300513          	li	a0,99
    800072c8:	02d7f5bb          	remuw	a1,a5,a3
    800072cc:	02059593          	slli	a1,a1,0x20
    800072d0:	0205d593          	srli	a1,a1,0x20
    800072d4:	00bd85b3          	add	a1,s11,a1
    800072d8:	0005c583          	lbu	a1,0(a1)
    800072dc:	02d7d7bb          	divuw	a5,a5,a3
    800072e0:	f8b401a3          	sb	a1,-125(s0)
    800072e4:	48e57263          	bgeu	a0,a4,80007768 <__printf+0x620>
    800072e8:	3e700513          	li	a0,999
    800072ec:	02d7f5bb          	remuw	a1,a5,a3
    800072f0:	02059593          	slli	a1,a1,0x20
    800072f4:	0205d593          	srli	a1,a1,0x20
    800072f8:	00bd85b3          	add	a1,s11,a1
    800072fc:	0005c583          	lbu	a1,0(a1)
    80007300:	02d7d7bb          	divuw	a5,a5,a3
    80007304:	f8b40223          	sb	a1,-124(s0)
    80007308:	46e57663          	bgeu	a0,a4,80007774 <__printf+0x62c>
    8000730c:	02d7f5bb          	remuw	a1,a5,a3
    80007310:	02059593          	slli	a1,a1,0x20
    80007314:	0205d593          	srli	a1,a1,0x20
    80007318:	00bd85b3          	add	a1,s11,a1
    8000731c:	0005c583          	lbu	a1,0(a1)
    80007320:	02d7d7bb          	divuw	a5,a5,a3
    80007324:	f8b402a3          	sb	a1,-123(s0)
    80007328:	46ea7863          	bgeu	s4,a4,80007798 <__printf+0x650>
    8000732c:	02d7f5bb          	remuw	a1,a5,a3
    80007330:	02059593          	slli	a1,a1,0x20
    80007334:	0205d593          	srli	a1,a1,0x20
    80007338:	00bd85b3          	add	a1,s11,a1
    8000733c:	0005c583          	lbu	a1,0(a1)
    80007340:	02d7d7bb          	divuw	a5,a5,a3
    80007344:	f8b40323          	sb	a1,-122(s0)
    80007348:	3eeaf863          	bgeu	s5,a4,80007738 <__printf+0x5f0>
    8000734c:	02d7f5bb          	remuw	a1,a5,a3
    80007350:	02059593          	slli	a1,a1,0x20
    80007354:	0205d593          	srli	a1,a1,0x20
    80007358:	00bd85b3          	add	a1,s11,a1
    8000735c:	0005c583          	lbu	a1,0(a1)
    80007360:	02d7d7bb          	divuw	a5,a5,a3
    80007364:	f8b403a3          	sb	a1,-121(s0)
    80007368:	42eb7e63          	bgeu	s6,a4,800077a4 <__printf+0x65c>
    8000736c:	02d7f5bb          	remuw	a1,a5,a3
    80007370:	02059593          	slli	a1,a1,0x20
    80007374:	0205d593          	srli	a1,a1,0x20
    80007378:	00bd85b3          	add	a1,s11,a1
    8000737c:	0005c583          	lbu	a1,0(a1)
    80007380:	02d7d7bb          	divuw	a5,a5,a3
    80007384:	f8b40423          	sb	a1,-120(s0)
    80007388:	42ebfc63          	bgeu	s7,a4,800077c0 <__printf+0x678>
    8000738c:	02079793          	slli	a5,a5,0x20
    80007390:	0207d793          	srli	a5,a5,0x20
    80007394:	00fd8db3          	add	s11,s11,a5
    80007398:	000dc703          	lbu	a4,0(s11)
    8000739c:	00a00793          	li	a5,10
    800073a0:	00900c93          	li	s9,9
    800073a4:	f8e404a3          	sb	a4,-119(s0)
    800073a8:	00065c63          	bgez	a2,800073c0 <__printf+0x278>
    800073ac:	f9040713          	addi	a4,s0,-112
    800073b0:	00f70733          	add	a4,a4,a5
    800073b4:	02d00693          	li	a3,45
    800073b8:	fed70823          	sb	a3,-16(a4)
    800073bc:	00078c93          	mv	s9,a5
    800073c0:	f8040793          	addi	a5,s0,-128
    800073c4:	01978cb3          	add	s9,a5,s9
    800073c8:	f7f40d13          	addi	s10,s0,-129
    800073cc:	000cc503          	lbu	a0,0(s9)
    800073d0:	fffc8c93          	addi	s9,s9,-1
    800073d4:	00000097          	auipc	ra,0x0
    800073d8:	b90080e7          	jalr	-1136(ra) # 80006f64 <consputc>
    800073dc:	ffac98e3          	bne	s9,s10,800073cc <__printf+0x284>
    800073e0:	00094503          	lbu	a0,0(s2)
    800073e4:	e00514e3          	bnez	a0,800071ec <__printf+0xa4>
    800073e8:	1a0c1663          	bnez	s8,80007594 <__printf+0x44c>
    800073ec:	08813083          	ld	ra,136(sp)
    800073f0:	08013403          	ld	s0,128(sp)
    800073f4:	07813483          	ld	s1,120(sp)
    800073f8:	07013903          	ld	s2,112(sp)
    800073fc:	06813983          	ld	s3,104(sp)
    80007400:	06013a03          	ld	s4,96(sp)
    80007404:	05813a83          	ld	s5,88(sp)
    80007408:	05013b03          	ld	s6,80(sp)
    8000740c:	04813b83          	ld	s7,72(sp)
    80007410:	04013c03          	ld	s8,64(sp)
    80007414:	03813c83          	ld	s9,56(sp)
    80007418:	03013d03          	ld	s10,48(sp)
    8000741c:	02813d83          	ld	s11,40(sp)
    80007420:	0d010113          	addi	sp,sp,208
    80007424:	00008067          	ret
    80007428:	07300713          	li	a4,115
    8000742c:	1ce78a63          	beq	a5,a4,80007600 <__printf+0x4b8>
    80007430:	07800713          	li	a4,120
    80007434:	1ee79e63          	bne	a5,a4,80007630 <__printf+0x4e8>
    80007438:	f7843783          	ld	a5,-136(s0)
    8000743c:	0007a703          	lw	a4,0(a5)
    80007440:	00878793          	addi	a5,a5,8
    80007444:	f6f43c23          	sd	a5,-136(s0)
    80007448:	28074263          	bltz	a4,800076cc <__printf+0x584>
    8000744c:	00002d97          	auipc	s11,0x2
    80007450:	2bcd8d93          	addi	s11,s11,700 # 80009708 <digits>
    80007454:	00f77793          	andi	a5,a4,15
    80007458:	00fd87b3          	add	a5,s11,a5
    8000745c:	0007c683          	lbu	a3,0(a5)
    80007460:	00f00613          	li	a2,15
    80007464:	0007079b          	sext.w	a5,a4
    80007468:	f8d40023          	sb	a3,-128(s0)
    8000746c:	0047559b          	srliw	a1,a4,0x4
    80007470:	0047569b          	srliw	a3,a4,0x4
    80007474:	00000c93          	li	s9,0
    80007478:	0ee65063          	bge	a2,a4,80007558 <__printf+0x410>
    8000747c:	00f6f693          	andi	a3,a3,15
    80007480:	00dd86b3          	add	a3,s11,a3
    80007484:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80007488:	0087d79b          	srliw	a5,a5,0x8
    8000748c:	00100c93          	li	s9,1
    80007490:	f8d400a3          	sb	a3,-127(s0)
    80007494:	0cb67263          	bgeu	a2,a1,80007558 <__printf+0x410>
    80007498:	00f7f693          	andi	a3,a5,15
    8000749c:	00dd86b3          	add	a3,s11,a3
    800074a0:	0006c583          	lbu	a1,0(a3)
    800074a4:	00f00613          	li	a2,15
    800074a8:	0047d69b          	srliw	a3,a5,0x4
    800074ac:	f8b40123          	sb	a1,-126(s0)
    800074b0:	0047d593          	srli	a1,a5,0x4
    800074b4:	28f67e63          	bgeu	a2,a5,80007750 <__printf+0x608>
    800074b8:	00f6f693          	andi	a3,a3,15
    800074bc:	00dd86b3          	add	a3,s11,a3
    800074c0:	0006c503          	lbu	a0,0(a3)
    800074c4:	0087d813          	srli	a6,a5,0x8
    800074c8:	0087d69b          	srliw	a3,a5,0x8
    800074cc:	f8a401a3          	sb	a0,-125(s0)
    800074d0:	28b67663          	bgeu	a2,a1,8000775c <__printf+0x614>
    800074d4:	00f6f693          	andi	a3,a3,15
    800074d8:	00dd86b3          	add	a3,s11,a3
    800074dc:	0006c583          	lbu	a1,0(a3)
    800074e0:	00c7d513          	srli	a0,a5,0xc
    800074e4:	00c7d69b          	srliw	a3,a5,0xc
    800074e8:	f8b40223          	sb	a1,-124(s0)
    800074ec:	29067a63          	bgeu	a2,a6,80007780 <__printf+0x638>
    800074f0:	00f6f693          	andi	a3,a3,15
    800074f4:	00dd86b3          	add	a3,s11,a3
    800074f8:	0006c583          	lbu	a1,0(a3)
    800074fc:	0107d813          	srli	a6,a5,0x10
    80007500:	0107d69b          	srliw	a3,a5,0x10
    80007504:	f8b402a3          	sb	a1,-123(s0)
    80007508:	28a67263          	bgeu	a2,a0,8000778c <__printf+0x644>
    8000750c:	00f6f693          	andi	a3,a3,15
    80007510:	00dd86b3          	add	a3,s11,a3
    80007514:	0006c683          	lbu	a3,0(a3)
    80007518:	0147d79b          	srliw	a5,a5,0x14
    8000751c:	f8d40323          	sb	a3,-122(s0)
    80007520:	21067663          	bgeu	a2,a6,8000772c <__printf+0x5e4>
    80007524:	02079793          	slli	a5,a5,0x20
    80007528:	0207d793          	srli	a5,a5,0x20
    8000752c:	00fd8db3          	add	s11,s11,a5
    80007530:	000dc683          	lbu	a3,0(s11)
    80007534:	00800793          	li	a5,8
    80007538:	00700c93          	li	s9,7
    8000753c:	f8d403a3          	sb	a3,-121(s0)
    80007540:	00075c63          	bgez	a4,80007558 <__printf+0x410>
    80007544:	f9040713          	addi	a4,s0,-112
    80007548:	00f70733          	add	a4,a4,a5
    8000754c:	02d00693          	li	a3,45
    80007550:	fed70823          	sb	a3,-16(a4)
    80007554:	00078c93          	mv	s9,a5
    80007558:	f8040793          	addi	a5,s0,-128
    8000755c:	01978cb3          	add	s9,a5,s9
    80007560:	f7f40d13          	addi	s10,s0,-129
    80007564:	000cc503          	lbu	a0,0(s9)
    80007568:	fffc8c93          	addi	s9,s9,-1
    8000756c:	00000097          	auipc	ra,0x0
    80007570:	9f8080e7          	jalr	-1544(ra) # 80006f64 <consputc>
    80007574:	ff9d18e3          	bne	s10,s9,80007564 <__printf+0x41c>
    80007578:	0100006f          	j	80007588 <__printf+0x440>
    8000757c:	00000097          	auipc	ra,0x0
    80007580:	9e8080e7          	jalr	-1560(ra) # 80006f64 <consputc>
    80007584:	000c8493          	mv	s1,s9
    80007588:	00094503          	lbu	a0,0(s2)
    8000758c:	c60510e3          	bnez	a0,800071ec <__printf+0xa4>
    80007590:	e40c0ee3          	beqz	s8,800073ec <__printf+0x2a4>
    80007594:	00005517          	auipc	a0,0x5
    80007598:	40c50513          	addi	a0,a0,1036 # 8000c9a0 <pr>
    8000759c:	00001097          	auipc	ra,0x1
    800075a0:	94c080e7          	jalr	-1716(ra) # 80007ee8 <release>
    800075a4:	e49ff06f          	j	800073ec <__printf+0x2a4>
    800075a8:	f7843783          	ld	a5,-136(s0)
    800075ac:	03000513          	li	a0,48
    800075b0:	01000d13          	li	s10,16
    800075b4:	00878713          	addi	a4,a5,8
    800075b8:	0007bc83          	ld	s9,0(a5)
    800075bc:	f6e43c23          	sd	a4,-136(s0)
    800075c0:	00000097          	auipc	ra,0x0
    800075c4:	9a4080e7          	jalr	-1628(ra) # 80006f64 <consputc>
    800075c8:	07800513          	li	a0,120
    800075cc:	00000097          	auipc	ra,0x0
    800075d0:	998080e7          	jalr	-1640(ra) # 80006f64 <consputc>
    800075d4:	00002d97          	auipc	s11,0x2
    800075d8:	134d8d93          	addi	s11,s11,308 # 80009708 <digits>
    800075dc:	03ccd793          	srli	a5,s9,0x3c
    800075e0:	00fd87b3          	add	a5,s11,a5
    800075e4:	0007c503          	lbu	a0,0(a5)
    800075e8:	fffd0d1b          	addiw	s10,s10,-1
    800075ec:	004c9c93          	slli	s9,s9,0x4
    800075f0:	00000097          	auipc	ra,0x0
    800075f4:	974080e7          	jalr	-1676(ra) # 80006f64 <consputc>
    800075f8:	fe0d12e3          	bnez	s10,800075dc <__printf+0x494>
    800075fc:	f8dff06f          	j	80007588 <__printf+0x440>
    80007600:	f7843783          	ld	a5,-136(s0)
    80007604:	0007bc83          	ld	s9,0(a5)
    80007608:	00878793          	addi	a5,a5,8
    8000760c:	f6f43c23          	sd	a5,-136(s0)
    80007610:	000c9a63          	bnez	s9,80007624 <__printf+0x4dc>
    80007614:	1080006f          	j	8000771c <__printf+0x5d4>
    80007618:	001c8c93          	addi	s9,s9,1
    8000761c:	00000097          	auipc	ra,0x0
    80007620:	948080e7          	jalr	-1720(ra) # 80006f64 <consputc>
    80007624:	000cc503          	lbu	a0,0(s9)
    80007628:	fe0518e3          	bnez	a0,80007618 <__printf+0x4d0>
    8000762c:	f5dff06f          	j	80007588 <__printf+0x440>
    80007630:	02500513          	li	a0,37
    80007634:	00000097          	auipc	ra,0x0
    80007638:	930080e7          	jalr	-1744(ra) # 80006f64 <consputc>
    8000763c:	000c8513          	mv	a0,s9
    80007640:	00000097          	auipc	ra,0x0
    80007644:	924080e7          	jalr	-1756(ra) # 80006f64 <consputc>
    80007648:	f41ff06f          	j	80007588 <__printf+0x440>
    8000764c:	02500513          	li	a0,37
    80007650:	00000097          	auipc	ra,0x0
    80007654:	914080e7          	jalr	-1772(ra) # 80006f64 <consputc>
    80007658:	f31ff06f          	j	80007588 <__printf+0x440>
    8000765c:	00030513          	mv	a0,t1
    80007660:	00000097          	auipc	ra,0x0
    80007664:	7bc080e7          	jalr	1980(ra) # 80007e1c <acquire>
    80007668:	b4dff06f          	j	800071b4 <__printf+0x6c>
    8000766c:	40c0053b          	negw	a0,a2
    80007670:	00a00713          	li	a4,10
    80007674:	02e576bb          	remuw	a3,a0,a4
    80007678:	00002d97          	auipc	s11,0x2
    8000767c:	090d8d93          	addi	s11,s11,144 # 80009708 <digits>
    80007680:	ff700593          	li	a1,-9
    80007684:	02069693          	slli	a3,a3,0x20
    80007688:	0206d693          	srli	a3,a3,0x20
    8000768c:	00dd86b3          	add	a3,s11,a3
    80007690:	0006c683          	lbu	a3,0(a3)
    80007694:	02e557bb          	divuw	a5,a0,a4
    80007698:	f8d40023          	sb	a3,-128(s0)
    8000769c:	10b65e63          	bge	a2,a1,800077b8 <__printf+0x670>
    800076a0:	06300593          	li	a1,99
    800076a4:	02e7f6bb          	remuw	a3,a5,a4
    800076a8:	02069693          	slli	a3,a3,0x20
    800076ac:	0206d693          	srli	a3,a3,0x20
    800076b0:	00dd86b3          	add	a3,s11,a3
    800076b4:	0006c683          	lbu	a3,0(a3)
    800076b8:	02e7d73b          	divuw	a4,a5,a4
    800076bc:	00200793          	li	a5,2
    800076c0:	f8d400a3          	sb	a3,-127(s0)
    800076c4:	bca5ece3          	bltu	a1,a0,8000729c <__printf+0x154>
    800076c8:	ce5ff06f          	j	800073ac <__printf+0x264>
    800076cc:	40e007bb          	negw	a5,a4
    800076d0:	00002d97          	auipc	s11,0x2
    800076d4:	038d8d93          	addi	s11,s11,56 # 80009708 <digits>
    800076d8:	00f7f693          	andi	a3,a5,15
    800076dc:	00dd86b3          	add	a3,s11,a3
    800076e0:	0006c583          	lbu	a1,0(a3)
    800076e4:	ff100613          	li	a2,-15
    800076e8:	0047d69b          	srliw	a3,a5,0x4
    800076ec:	f8b40023          	sb	a1,-128(s0)
    800076f0:	0047d59b          	srliw	a1,a5,0x4
    800076f4:	0ac75e63          	bge	a4,a2,800077b0 <__printf+0x668>
    800076f8:	00f6f693          	andi	a3,a3,15
    800076fc:	00dd86b3          	add	a3,s11,a3
    80007700:	0006c603          	lbu	a2,0(a3)
    80007704:	00f00693          	li	a3,15
    80007708:	0087d79b          	srliw	a5,a5,0x8
    8000770c:	f8c400a3          	sb	a2,-127(s0)
    80007710:	d8b6e4e3          	bltu	a3,a1,80007498 <__printf+0x350>
    80007714:	00200793          	li	a5,2
    80007718:	e2dff06f          	j	80007544 <__printf+0x3fc>
    8000771c:	00002c97          	auipc	s9,0x2
    80007720:	fccc8c93          	addi	s9,s9,-52 # 800096e8 <CONSOLE_STATUS+0x6d8>
    80007724:	02800513          	li	a0,40
    80007728:	ef1ff06f          	j	80007618 <__printf+0x4d0>
    8000772c:	00700793          	li	a5,7
    80007730:	00600c93          	li	s9,6
    80007734:	e0dff06f          	j	80007540 <__printf+0x3f8>
    80007738:	00700793          	li	a5,7
    8000773c:	00600c93          	li	s9,6
    80007740:	c69ff06f          	j	800073a8 <__printf+0x260>
    80007744:	00300793          	li	a5,3
    80007748:	00200c93          	li	s9,2
    8000774c:	c5dff06f          	j	800073a8 <__printf+0x260>
    80007750:	00300793          	li	a5,3
    80007754:	00200c93          	li	s9,2
    80007758:	de9ff06f          	j	80007540 <__printf+0x3f8>
    8000775c:	00400793          	li	a5,4
    80007760:	00300c93          	li	s9,3
    80007764:	dddff06f          	j	80007540 <__printf+0x3f8>
    80007768:	00400793          	li	a5,4
    8000776c:	00300c93          	li	s9,3
    80007770:	c39ff06f          	j	800073a8 <__printf+0x260>
    80007774:	00500793          	li	a5,5
    80007778:	00400c93          	li	s9,4
    8000777c:	c2dff06f          	j	800073a8 <__printf+0x260>
    80007780:	00500793          	li	a5,5
    80007784:	00400c93          	li	s9,4
    80007788:	db9ff06f          	j	80007540 <__printf+0x3f8>
    8000778c:	00600793          	li	a5,6
    80007790:	00500c93          	li	s9,5
    80007794:	dadff06f          	j	80007540 <__printf+0x3f8>
    80007798:	00600793          	li	a5,6
    8000779c:	00500c93          	li	s9,5
    800077a0:	c09ff06f          	j	800073a8 <__printf+0x260>
    800077a4:	00800793          	li	a5,8
    800077a8:	00700c93          	li	s9,7
    800077ac:	bfdff06f          	j	800073a8 <__printf+0x260>
    800077b0:	00100793          	li	a5,1
    800077b4:	d91ff06f          	j	80007544 <__printf+0x3fc>
    800077b8:	00100793          	li	a5,1
    800077bc:	bf1ff06f          	j	800073ac <__printf+0x264>
    800077c0:	00900793          	li	a5,9
    800077c4:	00800c93          	li	s9,8
    800077c8:	be1ff06f          	j	800073a8 <__printf+0x260>
    800077cc:	00002517          	auipc	a0,0x2
    800077d0:	f2450513          	addi	a0,a0,-220 # 800096f0 <CONSOLE_STATUS+0x6e0>
    800077d4:	00000097          	auipc	ra,0x0
    800077d8:	918080e7          	jalr	-1768(ra) # 800070ec <panic>

00000000800077dc <printfinit>:
    800077dc:	fe010113          	addi	sp,sp,-32
    800077e0:	00813823          	sd	s0,16(sp)
    800077e4:	00913423          	sd	s1,8(sp)
    800077e8:	00113c23          	sd	ra,24(sp)
    800077ec:	02010413          	addi	s0,sp,32
    800077f0:	00005497          	auipc	s1,0x5
    800077f4:	1b048493          	addi	s1,s1,432 # 8000c9a0 <pr>
    800077f8:	00048513          	mv	a0,s1
    800077fc:	00002597          	auipc	a1,0x2
    80007800:	f0458593          	addi	a1,a1,-252 # 80009700 <CONSOLE_STATUS+0x6f0>
    80007804:	00000097          	auipc	ra,0x0
    80007808:	5f4080e7          	jalr	1524(ra) # 80007df8 <initlock>
    8000780c:	01813083          	ld	ra,24(sp)
    80007810:	01013403          	ld	s0,16(sp)
    80007814:	0004ac23          	sw	zero,24(s1)
    80007818:	00813483          	ld	s1,8(sp)
    8000781c:	02010113          	addi	sp,sp,32
    80007820:	00008067          	ret

0000000080007824 <uartinit>:
    80007824:	ff010113          	addi	sp,sp,-16
    80007828:	00813423          	sd	s0,8(sp)
    8000782c:	01010413          	addi	s0,sp,16
    80007830:	100007b7          	lui	a5,0x10000
    80007834:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80007838:	f8000713          	li	a4,-128
    8000783c:	00e781a3          	sb	a4,3(a5)
    80007840:	00300713          	li	a4,3
    80007844:	00e78023          	sb	a4,0(a5)
    80007848:	000780a3          	sb	zero,1(a5)
    8000784c:	00e781a3          	sb	a4,3(a5)
    80007850:	00700693          	li	a3,7
    80007854:	00d78123          	sb	a3,2(a5)
    80007858:	00e780a3          	sb	a4,1(a5)
    8000785c:	00813403          	ld	s0,8(sp)
    80007860:	01010113          	addi	sp,sp,16
    80007864:	00008067          	ret

0000000080007868 <uartputc>:
    80007868:	00004797          	auipc	a5,0x4
    8000786c:	e507a783          	lw	a5,-432(a5) # 8000b6b8 <panicked>
    80007870:	00078463          	beqz	a5,80007878 <uartputc+0x10>
    80007874:	0000006f          	j	80007874 <uartputc+0xc>
    80007878:	fd010113          	addi	sp,sp,-48
    8000787c:	02813023          	sd	s0,32(sp)
    80007880:	00913c23          	sd	s1,24(sp)
    80007884:	01213823          	sd	s2,16(sp)
    80007888:	01313423          	sd	s3,8(sp)
    8000788c:	02113423          	sd	ra,40(sp)
    80007890:	03010413          	addi	s0,sp,48
    80007894:	00004917          	auipc	s2,0x4
    80007898:	e2c90913          	addi	s2,s2,-468 # 8000b6c0 <uart_tx_r>
    8000789c:	00093783          	ld	a5,0(s2)
    800078a0:	00004497          	auipc	s1,0x4
    800078a4:	e2848493          	addi	s1,s1,-472 # 8000b6c8 <uart_tx_w>
    800078a8:	0004b703          	ld	a4,0(s1)
    800078ac:	02078693          	addi	a3,a5,32
    800078b0:	00050993          	mv	s3,a0
    800078b4:	02e69c63          	bne	a3,a4,800078ec <uartputc+0x84>
    800078b8:	00001097          	auipc	ra,0x1
    800078bc:	834080e7          	jalr	-1996(ra) # 800080ec <push_on>
    800078c0:	00093783          	ld	a5,0(s2)
    800078c4:	0004b703          	ld	a4,0(s1)
    800078c8:	02078793          	addi	a5,a5,32
    800078cc:	00e79463          	bne	a5,a4,800078d4 <uartputc+0x6c>
    800078d0:	0000006f          	j	800078d0 <uartputc+0x68>
    800078d4:	00001097          	auipc	ra,0x1
    800078d8:	88c080e7          	jalr	-1908(ra) # 80008160 <pop_on>
    800078dc:	00093783          	ld	a5,0(s2)
    800078e0:	0004b703          	ld	a4,0(s1)
    800078e4:	02078693          	addi	a3,a5,32
    800078e8:	fce688e3          	beq	a3,a4,800078b8 <uartputc+0x50>
    800078ec:	01f77693          	andi	a3,a4,31
    800078f0:	00005597          	auipc	a1,0x5
    800078f4:	0d058593          	addi	a1,a1,208 # 8000c9c0 <uart_tx_buf>
    800078f8:	00d586b3          	add	a3,a1,a3
    800078fc:	00170713          	addi	a4,a4,1
    80007900:	01368023          	sb	s3,0(a3)
    80007904:	00e4b023          	sd	a4,0(s1)
    80007908:	10000637          	lui	a2,0x10000
    8000790c:	02f71063          	bne	a4,a5,8000792c <uartputc+0xc4>
    80007910:	0340006f          	j	80007944 <uartputc+0xdc>
    80007914:	00074703          	lbu	a4,0(a4)
    80007918:	00f93023          	sd	a5,0(s2)
    8000791c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80007920:	00093783          	ld	a5,0(s2)
    80007924:	0004b703          	ld	a4,0(s1)
    80007928:	00f70e63          	beq	a4,a5,80007944 <uartputc+0xdc>
    8000792c:	00564683          	lbu	a3,5(a2)
    80007930:	01f7f713          	andi	a4,a5,31
    80007934:	00e58733          	add	a4,a1,a4
    80007938:	0206f693          	andi	a3,a3,32
    8000793c:	00178793          	addi	a5,a5,1
    80007940:	fc069ae3          	bnez	a3,80007914 <uartputc+0xac>
    80007944:	02813083          	ld	ra,40(sp)
    80007948:	02013403          	ld	s0,32(sp)
    8000794c:	01813483          	ld	s1,24(sp)
    80007950:	01013903          	ld	s2,16(sp)
    80007954:	00813983          	ld	s3,8(sp)
    80007958:	03010113          	addi	sp,sp,48
    8000795c:	00008067          	ret

0000000080007960 <uartputc_sync>:
    80007960:	ff010113          	addi	sp,sp,-16
    80007964:	00813423          	sd	s0,8(sp)
    80007968:	01010413          	addi	s0,sp,16
    8000796c:	00004717          	auipc	a4,0x4
    80007970:	d4c72703          	lw	a4,-692(a4) # 8000b6b8 <panicked>
    80007974:	02071663          	bnez	a4,800079a0 <uartputc_sync+0x40>
    80007978:	00050793          	mv	a5,a0
    8000797c:	100006b7          	lui	a3,0x10000
    80007980:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007984:	02077713          	andi	a4,a4,32
    80007988:	fe070ce3          	beqz	a4,80007980 <uartputc_sync+0x20>
    8000798c:	0ff7f793          	andi	a5,a5,255
    80007990:	00f68023          	sb	a5,0(a3)
    80007994:	00813403          	ld	s0,8(sp)
    80007998:	01010113          	addi	sp,sp,16
    8000799c:	00008067          	ret
    800079a0:	0000006f          	j	800079a0 <uartputc_sync+0x40>

00000000800079a4 <uartstart>:
    800079a4:	ff010113          	addi	sp,sp,-16
    800079a8:	00813423          	sd	s0,8(sp)
    800079ac:	01010413          	addi	s0,sp,16
    800079b0:	00004617          	auipc	a2,0x4
    800079b4:	d1060613          	addi	a2,a2,-752 # 8000b6c0 <uart_tx_r>
    800079b8:	00004517          	auipc	a0,0x4
    800079bc:	d1050513          	addi	a0,a0,-752 # 8000b6c8 <uart_tx_w>
    800079c0:	00063783          	ld	a5,0(a2)
    800079c4:	00053703          	ld	a4,0(a0)
    800079c8:	04f70263          	beq	a4,a5,80007a0c <uartstart+0x68>
    800079cc:	100005b7          	lui	a1,0x10000
    800079d0:	00005817          	auipc	a6,0x5
    800079d4:	ff080813          	addi	a6,a6,-16 # 8000c9c0 <uart_tx_buf>
    800079d8:	01c0006f          	j	800079f4 <uartstart+0x50>
    800079dc:	0006c703          	lbu	a4,0(a3)
    800079e0:	00f63023          	sd	a5,0(a2)
    800079e4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800079e8:	00063783          	ld	a5,0(a2)
    800079ec:	00053703          	ld	a4,0(a0)
    800079f0:	00f70e63          	beq	a4,a5,80007a0c <uartstart+0x68>
    800079f4:	01f7f713          	andi	a4,a5,31
    800079f8:	00e806b3          	add	a3,a6,a4
    800079fc:	0055c703          	lbu	a4,5(a1)
    80007a00:	00178793          	addi	a5,a5,1
    80007a04:	02077713          	andi	a4,a4,32
    80007a08:	fc071ae3          	bnez	a4,800079dc <uartstart+0x38>
    80007a0c:	00813403          	ld	s0,8(sp)
    80007a10:	01010113          	addi	sp,sp,16
    80007a14:	00008067          	ret

0000000080007a18 <uartgetc>:
    80007a18:	ff010113          	addi	sp,sp,-16
    80007a1c:	00813423          	sd	s0,8(sp)
    80007a20:	01010413          	addi	s0,sp,16
    80007a24:	10000737          	lui	a4,0x10000
    80007a28:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80007a2c:	0017f793          	andi	a5,a5,1
    80007a30:	00078c63          	beqz	a5,80007a48 <uartgetc+0x30>
    80007a34:	00074503          	lbu	a0,0(a4)
    80007a38:	0ff57513          	andi	a0,a0,255
    80007a3c:	00813403          	ld	s0,8(sp)
    80007a40:	01010113          	addi	sp,sp,16
    80007a44:	00008067          	ret
    80007a48:	fff00513          	li	a0,-1
    80007a4c:	ff1ff06f          	j	80007a3c <uartgetc+0x24>

0000000080007a50 <uartintr>:
    80007a50:	100007b7          	lui	a5,0x10000
    80007a54:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80007a58:	0017f793          	andi	a5,a5,1
    80007a5c:	0a078463          	beqz	a5,80007b04 <uartintr+0xb4>
    80007a60:	fe010113          	addi	sp,sp,-32
    80007a64:	00813823          	sd	s0,16(sp)
    80007a68:	00913423          	sd	s1,8(sp)
    80007a6c:	00113c23          	sd	ra,24(sp)
    80007a70:	02010413          	addi	s0,sp,32
    80007a74:	100004b7          	lui	s1,0x10000
    80007a78:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80007a7c:	0ff57513          	andi	a0,a0,255
    80007a80:	fffff097          	auipc	ra,0xfffff
    80007a84:	534080e7          	jalr	1332(ra) # 80006fb4 <consoleintr>
    80007a88:	0054c783          	lbu	a5,5(s1)
    80007a8c:	0017f793          	andi	a5,a5,1
    80007a90:	fe0794e3          	bnez	a5,80007a78 <uartintr+0x28>
    80007a94:	00004617          	auipc	a2,0x4
    80007a98:	c2c60613          	addi	a2,a2,-980 # 8000b6c0 <uart_tx_r>
    80007a9c:	00004517          	auipc	a0,0x4
    80007aa0:	c2c50513          	addi	a0,a0,-980 # 8000b6c8 <uart_tx_w>
    80007aa4:	00063783          	ld	a5,0(a2)
    80007aa8:	00053703          	ld	a4,0(a0)
    80007aac:	04f70263          	beq	a4,a5,80007af0 <uartintr+0xa0>
    80007ab0:	100005b7          	lui	a1,0x10000
    80007ab4:	00005817          	auipc	a6,0x5
    80007ab8:	f0c80813          	addi	a6,a6,-244 # 8000c9c0 <uart_tx_buf>
    80007abc:	01c0006f          	j	80007ad8 <uartintr+0x88>
    80007ac0:	0006c703          	lbu	a4,0(a3)
    80007ac4:	00f63023          	sd	a5,0(a2)
    80007ac8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007acc:	00063783          	ld	a5,0(a2)
    80007ad0:	00053703          	ld	a4,0(a0)
    80007ad4:	00f70e63          	beq	a4,a5,80007af0 <uartintr+0xa0>
    80007ad8:	01f7f713          	andi	a4,a5,31
    80007adc:	00e806b3          	add	a3,a6,a4
    80007ae0:	0055c703          	lbu	a4,5(a1)
    80007ae4:	00178793          	addi	a5,a5,1
    80007ae8:	02077713          	andi	a4,a4,32
    80007aec:	fc071ae3          	bnez	a4,80007ac0 <uartintr+0x70>
    80007af0:	01813083          	ld	ra,24(sp)
    80007af4:	01013403          	ld	s0,16(sp)
    80007af8:	00813483          	ld	s1,8(sp)
    80007afc:	02010113          	addi	sp,sp,32
    80007b00:	00008067          	ret
    80007b04:	00004617          	auipc	a2,0x4
    80007b08:	bbc60613          	addi	a2,a2,-1092 # 8000b6c0 <uart_tx_r>
    80007b0c:	00004517          	auipc	a0,0x4
    80007b10:	bbc50513          	addi	a0,a0,-1092 # 8000b6c8 <uart_tx_w>
    80007b14:	00063783          	ld	a5,0(a2)
    80007b18:	00053703          	ld	a4,0(a0)
    80007b1c:	04f70263          	beq	a4,a5,80007b60 <uartintr+0x110>
    80007b20:	100005b7          	lui	a1,0x10000
    80007b24:	00005817          	auipc	a6,0x5
    80007b28:	e9c80813          	addi	a6,a6,-356 # 8000c9c0 <uart_tx_buf>
    80007b2c:	01c0006f          	j	80007b48 <uartintr+0xf8>
    80007b30:	0006c703          	lbu	a4,0(a3)
    80007b34:	00f63023          	sd	a5,0(a2)
    80007b38:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007b3c:	00063783          	ld	a5,0(a2)
    80007b40:	00053703          	ld	a4,0(a0)
    80007b44:	02f70063          	beq	a4,a5,80007b64 <uartintr+0x114>
    80007b48:	01f7f713          	andi	a4,a5,31
    80007b4c:	00e806b3          	add	a3,a6,a4
    80007b50:	0055c703          	lbu	a4,5(a1)
    80007b54:	00178793          	addi	a5,a5,1
    80007b58:	02077713          	andi	a4,a4,32
    80007b5c:	fc071ae3          	bnez	a4,80007b30 <uartintr+0xe0>
    80007b60:	00008067          	ret
    80007b64:	00008067          	ret

0000000080007b68 <kinit>:
    80007b68:	fc010113          	addi	sp,sp,-64
    80007b6c:	02913423          	sd	s1,40(sp)
    80007b70:	fffff7b7          	lui	a5,0xfffff
    80007b74:	00006497          	auipc	s1,0x6
    80007b78:	e6b48493          	addi	s1,s1,-405 # 8000d9df <end+0xfff>
    80007b7c:	02813823          	sd	s0,48(sp)
    80007b80:	01313c23          	sd	s3,24(sp)
    80007b84:	00f4f4b3          	and	s1,s1,a5
    80007b88:	02113c23          	sd	ra,56(sp)
    80007b8c:	03213023          	sd	s2,32(sp)
    80007b90:	01413823          	sd	s4,16(sp)
    80007b94:	01513423          	sd	s5,8(sp)
    80007b98:	04010413          	addi	s0,sp,64
    80007b9c:	000017b7          	lui	a5,0x1
    80007ba0:	01100993          	li	s3,17
    80007ba4:	00f487b3          	add	a5,s1,a5
    80007ba8:	01b99993          	slli	s3,s3,0x1b
    80007bac:	06f9e063          	bltu	s3,a5,80007c0c <kinit+0xa4>
    80007bb0:	00005a97          	auipc	s5,0x5
    80007bb4:	e30a8a93          	addi	s5,s5,-464 # 8000c9e0 <end>
    80007bb8:	0754ec63          	bltu	s1,s5,80007c30 <kinit+0xc8>
    80007bbc:	0734fa63          	bgeu	s1,s3,80007c30 <kinit+0xc8>
    80007bc0:	00088a37          	lui	s4,0x88
    80007bc4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007bc8:	00004917          	auipc	s2,0x4
    80007bcc:	b0890913          	addi	s2,s2,-1272 # 8000b6d0 <kmem>
    80007bd0:	00ca1a13          	slli	s4,s4,0xc
    80007bd4:	0140006f          	j	80007be8 <kinit+0x80>
    80007bd8:	000017b7          	lui	a5,0x1
    80007bdc:	00f484b3          	add	s1,s1,a5
    80007be0:	0554e863          	bltu	s1,s5,80007c30 <kinit+0xc8>
    80007be4:	0534f663          	bgeu	s1,s3,80007c30 <kinit+0xc8>
    80007be8:	00001637          	lui	a2,0x1
    80007bec:	00100593          	li	a1,1
    80007bf0:	00048513          	mv	a0,s1
    80007bf4:	00000097          	auipc	ra,0x0
    80007bf8:	5e4080e7          	jalr	1508(ra) # 800081d8 <__memset>
    80007bfc:	00093783          	ld	a5,0(s2)
    80007c00:	00f4b023          	sd	a5,0(s1)
    80007c04:	00993023          	sd	s1,0(s2)
    80007c08:	fd4498e3          	bne	s1,s4,80007bd8 <kinit+0x70>
    80007c0c:	03813083          	ld	ra,56(sp)
    80007c10:	03013403          	ld	s0,48(sp)
    80007c14:	02813483          	ld	s1,40(sp)
    80007c18:	02013903          	ld	s2,32(sp)
    80007c1c:	01813983          	ld	s3,24(sp)
    80007c20:	01013a03          	ld	s4,16(sp)
    80007c24:	00813a83          	ld	s5,8(sp)
    80007c28:	04010113          	addi	sp,sp,64
    80007c2c:	00008067          	ret
    80007c30:	00002517          	auipc	a0,0x2
    80007c34:	af050513          	addi	a0,a0,-1296 # 80009720 <digits+0x18>
    80007c38:	fffff097          	auipc	ra,0xfffff
    80007c3c:	4b4080e7          	jalr	1204(ra) # 800070ec <panic>

0000000080007c40 <freerange>:
    80007c40:	fc010113          	addi	sp,sp,-64
    80007c44:	000017b7          	lui	a5,0x1
    80007c48:	02913423          	sd	s1,40(sp)
    80007c4c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80007c50:	009504b3          	add	s1,a0,s1
    80007c54:	fffff537          	lui	a0,0xfffff
    80007c58:	02813823          	sd	s0,48(sp)
    80007c5c:	02113c23          	sd	ra,56(sp)
    80007c60:	03213023          	sd	s2,32(sp)
    80007c64:	01313c23          	sd	s3,24(sp)
    80007c68:	01413823          	sd	s4,16(sp)
    80007c6c:	01513423          	sd	s5,8(sp)
    80007c70:	01613023          	sd	s6,0(sp)
    80007c74:	04010413          	addi	s0,sp,64
    80007c78:	00a4f4b3          	and	s1,s1,a0
    80007c7c:	00f487b3          	add	a5,s1,a5
    80007c80:	06f5e463          	bltu	a1,a5,80007ce8 <freerange+0xa8>
    80007c84:	00005a97          	auipc	s5,0x5
    80007c88:	d5ca8a93          	addi	s5,s5,-676 # 8000c9e0 <end>
    80007c8c:	0954e263          	bltu	s1,s5,80007d10 <freerange+0xd0>
    80007c90:	01100993          	li	s3,17
    80007c94:	01b99993          	slli	s3,s3,0x1b
    80007c98:	0734fc63          	bgeu	s1,s3,80007d10 <freerange+0xd0>
    80007c9c:	00058a13          	mv	s4,a1
    80007ca0:	00004917          	auipc	s2,0x4
    80007ca4:	a3090913          	addi	s2,s2,-1488 # 8000b6d0 <kmem>
    80007ca8:	00002b37          	lui	s6,0x2
    80007cac:	0140006f          	j	80007cc0 <freerange+0x80>
    80007cb0:	000017b7          	lui	a5,0x1
    80007cb4:	00f484b3          	add	s1,s1,a5
    80007cb8:	0554ec63          	bltu	s1,s5,80007d10 <freerange+0xd0>
    80007cbc:	0534fa63          	bgeu	s1,s3,80007d10 <freerange+0xd0>
    80007cc0:	00001637          	lui	a2,0x1
    80007cc4:	00100593          	li	a1,1
    80007cc8:	00048513          	mv	a0,s1
    80007ccc:	00000097          	auipc	ra,0x0
    80007cd0:	50c080e7          	jalr	1292(ra) # 800081d8 <__memset>
    80007cd4:	00093703          	ld	a4,0(s2)
    80007cd8:	016487b3          	add	a5,s1,s6
    80007cdc:	00e4b023          	sd	a4,0(s1)
    80007ce0:	00993023          	sd	s1,0(s2)
    80007ce4:	fcfa76e3          	bgeu	s4,a5,80007cb0 <freerange+0x70>
    80007ce8:	03813083          	ld	ra,56(sp)
    80007cec:	03013403          	ld	s0,48(sp)
    80007cf0:	02813483          	ld	s1,40(sp)
    80007cf4:	02013903          	ld	s2,32(sp)
    80007cf8:	01813983          	ld	s3,24(sp)
    80007cfc:	01013a03          	ld	s4,16(sp)
    80007d00:	00813a83          	ld	s5,8(sp)
    80007d04:	00013b03          	ld	s6,0(sp)
    80007d08:	04010113          	addi	sp,sp,64
    80007d0c:	00008067          	ret
    80007d10:	00002517          	auipc	a0,0x2
    80007d14:	a1050513          	addi	a0,a0,-1520 # 80009720 <digits+0x18>
    80007d18:	fffff097          	auipc	ra,0xfffff
    80007d1c:	3d4080e7          	jalr	980(ra) # 800070ec <panic>

0000000080007d20 <kfree>:
    80007d20:	fe010113          	addi	sp,sp,-32
    80007d24:	00813823          	sd	s0,16(sp)
    80007d28:	00113c23          	sd	ra,24(sp)
    80007d2c:	00913423          	sd	s1,8(sp)
    80007d30:	02010413          	addi	s0,sp,32
    80007d34:	03451793          	slli	a5,a0,0x34
    80007d38:	04079c63          	bnez	a5,80007d90 <kfree+0x70>
    80007d3c:	00005797          	auipc	a5,0x5
    80007d40:	ca478793          	addi	a5,a5,-860 # 8000c9e0 <end>
    80007d44:	00050493          	mv	s1,a0
    80007d48:	04f56463          	bltu	a0,a5,80007d90 <kfree+0x70>
    80007d4c:	01100793          	li	a5,17
    80007d50:	01b79793          	slli	a5,a5,0x1b
    80007d54:	02f57e63          	bgeu	a0,a5,80007d90 <kfree+0x70>
    80007d58:	00001637          	lui	a2,0x1
    80007d5c:	00100593          	li	a1,1
    80007d60:	00000097          	auipc	ra,0x0
    80007d64:	478080e7          	jalr	1144(ra) # 800081d8 <__memset>
    80007d68:	00004797          	auipc	a5,0x4
    80007d6c:	96878793          	addi	a5,a5,-1688 # 8000b6d0 <kmem>
    80007d70:	0007b703          	ld	a4,0(a5)
    80007d74:	01813083          	ld	ra,24(sp)
    80007d78:	01013403          	ld	s0,16(sp)
    80007d7c:	00e4b023          	sd	a4,0(s1)
    80007d80:	0097b023          	sd	s1,0(a5)
    80007d84:	00813483          	ld	s1,8(sp)
    80007d88:	02010113          	addi	sp,sp,32
    80007d8c:	00008067          	ret
    80007d90:	00002517          	auipc	a0,0x2
    80007d94:	99050513          	addi	a0,a0,-1648 # 80009720 <digits+0x18>
    80007d98:	fffff097          	auipc	ra,0xfffff
    80007d9c:	354080e7          	jalr	852(ra) # 800070ec <panic>

0000000080007da0 <kalloc>:
    80007da0:	fe010113          	addi	sp,sp,-32
    80007da4:	00813823          	sd	s0,16(sp)
    80007da8:	00913423          	sd	s1,8(sp)
    80007dac:	00113c23          	sd	ra,24(sp)
    80007db0:	02010413          	addi	s0,sp,32
    80007db4:	00004797          	auipc	a5,0x4
    80007db8:	91c78793          	addi	a5,a5,-1764 # 8000b6d0 <kmem>
    80007dbc:	0007b483          	ld	s1,0(a5)
    80007dc0:	02048063          	beqz	s1,80007de0 <kalloc+0x40>
    80007dc4:	0004b703          	ld	a4,0(s1)
    80007dc8:	00001637          	lui	a2,0x1
    80007dcc:	00500593          	li	a1,5
    80007dd0:	00048513          	mv	a0,s1
    80007dd4:	00e7b023          	sd	a4,0(a5)
    80007dd8:	00000097          	auipc	ra,0x0
    80007ddc:	400080e7          	jalr	1024(ra) # 800081d8 <__memset>
    80007de0:	01813083          	ld	ra,24(sp)
    80007de4:	01013403          	ld	s0,16(sp)
    80007de8:	00048513          	mv	a0,s1
    80007dec:	00813483          	ld	s1,8(sp)
    80007df0:	02010113          	addi	sp,sp,32
    80007df4:	00008067          	ret

0000000080007df8 <initlock>:
    80007df8:	ff010113          	addi	sp,sp,-16
    80007dfc:	00813423          	sd	s0,8(sp)
    80007e00:	01010413          	addi	s0,sp,16
    80007e04:	00813403          	ld	s0,8(sp)
    80007e08:	00b53423          	sd	a1,8(a0)
    80007e0c:	00052023          	sw	zero,0(a0)
    80007e10:	00053823          	sd	zero,16(a0)
    80007e14:	01010113          	addi	sp,sp,16
    80007e18:	00008067          	ret

0000000080007e1c <acquire>:
    80007e1c:	fe010113          	addi	sp,sp,-32
    80007e20:	00813823          	sd	s0,16(sp)
    80007e24:	00913423          	sd	s1,8(sp)
    80007e28:	00113c23          	sd	ra,24(sp)
    80007e2c:	01213023          	sd	s2,0(sp)
    80007e30:	02010413          	addi	s0,sp,32
    80007e34:	00050493          	mv	s1,a0
    80007e38:	10002973          	csrr	s2,sstatus
    80007e3c:	100027f3          	csrr	a5,sstatus
    80007e40:	ffd7f793          	andi	a5,a5,-3
    80007e44:	10079073          	csrw	sstatus,a5
    80007e48:	fffff097          	auipc	ra,0xfffff
    80007e4c:	8e4080e7          	jalr	-1820(ra) # 8000672c <mycpu>
    80007e50:	07852783          	lw	a5,120(a0)
    80007e54:	06078e63          	beqz	a5,80007ed0 <acquire+0xb4>
    80007e58:	fffff097          	auipc	ra,0xfffff
    80007e5c:	8d4080e7          	jalr	-1836(ra) # 8000672c <mycpu>
    80007e60:	07852783          	lw	a5,120(a0)
    80007e64:	0004a703          	lw	a4,0(s1)
    80007e68:	0017879b          	addiw	a5,a5,1
    80007e6c:	06f52c23          	sw	a5,120(a0)
    80007e70:	04071063          	bnez	a4,80007eb0 <acquire+0x94>
    80007e74:	00100713          	li	a4,1
    80007e78:	00070793          	mv	a5,a4
    80007e7c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007e80:	0007879b          	sext.w	a5,a5
    80007e84:	fe079ae3          	bnez	a5,80007e78 <acquire+0x5c>
    80007e88:	0ff0000f          	fence
    80007e8c:	fffff097          	auipc	ra,0xfffff
    80007e90:	8a0080e7          	jalr	-1888(ra) # 8000672c <mycpu>
    80007e94:	01813083          	ld	ra,24(sp)
    80007e98:	01013403          	ld	s0,16(sp)
    80007e9c:	00a4b823          	sd	a0,16(s1)
    80007ea0:	00013903          	ld	s2,0(sp)
    80007ea4:	00813483          	ld	s1,8(sp)
    80007ea8:	02010113          	addi	sp,sp,32
    80007eac:	00008067          	ret
    80007eb0:	0104b903          	ld	s2,16(s1)
    80007eb4:	fffff097          	auipc	ra,0xfffff
    80007eb8:	878080e7          	jalr	-1928(ra) # 8000672c <mycpu>
    80007ebc:	faa91ce3          	bne	s2,a0,80007e74 <acquire+0x58>
    80007ec0:	00002517          	auipc	a0,0x2
    80007ec4:	86850513          	addi	a0,a0,-1944 # 80009728 <digits+0x20>
    80007ec8:	fffff097          	auipc	ra,0xfffff
    80007ecc:	224080e7          	jalr	548(ra) # 800070ec <panic>
    80007ed0:	00195913          	srli	s2,s2,0x1
    80007ed4:	fffff097          	auipc	ra,0xfffff
    80007ed8:	858080e7          	jalr	-1960(ra) # 8000672c <mycpu>
    80007edc:	00197913          	andi	s2,s2,1
    80007ee0:	07252e23          	sw	s2,124(a0)
    80007ee4:	f75ff06f          	j	80007e58 <acquire+0x3c>

0000000080007ee8 <release>:
    80007ee8:	fe010113          	addi	sp,sp,-32
    80007eec:	00813823          	sd	s0,16(sp)
    80007ef0:	00113c23          	sd	ra,24(sp)
    80007ef4:	00913423          	sd	s1,8(sp)
    80007ef8:	01213023          	sd	s2,0(sp)
    80007efc:	02010413          	addi	s0,sp,32
    80007f00:	00052783          	lw	a5,0(a0)
    80007f04:	00079a63          	bnez	a5,80007f18 <release+0x30>
    80007f08:	00002517          	auipc	a0,0x2
    80007f0c:	82850513          	addi	a0,a0,-2008 # 80009730 <digits+0x28>
    80007f10:	fffff097          	auipc	ra,0xfffff
    80007f14:	1dc080e7          	jalr	476(ra) # 800070ec <panic>
    80007f18:	01053903          	ld	s2,16(a0)
    80007f1c:	00050493          	mv	s1,a0
    80007f20:	fffff097          	auipc	ra,0xfffff
    80007f24:	80c080e7          	jalr	-2036(ra) # 8000672c <mycpu>
    80007f28:	fea910e3          	bne	s2,a0,80007f08 <release+0x20>
    80007f2c:	0004b823          	sd	zero,16(s1)
    80007f30:	0ff0000f          	fence
    80007f34:	0f50000f          	fence	iorw,ow
    80007f38:	0804a02f          	amoswap.w	zero,zero,(s1)
    80007f3c:	ffffe097          	auipc	ra,0xffffe
    80007f40:	7f0080e7          	jalr	2032(ra) # 8000672c <mycpu>
    80007f44:	100027f3          	csrr	a5,sstatus
    80007f48:	0027f793          	andi	a5,a5,2
    80007f4c:	04079a63          	bnez	a5,80007fa0 <release+0xb8>
    80007f50:	07852783          	lw	a5,120(a0)
    80007f54:	02f05e63          	blez	a5,80007f90 <release+0xa8>
    80007f58:	fff7871b          	addiw	a4,a5,-1
    80007f5c:	06e52c23          	sw	a4,120(a0)
    80007f60:	00071c63          	bnez	a4,80007f78 <release+0x90>
    80007f64:	07c52783          	lw	a5,124(a0)
    80007f68:	00078863          	beqz	a5,80007f78 <release+0x90>
    80007f6c:	100027f3          	csrr	a5,sstatus
    80007f70:	0027e793          	ori	a5,a5,2
    80007f74:	10079073          	csrw	sstatus,a5
    80007f78:	01813083          	ld	ra,24(sp)
    80007f7c:	01013403          	ld	s0,16(sp)
    80007f80:	00813483          	ld	s1,8(sp)
    80007f84:	00013903          	ld	s2,0(sp)
    80007f88:	02010113          	addi	sp,sp,32
    80007f8c:	00008067          	ret
    80007f90:	00001517          	auipc	a0,0x1
    80007f94:	7c050513          	addi	a0,a0,1984 # 80009750 <digits+0x48>
    80007f98:	fffff097          	auipc	ra,0xfffff
    80007f9c:	154080e7          	jalr	340(ra) # 800070ec <panic>
    80007fa0:	00001517          	auipc	a0,0x1
    80007fa4:	79850513          	addi	a0,a0,1944 # 80009738 <digits+0x30>
    80007fa8:	fffff097          	auipc	ra,0xfffff
    80007fac:	144080e7          	jalr	324(ra) # 800070ec <panic>

0000000080007fb0 <holding>:
    80007fb0:	00052783          	lw	a5,0(a0)
    80007fb4:	00079663          	bnez	a5,80007fc0 <holding+0x10>
    80007fb8:	00000513          	li	a0,0
    80007fbc:	00008067          	ret
    80007fc0:	fe010113          	addi	sp,sp,-32
    80007fc4:	00813823          	sd	s0,16(sp)
    80007fc8:	00913423          	sd	s1,8(sp)
    80007fcc:	00113c23          	sd	ra,24(sp)
    80007fd0:	02010413          	addi	s0,sp,32
    80007fd4:	01053483          	ld	s1,16(a0)
    80007fd8:	ffffe097          	auipc	ra,0xffffe
    80007fdc:	754080e7          	jalr	1876(ra) # 8000672c <mycpu>
    80007fe0:	01813083          	ld	ra,24(sp)
    80007fe4:	01013403          	ld	s0,16(sp)
    80007fe8:	40a48533          	sub	a0,s1,a0
    80007fec:	00153513          	seqz	a0,a0
    80007ff0:	00813483          	ld	s1,8(sp)
    80007ff4:	02010113          	addi	sp,sp,32
    80007ff8:	00008067          	ret

0000000080007ffc <push_off>:
    80007ffc:	fe010113          	addi	sp,sp,-32
    80008000:	00813823          	sd	s0,16(sp)
    80008004:	00113c23          	sd	ra,24(sp)
    80008008:	00913423          	sd	s1,8(sp)
    8000800c:	02010413          	addi	s0,sp,32
    80008010:	100024f3          	csrr	s1,sstatus
    80008014:	100027f3          	csrr	a5,sstatus
    80008018:	ffd7f793          	andi	a5,a5,-3
    8000801c:	10079073          	csrw	sstatus,a5
    80008020:	ffffe097          	auipc	ra,0xffffe
    80008024:	70c080e7          	jalr	1804(ra) # 8000672c <mycpu>
    80008028:	07852783          	lw	a5,120(a0)
    8000802c:	02078663          	beqz	a5,80008058 <push_off+0x5c>
    80008030:	ffffe097          	auipc	ra,0xffffe
    80008034:	6fc080e7          	jalr	1788(ra) # 8000672c <mycpu>
    80008038:	07852783          	lw	a5,120(a0)
    8000803c:	01813083          	ld	ra,24(sp)
    80008040:	01013403          	ld	s0,16(sp)
    80008044:	0017879b          	addiw	a5,a5,1
    80008048:	06f52c23          	sw	a5,120(a0)
    8000804c:	00813483          	ld	s1,8(sp)
    80008050:	02010113          	addi	sp,sp,32
    80008054:	00008067          	ret
    80008058:	0014d493          	srli	s1,s1,0x1
    8000805c:	ffffe097          	auipc	ra,0xffffe
    80008060:	6d0080e7          	jalr	1744(ra) # 8000672c <mycpu>
    80008064:	0014f493          	andi	s1,s1,1
    80008068:	06952e23          	sw	s1,124(a0)
    8000806c:	fc5ff06f          	j	80008030 <push_off+0x34>

0000000080008070 <pop_off>:
    80008070:	ff010113          	addi	sp,sp,-16
    80008074:	00813023          	sd	s0,0(sp)
    80008078:	00113423          	sd	ra,8(sp)
    8000807c:	01010413          	addi	s0,sp,16
    80008080:	ffffe097          	auipc	ra,0xffffe
    80008084:	6ac080e7          	jalr	1708(ra) # 8000672c <mycpu>
    80008088:	100027f3          	csrr	a5,sstatus
    8000808c:	0027f793          	andi	a5,a5,2
    80008090:	04079663          	bnez	a5,800080dc <pop_off+0x6c>
    80008094:	07852783          	lw	a5,120(a0)
    80008098:	02f05a63          	blez	a5,800080cc <pop_off+0x5c>
    8000809c:	fff7871b          	addiw	a4,a5,-1
    800080a0:	06e52c23          	sw	a4,120(a0)
    800080a4:	00071c63          	bnez	a4,800080bc <pop_off+0x4c>
    800080a8:	07c52783          	lw	a5,124(a0)
    800080ac:	00078863          	beqz	a5,800080bc <pop_off+0x4c>
    800080b0:	100027f3          	csrr	a5,sstatus
    800080b4:	0027e793          	ori	a5,a5,2
    800080b8:	10079073          	csrw	sstatus,a5
    800080bc:	00813083          	ld	ra,8(sp)
    800080c0:	00013403          	ld	s0,0(sp)
    800080c4:	01010113          	addi	sp,sp,16
    800080c8:	00008067          	ret
    800080cc:	00001517          	auipc	a0,0x1
    800080d0:	68450513          	addi	a0,a0,1668 # 80009750 <digits+0x48>
    800080d4:	fffff097          	auipc	ra,0xfffff
    800080d8:	018080e7          	jalr	24(ra) # 800070ec <panic>
    800080dc:	00001517          	auipc	a0,0x1
    800080e0:	65c50513          	addi	a0,a0,1628 # 80009738 <digits+0x30>
    800080e4:	fffff097          	auipc	ra,0xfffff
    800080e8:	008080e7          	jalr	8(ra) # 800070ec <panic>

00000000800080ec <push_on>:
    800080ec:	fe010113          	addi	sp,sp,-32
    800080f0:	00813823          	sd	s0,16(sp)
    800080f4:	00113c23          	sd	ra,24(sp)
    800080f8:	00913423          	sd	s1,8(sp)
    800080fc:	02010413          	addi	s0,sp,32
    80008100:	100024f3          	csrr	s1,sstatus
    80008104:	100027f3          	csrr	a5,sstatus
    80008108:	0027e793          	ori	a5,a5,2
    8000810c:	10079073          	csrw	sstatus,a5
    80008110:	ffffe097          	auipc	ra,0xffffe
    80008114:	61c080e7          	jalr	1564(ra) # 8000672c <mycpu>
    80008118:	07852783          	lw	a5,120(a0)
    8000811c:	02078663          	beqz	a5,80008148 <push_on+0x5c>
    80008120:	ffffe097          	auipc	ra,0xffffe
    80008124:	60c080e7          	jalr	1548(ra) # 8000672c <mycpu>
    80008128:	07852783          	lw	a5,120(a0)
    8000812c:	01813083          	ld	ra,24(sp)
    80008130:	01013403          	ld	s0,16(sp)
    80008134:	0017879b          	addiw	a5,a5,1
    80008138:	06f52c23          	sw	a5,120(a0)
    8000813c:	00813483          	ld	s1,8(sp)
    80008140:	02010113          	addi	sp,sp,32
    80008144:	00008067          	ret
    80008148:	0014d493          	srli	s1,s1,0x1
    8000814c:	ffffe097          	auipc	ra,0xffffe
    80008150:	5e0080e7          	jalr	1504(ra) # 8000672c <mycpu>
    80008154:	0014f493          	andi	s1,s1,1
    80008158:	06952e23          	sw	s1,124(a0)
    8000815c:	fc5ff06f          	j	80008120 <push_on+0x34>

0000000080008160 <pop_on>:
    80008160:	ff010113          	addi	sp,sp,-16
    80008164:	00813023          	sd	s0,0(sp)
    80008168:	00113423          	sd	ra,8(sp)
    8000816c:	01010413          	addi	s0,sp,16
    80008170:	ffffe097          	auipc	ra,0xffffe
    80008174:	5bc080e7          	jalr	1468(ra) # 8000672c <mycpu>
    80008178:	100027f3          	csrr	a5,sstatus
    8000817c:	0027f793          	andi	a5,a5,2
    80008180:	04078463          	beqz	a5,800081c8 <pop_on+0x68>
    80008184:	07852783          	lw	a5,120(a0)
    80008188:	02f05863          	blez	a5,800081b8 <pop_on+0x58>
    8000818c:	fff7879b          	addiw	a5,a5,-1
    80008190:	06f52c23          	sw	a5,120(a0)
    80008194:	07853783          	ld	a5,120(a0)
    80008198:	00079863          	bnez	a5,800081a8 <pop_on+0x48>
    8000819c:	100027f3          	csrr	a5,sstatus
    800081a0:	ffd7f793          	andi	a5,a5,-3
    800081a4:	10079073          	csrw	sstatus,a5
    800081a8:	00813083          	ld	ra,8(sp)
    800081ac:	00013403          	ld	s0,0(sp)
    800081b0:	01010113          	addi	sp,sp,16
    800081b4:	00008067          	ret
    800081b8:	00001517          	auipc	a0,0x1
    800081bc:	5c050513          	addi	a0,a0,1472 # 80009778 <digits+0x70>
    800081c0:	fffff097          	auipc	ra,0xfffff
    800081c4:	f2c080e7          	jalr	-212(ra) # 800070ec <panic>
    800081c8:	00001517          	auipc	a0,0x1
    800081cc:	59050513          	addi	a0,a0,1424 # 80009758 <digits+0x50>
    800081d0:	fffff097          	auipc	ra,0xfffff
    800081d4:	f1c080e7          	jalr	-228(ra) # 800070ec <panic>

00000000800081d8 <__memset>:
    800081d8:	ff010113          	addi	sp,sp,-16
    800081dc:	00813423          	sd	s0,8(sp)
    800081e0:	01010413          	addi	s0,sp,16
    800081e4:	1a060e63          	beqz	a2,800083a0 <__memset+0x1c8>
    800081e8:	40a007b3          	neg	a5,a0
    800081ec:	0077f793          	andi	a5,a5,7
    800081f0:	00778693          	addi	a3,a5,7
    800081f4:	00b00813          	li	a6,11
    800081f8:	0ff5f593          	andi	a1,a1,255
    800081fc:	fff6071b          	addiw	a4,a2,-1
    80008200:	1b06e663          	bltu	a3,a6,800083ac <__memset+0x1d4>
    80008204:	1cd76463          	bltu	a4,a3,800083cc <__memset+0x1f4>
    80008208:	1a078e63          	beqz	a5,800083c4 <__memset+0x1ec>
    8000820c:	00b50023          	sb	a1,0(a0)
    80008210:	00100713          	li	a4,1
    80008214:	1ae78463          	beq	a5,a4,800083bc <__memset+0x1e4>
    80008218:	00b500a3          	sb	a1,1(a0)
    8000821c:	00200713          	li	a4,2
    80008220:	1ae78a63          	beq	a5,a4,800083d4 <__memset+0x1fc>
    80008224:	00b50123          	sb	a1,2(a0)
    80008228:	00300713          	li	a4,3
    8000822c:	18e78463          	beq	a5,a4,800083b4 <__memset+0x1dc>
    80008230:	00b501a3          	sb	a1,3(a0)
    80008234:	00400713          	li	a4,4
    80008238:	1ae78263          	beq	a5,a4,800083dc <__memset+0x204>
    8000823c:	00b50223          	sb	a1,4(a0)
    80008240:	00500713          	li	a4,5
    80008244:	1ae78063          	beq	a5,a4,800083e4 <__memset+0x20c>
    80008248:	00b502a3          	sb	a1,5(a0)
    8000824c:	00700713          	li	a4,7
    80008250:	18e79e63          	bne	a5,a4,800083ec <__memset+0x214>
    80008254:	00b50323          	sb	a1,6(a0)
    80008258:	00700e93          	li	t4,7
    8000825c:	00859713          	slli	a4,a1,0x8
    80008260:	00e5e733          	or	a4,a1,a4
    80008264:	01059e13          	slli	t3,a1,0x10
    80008268:	01c76e33          	or	t3,a4,t3
    8000826c:	01859313          	slli	t1,a1,0x18
    80008270:	006e6333          	or	t1,t3,t1
    80008274:	02059893          	slli	a7,a1,0x20
    80008278:	40f60e3b          	subw	t3,a2,a5
    8000827c:	011368b3          	or	a7,t1,a7
    80008280:	02859813          	slli	a6,a1,0x28
    80008284:	0108e833          	or	a6,a7,a6
    80008288:	03059693          	slli	a3,a1,0x30
    8000828c:	003e589b          	srliw	a7,t3,0x3
    80008290:	00d866b3          	or	a3,a6,a3
    80008294:	03859713          	slli	a4,a1,0x38
    80008298:	00389813          	slli	a6,a7,0x3
    8000829c:	00f507b3          	add	a5,a0,a5
    800082a0:	00e6e733          	or	a4,a3,a4
    800082a4:	000e089b          	sext.w	a7,t3
    800082a8:	00f806b3          	add	a3,a6,a5
    800082ac:	00e7b023          	sd	a4,0(a5)
    800082b0:	00878793          	addi	a5,a5,8
    800082b4:	fed79ce3          	bne	a5,a3,800082ac <__memset+0xd4>
    800082b8:	ff8e7793          	andi	a5,t3,-8
    800082bc:	0007871b          	sext.w	a4,a5
    800082c0:	01d787bb          	addw	a5,a5,t4
    800082c4:	0ce88e63          	beq	a7,a4,800083a0 <__memset+0x1c8>
    800082c8:	00f50733          	add	a4,a0,a5
    800082cc:	00b70023          	sb	a1,0(a4)
    800082d0:	0017871b          	addiw	a4,a5,1
    800082d4:	0cc77663          	bgeu	a4,a2,800083a0 <__memset+0x1c8>
    800082d8:	00e50733          	add	a4,a0,a4
    800082dc:	00b70023          	sb	a1,0(a4)
    800082e0:	0027871b          	addiw	a4,a5,2
    800082e4:	0ac77e63          	bgeu	a4,a2,800083a0 <__memset+0x1c8>
    800082e8:	00e50733          	add	a4,a0,a4
    800082ec:	00b70023          	sb	a1,0(a4)
    800082f0:	0037871b          	addiw	a4,a5,3
    800082f4:	0ac77663          	bgeu	a4,a2,800083a0 <__memset+0x1c8>
    800082f8:	00e50733          	add	a4,a0,a4
    800082fc:	00b70023          	sb	a1,0(a4)
    80008300:	0047871b          	addiw	a4,a5,4
    80008304:	08c77e63          	bgeu	a4,a2,800083a0 <__memset+0x1c8>
    80008308:	00e50733          	add	a4,a0,a4
    8000830c:	00b70023          	sb	a1,0(a4)
    80008310:	0057871b          	addiw	a4,a5,5
    80008314:	08c77663          	bgeu	a4,a2,800083a0 <__memset+0x1c8>
    80008318:	00e50733          	add	a4,a0,a4
    8000831c:	00b70023          	sb	a1,0(a4)
    80008320:	0067871b          	addiw	a4,a5,6
    80008324:	06c77e63          	bgeu	a4,a2,800083a0 <__memset+0x1c8>
    80008328:	00e50733          	add	a4,a0,a4
    8000832c:	00b70023          	sb	a1,0(a4)
    80008330:	0077871b          	addiw	a4,a5,7
    80008334:	06c77663          	bgeu	a4,a2,800083a0 <__memset+0x1c8>
    80008338:	00e50733          	add	a4,a0,a4
    8000833c:	00b70023          	sb	a1,0(a4)
    80008340:	0087871b          	addiw	a4,a5,8
    80008344:	04c77e63          	bgeu	a4,a2,800083a0 <__memset+0x1c8>
    80008348:	00e50733          	add	a4,a0,a4
    8000834c:	00b70023          	sb	a1,0(a4)
    80008350:	0097871b          	addiw	a4,a5,9
    80008354:	04c77663          	bgeu	a4,a2,800083a0 <__memset+0x1c8>
    80008358:	00e50733          	add	a4,a0,a4
    8000835c:	00b70023          	sb	a1,0(a4)
    80008360:	00a7871b          	addiw	a4,a5,10
    80008364:	02c77e63          	bgeu	a4,a2,800083a0 <__memset+0x1c8>
    80008368:	00e50733          	add	a4,a0,a4
    8000836c:	00b70023          	sb	a1,0(a4)
    80008370:	00b7871b          	addiw	a4,a5,11
    80008374:	02c77663          	bgeu	a4,a2,800083a0 <__memset+0x1c8>
    80008378:	00e50733          	add	a4,a0,a4
    8000837c:	00b70023          	sb	a1,0(a4)
    80008380:	00c7871b          	addiw	a4,a5,12
    80008384:	00c77e63          	bgeu	a4,a2,800083a0 <__memset+0x1c8>
    80008388:	00e50733          	add	a4,a0,a4
    8000838c:	00b70023          	sb	a1,0(a4)
    80008390:	00d7879b          	addiw	a5,a5,13
    80008394:	00c7f663          	bgeu	a5,a2,800083a0 <__memset+0x1c8>
    80008398:	00f507b3          	add	a5,a0,a5
    8000839c:	00b78023          	sb	a1,0(a5)
    800083a0:	00813403          	ld	s0,8(sp)
    800083a4:	01010113          	addi	sp,sp,16
    800083a8:	00008067          	ret
    800083ac:	00b00693          	li	a3,11
    800083b0:	e55ff06f          	j	80008204 <__memset+0x2c>
    800083b4:	00300e93          	li	t4,3
    800083b8:	ea5ff06f          	j	8000825c <__memset+0x84>
    800083bc:	00100e93          	li	t4,1
    800083c0:	e9dff06f          	j	8000825c <__memset+0x84>
    800083c4:	00000e93          	li	t4,0
    800083c8:	e95ff06f          	j	8000825c <__memset+0x84>
    800083cc:	00000793          	li	a5,0
    800083d0:	ef9ff06f          	j	800082c8 <__memset+0xf0>
    800083d4:	00200e93          	li	t4,2
    800083d8:	e85ff06f          	j	8000825c <__memset+0x84>
    800083dc:	00400e93          	li	t4,4
    800083e0:	e7dff06f          	j	8000825c <__memset+0x84>
    800083e4:	00500e93          	li	t4,5
    800083e8:	e75ff06f          	j	8000825c <__memset+0x84>
    800083ec:	00600e93          	li	t4,6
    800083f0:	e6dff06f          	j	8000825c <__memset+0x84>

00000000800083f4 <__memmove>:
    800083f4:	ff010113          	addi	sp,sp,-16
    800083f8:	00813423          	sd	s0,8(sp)
    800083fc:	01010413          	addi	s0,sp,16
    80008400:	0e060863          	beqz	a2,800084f0 <__memmove+0xfc>
    80008404:	fff6069b          	addiw	a3,a2,-1
    80008408:	0006881b          	sext.w	a6,a3
    8000840c:	0ea5e863          	bltu	a1,a0,800084fc <__memmove+0x108>
    80008410:	00758713          	addi	a4,a1,7
    80008414:	00a5e7b3          	or	a5,a1,a0
    80008418:	40a70733          	sub	a4,a4,a0
    8000841c:	0077f793          	andi	a5,a5,7
    80008420:	00f73713          	sltiu	a4,a4,15
    80008424:	00174713          	xori	a4,a4,1
    80008428:	0017b793          	seqz	a5,a5
    8000842c:	00e7f7b3          	and	a5,a5,a4
    80008430:	10078863          	beqz	a5,80008540 <__memmove+0x14c>
    80008434:	00900793          	li	a5,9
    80008438:	1107f463          	bgeu	a5,a6,80008540 <__memmove+0x14c>
    8000843c:	0036581b          	srliw	a6,a2,0x3
    80008440:	fff8081b          	addiw	a6,a6,-1
    80008444:	02081813          	slli	a6,a6,0x20
    80008448:	01d85893          	srli	a7,a6,0x1d
    8000844c:	00858813          	addi	a6,a1,8
    80008450:	00058793          	mv	a5,a1
    80008454:	00050713          	mv	a4,a0
    80008458:	01088833          	add	a6,a7,a6
    8000845c:	0007b883          	ld	a7,0(a5)
    80008460:	00878793          	addi	a5,a5,8
    80008464:	00870713          	addi	a4,a4,8
    80008468:	ff173c23          	sd	a7,-8(a4)
    8000846c:	ff0798e3          	bne	a5,a6,8000845c <__memmove+0x68>
    80008470:	ff867713          	andi	a4,a2,-8
    80008474:	02071793          	slli	a5,a4,0x20
    80008478:	0207d793          	srli	a5,a5,0x20
    8000847c:	00f585b3          	add	a1,a1,a5
    80008480:	40e686bb          	subw	a3,a3,a4
    80008484:	00f507b3          	add	a5,a0,a5
    80008488:	06e60463          	beq	a2,a4,800084f0 <__memmove+0xfc>
    8000848c:	0005c703          	lbu	a4,0(a1)
    80008490:	00e78023          	sb	a4,0(a5)
    80008494:	04068e63          	beqz	a3,800084f0 <__memmove+0xfc>
    80008498:	0015c603          	lbu	a2,1(a1)
    8000849c:	00100713          	li	a4,1
    800084a0:	00c780a3          	sb	a2,1(a5)
    800084a4:	04e68663          	beq	a3,a4,800084f0 <__memmove+0xfc>
    800084a8:	0025c603          	lbu	a2,2(a1)
    800084ac:	00200713          	li	a4,2
    800084b0:	00c78123          	sb	a2,2(a5)
    800084b4:	02e68e63          	beq	a3,a4,800084f0 <__memmove+0xfc>
    800084b8:	0035c603          	lbu	a2,3(a1)
    800084bc:	00300713          	li	a4,3
    800084c0:	00c781a3          	sb	a2,3(a5)
    800084c4:	02e68663          	beq	a3,a4,800084f0 <__memmove+0xfc>
    800084c8:	0045c603          	lbu	a2,4(a1)
    800084cc:	00400713          	li	a4,4
    800084d0:	00c78223          	sb	a2,4(a5)
    800084d4:	00e68e63          	beq	a3,a4,800084f0 <__memmove+0xfc>
    800084d8:	0055c603          	lbu	a2,5(a1)
    800084dc:	00500713          	li	a4,5
    800084e0:	00c782a3          	sb	a2,5(a5)
    800084e4:	00e68663          	beq	a3,a4,800084f0 <__memmove+0xfc>
    800084e8:	0065c703          	lbu	a4,6(a1)
    800084ec:	00e78323          	sb	a4,6(a5)
    800084f0:	00813403          	ld	s0,8(sp)
    800084f4:	01010113          	addi	sp,sp,16
    800084f8:	00008067          	ret
    800084fc:	02061713          	slli	a4,a2,0x20
    80008500:	02075713          	srli	a4,a4,0x20
    80008504:	00e587b3          	add	a5,a1,a4
    80008508:	f0f574e3          	bgeu	a0,a5,80008410 <__memmove+0x1c>
    8000850c:	02069613          	slli	a2,a3,0x20
    80008510:	02065613          	srli	a2,a2,0x20
    80008514:	fff64613          	not	a2,a2
    80008518:	00e50733          	add	a4,a0,a4
    8000851c:	00c78633          	add	a2,a5,a2
    80008520:	fff7c683          	lbu	a3,-1(a5)
    80008524:	fff78793          	addi	a5,a5,-1
    80008528:	fff70713          	addi	a4,a4,-1
    8000852c:	00d70023          	sb	a3,0(a4)
    80008530:	fec798e3          	bne	a5,a2,80008520 <__memmove+0x12c>
    80008534:	00813403          	ld	s0,8(sp)
    80008538:	01010113          	addi	sp,sp,16
    8000853c:	00008067          	ret
    80008540:	02069713          	slli	a4,a3,0x20
    80008544:	02075713          	srli	a4,a4,0x20
    80008548:	00170713          	addi	a4,a4,1
    8000854c:	00e50733          	add	a4,a0,a4
    80008550:	00050793          	mv	a5,a0
    80008554:	0005c683          	lbu	a3,0(a1)
    80008558:	00178793          	addi	a5,a5,1
    8000855c:	00158593          	addi	a1,a1,1
    80008560:	fed78fa3          	sb	a3,-1(a5)
    80008564:	fee798e3          	bne	a5,a4,80008554 <__memmove+0x160>
    80008568:	f89ff06f          	j	800084f0 <__memmove+0xfc>
	...
