	.file	"loopset_pwm.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text._cb_pwm_trigger,"ax",@progbits
	.align	1
	.type	_cb_pwm_trigger, @function
_cb_pwm_trigger:
.LFB29:
	.file 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/sys/bloop/loopset/src/loopset_pwm.c"
	.loc 1 57 1
	.cfi_startproc
.LVL0:
	.loc 1 58 5
	.loc 1 60 5
	.loc 1 60 16 is_stmt 0
	lw	a5,36(a2)
	.loc 1 60 8
	beq	a5,zero,.L1
	.loc 1 61 9 is_stmt 1
	lw	a0,40(a2)
.LVL1:
	jr	a5
.LVL2:
.L1:
	.loc 1 63 1 is_stmt 0
	ret
	.cfi_endproc
.LFE29:
	.size	_cb_pwm_trigger, .-_cb_pwm_trigger
	.section	.text._pwm_bloop_evt,"ax",@progbits
	.align	1
	.type	_pwm_bloop_evt, @function
_pwm_bloop_evt:
.LFB26:
	.loc 1 26 1 is_stmt 1
	.cfi_startproc
.LVL3:
	.loc 1 27 5
	.loc 1 29 17 is_stmt 0
	lui	a4,%hi(trigger)
	lw	a0,%lo(trigger)(a4)
.LVL4:
	.loc 1 27 14
	lw	a5,0(a3)
.LVL5:
	.loc 1 29 5 is_stmt 1
	.loc 1 29 8 is_stmt 0
	beq	a0,zero,.L10
	.loc 1 26 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 32 13
	andi	a5,a5,2
.LVL6:
	mv	s0,a3
	.loc 1 32 5 is_stmt 1
	.loc 1 32 8 is_stmt 0
	beq	a5,zero,.L5
	.loc 1 33 9 is_stmt 1
	call	looprt_timer_register
.LVL7:
.L5:
	.loc 1 36 5
	.loc 1 36 19 is_stmt 0
	sw	zero,0(s0)
	.loc 1 37 5 is_stmt 1
	.loc 1 38 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL8:
	.loc 1 37 12
	li	a4,0
	.loc 1 38 1
	mv	a0,a4
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL9:
.L10:
	li	a4,-1
	mv	a0,a4
	ret
	.cfi_endproc
.LFE26:
	.size	_pwm_bloop_evt, .-_pwm_bloop_evt
	.section	.text.loopset_pwm_hook_on_looprt,"ax",@progbits
	.align	1
	.globl	loopset_pwm_hook_on_looprt
	.type	loopset_pwm_hook_on_looprt, @function
loopset_pwm_hook_on_looprt:
.LFB27:
	.loc 1 41 1 is_stmt 1
	.cfi_startproc
	.loc 1 42 5
	.loc 1 48 5
	.loc 1 48 12 is_stmt 0
	lui	a0,%hi(.LANCHOR0)
	li	a1,4
	addi	a0,a0,%lo(.LANCHOR0)
	tail	looprt_handler_register
.LVL10:
	.cfi_endproc
.LFE27:
	.size	loopset_pwm_hook_on_looprt, .-loopset_pwm_hook_on_looprt
	.section	.text.loopset_pwm_hook_off_looprt,"ax",@progbits
	.align	1
	.globl	loopset_pwm_hook_off_looprt
	.type	loopset_pwm_hook_off_looprt, @function
loopset_pwm_hook_off_looprt:
.LFB28:
	.loc 1 52 1 is_stmt 1
	.cfi_startproc
	.loc 1 53 5
	.loc 1 54 1 is_stmt 0
	li	a0,0
	ret
	.cfi_endproc
.LFE28:
	.size	loopset_pwm_hook_off_looprt, .-loopset_pwm_hook_off_looprt
	.section	.text.loopset_pwm_trigger_stop,"ax",@progbits
	.align	1
	.globl	loopset_pwm_trigger_stop
	.type	loopset_pwm_trigger_stop, @function
loopset_pwm_trigger_stop:
.LFB30:
	.loc 1 66 1 is_stmt 1
	.cfi_startproc
	.loc 1 67 5
	.loc 1 67 26 is_stmt 0
	lui	a5,%hi(trigger)
	lw	a4,%lo(trigger)(a5)
	lbu	a5,8(a4)
	andi	a5,a5,-2
	sb	a5,8(a4)
	.loc 1 68 1
	ret
	.cfi_endproc
.LFE30:
	.size	loopset_pwm_trigger_stop, .-loopset_pwm_trigger_stop
	.section	.text.loopset_pwm_trigger_start,"ax",@progbits
	.align	1
	.globl	loopset_pwm_trigger_start
	.type	loopset_pwm_trigger_start, @function
loopset_pwm_trigger_start:
.LFB31:
	.loc 1 71 1 is_stmt 1
	.cfi_startproc
	.loc 1 72 5
	.loc 1 72 16 is_stmt 0
	lui	a5,%hi(trigger)
	lw	a0,%lo(trigger)(a5)
	.loc 1 72 8
	lbu	a5,8(a0)
	andi	a5,a5,1
	bne	a5,zero,.L18
	.loc 1 75 5 is_stmt 1
	.loc 1 71 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 75 5
	call	bloop_timer_repeat_enable
