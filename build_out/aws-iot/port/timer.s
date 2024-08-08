	.file	"timer.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.has_timer_expired,"ax",@progbits
	.align	1
	.globl	has_timer_expired
	.type	has_timer_expired, @function
has_timer_expired:
.LFB3:
	.file 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/aws-iot/port/timer.c"
	.loc 1 39 1
	.cfi_startproc
.LVL0:
	.loc 1 40 5
	.loc 1 39 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s1,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a0
	sw	s2,0(sp)
	sw	ra,12(sp)
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.loc 1 40 20
	call	xTaskGetTickCount
.LVL1:
	.loc 1 41 24
	lw	a5,0(s0)
	.loc 1 41 54
	lw	a4,4(s0)
	.loc 1 40 20
	mv	s1,a0
.LVL2:
	.loc 1 41 4 is_stmt 1
	.loc 1 41 24 is_stmt 0
	sub	a5,a0,a5
	.loc 1 41 9
	sltu	s2,a5,a4
	xori	s2,s2,1
.LVL3:
	.loc 1 49 5 is_stmt 1
	.loc 1 49 8 is_stmt 0
	bgeu	a5,a4,.L2
	.loc 1 49 18 discriminator 1
	lw	a5,8(s0)
	bne	a5,a0,.L2
	.loc 1 50 9 is_stmt 1
	li	a0,1
	call	vTaskDelay
.LVL4:
.L2:
	.loc 1 52 5
	.loc 1 52 30 is_stmt 0
	sw	s1,8(s0)
	.loc 1 53 5 is_stmt 1
	.loc 1 54 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL5:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL6:
	mv	a0,s2
	lw	s2,0(sp)
	.cfi_restore 18
.LVL7:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE3:
	.size	has_timer_expired, .-has_timer_expired
	.section	.text.countdown_ms,"ax",@progbits
	.align	1
	.globl	countdown_ms
	.type	countdown_ms, @function
countdown_ms:
.LFB4:
	.loc 1 57 1 is_stmt 1
	.cfi_startproc
.LVL8:
	.loc 1 58 5
	.loc 1 57 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.loc 1 57 1
	mv	s0,a0
	mv	s1,a1
	.loc 1 58 26
	call	xTaskGetTickCount
.LVL9:
	.loc 1 61 1
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 59 26
	sw	s1,4(s0)
	.loc 1 58 24
	sw	a0,0(s0)
	.loc 1 59 5 is_stmt 1
	.loc 1 60 5
	.loc 1 60 30 is_stmt 0
	sw	zero,8(s0)
	.loc 1 61 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL10:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL11:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	countdown_ms, .-countdown_ms
	.section	.text.left_ms,"ax",@progbits
	.align	1
	.globl	left_ms
	.type	left_ms, @function
left_ms:
.LFB5:
	.loc 1 64 1 is_stmt 1
	.cfi_startproc
.LVL12:
	.loc 1 65 5
	.loc 1 64 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 64 1
	mv	s0,a0
	.loc 1 65 20
	call	xTaskGetTickCount
.LVL13:
	.loc 1 66 5 is_stmt 1
	.loc 1 66 35 is_stmt 0
	lw	a5,0(s0)
.LVL14:
	.loc 1 68 5 is_stmt 1
	.loc 1 68 24 is_stmt 0
	lw	a4,4(s0)
	.loc 1 66 14
	sub	a3,a0,a5
.LVL15:
	.loc 1 68 8
	bleu	a4,a3,.L8
	.loc 1 69 9 is_stmt 1
	.loc 1 69 49 is_stmt 0
	add	a5,a5,a4
	sub	a0,a5,a0
.LVL16:
.L6:
	.loc 1 73 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL17:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL18:
.L8:
	.cfi_restore_state
	.loc 1 71 16
	li	a0,0
.LVL19:
	j	.L6
	.cfi_endproc
.LFE5:
	.size	left_ms, .-left_ms
	.section	.rodata.countdown_sec.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"aws_timer"
	.align	2
.LC1:
	.string	"ERRORtimeout is out of range: %lus\r\n"
	.section	.text.countdown_sec,"ax",@progbits
	.align	1
	.globl	countdown_sec
	.type	countdown_sec, @function
countdown_sec:
.LFB6:
	.loc 1 76 1 is_stmt 1
	.cfi_startproc
