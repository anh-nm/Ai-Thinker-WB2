	.file	"looprt.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.proc_entry_looprt.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"--->>> Error terminated looprt\r\n"
	.section	.text.proc_entry_looprt,"ax",@progbits
	.align	1
	.type	proc_entry_looprt, @function
proc_entry_looprt:
.LFB25:
	.file 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/sys/bloop/looprt/src/looprt.c"
	.loc 1 10 1
	.cfi_startproc
.LVL0:
	.loc 1 11 5
	lui	a0,%hi(.LANCHOR0)
.LVL1:
	.loc 1 10 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 11 5
	addi	a0,a0,%lo(.LANCHOR0)
	.loc 1 10 1
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 15 9
	lui	s0,%hi(.LC0)
	.loc 1 11 5
	call	bloop_run
.LVL2:
.L2:
	.loc 1 14 5 is_stmt 1 discriminator 1
	.loc 1 15 9 discriminator 1
	addi	a0,s0,%lo(.LC0)
	call	puts
.LVL3:
	.loc 1 16 9 discriminator 1
	li	a0,1000
	call	vTaskDelay
.LVL4:
	.loc 1 14 11 discriminator 1
	j	.L2
	.cfi_endproc
.LFE25:
	.size	proc_entry_looprt, .-proc_entry_looprt
	.section	.text.looprt_evt_notify_async,"ax",@progbits
	.align	1
	.globl	looprt_evt_notify_async
	.type	looprt_evt_notify_async, @function
looprt_evt_notify_async:
.LFB26:
	.loc 1 21 1
	.cfi_startproc
.LVL5:
	.loc 1 22 5
	.loc 1 21 1 is_stmt 0
	mv	a2,a1
	.loc 1 22 5
	mv	a1,a0
.LVL6:
	lui	a0,%hi(.LANCHOR0)
.LVL7:
	addi	a0,a0,%lo(.LANCHOR0)
	tail	bloop_evt_set_async
.LVL8:
	.cfi_endproc
.LFE26:
	.size	looprt_evt_notify_async, .-looprt_evt_notify_async
	.section	.text.looprt_evt_notify_async_fromISR,"ax",@progbits
	.align	1
	.globl	looprt_evt_notify_async_fromISR
	.type	looprt_evt_notify_async_fromISR, @function
looprt_evt_notify_async_fromISR:
.LFB27:
	.loc 1 26 1 is_stmt 1
	.cfi_startproc
.LVL9:
	.loc 1 27 5
	.loc 1 26 1 is_stmt 0
	mv	a2,a1
	.loc 1 27 5
	mv	a1,a0
.LVL10:
	lui	a0,%hi(.LANCHOR0)
.LVL11:
	addi	a0,a0,%lo(.LANCHOR0)
	tail	bloop_evt_set_async_fromISR
.LVL12:
	.cfi_endproc
.LFE27:
	.size	looprt_evt_notify_async_fromISR, .-looprt_evt_notify_async_fromISR
	.section	.text.looprt_evt_status_dump,"ax",@progbits
	.align	1
	.globl	looprt_evt_status_dump
	.type	looprt_evt_status_dump, @function
looprt_evt_status_dump:
.LFB28:
	.loc 1 31 1 is_stmt 1
	.cfi_startproc
	.loc 1 32 5
	lui	a0,%hi(.LANCHOR0)
	addi	a0,a0,%lo(.LANCHOR0)
	tail	bloop_status_dump
.LVL13:
	.cfi_endproc
.LFE28:
	.size	looprt_evt_status_dump, .-looprt_evt_status_dump
	.section	.text.looprt_evt_schedule,"ax",@progbits
	.align	1
	.globl	looprt_evt_schedule
	.type	looprt_evt_schedule, @function
looprt_evt_schedule:
.LFB29:
	.loc 1 36 1
	.cfi_startproc
.LVL14:
	.loc 1 37 5
	.loc 1 39 5
	.loc 1 36 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s2,16(sp)
	.cfi_offset 18, -16
	mv	s2,a0
	.loc 1 39 13
	li	a0,36
.LVL15:
	.loc 1 36 1
	sw	s1,20(sp)
	sw	s3,12(sp)
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 36 1
	mv	s3,a1
	mv	s1,a2
	.loc 1 39 13
	call	pvPortMalloc
.LVL16:
	.loc 1 40 5 is_stmt 1
	.loc 1 40 8 is_stmt 0
	beq	a0,zero,.L7
	.loc 1 43 5
	li	a1,1
	mv	s0,a0
	.loc 1 43 5 is_stmt 1
	call	bloop_timer_init
.LVL17:
	.loc 1 44 5
	mv	a1,s1
	mv	a0,s0
	mv	a5,s3
	mv	a4,s2
	li	a3,0
	li	a2,0
	call	bloop_timer_configure