.LVL11:
	.loc 1 76 5 is_stmt 1
	.loc 1 77 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 76 5
	li	a1,2
	.loc 1 77 1
	.loc 1 76 5
	li	a0,4
	.loc 1 77 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 76 5
	tail	looprt_evt_notify_async
.LVL12:
.L18:
	ret
	.cfi_endproc
.LFE31:
	.size	loopset_pwm_trigger_start, .-loopset_pwm_trigger_start
	.section	.rodata.loopset_pwm_trigger_on.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"loopset_pwm.c"
	.align	2
.LC1:
	.string	"ASSERT"
	.align	2
.LC2:
	.string	"[%10u][%s: %s:%4d] ASSERT: %s:%d\r\n"
	.section	.text.loopset_pwm_trigger_on,"ax",@progbits
	.align	1
	.globl	loopset_pwm_trigger_on
	.type	loopset_pwm_trigger_on, @function
loopset_pwm_trigger_on:
.LFB32:
	.loc 1 80 1 is_stmt 1
	.cfi_startproc
.LVL13:
	.loc 1 81 5
	.loc 1 80 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	.cfi_offset 8, -8
	.loc 1 81 9
	lui	s0,%hi(trigger)
	.loc 1 81 8
	lw	a5,%lo(trigger)(s0)
	.loc 1 80 1
	sw	ra,28(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.loc 1 81 8
	bne	a5,zero,.L23
	mv	s1,a0
	.loc 1 84 15
	li	a0,44
.LVL14:
	mv	s3,a1
	mv	s2,a2
	.loc 1 84 5 is_stmt 1
	.loc 1 84 15 is_stmt 0
	call	pvPortMalloc
.LVL15:
	.loc 1 84 13
	sw	a0,%lo(trigger)(s0)
	.loc 1 85 5 is_stmt 1
	.loc 1 85 10
	.loc 1 85 13 is_stmt 0
	bne	a0,zero,.L25
	.loc 1 85 28 is_stmt 1 discriminator 1
	.loc 1 85 33 discriminator 1
	.loc 1 85 35 discriminator 1
	.loc 1 85 89 is_stmt 0 discriminator 1
	call	xPortIsInsideInterrupt
.LVL16:
	.loc 1 85 35 discriminator 1
	beq	a0,zero,.L26
	.loc 1 85 116 discriminator 3
	call	xTaskGetTickCountFromISR
.LVL17:
.L30:
	.loc 1 85 35 discriminator 4
	lui	a3,%hi(.LC0)
	.loc 1 85 145 discriminator 4
	mv	a1,a0
	.loc 1 85 35 discriminator 4
	lui	a2,%hi(.LC1)
	lui	a0,%hi(.LC2)
	addi	a5,a3,%lo(.LC0)
	li	a6,85
	li	a4,85
	addi	a3,a3,%lo(.LC0)
	addi	a2,a2,%lo(.LC1)
	addi	a0,a0,%lo(.LC2)
	call	bl_printk
.LVL18:
.L28:
	.loc 1 85 220 is_stmt 1 discriminator 1
	.loc 1 85 229 discriminator 1
	.loc 1 85 237 discriminator 1
	.loc 1 85 249 discriminator 1
	.loc 1 85 243 discriminator 1
	j	.L28
.L26:
	.loc 1 85 145 is_stmt 0 discriminator 4
	call	xTaskGetTickCount
.LVL19:
	j	.L30
.L25:
	.loc 1 85 261 is_stmt 1 discriminator 2
	.loc 1 86 5 discriminator 2
	li	a2,44
	li	a1,0
	call	memset
.LVL20:
	.loc 1 88 5 discriminator 2
	.loc 1 88 12 is_stmt 0 discriminator 2
	lw	a0,%lo(trigger)(s0)
	.loc 1 91 5 discriminator 2
	li	a1,0
	.loc 1 88 17 discriminator 2
	sw	s3,36(a0)
	.loc 1 89 5 is_stmt 1 discriminator 2
	.loc 1 89 20 is_stmt 0 discriminator 2
	sw	s2,40(a0)
	.loc 1 91 5 is_stmt 1 discriminator 2
	call	bloop_timer_init
.LVL21:
	.loc 1 92 5 discriminator 2
	.loc 1 92 35 is_stmt 0 discriminator 2
	lw	a3,%lo(trigger)(s0)
	.loc 1 92 5 discriminator 2
	lui	a2,%hi(_cb_pwm_trigger)
	mv	a1,s1
	mv	a0,a3
	li	a5,1
	li	a4,4
	addi	a2,a2,%lo(_cb_pwm_trigger)
	call	bloop_timer_configure
.LVL22:
	.loc 1 99 5 is_stmt 1 discriminator 2
	.loc 1 100 1 is_stmt 0 discriminator 2
	lw	s0,24(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s1,20(sp)
	.cfi_restore 9
.LVL23:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL24:
	lw	s3,12(sp)
	.cfi_restore 19
.LVL25:
	.loc 1 99 5 discriminator 2
	li	a1,2
	.loc 1 100 1 discriminator 2
	.loc 1 99 5 discriminator 2
	li	a0,4
	.loc 1 100 1 discriminator 2
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	.loc 1 99 5 discriminator 2
	tail	looprt_evt_notify_async
.LVL26:
.L23:
	.cfi_restore_state
	.loc 1 100 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE32:
	.size	loopset_pwm_trigger_on, .-loopset_pwm_trigger_on
	.section	.text.loopset_pwm_trigger_off,"ax",@progbits
	.align	1
	.globl	loopset_pwm_trigger_off
	.type	loopset_pwm_trigger_off, @function
loopset_pwm_trigger_off:
.LFB33:
	.loc 1 103 1 is_stmt 1
	.cfi_startproc
	.loc 1 105 1
	ret
	.cfi_endproc
.LFE33:
	.size	loopset_pwm_trigger_off, .-loopset_pwm_trigger_off
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC3:
	.string	"PWM Trigger"
	.comm	trigger,4,4
	.globl	_fsymf_info_loopsetloopset_pwm
	.align	2
.LC4:
	.string	"loopset.loopset_pwm"
	.comm	_fsymf_level_loopsetloopset_pwm,4,4
	.align	2
.LC5:
	.string	"loopset"
	.weak	_fsymc_level_loopset
	.section	.rodata._pwm_bloop_handler_holder.0,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	_pwm_bloop_handler_holder.0, @object
	.size	_pwm_bloop_handler_holder.0, 12
_pwm_bloop_handler_holder.0:
	.word	.LC3
	.word	_pwm_bloop_evt
	.word	0
	.section	.sbss._fsymc_level_loopset,"aw",@nobits
	.align	2
	.type	_fsymc_level_loopset, @object
	.size	_fsymc_level_loopset, 4
_fsymc_level_loopset:
	.zero	4
	.section	.srodata.BLOG_HARD_DECLARE_DISABLE,"a"
	.align	2
	.type	BLOG_HARD_DECLARE_DISABLE, @object
	.size	BLOG_HARD_DECLARE_DISABLE, 4
BLOG_HARD_DECLARE_DISABLE:
	.zero	4
	.section	.static_blogcomponent_code.loopset,"a"
	.align	2
	.type	_fsymc_info_loopset, @object
	.size	_fsymc_info_loopset, 8
_fsymc_info_loopset:
	.word	_fsymc_level_loopset
	.word	.LC5
	.section	.static_blogfile_code.loopsetloopset_pwm,"a"
	.align	2
	.type	_fsymf_info_loopsetloopset_pwm, @object
	.size	_fsymf_info_loopsetloopset_pwm, 8
_fsymf_info_loopsetloopset_pwm:
	.word	_fsymf_level_loopsetloopset_pwm
	.word	.LC4
	.text
.Letext0:
	.file 2 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 4 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/blog/blog_type.h"
	.file 5 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/blog/blog.h"
	.file 6 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/utils/include/utils_list.h"
	.file 7 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/sys/bloop/bloop/include/bloop.h"
	.file 8 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/sys/bloop/loopset/include/loopset_pwm.h"
	.file 9 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
	.file 10 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 11 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/utils/include/utils_log.h"
	.file 12 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 13 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/sys/bloop/looprt/include/looprt.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x8bc
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF100
	.byte	0xc
	.4byte	.LASF101
	.4byte	.LASF102
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.byte	0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x5b
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x7a
	.byte	0x5
	.4byte	0x69
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x6
	.byte	0x4
	.4byte	0x8e
	.byte	0x7
	.4byte	0x99
	.byte	0x8
	.4byte	0x99
	.byte	0
	.byte	0x9
	.byte	0x4
	.byte	0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x46
	.byte	0x25
	.4byte	0xa7
	.byte	0x6
	.byte	0x4
	.4byte	0xad
	.byte	0xa
	.4byte	.LASF103
	.byte	0x6
	.byte	0x4
	.4byte	0xbf
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x5
	.4byte	0xb8
	.byte	0x6
	.byte	0x4
	.4byte	0xb8
	.byte	0xb
	.4byte	.LASF104
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x4
	.byte	0x22
	.byte	0xe
	.4byte	0x107
	.byte	0xc
	.4byte	.LASF13
	.byte	0
	.byte	0xc
	.4byte	.LASF14
	.byte	0x1
	.byte	0xc
	.4byte	.LASF15
	.byte	0x2
	.byte	0xc
	.4byte	.LASF16
	.byte	0x3
	.byte	0xc
	.4byte	.LASF17
	.byte	0x4
	.byte	0xc
	.4byte	.LASF18
	.byte	0x5
	.byte	0xc
	.4byte	.LASF19
	.byte	0x6
	.byte	0
	.byte	0x4
	.4byte	.LASF20
	.byte	0x4
	.byte	0x2a
	.byte	0x3
	.4byte	0xca
	.byte	0xd
	.4byte	.LASF29
	.byte	0x8
	.byte	0x4
	.byte	0x2c
	.byte	0x10
	.4byte	0x13b
	.byte	0xe
	.4byte	.LASF21
	.byte	0x4
	.byte	0x2d
	.byte	0x13
	.4byte	0x13b
	.byte	0
	.byte	0xe
	.4byte	.LASF22
	.byte	0x4
	.byte	0x2e
	.byte	0xb
	.4byte	0xc4
	.byte	0x4
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x107
	.byte	0x4
	.4byte	.LASF23
	.byte	0x4
	.byte	0x2f
	.byte	0x3
	.4byte	0x113
	.byte	0x5
	.4byte	0x141
	.byte	0xf
	.4byte	.LASF24
	.byte	0x5
	.byte	0x38
	.byte	0x1b
	.4byte	0x75
	.byte	0x5
	.byte	0x3
	.4byte	BLOG_HARD_DECLARE_DISABLE
	.byte	0x10
	.4byte	.LASF26
	.byte	0x5
	.byte	0x45
	.byte	0x12
	.4byte	0x107
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_level_loopset
	.byte	0xf
	.4byte	.LASF25
	.byte	0x5
	.byte	0x46
	.byte	0x1e
	.4byte	0x14d
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_info_loopset
	.byte	0x10
	.4byte	.LASF27
	.byte	0x5
	.byte	0x53
	.byte	0x12
	.4byte	0x107
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_level_loopsetloopset_pwm
	.byte	0x10
	.4byte	.LASF28
	.byte	0x5
	.byte	0x54
	.byte	0x17
	.4byte	0x14d
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_info_loopsetloopset_pwm
	.byte	0xd
	.4byte	.LASF30
	.byte	0x4
	.byte	0x6
	.byte	0x11
	.byte	0x8
	.4byte	0x1c7
	.byte	0xe
	.4byte	.LASF31
	.byte	0x6
	.byte	0x13
	.byte	0x1c
	.4byte	0x1c7
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x1ac
	.byte	0xd
	.4byte	.LASF32
	.byte	0x8
	.byte	0x6
	.byte	0x16
	.byte	0x8
	.4byte	0x1f5
	.byte	0xe
	.4byte	.LASF33
	.byte	0x6
	.byte	0x19
	.byte	0x1c
	.4byte	0x1c7
	.byte	0
	.byte	0xe
	.4byte	.LASF34
	.byte	0x6
	.byte	0x1b
	.byte	0x1c
	.4byte	0x1c7
	.byte	0x4
	.byte	0
	.byte	0x11
	.4byte	.LASF35
	.byte	0x8
	.byte	0x6
	.2byte	0x103
	.byte	0x10
	.4byte	0x220
	.byte	0x12
	.4byte	.LASF36
	.byte	0x6
	.2byte	0x104
	.byte	0x1b
	.4byte	0x220
	.byte	0
	.byte	0x12
	.4byte	.LASF31
	.byte	0x6
	.2byte	0x105
	.byte	0x1b
	.4byte	0x220
	.byte	0x4
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x1f5
	.byte	0x13
	.4byte	.LASF37
	.byte	0x6
	.2byte	0x106
	.byte	0x3
	.4byte	0x1f5
	.byte	0x14
	.byte	0x4
	.byte	0x7
	.byte	0x11
	.byte	0x9
	.4byte	0x271
	.byte	0xe
	.4byte	.LASF38
	.byte	0x7
	.byte	0x12
	.byte	0x15
	.4byte	0x4f
	.byte	0
	.byte	0xe
	.4byte	.LASF39
	.byte	0x7
	.byte	0x13
	.byte	0x15
	.4byte	0x4f
	.byte	0x1
	.byte	0xe
	.4byte	.LASF40
	.byte	0x7
	.byte	0x14
	.byte	0x15
	.4byte	0x4f
	.byte	0x2
	.byte	0xe
	.4byte	.LASF41
	.byte	0x7
	.byte	0x15
	.byte	0x15
	.4byte	0x4f
	.byte	0x3
	.byte	0
	.byte	0x15
	.byte	0x4
	.byte	0x7
	.byte	0xf
	.byte	0x5
	.4byte	0x293
	.byte	0x16
	.4byte	.LASF42
	.byte	0x7
	.byte	0x10
	.byte	0xf
	.4byte	0x99
	.byte	0x16
	.4byte	.LASF43
	.byte	0x7
	.byte	0x16
	.byte	0xb
	.4byte	0x233
	.byte	0
	.byte	0xd
	.4byte	.LASF44
	.byte	0x18
	.byte	0x7
	.byte	0xd
	.byte	0x8
	.4byte	0x2ed
	.byte	0xe
	.4byte	.LASF45
	.byte	0x7
	.byte	0xe
	.byte	0x1b
	.4byte	0x1ac
	.byte	0
	.byte	0x17
	.string	"u"
	.byte	0x7
	.byte	0x17
	.byte	0x7
	.4byte	0x271
	.byte	0x4
	.byte	0xe
	.4byte	.LASF46
	.byte	0x7
	.byte	0x18
	.byte	0xb
	.4byte	0x99
	.byte	0x8
	.byte	0xe
	.4byte	.LASF47
	.byte	0x7
	.byte	0x19
	.byte	0xb
	.4byte	0x99
	.byte	0xc
	.byte	0xe
	.4byte	.LASF48
	.byte	0x7
	.byte	0x1a
	.byte	0x12
	.4byte	0x2c
	.byte	0x10
	.byte	0xe
	.4byte	.LASF49
	.byte	0x7
	.byte	0x1b
	.byte	0x12
	.4byte	0x2c
	.byte	0x14
	.byte	0
	.byte	0xd
	.4byte	.LASF50
	.byte	0x10
	.byte	0x7
	.byte	0x1e
	.byte	0x8
	.4byte	0x32f
	.byte	0xe
	.4byte	.LASF51
	.byte	0x7
	.byte	0x1f
	.byte	0x12
	.4byte	0x2c
	.byte	0
	.byte	0xe
	.4byte	.LASF49
	.byte	0x7
	.byte	0x20
	.byte	0x12
	.4byte	0x2c
	.byte	0x4
	.byte	0xe
	.4byte	.LASF52
	.byte	0x7
	.byte	0x21
	.byte	0x12
	.4byte	0x2c
	.byte	0x8
	.byte	0xe
	.4byte	.LASF53
	.byte	0x7
	.byte	0x22
	.byte	0x12
	.4byte	0x2c
	.byte	0xc
	.byte	0
	.byte	0xd
	.4byte	.LASF54
	.byte	0xc
	.byte	0x7
	.byte	0x25
	.byte	0x8
	.4byte	0x364
	.byte	0xe
	.4byte	.LASF22
	.byte	0x7
	.byte	0x26
	.byte	0x11
	.4byte	0xb2
	.byte	0
	.byte	0x17
	.string	"evt"
	.byte	0x7
	.byte	0x27
	.byte	0xb
	.4byte	0x43c
	.byte	0x4
	.byte	0xe
	.4byte	.LASF55
	.byte	0x7
	.byte	0x28
	.byte	0xb
	.4byte	0x461
	.byte	0x8
	.byte	0
	.byte	0x5
	.4byte	0x32f
	.byte	0x18
	.4byte	0x25
	.4byte	0x387
	.byte	0x8
	.4byte	0x387
	.byte	0x8
	.4byte	0x430
	.byte	0x8
	.4byte	0x436
	.byte	0x8
	.4byte	0x436
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x38d
	.byte	0x19
	.4byte	.LASF56
	.2byte	0x4a0
	.byte	0x7
	.byte	0x2e
	.byte	0x8
	.4byte	0x430
	.byte	0xe
	.4byte	.LASF57
	.byte	0x7
	.byte	0x2f
	.byte	0x12
	.4byte	0x9b
	.byte	0
	.byte	0xe
	.4byte	.LASF58
	.byte	0x7
	.byte	0x30
	.byte	0xe
	.4byte	0x69
	.byte	0x4
	.byte	0xe
	.4byte	.LASF59
	.byte	0x7
	.byte	0x31
	.byte	0xe
	.4byte	0x69
	.byte	0x8
	.byte	0xe
	.4byte	.LASF60
	.byte	0x7
	.byte	0x32
	.byte	0xe
	.4byte	0x69
	.byte	0xc
	.byte	0xe
	.4byte	.LASF61
	.byte	0x7
	.byte	0x33
	.byte	0xe
	.4byte	0x467
	.byte	0x10
	.byte	0xe
	.4byte	.LASF62
	.byte	0x7
	.byte	0x34
	.byte	0xe
	.4byte	0x467
	.byte	0x90
	.byte	0x1a
	.4byte	.LASF63
	.byte	0x7
	.byte	0x35
	.byte	0x17
	.4byte	0x477
	.2byte	0x110
	.byte	0x1a
	.4byte	.LASF64
	.byte	0x7
	.byte	0x36
	.byte	0x27
	.4byte	0x487
	.2byte	0x210
	.byte	0x1a
	.4byte	.LASF65
	.byte	0x7
	.byte	0x37
	.byte	0x25
	.4byte	0x497
	.2byte	0x410
	.byte	0x1a
	.4byte	.LASF66
	.byte	0x7
	.byte	0x39
	.byte	0x13
	.4byte	0x226
	.2byte	0x490
	.byte	0x1a
	.4byte	.LASF67
	.byte	0x7
	.byte	0x3a
	.byte	0x13
	.4byte	0x226
	.2byte	0x498
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x364
	.byte	0x6
	.byte	0x4
	.4byte	0x69
	.byte	0x6
	.byte	0x4
	.4byte	0x369
	.byte	0x18
	.4byte	0x25
	.4byte	0x45b
	.byte	0x8
	.4byte	0x387
	.byte	0x8
	.4byte	0x430
	.byte	0x8
	.4byte	0x45b
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x293
	.byte	0x6
	.byte	0x4
	.4byte	0x442
	.byte	0x1b
	.4byte	0x69
	.4byte	0x477
	.byte	0x1c
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.byte	0x1b
	.4byte	0x1cd
	.4byte	0x487
	.byte	0x1c
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.byte	0x1b
	.4byte	0x2ed
	.4byte	0x497
	.byte	0x1c
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.byte	0x1b
	.4byte	0x430
	.4byte	0x4a7
	.byte	0x1c
	.4byte	0x2c
	.byte	0x1f
	.byte	0
	.byte	0xd
	.4byte	.LASF68
	.byte	0x24
	.byte	0x7
	.byte	0x3d
	.byte	0x8
	.4byte	0x51c
	.byte	0xe
	.4byte	.LASF69
	.byte	0x7
	.byte	0x3e
	.byte	0x13
	.4byte	0x226
	.byte	0
	.byte	0xe
	.4byte	.LASF70
	.byte	0x7
	.byte	0x45
	.byte	0xd
	.4byte	0x4f
	.byte	0x8
	.byte	0xe
	.4byte	.LASF48
	.byte	0x7
	.byte	0x47
	.byte	0x12
	.4byte	0x2c
	.byte	0xc
	.byte	0xe
	.4byte	.LASF71
	.byte	0x7
	.byte	0x48
	.byte	0x12
	.4byte	0x2c
	.byte	0x10
	.byte	0xe
	.4byte	.LASF72
	.byte	0x7
	.byte	0x49
	.byte	0x9
	.4byte	0x25
	.byte	0x14
	.byte	0xe
	.4byte	.LASF73
	.byte	0x7
	.byte	0x4a
	.byte	0xe
	.4byte	0x69
	.byte	0x18
	.byte	0x17
	.string	"cb"
	.byte	0x7
	.byte	0x4b
	.byte	0xc
	.4byte	0x537
	.byte	0x1c
	.byte	0x17
	.string	"arg"
	.byte	0x7
	.byte	0x4c
	.byte	0xb
	.4byte	0x99
	.byte	0x20
	.byte	0
	.byte	0x7
	.4byte	0x531
	.byte	0x8
	.4byte	0x387
	.byte	0x8
	.4byte	0x531
	.byte	0x8
	.4byte	0x99
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x4a7
	.byte	0x6
	.byte	0x4
	.4byte	0x51c
	.byte	0x4
	.4byte	.LASF74
	.byte	0x8
	.byte	0x6
	.byte	0x10
	.4byte	0x88
	.byte	0xd
	.4byte	.LASF75
	.byte	0x2c
	.byte	0x1
	.byte	0x11
	.byte	0x8
	.4byte	0x57d
	.byte	0xe
	.4byte	.LASF76
	.byte	0x1
	.byte	0x12
	.byte	0x17
	.4byte	0x4a7
	.byte	0
	.byte	0x17
	.string	"cb"
	.byte	0x1
	.byte	0x13
	.byte	0x14
	.4byte	0x53d
	.byte	0x24
	.byte	0xe
	.4byte	.LASF77
	.byte	0x1
	.byte	0x14
	.byte	0xb
	.4byte	0x99
	.byte	0x28
	.byte	0
	.byte	0x10
	.4byte	.LASF78
	.byte	0x1
	.byte	0x17
	.byte	0x1a
	.4byte	0x58f
	.byte	0x5
	.byte	0x3
	.4byte	trigger
	.byte	0x6
	.byte	0x4
	.4byte	0x549
	.byte	0x1d
	.4byte	.LASF82
	.byte	0x1
	.byte	0x66
	.byte	0x6
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x1
	.byte	0x9c
	.byte	0x1e
	.4byte	.LASF80
	.byte	0x1
	.byte	0x4f
	.byte	0x6
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x1
	.byte	0x9c
	.4byte	0x6c1
	.byte	0x1f
	.4byte	.LASF79
	.byte	0x1
	.byte	0x4f
	.byte	0x2a
	.4byte	0x2c
	.4byte	.LLST9
	.byte	0x20
	.string	"cb"
	.byte	0x1
	.byte	0x4f
	.byte	0x44
	.4byte	0x53d
	.4byte	.LLST10
	.byte	0x1f
	.4byte	.LASF77
	.byte	0x1
	.byte	0x4f
	.byte	0x4e
	.4byte	0x99
	.4byte	.LLST11
	.byte	0x21
	.4byte	.LVL15
	.4byte	0x82d
	.4byte	0x600
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x2c
	.byte	0
	.byte	0x23
	.4byte	.LVL16
	.4byte	0x839
	.byte	0x23
	.4byte	.LVL17
	.4byte	0x845
	.byte	0x21
	.4byte	.LVL18
	.4byte	0x852
	.4byte	0x650
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x22
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x22
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x22
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x55
	.byte	0x22
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x22
	.byte	0x1
	.byte	0x60
	.byte	0x2
	.byte	0x8
	.byte	0x55
	.byte	0
	.byte	0x23
	.4byte	.LVL19
	.4byte	0x85e
	.byte	0x21
	.4byte	.LVL20
	.4byte	0x86b
	.4byte	0x672
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x22
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x2c
	.byte	0
	.byte	0x21
	.4byte	.LVL21
	.4byte	0x877
	.4byte	0x685
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x21
	.4byte	.LVL22
	.4byte	0x883
	.4byte	0x6ac
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x22
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	_cb_pwm_trigger
	.byte	0x22
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x34
	.byte	0x22
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x24
	.4byte	.LVL26
	.4byte	0x88f
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x34
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LASF81
	.byte	0x1
	.byte	0x46
	.byte	0x6
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x1
	.byte	0x9c
	.4byte	0x6f5
	.byte	0x23
	.4byte	.LVL11
	.4byte	0x89b
	.byte	0x24
	.4byte	.LVL12
	.4byte	0x88f
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x34
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LASF83
	.byte	0x1
	.byte	0x41
	.byte	0x6
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x1
	.byte	0x9c
	.byte	0x25
	.4byte	.LASF105
	.byte	0x1
	.byte	0x38
	.byte	0xd
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x1
	.byte	0x9c
	.4byte	0x75e
	.byte	0x1f
	.4byte	.LASF84
	.byte	0x1
	.byte	0x38
	.byte	0x2e
	.4byte	0x387
	.4byte	.LLST0
	.byte	0x1f
	.4byte	.LASF76
	.byte	0x1
	.byte	0x38
	.byte	0x47
	.4byte	0x531
	.4byte	.LLST1
	.byte	0x20
	.string	"arg"
	.byte	0x1
	.byte	0x38
	.byte	0x54
	.4byte	0x99
	.4byte	.LLST2
	.byte	0x26
	.4byte	.LASF78
	.byte	0x1
	.byte	0x3a
	.byte	0x1e
	.4byte	0x58f
	.4byte	.LLST3
	.byte	0
	.byte	0x27
	.4byte	.LASF106
	.byte	0x1
	.byte	0x33
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x1
	.byte	0x9c
	.byte	0x28
	.4byte	.LASF107
	.byte	0x1
	.byte	0x28
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x1
	.byte	0x9c
	.4byte	0x7b9
	.byte	0xf
	.4byte	.LASF85
	.byte	0x1
	.byte	0x2a
	.byte	0x2a
	.4byte	0x364
	.byte	0x5
	.byte	0x3
	.4byte	_pwm_bloop_handler_holder.0
	.byte	0x24
	.4byte	.LVL10
	.4byte	0x8a7
	.byte	0x22
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x22
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LASF108
	.byte	0x1
	.byte	0x19
	.byte	0xc
	.4byte	0x25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x1
	.byte	0x9c
	.4byte	0x82d
	.byte	0x1f
	.4byte	.LASF84
	.byte	0x1
	.byte	0x19
	.byte	0x2c
	.4byte	0x387
	.4byte	.LLST4
	.byte	0x1f
	.4byte	.LASF86
	.byte	0x1
	.byte	0x19
	.byte	0x51
	.4byte	0x430
	.4byte	.LLST5
	.byte	0x1f
	.4byte	.LASF87
	.byte	0x1
	.byte	0x19
	.byte	0x64
	.4byte	0x436
	.4byte	.LLST6
	.byte	0x1f
	.4byte	.LASF73
	.byte	0x1
	.byte	0x19
	.byte	0x7a
	.4byte	0x436
	.4byte	.LLST7
	.byte	0x2a
	.string	"map"
	.byte	0x1
	.byte	0x1b
	.byte	0xe
	.4byte	0x69
	.4byte	.LLST8
	.byte	0x23
	.4byte	.LVL7
	.4byte	0x8b3
	.byte	0
	.byte	0x2b
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0x9
	.byte	0x91
	.byte	0x7
	.byte	0x2b
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0xa
	.byte	0x98
	.byte	0xc
	.byte	0x2c
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0x3
	.2byte	0x558
	.byte	0xc
	.byte	0x2b
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0xb
	.byte	0x81
	.byte	0x6
	.byte	0x2c
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0x3
	.2byte	0x547
	.byte	0xc
	.byte	0x2b
	.4byte	.LASF93
	.4byte	.LASF93
	.byte	0xc
	.byte	0x21
	.byte	0x8
	.byte	0x2b
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0x7
	.byte	0x58
	.byte	0x6
	.byte	0x2b
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0x7
	.byte	0x59
	.byte	0x6
	.byte	0x2b
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0xd
	.byte	0xa
	.byte	0x6
	.byte	0x2b
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0x7
	.byte	0x5c
	.byte	0x6
	.byte	0x2b
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0xd
	.byte	0xf
	.byte	0x5
	.byte	0x2b
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0xd
	.byte	0x10
	.byte	0x5
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
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x3
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
	.byte	0x4
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
	.byte	0x5
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0x3e
	.byte	0xb
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
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
	.byte	0xc
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xd
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
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x18
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
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x1b
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x1d
	.byte	0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0x1e
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
	.byte	0x1f
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
	.byte	0x20
	.byte	0x5
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x21
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
	.byte	0x22
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x23
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x26
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
	.byte	0x27
	.byte	0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0x28
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
	.byte	0x29
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
	.byte	0x2a
	.byte	0x34
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2b
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
	.byte	0x2c
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
.LLST9:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL13
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL15-1
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL13
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL15-1
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2-1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL2-1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL2-1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL3
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL7-1
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL3
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL7-1
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL3
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL7-1
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL9
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x54
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
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
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
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
.LASF27:
	.string	"_fsymf_level_loopsetloopset_pwm"
.LASF29:
	.string	"_blog_info"
.LASF71:
	.string	"time_target"
.LASF68:
	.string	"loop_timer"
.LASF87:
	.string	"bitmap_evt"
.LASF104:
	.string	"_blog_leve"
.LASF51:
	.string	"time_max"
.LASF64:
	.string	"statistic"
.LASF32:
	.string	"utils_list"
.LASF2:
	.string	"short int"
.LASF42:
	.string	"container"
.LASF11:
	.string	"TaskHandle_t"
.LASF108:
	.string	"_pwm_bloop_evt"
.LASF44:
	.string	"loop_msg"
.LASF86:
	.string	"handler"
.LASF105:
	.string	"_cb_pwm_trigger"
.LASF9:
	.string	"long unsigned int"
.LASF54:
	.string	"loop_evt_handler"
.LASF57:
	.string	"looper"
.LASF102:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/build_out/loopset"
.LASF7:
	.string	"uint8_t"
.LASF17:
	.string	"BLOG_LEVEL_ERROR"
.LASF91:
	.string	"bl_printk"
.LASF75:
	.string	"pwm_trigger_item"
.LASF89:
	.string	"xPortIsInsideInterrupt"
.LASF40:
	.string	"id_msg"
.LASF97:
	.string	"bloop_timer_repeat_enable"
.LASF107:
	.string	"loopset_pwm_hook_on_looprt"
.LASF46:
	.string	"arg1"
.LASF79:
	.string	"timeon_ms"
.LASF4:
	.string	"long long int"
.LASF25:
	.string	"_fsymc_info_loopset"
.LASF93:
	.string	"memset"
.LASF85:
	.string	"_pwm_bloop_handler_holder"
.LASF50:
	.string	"loop_evt_handler_statistic"
.LASF43:
	.string	"header"
.LASF95:
	.string	"bloop_timer_configure"
.LASF39:
	.string	"id_dst"
.LASF62:
	.string	"evt_type_map_sync"
.LASF103:
	.string	"tskTaskControlBlock"
.LASF92:
	.string	"xTaskGetTickCount"
.LASF48:
	.string	"time_added"
.LASF28:
	.string	"_fsymf_info_loopsetloopset_pwm"
.LASF76:
	.string	"timer"
.LASF22:
	.string	"name"
.LASF106:
	.string	"loopset_pwm_hook_off_looprt"
.LASF98:
	.string	"looprt_handler_register"
.LASF72:
	.string	"idx_task"
.LASF5:
	.string	"unsigned char"
.LASF47:
	.string	"arg2"
.LASF67:
	.string	"timer_dued"
.LASF84:
	.string	"loop"
.LASF18:
	.string	"BLOG_LEVEL_ASSERT"
.LASF1:
	.string	"signed char"
.LASF70:
	.string	"flags"
.LASF10:
	.string	"long long unsigned int"
.LASF8:
	.string	"uint32_t"
.LASF65:
	.string	"handlers"
.LASF0:
	.string	"unsigned int"
.LASF77:
	.string	"p_arg"
.LASF41:
	.string	"id_src"
.LASF101:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/sys/bloop/loopset/src/loopset_pwm.c"
.LASF26:
	.string	"_fsymc_level_loopset"
.LASF34:
	.string	"last"
.LASF78:
	.string	"trigger"
.LASF60:
	.string	"bitmap_msg"
.LASF52:
	.string	"time_accumulated"
.LASF6:
	.string	"short unsigned int"
.LASF81:
	.string	"loopset_pwm_trigger_start"
.LASF15:
	.string	"BLOG_LEVEL_INFO"
.LASF12:
	.string	"char"
.LASF14:
	.string	"BLOG_LEVEL_DEBUG"
.LASF3:
	.string	"long int"
.LASF61:
	.string	"evt_type_map_async"
.LASF63:
	.string	"list"
.LASF99:
	.string	"looprt_timer_register"
.LASF94:
	.string	"bloop_timer_init"
.LASF80:
	.string	"loopset_pwm_trigger_on"
.LASF56:
	.string	"loop_ctx"
.LASF13:
	.string	"BLOG_LEVEL_ALL"
.LASF35:
	.string	"utils_dlist_s"
.LASF23:
	.string	"blog_info_t"
.LASF24:
	.string	"BLOG_HARD_DECLARE_DISABLE"
.LASF83:
	.string	"loopset_pwm_trigger_stop"
.LASF66:
	.string	"timer_dlist"
.LASF55:
	.string	"handle"
.LASF90:
	.string	"xTaskGetTickCountFromISR"
.LASF21:
	.string	"level"
.LASF49:
	.string	"time_consumed"
.LASF96:
	.string	"looprt_evt_notify_async"
.LASF45:
	.string	"item"
.LASF53:
	.string	"count_triggered"
.LASF73:
	.string	"evt_type_map"
.LASF37:
	.string	"utils_dlist_t"
.LASF38:
	.string	"priority"
.LASF74:
	.string	"loopset_func_t"
.LASF16:
	.string	"BLOG_LEVEL_WARN"
.LASF19:
	.string	"BLOG_LEVEL_NEVER"
.LASF20:
	.string	"blog_level_t"
.LASF82:
	.string	"loopset_pwm_trigger_off"
.LASF36:
	.string	"prev"
.LASF88:
	.string	"pvPortMalloc"
.LASF69:
	.string	"dlist_item"
.LASF30:
	.string	"utils_list_hdr"
.LASF58:
	.string	"bitmap_evt_async"
.LASF31:
	.string	"next"
.LASF59:
	.string	"bitmap_evt_sync"
.LASF33:
	.string	"first"
.LASF100:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