.LVL20:
	.loc 1 77 5
	.loc 1 76 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 77 8
	li	a5,4296704
	.loc 1 76 1
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.loc 1 77 8
	addi	a5,a5,-1737
	.loc 1 76 1
	mv	s1,a0
	mv	s0,a1
	.loc 1 77 8
	bleu	a1,a5,.L11
	.loc 1 78 9 is_stmt 1
	lui	a0,%hi(.LC0)
.LVL21:
	addi	a0,a0,%lo(.LC0)
	call	puts
.LVL22:
	.loc 1 78 19
	lui	a0,%hi(.LC1)
	mv	a1,s0
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL23:
.L11:
	.loc 1 80 5
	li	a1,1000
	mul	a1,s0,a1
	.loc 1 81 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
.LVL24:
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 80 5
	mv	a0,s1
	.loc 1 81 1
	lw	s1,4(sp)
	.cfi_restore 9
.LVL25:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 80 5
	tail	countdown_ms
.LVL26:
	.cfi_endproc
.LFE6:
	.size	countdown_sec, .-countdown_sec
	.section	.text.init_timer,"ax",@progbits
	.align	1
	.globl	init_timer
	.type	init_timer, @function
init_timer:
.LFB7:
	.loc 1 84 1 is_stmt 1
	.cfi_startproc
.LVL27:
	.loc 1 85 5
	.loc 1 85 24 is_stmt 0
	sw	zero,0(a0)
	.loc 1 86 5 is_stmt 1
	.loc 1 86 26 is_stmt 0
	sw	zero,4(a0)
	.loc 1 87 5 is_stmt 1
	.loc 1 87 30 is_stmt 0
	sw	zero,8(a0)
	.loc 1 88 1
	ret
	.cfi_endproc
.LFE7:
	.size	init_timer, .-init_timer
	.text