.LVL18:
	.loc 1 45 5
	mv	a1,s0
	.loc 1 46 1 is_stmt 0
	lw	s0,24(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL19:
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s1,20(sp)
	.cfi_restore 9
.LVL20:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL21:
	lw	s3,12(sp)
	.cfi_restore 19
.LVL22:
	.loc 1 45 5
	lui	a0,%hi(.LANCHOR0)
	.loc 1 46 1
	.loc 1 45 5
	addi	a0,a0,%lo(.LANCHOR0)
	.loc 1 46 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	.loc 1 45 5
	tail	bloop_timer_register
.LVL23:
.L7:
	.cfi_restore_state
	.loc 1 46 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
.LVL24:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL25:
	lw	s3,12(sp)
	.cfi_restore 19
.LVL26:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE29:
	.size	looprt_evt_schedule, .-looprt_evt_schedule
	.section	.rodata.looprt_start.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"bloop_rt"
	.section	.text.looprt_start,"ax",@progbits
	.align	1
	.globl	looprt_start
	.type	looprt_start, @function
looprt_start:
.LFB30:
	.loc 1 49 1 is_stmt 1
	.cfi_startproc
.LVL27:
	.loc 1 50 5
	.loc 1 49 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	.cfi_offset 8, -8
	.loc 1 50 5
	lui	s0,%hi(.LANCHOR0)
	.loc 1 49 1
	sw	a0,12(sp)
	.loc 1 50 5
	addi	a0,s0,%lo(.LANCHOR0)
.LVL28:
	.loc 1 49 1
	sw	ra,28(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.loc 1 49 1
	sw	a2,8(sp)
	mv	s1,a1
	.loc 1 50 5
	call	bloop_init
.LVL29:
	.loc 1 53 5 is_stmt 1
	lui	a1,%hi(bloop_handler_sys)
	li	a2,31
	addi	a1,a1,%lo(bloop_handler_sys)
	addi	a0,s0,%lo(.LANCHOR0)
	call	bloop_handler_register
.LVL30:
	.loc 1 55 5
	call	looprt_evt_status_dump
.LVL31:
	.loc 1 57 5
	lw	a6,8(sp)
	lw	a5,12(sp)
	lui	a1,%hi(.LC1)
	lui	a0,%hi(proc_entry_looprt)
	mv	a2,s1
	li	a4,26
	li	a3,0
	addi	a1,a1,%lo(.LC1)
	addi	a0,a0,%lo(proc_entry_looprt)
	call	xTaskCreateStatic
.LVL32:
	.loc 1 59 5
	addi	a0,s0,%lo(.LANCHOR0)
	call	bloop_wait_startup
.LVL33:
	.loc 1 61 5
	.loc 1 62 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
.LVL34:
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL35:
	jr	ra
	.cfi_endproc
.LFE30:
	.size	looprt_start, .-looprt_start
	.section	.text.looprt_start_auto,"ax",@progbits
	.align	1
	.globl	looprt_start_auto
	.type	looprt_start_auto, @function
looprt_start_auto:
.LFB31:
	.loc 1 65 1 is_stmt 1
	.cfi_startproc
	.loc 1 66 5
	.loc 1 65 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	.loc 1 66 5
	lui	s0,%hi(.LANCHOR0)
	addi	a0,s0,%lo(.LANCHOR0)
	.loc 1 65 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 66 5
	call	bloop_init
.LVL36:
	.loc 1 69 5 is_stmt 1
	lui	a1,%hi(bloop_handler_sys)
	li	a2,31
	addi	a1,a1,%lo(bloop_handler_sys)
	addi	a0,s0,%lo(.LANCHOR0)
	call	bloop_handler_register
.LVL37:
	.loc 1 71 5
	call	looprt_evt_status_dump
.LVL38:
	.loc 1 73 5
	lui	a1,%hi(.LC1)
	lui	a0,%hi(proc_entry_looprt)
	li	a5,0
	li	a4,26
	li	a3,0
	li	a2,4096
	addi	a1,a1,%lo(.LC1)
	addi	a0,a0,%lo(proc_entry_looprt)
	call	xTaskCreate
.LVL39:
	.loc 1 75 5
	addi	a0,s0,%lo(.LANCHOR0)
	call	bloop_wait_startup
.LVL40:
	.loc 1 77 5
	.loc 1 78 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE31:
	.size	looprt_start_auto, .-looprt_start_auto
	.section	.text.looprt_handler_register,"ax",@progbits
	.align	1
	.globl	looprt_handler_register
	.type	looprt_handler_register, @function
looprt_handler_register:
.LFB32:
	.loc 1 81 1 is_stmt 1
	.cfi_startproc
.LVL41:
	.loc 1 82 5
	.loc 1 82 22 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	.loc 1 82 8
	lw	a4,%lo(.LANCHOR0)(a5)
	.loc 1 81 1
	mv	a2,a1
	.loc 1 82 8
	beq	a4,zero,.L15
	.loc 1 85 5 is_stmt 1
	.loc 1 85 12 is_stmt 0
	mv	a1,a0
.LVL42:
	addi	a0,a5,%lo(.LANCHOR0)
.LVL43:
	tail	bloop_handler_register
.LVL44:
.L15:
	.loc 1 86 1
	li	a0,-1
.LVL45:
	ret
	.cfi_endproc
.LFE32:
	.size	looprt_handler_register, .-looprt_handler_register
	.section	.text.looprt_timer_register,"ax",@progbits
	.align	1
	.globl	looprt_timer_register
	.type	looprt_timer_register, @function
looprt_timer_register:
.LFB33:
	.loc 1 89 1 is_stmt 1
	.cfi_startproc
.LVL46:
	.loc 1 90 5
	.loc 1 89 1 is_stmt 0
	mv	a1,a0
	.loc 1 90 5
	lui	a0,%hi(.LANCHOR0)
.LVL47:
	.loc 1 89 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 90 5
	addi	a0,a0,%lo(.LANCHOR0)
	.loc 1 89 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 90 5
	call	bloop_timer_register
.LVL48:
	.loc 1 92 5 is_stmt 1
	.loc 1 93 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE33:
	.size	looprt_timer_register, .-looprt_timer_register
	.section	.bss.looprt,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	looprt, @object
	.size	looprt, 1184
looprt:
	.zero	1184
	.text
.Letext0:
	.file 2 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 5 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
	.file 6 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 7 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/utils/include/utils_list.h"
	.file 8 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/sys/bloop/bloop/include/bloop.h"
	.file 9 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
	.file 10 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xad3
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF115
	.byte	0xc
	.4byte	.LASF116
	.4byte	.LASF117
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x38
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x60
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x5
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x6
	.4byte	0x85
	.byte	0x7
	.byte	0x4
	.4byte	0x8c
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x54
	.byte	0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x3e
	.byte	0x12
	.4byte	0xa3
	.byte	0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x40
	.byte	0x12
	.4byte	0xa3
	.byte	0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x41
	.byte	0x12
	.4byte	0xa3
	.byte	0x8
	.4byte	.LASF20
	.byte	0x14
	.byte	0x5
	.2byte	0x414
	.byte	0x8
	.4byte	0xfe
	.byte	0x9
	.4byte	.LASF17
	.byte	0x5
	.2byte	0x419
	.byte	0xd
	.4byte	0xc7
	.byte	0
	.byte	0x9
	.4byte	.LASF18
	.byte	0x5
	.2byte	0x41a
	.byte	0x8
	.4byte	0xfe
	.byte	0x4
	.byte	0
	.byte	0xa
	.4byte	0x83
	.4byte	0x10e
	.byte	0xb
	.4byte	0x7c
	.byte	0x3
	.byte	0
	.byte	0xc
	.4byte	.LASF19
	.byte	0x5
	.2byte	0x41f
	.byte	0x22
	.4byte	0xd3
	.byte	0x8
	.4byte	.LASF21
	.byte	0x68
	.byte	0x5
	.2byte	0x447
	.byte	0x10
	.4byte	0x1e0
	.byte	0x9
	.4byte	.LASF22
	.byte	0x5
	.2byte	0x449
	.byte	0x8
	.4byte	0x83
	.byte	0
	.byte	0x9
	.4byte	.LASF23
	.byte	0x5
	.2byte	0x44d
	.byte	0x13
	.4byte	0x1e0
	.byte	0x4
	.byte	0x9
	.4byte	.LASF24
	.byte	0x5
	.2byte	0x44e
	.byte	0xe
	.4byte	0xbb
	.byte	0x2c
	.byte	0x9
	.4byte	.LASF25
	.byte	0x5
	.2byte	0x44f
	.byte	0x8
	.4byte	0x83
	.byte	0x30
	.byte	0x9
	.4byte	.LASF26
	.byte	0x5
	.2byte	0x450
	.byte	0xa
	.4byte	0x1f0
	.byte	0x34
	.byte	0x9
	.4byte	.LASF27
	.byte	0x5
	.2byte	0x455
	.byte	0xf
	.4byte	0xbb
	.byte	0x44
	.byte	0x9
	.4byte	.LASF28
	.byte	0x5
	.2byte	0x458
	.byte	0xf
	.4byte	0x200
	.byte	0x48
	.byte	0x9
	.4byte	.LASF29
	.byte	0x5
	.2byte	0x45b
	.byte	0xf
	.4byte	0x200
	.byte	0x50
	.byte	0x9
	.4byte	.LASF30
	.byte	0x5
	.2byte	0x461
	.byte	0x9
	.4byte	0x210
	.byte	0x58
	.byte	0x9
	.4byte	.LASF31
	.byte	0x5
	.2byte	0x463
	.byte	0xf
	.4byte	0x210
	.byte	0x5c
	.byte	0x9
	.4byte	.LASF32
	.byte	0x5
	.2byte	0x46d
	.byte	0xc
	.4byte	0xa3
	.byte	0x60
	.byte	0x9
	.4byte	.LASF33
	.byte	0x5
	.2byte	0x46e
	.byte	0xb
	.4byte	0x97
	.byte	0x64
	.byte	0x9
	.4byte	.LASF34
	.byte	0x5
	.2byte	0x471
	.byte	0xb
	.4byte	0x97
	.byte	0x65
	.byte	0
	.byte	0xa
	.4byte	0x10e
	.4byte	0x1f0
	.byte	0xb
	.4byte	0x7c
	.byte	0x1
	.byte	0
	.byte	0xa
	.4byte	0x97
	.4byte	0x200
	.byte	0xb
	.4byte	0x7c
	.byte	0xf
	.byte	0
	.byte	0xa
	.4byte	0xbb
	.4byte	0x210
	.byte	0xb
	.4byte	0x7c
	.byte	0x1
	.byte	0
	.byte	0xa
	.4byte	0x83
	.4byte	0x220
	.byte	0xb
	.4byte	0x7c
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	.LASF35
	.byte	0x5
	.2byte	0x47a
	.byte	0x3
	.4byte	0x11b
	.byte	0x3
	.4byte	.LASF36
	.byte	0x6
	.byte	0x46
	.byte	0x25
	.4byte	0x239
	.byte	0x7
	.byte	0x4
	.4byte	0x23f
	.byte	0xd
	.4byte	.LASF118
	.byte	0x7
	.byte	0x4
	.4byte	0xaf
	.byte	0xe
	.4byte	.LASF37
	.byte	0x4
	.byte	0x7
	.byte	0x11
	.byte	0x8
	.4byte	0x265
	.byte	0xf
	.4byte	.LASF38
	.byte	0x7
	.byte	0x13
	.byte	0x1c
	.4byte	0x265
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x24a
	.byte	0xe
	.4byte	.LASF39
	.byte	0x8
	.byte	0x7
	.byte	0x16
	.byte	0x8
	.4byte	0x293
	.byte	0xf
	.4byte	.LASF40
	.byte	0x7
	.byte	0x19
	.byte	0x1c
	.4byte	0x265
	.byte	0
	.byte	0xf
	.4byte	.LASF41
	.byte	0x7
	.byte	0x1b
	.byte	0x1c
	.4byte	0x265
	.byte	0x4
	.byte	0
	.byte	0x8
	.4byte	.LASF42
	.byte	0x8
	.byte	0x7
	.2byte	0x103
	.byte	0x10
	.4byte	0x2be
	.byte	0x9
	.4byte	.LASF43
	.byte	0x7
	.2byte	0x104
	.byte	0x1b
	.4byte	0x2be
	.byte	0
	.byte	0x9
	.4byte	.LASF38
	.byte	0x7
	.2byte	0x105
	.byte	0x1b
	.4byte	0x2be
	.byte	0x4
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x293
	.byte	0xc
	.4byte	.LASF44
	.byte	0x7
	.2byte	0x106
	.byte	0x3
	.4byte	0x293
	.byte	0x10
	.byte	0x4
	.byte	0x8
	.byte	0x11
	.byte	0x9
	.4byte	0x30f
	.byte	0xf
	.4byte	.LASF45
	.byte	0x8
	.byte	0x12
	.byte	0x15
	.4byte	0x97
	.byte	0
	.byte	0xf
	.4byte	.LASF46
	.byte	0x8
	.byte	0x13
	.byte	0x15
	.4byte	0x97
	.byte	0x1
	.byte	0xf
	.4byte	.LASF47
	.byte	0x8
	.byte	0x14
	.byte	0x15
	.4byte	0x97
	.byte	0x2
	.byte	0xf
	.4byte	.LASF48
	.byte	0x8
	.byte	0x15
	.byte	0x15
	.4byte	0x97
	.byte	0x3
	.byte	0
	.byte	0x11
	.byte	0x4
	.byte	0x8
	.byte	0xf
	.byte	0x5
	.4byte	0x331
	.byte	0x12
	.4byte	.LASF49
	.byte	0x8
	.byte	0x10
	.byte	0xf
	.4byte	0x83
	.byte	0x12
	.4byte	.LASF50
	.byte	0x8
	.byte	0x16
	.byte	0xb
	.4byte	0x2d1
	.byte	0
	.byte	0xe
	.4byte	.LASF51
	.byte	0x18
	.byte	0x8
	.byte	0xd
	.byte	0x8
	.4byte	0x38b
	.byte	0xf
	.4byte	.LASF52
	.byte	0x8
	.byte	0xe
	.byte	0x1b
	.4byte	0x24a
	.byte	0
	.byte	0x13
	.string	"u"
	.byte	0x8
	.byte	0x17
	.byte	0x7
	.4byte	0x30f
	.byte	0x4
	.byte	0xf
	.4byte	.LASF53
	.byte	0x8
	.byte	0x18
	.byte	0xb
	.4byte	0x83
	.byte	0x8
	.byte	0xf
	.4byte	.LASF54
	.byte	0x8
	.byte	0x19
	.byte	0xb
	.4byte	0x83
	.byte	0xc
	.byte	0xf
	.4byte	.LASF55
	.byte	0x8
	.byte	0x1a
	.byte	0x12
	.4byte	0x7c
	.byte	0x10
	.byte	0xf
	.4byte	.LASF56
	.byte	0x8
	.byte	0x1b
	.byte	0x12
	.4byte	0x7c
	.byte	0x14
	.byte	0
	.byte	0xe
	.4byte	.LASF57
	.byte	0x10
	.byte	0x8
	.byte	0x1e
	.byte	0x8
	.4byte	0x3cd
	.byte	0xf
	.4byte	.LASF58
	.byte	0x8
	.byte	0x1f
	.byte	0x12
	.4byte	0x7c
	.byte	0
	.byte	0xf
	.4byte	.LASF56
	.byte	0x8
	.byte	0x20
	.byte	0x12
	.4byte	0x7c
	.byte	0x4
	.byte	0xf
	.4byte	.LASF59
	.byte	0x8
	.byte	0x21
	.byte	0x12
	.4byte	0x7c
	.byte	0x8
	.byte	0xf
	.4byte	.LASF60
	.byte	0x8
	.byte	0x22
	.byte	0x12
	.4byte	0x7c
	.byte	0xc
	.byte	0
	.byte	0xe
	.4byte	.LASF61
	.byte	0xc
	.byte	0x8
	.byte	0x25
	.byte	0x8
	.4byte	0x402
	.byte	0xf
	.4byte	.LASF62
	.byte	0x8
	.byte	0x26
	.byte	0x11
	.4byte	0x91
	.byte	0
	.byte	0x13
	.string	"evt"
	.byte	0x8
	.byte	0x27
	.byte	0xb
	.4byte	0x4da
	.byte	0x4
	.byte	0xf
	.4byte	.LASF63
	.byte	0x8
	.byte	0x28
	.byte	0xb
	.4byte	0x4ff
	.byte	0x8
	.byte	0
	.byte	0x6
	.4byte	0x3cd
	.byte	0x14
	.4byte	0x75
	.4byte	0x425
	.byte	0x15
	.4byte	0x425
	.byte	0x15
	.4byte	0x4ce
	.byte	0x15
	.4byte	0x4d4
	.byte	0x15
	.4byte	0x4d4
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x42b
	.byte	0x16
	.4byte	.LASF64
	.2byte	0x4a0
	.byte	0x8
	.byte	0x2e
	.byte	0x8
	.4byte	0x4ce
	.byte	0xf
	.4byte	.LASF65
	.byte	0x8
	.byte	0x2f
	.byte	0x12
	.4byte	0x22d
	.byte	0
	.byte	0xf
	.4byte	.LASF66
	.byte	0x8
	.byte	0x30
	.byte	0xe
	.4byte	0xa3
	.byte	0x4
	.byte	0xf
	.4byte	.LASF67
	.byte	0x8
	.byte	0x31
	.byte	0xe
	.4byte	0xa3
	.byte	0x8
	.byte	0xf
	.4byte	.LASF68
	.byte	0x8
	.byte	0x32
	.byte	0xe
	.4byte	0xa3
	.byte	0xc
	.byte	0xf
	.4byte	.LASF69
	.byte	0x8
	.byte	0x33
	.byte	0xe
	.4byte	0x505
	.byte	0x10
	.byte	0xf
	.4byte	.LASF70
	.byte	0x8
	.byte	0x34
	.byte	0xe
	.4byte	0x505
	.byte	0x90
	.byte	0x17
	.4byte	.LASF71
	.byte	0x8
	.byte	0x35
	.byte	0x17
	.4byte	0x515
	.2byte	0x110
	.byte	0x17
	.4byte	.LASF72
	.byte	0x8
	.byte	0x36
	.byte	0x27
	.4byte	0x525
	.2byte	0x210
	.byte	0x17
	.4byte	.LASF73
	.byte	0x8
	.byte	0x37
	.byte	0x25
	.4byte	0x535
	.2byte	0x410
	.byte	0x17
	.4byte	.LASF74
	.byte	0x8
	.byte	0x39
	.byte	0x13
	.4byte	0x2c4
	.2byte	0x490
	.byte	0x17
	.4byte	.LASF75
	.byte	0x8
	.byte	0x3a
	.byte	0x13
	.4byte	0x2c4
	.2byte	0x498
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x402
	.byte	0x7
	.byte	0x4
	.4byte	0xa3
	.byte	0x7
	.byte	0x4
	.4byte	0x407
	.byte	0x14
	.4byte	0x75
	.4byte	0x4f9
	.byte	0x15
	.4byte	0x425
	.byte	0x15
	.4byte	0x4ce
	.byte	0x15
	.4byte	0x4f9
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x331
	.byte	0x7
	.byte	0x4
	.4byte	0x4e0
	.byte	0xa
	.4byte	0xa3
	.4byte	0x515
	.byte	0xb
	.4byte	0x7c
	.byte	0x1f
	.byte	0
	.byte	0xa
	.4byte	0x26b
	.4byte	0x525
	.byte	0xb
	.4byte	0x7c
	.byte	0x1f
	.byte	0
	.byte	0xa
	.4byte	0x38b
	.4byte	0x535
	.byte	0xb
	.4byte	0x7c
	.byte	0x1f
	.byte	0
	.byte	0xa
	.4byte	0x4ce
	.4byte	0x545
	.byte	0xb
	.4byte	0x7c
	.byte	0x1f
	.byte	0
	.byte	0xe
	.4byte	.LASF76
	.byte	0x24
	.byte	0x8
	.byte	0x3d
	.byte	0x8
	.4byte	0x5ba
	.byte	0xf
	.4byte	.LASF77
	.byte	0x8
	.byte	0x3e
	.byte	0x13
	.4byte	0x2c4
	.byte	0
	.byte	0xf
	.4byte	.LASF78
	.byte	0x8
	.byte	0x45
	.byte	0xd
	.4byte	0x97
	.byte	0x8
	.byte	0xf
	.4byte	.LASF55
	.byte	0x8
	.byte	0x47
	.byte	0x12
	.4byte	0x7c
	.byte	0xc
	.byte	0xf
	.4byte	.LASF79
	.byte	0x8
	.byte	0x48
	.byte	0x12
	.4byte	0x7c
	.byte	0x10
	.byte	0xf
	.4byte	.LASF80
	.byte	0x8
	.byte	0x49
	.byte	0x9
	.4byte	0x75
	.byte	0x14
	.byte	0xf
	.4byte	.LASF81
	.byte	0x8
	.byte	0x4a
	.byte	0xe
	.4byte	0xa3
	.byte	0x18
	.byte	0x13
	.string	"cb"
	.byte	0x8
	.byte	0x4b
	.byte	0xc
	.4byte	0x5d5
	.byte	0x1c
	.byte	0x13
	.string	"arg"
	.byte	0x8
	.byte	0x4c
	.byte	0xb
	.4byte	0x83
	.byte	0x20
	.byte	0
	.byte	0x18
	.4byte	0x5cf
	.byte	0x15
	.4byte	0x425
	.byte	0x15
	.4byte	0x5cf
	.byte	0x15
	.4byte	0x83
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x545
	.byte	0x7
	.byte	0x4
	.4byte	0x5ba
	.byte	0x19
	.4byte	.LASF119
	.byte	0x8
	.byte	0x50
	.byte	0x20
	.4byte	0x3cd
	.byte	0x1a
	.4byte	.LASF94
	.byte	0x1
	.byte	0x7
	.byte	0x18
	.4byte	0x42b
	.byte	0x5
	.byte	0x3
	.4byte	looprt
	.byte	0x1b
	.4byte	.LASF82
	.byte	0x1
	.byte	0x58
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x1
	.byte	0x9c
	.4byte	0x63e
	.byte	0x1c
	.4byte	.LASF84
	.byte	0x1
	.byte	0x58
	.byte	0x2e
	.4byte	0x5cf
	.4byte	.LLST14
	.byte	0x1d
	.4byte	.LVL48
	.4byte	0xa1f
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LASF83
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x1
	.byte	0x9c
	.4byte	0x69a
	.byte	0x1c
	.4byte	.LASF85
	.byte	0x1
	.byte	0x50
	.byte	0x3c
	.4byte	0x4ce
	.4byte	.LLST12
	.byte	0x1c
	.4byte	.LASF45
	.byte	0x1
	.byte	0x50
	.byte	0x49
	.4byte	0x75
	.4byte	.LLST13
	.byte	0x1f
	.4byte	.LVL44
	.4byte	0xa2b
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LASF86
	.byte	0x1
	.byte	0x40
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x1
	.byte	0x9c
	.4byte	0x73a
	.byte	0x20
	.4byte	.LVL36
	.4byte	0xa37
	.4byte	0x6cb
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0x20
	.4byte	.LVL37
	.4byte	0xa2b
	.4byte	0x6e7
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x4f
	.byte	0
	.byte	0x21
	.4byte	.LVL38
	.4byte	0x8df
	.byte	0x20
	.4byte	.LVL39
	.4byte	0xa43
	.4byte	0x726
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	proc_entry_looprt
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0x1e
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x1e
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x4a
	.byte	0x1e
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1d
	.4byte	.LVL40
	.4byte	0xa50
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LASF87
	.byte	0x1
	.byte	0x30
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x1
	.byte	0x9c
	.4byte	0x812
	.byte	0x1c
	.4byte	.LASF88
	.byte	0x1
	.byte	0x30
	.byte	0x1f
	.4byte	0x244
	.4byte	.LLST9
	.byte	0x1c
	.4byte	.LASF89
	.byte	0x1
	.byte	0x30
	.byte	0x36
	.4byte	0x75
	.4byte	.LLST10
	.byte	0x1c
	.4byte	.LASF90
	.byte	0x1
	.byte	0x30
	.byte	0x51
	.4byte	0x812
	.4byte	.LLST11
	.byte	0x20
	.4byte	.LVL29
	.4byte	0xa37
	.4byte	0x79b
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0x20
	.4byte	.LVL30
	.4byte	0xa2b
	.4byte	0x7b7
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x4f
	.byte	0
	.byte	0x21
	.4byte	.LVL31
	.4byte	0x8df
	.byte	0x20
	.4byte	.LVL32
	.4byte	0xa5c
	.4byte	0x7fe
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	proc_entry_looprt
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x1e
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x1e
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x4a
	.byte	0x1e
	.byte	0x1
	.byte	0x5f
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0x1e
	.byte	0x1
	.byte	0x60
	.byte	0x3
	.byte	0x91
	.byte	0x68
	.byte	0x6
	.byte	0
	.byte	0x1d
	.4byte	.LVL33
	.4byte	0xa50
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x220
	.byte	0x22
	.4byte	.LASF95
	.byte	0x1
	.byte	0x23
	.byte	0x6
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x1
	.byte	0x9c
	.4byte	0x8df
	.byte	0x1c
	.4byte	.LASF91
	.byte	0x1
	.byte	0x23
	.byte	0x1e
	.4byte	0x75
	.4byte	.LLST5
	.byte	0x1c
	.4byte	.LASF92
	.byte	0x1
	.byte	0x23
	.byte	0x2d
	.4byte	0xa3
	.4byte	.LLST6
	.byte	0x1c
	.4byte	.LASF93
	.byte	0x1
	.byte	0x23
	.byte	0x3a
	.4byte	0x75
	.4byte	.LLST7
	.byte	0x23
	.4byte	.LASF84
	.byte	0x1
	.byte	0x25
	.byte	0x18
	.4byte	0x5cf
	.4byte	.LLST8
	.byte	0x20
	.4byte	.LVL16
	.4byte	0xa69
	.4byte	0x882
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x24
	.byte	0
	.byte	0x20
	.4byte	.LVL17
	.4byte	0xa75
	.4byte	0x89b
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x20
	.4byte	.LVL18
	.4byte	0xa81
	.4byte	0x8cb
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0x1e
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x1e
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1e
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL23
	.4byte	0xa1f
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LASF96
	.byte	0x1
	.byte	0x1e
	.byte	0x6
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x1
	.byte	0x9c
	.4byte	0x909
	.byte	0x1f
	.4byte	.LVL13
	.4byte	0xa8d
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LASF97
	.byte	0x1
	.byte	0x19
	.byte	0x6
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x1
	.byte	0x9c
	.4byte	0x961
	.byte	0x1c
	.4byte	.LASF91
	.byte	0x1
	.byte	0x19
	.byte	0x33
	.4byte	0x7c
	.4byte	.LLST3
	.byte	0x1c
	.4byte	.LASF92
	.byte	0x1
	.byte	0x19
	.byte	0x42
	.4byte	0xa3
	.4byte	.LLST4
	.byte	0x1f
	.4byte	.LVL12
	.4byte	0xa99
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LASF98
	.byte	0x1
	.byte	0x14
	.byte	0x6
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x1
	.byte	0x9c
	.4byte	0x9b9
	.byte	0x1c
	.4byte	.LASF91
	.byte	0x1
	.byte	0x14
	.byte	0x2b
	.4byte	0x7c
	.4byte	.LLST1
	.byte	0x1c
	.4byte	.LASF92
	.byte	0x1
	.byte	0x14
	.byte	0x3a
	.4byte	0xa3
	.4byte	.LLST2
	.byte	0x1f
	.4byte	.LVL8
	.4byte	0xaa5
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LASF120
	.byte	0x1
	.byte	0x9
	.byte	0xd
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x1
	.byte	0x9c
	.4byte	0xa1f
	.byte	0x1c
	.4byte	.LASF99
	.byte	0x1
	.byte	0x9
	.byte	0x25
	.4byte	0x83
	.4byte	.LLST0
	.byte	0x20
	.4byte	.LVL2
	.4byte	0xab1
	.4byte	0x9f6
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0x20
	.4byte	.LVL3
	.4byte	0xabd
	.4byte	0xa0d
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x1d
	.4byte	.LVL4
	.4byte	0xac9
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.byte	0
	.byte	0x25
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0x8
	.byte	0x5d
	.byte	0x6
	.byte	0x25
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0x8
	.byte	0x56
	.byte	0x5
	.byte	0x25
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0x8
	.byte	0x53
	.byte	0x5
	.byte	0x26
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x14a
	.byte	0xd
	.byte	0x25
	.4byte	.LASF104
	.4byte	.LASF104
	.byte	0x8
	.byte	0x5e
	.byte	0x6
	.byte	0x26
	.4byte	.LASF105
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x1be
	.byte	0xf
	.byte	0x25
	.4byte	.LASF106
	.4byte	.LASF106
	.byte	0x9
	.byte	0x91
	.byte	0x7
	.byte	0x25
	.4byte	.LASF107
	.4byte	.LASF107
	.byte	0x8
	.byte	0x58
	.byte	0x6
	.byte	0x25
	.4byte	.LASF108
	.4byte	.LASF108
	.byte	0x8
	.byte	0x59
	.byte	0x6
	.byte	0x25
	.4byte	.LASF109
	.4byte	.LASF109
	.byte	0x8
	.byte	0x55
	.byte	0x5
	.byte	0x25
	.4byte	.LASF110
	.4byte	.LASF110
	.byte	0x8
	.byte	0x62
	.byte	0x6
	.byte	0x25
	.4byte	.LASF111
	.4byte	.LASF111
	.byte	0x8
	.byte	0x61
	.byte	0x6
	.byte	0x25
	.4byte	.LASF112
	.4byte	.LASF112
	.byte	0x8
	.byte	0x54
	.byte	0x5
	.byte	0x25
	.4byte	.LASF113
	.4byte	.LASF113
	.byte	0xa
	.byte	0xdd
	.byte	0x5
	.byte	0x26
	.4byte	.LASF114
	.4byte	.LASF114
	.byte	0x6
	.2byte	0x2f6
	.byte	0x6
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0x1b
	.byte	0xe
	.byte	0x55
	.byte	0x17
	.byte	0x11
	.byte	0x1
	.byte	0x10
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x13
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x17
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0x5
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1d
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1e
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1f
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x22
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x23
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x24
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x25
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0x6e
	.byte	0xe
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x26
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0x6e
	.byte	0xe
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST14:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL47
	.4byte	.LVL48-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL48-1
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL43
	.4byte	.LVL44-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL44-1
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL42
	.4byte	.LVL44-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL44-1
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL35
	.4byte	.LFE30
	.2byte	0x2
	.byte	0x72
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL27
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL29-1
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL34
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL27
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL29-1
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x91
	.byte	0x68
	.4byte	.LVL35
	.4byte	.LFE30
	.2byte	0x2
	.byte	0x72
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL25
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL14
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL16-1
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL26
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL14
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL16-1
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL20
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL24
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL16
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17-1
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL19
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL23
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL12-1
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL10
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL12-1
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL8-1
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL6
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL8-1
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x5c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF107:
	.string	"bloop_timer_init"
.LASF5:
	.string	"__uint8_t"
.LASF43:
	.string	"prev"
.LASF60:
	.string	"count_triggered"
.LASF94:
	.string	"looprt"
.LASF66:
	.string	"bitmap_evt_async"
.LASF80:
	.string	"idx_task"
.LASF112:
	.string	"bloop_run"
.LASF9:
	.string	"long long unsigned int"
.LASF120:
	.string	"proc_entry_looprt"
.LASF49:
	.string	"container"
.LASF38:
	.string	"next"
.LASF8:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF75:
	.string	"timer_dued"
.LASF7:
	.string	"long unsigned int"
.LASF114:
	.string	"vTaskDelay"
.LASF26:
	.string	"ucDummy7"
.LASF90:
	.string	"proc_task_looprt"
.LASF4:
	.string	"long int"
.LASF118:
	.string	"tskTaskControlBlock"
.LASF79:
	.string	"time_target"
.LASF36:
	.string	"TaskHandle_t"
.LASF16:
	.string	"TickType_t"
.LASF95:
	.string	"looprt_evt_schedule"
.LASF100:
	.string	"bloop_timer_register"
.LASF104:
	.string	"bloop_wait_startup"
.LASF6:
	.string	"__uint32_t"
.LASF116:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/sys/bloop/looprt/src/looprt.c"
.LASF106:
	.string	"pvPortMalloc"
.LASF27:
	.string	"uxDummy9"
.LASF105:
	.string	"xTaskCreateStatic"
.LASF10:
	.string	"unsigned int"
.LASF111:
	.string	"bloop_evt_set_async"
.LASF65:
	.string	"looper"
.LASF55:
	.string	"time_added"
.LASF89:
	.string	"stack_count"
.LASF99:
	.string	"pvParameters"
.LASF62:
	.string	"name"
.LASF3:
	.string	"short unsigned int"
.LASF14:
	.string	"StackType_t"
.LASF37:
	.string	"utils_list_hdr"
.LASF41:
	.string	"last"
.LASF45:
	.string	"priority"
.LASF28:
	.string	"uxDummy10"
.LASF29:
	.string	"uxDummy12"
.LASF68:
	.string	"bitmap_msg"
.LASF52:
	.string	"item"
.LASF97:
	.string	"looprt_evt_notify_async_fromISR"
.LASF109:
	.string	"bloop_status_dump"
.LASF32:
	.string	"ulDummy18"
.LASF85:
	.string	"handler"
.LASF113:
	.string	"puts"
.LASF110:
	.string	"bloop_evt_set_async_fromISR"
.LASF17:
	.string	"xDummy2"
.LASF23:
	.string	"xDummy3"
.LASF103:
	.string	"xTaskCreate"
.LASF88:
	.string	"proc_stack_looprt"
.LASF81:
	.string	"evt_type_map"
.LASF48:
	.string	"id_src"
.LASF46:
	.string	"id_dst"
.LASF84:
	.string	"timer"
.LASF34:
	.string	"uxDummy20"
.LASF19:
	.string	"StaticListItem_t"
.LASF73:
	.string	"handlers"
.LASF53:
	.string	"arg1"
.LASF25:
	.string	"pxDummy6"
.LASF87:
	.string	"looprt_start"
.LASF1:
	.string	"unsigned char"
.LASF72:
	.string	"statistic"
.LASF2:
	.string	"short int"
.LASF59:
	.string	"time_accumulated"
.LASF76:
	.string	"loop_timer"
.LASF57:
	.string	"loop_evt_handler_statistic"
.LASF96:
	.string	"looprt_evt_status_dump"
.LASF102:
	.string	"bloop_init"
.LASF21:
	.string	"xSTATIC_TCB"
.LASF93:
	.string	"delay_ms"
.LASF117:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/build_out/looprt"
.LASF13:
	.string	"uint32_t"
.LASF40:
	.string	"first"
.LASF77:
	.string	"dlist_item"
.LASF11:
	.string	"char"
.LASF98:
	.string	"looprt_evt_notify_async"
.LASF56:
	.string	"time_consumed"
.LASF18:
	.string	"pvDummy3"
.LASF47:
	.string	"id_msg"
.LASF108:
	.string	"bloop_timer_configure"
.LASF24:
	.string	"uxDummy5"
.LASF22:
	.string	"pxDummy1"
.LASF83:
	.string	"looprt_handler_register"
.LASF61:
	.string	"loop_evt_handler"
.LASF31:
	.string	"pvDummy15_1"
.LASF91:
	.string	"task"
.LASF86:
	.string	"looprt_start_auto"
.LASF101:
	.string	"bloop_handler_register"
.LASF54:
	.string	"arg2"
.LASF82:
	.string	"looprt_timer_register"
.LASF69:
	.string	"evt_type_map_async"
.LASF115:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF33:
	.string	"ucDummy19"
.LASF39:
	.string	"utils_list"
.LASF12:
	.string	"uint8_t"
.LASF78:
	.string	"flags"
.LASF92:
	.string	"evt_map"
.LASF70:
	.string	"evt_type_map_sync"
.LASF64:
	.string	"loop_ctx"
.LASF119:
	.string	"bloop_handler_sys"
.LASF63:
	.string	"handle"
.LASF67:
	.string	"bitmap_evt_sync"
.LASF20:
	.string	"xSTATIC_LIST_ITEM"
.LASF74:
	.string	"timer_dlist"
.LASF30:
	.string	"pvDummy15"
.LASF58:
	.string	"time_max"
.LASF51:
	.string	"loop_msg"
.LASF42:
	.string	"utils_dlist_s"
.LASF44:
	.string	"utils_dlist_t"
.LASF71:
	.string	"list"
.LASF15:
	.string	"UBaseType_t"
.LASF35:
	.string	"StaticTask_t"
.LASF50:
	.string	"header"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