.Letext0:
	.file 2 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/timer_interface.h"
	.file 5 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/aws-iot/port/include/timer_platform.h"
	.file 6 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 7 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 8 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2cd
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF31
	.byte	0xc
	.4byte	.LASF32
	.4byte	.LASF33
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
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
	.4byte	.LASF10
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x54
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x5
	.4byte	0x77
	.byte	0x6
	.byte	0x4
	.4byte	0x7e
	.byte	0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x48
	.byte	0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x32
	.byte	0x16
	.4byte	0xa1
	.byte	0x7
	.4byte	.LASF12
	.byte	0xc
	.byte	0x5
	.byte	0x1d
	.byte	0x8
	.4byte	0xd6
	.byte	0x8
	.4byte	.LASF13
	.byte	0x5
	.byte	0x1e
	.byte	0xe
	.4byte	0x89
	.byte	0
	.byte	0x8
	.4byte	.LASF14
	.byte	0x5
	.byte	0x1f
	.byte	0xe
	.4byte	0x89
	.byte	0x4
	.byte	0x8
	.4byte	.LASF15
	.byte	0x5
	.byte	0x20
	.byte	0xe
	.4byte	0x89
	.byte	0x8
	.byte	0
	.byte	0x3
	.4byte	.LASF16
	.byte	0x6
	.byte	0x41
	.byte	0x12
	.4byte	0x89
	.byte	0x9
	.string	"TAG"
	.byte	0x1
	.byte	0x24
	.byte	0x14
	.4byte	0x83
	.byte	0xa
	.4byte	.LASF17
	.byte	0x1
	.byte	0x53
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x113
	.byte	0xb
	.4byte	.LASF19
	.byte	0x1
	.byte	0x53
	.byte	0x18
	.4byte	0x113
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x95
	.byte	0xa
	.4byte	.LASF18
	.byte	0x1
	.byte	0x4b
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x1a0
	.byte	0xc
	.4byte	.LASF19
	.byte	0x1
	.byte	0x4b
	.byte	0x1b
	.4byte	0x113
	.4byte	.LLST8
	.byte	0xc
	.4byte	.LASF20
	.byte	0x1
	.byte	0x4b
	.byte	0x2b
	.4byte	0x89
	.4byte	.LLST9
	.byte	0xd
	.4byte	.LVL22
	.4byte	0x29e
	.4byte	0x166
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0xd
	.4byte	.LVL23
	.4byte	0x2aa
	.4byte	0x183
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LVL26
	.4byte	0x1f4
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x7
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0xa
	.2byte	0x3e8
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LASF23
	.byte	0x1
	.byte	0x3f
	.byte	0xa
	.4byte	0x89
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x1f4
	.byte	0xc
	.4byte	.LASF19
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.4byte	0x113
	.4byte	.LLST5
	.byte	0x11
	.string	"now"
	.byte	0x1
	.byte	0x41
	.byte	0xe
	.4byte	0x89
	.4byte	.LLST6
	.byte	0x12
	.4byte	.LASF21
	.byte	0x1
	.byte	0x42
	.byte	0xe
	.4byte	0x89
	.4byte	.LLST7
	.byte	0x13
	.4byte	.LVL13
	.4byte	0x2b6
	.byte	0
	.byte	0xa
	.4byte	.LASF22
	.byte	0x1
	.byte	0x38
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x234
	.byte	0xc
	.4byte	.LASF19
	.byte	0x1
	.byte	0x38
	.byte	0x1a
	.4byte	0x113
	.4byte	.LLST3
	.byte	0xc
	.4byte	.LASF20
	.byte	0x1
	.byte	0x38
	.byte	0x2a
	.4byte	0x89
	.4byte	.LLST4
	.byte	0x13
	.4byte	.LVL9
	.4byte	0x2b6
	.byte	0
	.byte	0x10
	.4byte	.LASF24
	.byte	0x1
	.byte	0x26
	.byte	0x5
	.4byte	0x297
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x297
	.byte	0xc
	.4byte	.LASF19
	.byte	0x1
	.byte	0x26
	.byte	0x1e
	.4byte	0x113
	.4byte	.LLST0
	.byte	0x11
	.string	"now"
	.byte	0x1
	.byte	0x28
	.byte	0xe
	.4byte	0x89
	.4byte	.LLST1
	.byte	0x12
	.4byte	.LASF25
	.byte	0x1
	.byte	0x29
	.byte	0x9
	.4byte	0x297
	.4byte	.LLST2
	.byte	0x13
	.4byte	.LVL1
	.4byte	0x2b6
	.byte	0x14
	.4byte	.LVL4
	.4byte	0x2c3
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF26
	.byte	0x15
	.4byte	.LASF27
	.4byte	.LASF27
	.byte	0x7
	.byte	0xdd
	.byte	0x5
	.byte	0x15
	.4byte	.LASF28
	.4byte	.LASF28
	.byte	0x7
	.byte	0xc8
	.byte	0x5
	.byte	0x16
	.4byte	.LASF29
	.4byte	.LASF29
	.byte	0x8
	.2byte	0x547
	.byte	0xc
	.byte	0x16
	.4byte	.LASF30
	.4byte	.LASF30
	.byte	0x8
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
	.byte	0x8
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
	.byte	0x9
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
	.byte	0
	.byte	0
	.byte	0xa
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
	.byte	0xb
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xc
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
	.byte	0xd
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
	.byte	0xe
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x16
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
.LLST8:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL25
	.4byte	.LVL26-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL20
	.4byte	.LVL22-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL22-1
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL24
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13-1
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL13
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x6
	.byte	0x7a
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9-1
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL10
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9-1
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL11
	.4byte	.LFE4
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1-1
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL5
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL6
	.4byte	.LFE3
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x8
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL7
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF16:
	.string	"TickType_t"
.LASF20:
	.string	"timeout"
.LASF32:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/aws-iot/port/timer.c"
.LASF25:
	.string	"expired"
.LASF13:
	.string	"start_ticks"
.LASF1:
	.string	"unsigned char"
.LASF19:
	.string	"timer"
.LASF5:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF17:
	.string	"init_timer"
.LASF33:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/build_out/aws-iot"
.LASF10:
	.string	"__uint32_t"
.LASF24:
	.string	"has_timer_expired"
.LASF23:
	.string	"left_ms"
.LASF14:
	.string	"timeout_ticks"
.LASF8:
	.string	"unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF21:
	.string	"elapsed"
.LASF12:
	.string	"Timer"
.LASF6:
	.string	"long long int"
.LASF31:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF9:
	.string	"char"
.LASF29:
	.string	"xTaskGetTickCount"
.LASF28:
	.string	"printf"
.LASF2:
	.string	"short int"
.LASF18:
	.string	"countdown_sec"
.LASF15:
	.string	"last_polled_ticks"
.LASF11:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF30:
	.string	"vTaskDelay"
.LASF27:
	.string	"puts"
.LASF0:
	.string	"signed char"
.LASF26:
	.string	"_Bool"
.LASF22:
	.string	"countdown_ms"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
