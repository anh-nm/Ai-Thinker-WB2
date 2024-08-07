	.file	"blcrypto_suite_aes.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.blcrypto_suite_aes_init,"ax",@progbits
	.align	1
	.globl	blcrypto_suite_aes_init
	.type	blcrypto_suite_aes_init, @function
blcrypto_suite_aes_init:
.LFB1:
	.file 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/security/blcrypto_suite/src/blcrypto_suite_aes.c"
	.loc 1 14 1
	.cfi_startproc
	.loc 1 15 5
	.loc 1 17 5
	.loc 1 14 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 17 11
	li	a0,60
	.loc 1 14 1
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 17 11
	call	pvPortMalloc
.LVL0:
	mv	s0,a0
.LVL1:
	.loc 1 18 5 is_stmt 1
	.loc 1 18 8 is_stmt 0
	beq	a0,zero,.L1
	.loc 1 21 5 is_stmt 1
	call	bl_aes_init
.LVL2:
	.loc 1 23 5
.L1:
	.loc 1 24 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	mv	a0,s0
	lw	s0,8(sp)
	.cfi_restore 8
.LVL3:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	blcrypto_suite_aes_init, .-blcrypto_suite_aes_init
	.section	.text.blcrypto_suite_aes_deinit,"ax",@progbits
	.align	1
	.globl	blcrypto_suite_aes_deinit
	.type	blcrypto_suite_aes_deinit, @function
blcrypto_suite_aes_deinit:
.LFB2:
	.loc 1 27 1 is_stmt 1
	.cfi_startproc
.LVL4:
	.loc 1 28 5
	.loc 1 28 8 is_stmt 0
	beq	a0,zero,.L16
	.loc 1 27 1 discriminator 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	mv	s0,a0
	.loc 1 28 25 discriminator 1
	lw	a0,0(a0)
.LVL5:
	.loc 1 28 9 discriminator 1
	beq	a0,zero,.L7
	.loc 1 32 5 is_stmt 1
	call	vPortFree
.LVL6:
	.loc 1 33 5
	.loc 1 33 10 is_stmt 0
	sw	zero,0(s0)
.L7:
	.loc 1 34 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL7:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL8:
.L16:
	ret
	.cfi_endproc
.LFE2:
	.size	blcrypto_suite_aes_deinit, .-blcrypto_suite_aes_deinit
	.section	.text.blcrypto_suite_aes_set_key,"ax",@progbits
	.align	1
	.globl	blcrypto_suite_aes_set_key
	.type	blcrypto_suite_aes_set_key, @function
blcrypto_suite_aes_set_key:
.LFB3:
	.loc 1 37 1 is_stmt 1
	.cfi_startproc
.LVL9:
	.loc 1 38 5
	.loc 1 38 8 is_stmt 0
	beq	a0,zero,.L21
	.loc 1 41 5 is_stmt 1
	.loc 1 42 5
	li	a5,8
	div	a3,a3,a5
.LVL10:
	.loc 1 37 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 42 5
	li	a1,0
.LVL11:
	.loc 1 37 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 42 5
	call	bl_aes_set_key
.LVL12:
	.loc 1 44 5 is_stmt 1
	.loc 1 45 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 44 12
	li	a0,0
	.loc 1 45 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL13:
.L21:
	.loc 1 39 16
	li	a0,-1
.LVL14:
	.loc 1 45 1
	ret
	.cfi_endproc
.LFE3:
	.size	blcrypto_suite_aes_set_key, .-blcrypto_suite_aes_set_key
	.section	.text.blcrypto_suite_aes_crypt,"ax",@progbits
	.align	1
	.globl	blcrypto_suite_aes_crypt
	.type	blcrypto_suite_aes_crypt, @function
blcrypto_suite_aes_crypt:
.LFB4:
	.loc 1 48 1 is_stmt 1
	.cfi_startproc
.LVL15:
	.loc 1 49 5
	.loc 1 50 5
	.loc 1 48 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.loc 1 48 1
	sw	a2,12(sp)
	sw	a3,8(sp)
	.loc 1 50 8
	beq	a0,zero,.L28
	mv	s0,a0
	mv	s1,a1
	.loc 1 53 5 is_stmt 1
.LVL16:
	.loc 1 58 5
	call	bl_aes_acquire_hw
.LVL17:
	.loc 1 59 5
	lw	a3,8(sp)
	lw	a2,12(sp)
	snez	a1,s1
	mv	a0,s0
	call	bl_aes_transform
.LVL18:
	.loc 1 60 5
	call	bl_aes_release_hw
.LVL19:
	.loc 1 62 5
	.loc 1 62 12 is_stmt 0
	li	a0,0
.LVL20:
.L26:
	.loc 1 63 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL21:
	jr	ra
.LVL22:
.L28:
	.cfi_restore_state
	.loc 1 51 16
	li	a0,-1
.LVL23:
	j	.L26
	.cfi_endproc
.LFE4:
	.size	blcrypto_suite_aes_crypt, .-blcrypto_suite_aes_crypt
	.text
.Letext0:
	.file 2 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/sec_common/bl_sec_aes.h"
	.file 4 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
	.file 5 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/security/blcrypto_suite/inc/blcrypto_suite/blcrypto_suite_aes.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x494
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF57
	.byte	0xc
	.4byte	.LASF58
	.4byte	.LASF59
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF1
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF2
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x52
	.byte	0x4
	.4byte	0x41
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x6c
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x6
	.4byte	.LASF60
	.byte	0x7
	.byte	0x4
	.4byte	0x81
	.byte	0x5
	.byte	0x8
	.byte	0x6
	.4byte	0xa7
	.byte	0x7
	.4byte	.LASF11
	.byte	0
	.byte	0x7
	.4byte	.LASF12
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.byte	0x8
	.byte	0x4
	.4byte	0x41
	.byte	0x9
	.byte	0x3c
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x9
	.4byte	0x215
	.byte	0xa
	.4byte	.LASF14
	.byte	0x3
	.byte	0x8
	.byte	0xe
	.4byte	0x60
	.byte	0x4
	.byte	0x2
	.byte	0x1b
	.byte	0
	.byte	0xa
	.4byte	.LASF15
	.byte	0x3
	.byte	0x9
	.byte	0xe
	.4byte	0x60
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.byte	0xa
	.4byte	.LASF16
	.byte	0x3
	.byte	0xa
	.byte	0xe
	.4byte	0x60
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.byte	0xa
	.4byte	.LASF17
	.byte	0x3
	.byte	0xb
	.byte	0xe
	.4byte	0x60
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.byte	0xa
	.4byte	.LASF18
	.byte	0x3
	.byte	0xd
	.byte	0xe
	.4byte	0x60
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.byte	0xa
	.4byte	.LASF19
	.byte	0x3
	.byte	0xe
	.byte	0xe
	.4byte	0x60
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.byte	0xa
	.4byte	.LASF20
	.byte	0x3
	.byte	0x10
	.byte	0xe
	.4byte	0x60
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0
	.byte	0xa
	.4byte	.LASF21
	.byte	0x3
	.byte	0x11
	.byte	0xe
	.4byte	0x60
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.byte	0xa
	.4byte	.LASF22
	.byte	0x3
	.byte	0x12
	.byte	0xe
	.4byte	0x60
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.byte	0xa
	.4byte	.LASF23
	.byte	0x3
	.byte	0x13
	.byte	0xe
	.4byte	0x60
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0xb
	.4byte	.LASF24
	.byte	0x3
	.byte	0x14
	.byte	0xe
	.4byte	0x60
	.byte	0x4
	.byte	0xb
	.4byte	.LASF25
	.byte	0x3
	.byte	0x15
	.byte	0xe
	.4byte	0x60
	.byte	0x8
	.byte	0xb
	.4byte	.LASF26
	.byte	0x3
	.byte	0x16
	.byte	0xe
	.4byte	0x60
	.byte	0xc
	.byte	0xb
	.4byte	.LASF27
	.byte	0x3
	.byte	0x17
	.byte	0xe
	.4byte	0x60
	.byte	0x10
	.byte	0xb
	.4byte	.LASF28
	.byte	0x3
	.byte	0x18
	.byte	0xe
	.4byte	0x60
	.byte	0x14
	.byte	0xb
	.4byte	.LASF29
	.byte	0x3
	.byte	0x19
	.byte	0xe
	.4byte	0x60
	.byte	0x18
	.byte	0xb
	.4byte	.LASF30
	.byte	0x3
	.byte	0x1a
	.byte	0xe
	.4byte	0x60
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF31
	.byte	0x3
	.byte	0x1b
	.byte	0xe
	.4byte	0x60
	.byte	0x20
	.byte	0xb
	.4byte	.LASF32
	.byte	0x3
	.byte	0x1c
	.byte	0xe
	.4byte	0x60
	.byte	0x24
	.byte	0xb
	.4byte	.LASF33
	.byte	0x3
	.byte	0x1d
	.byte	0xe
	.4byte	0x60
	.byte	0x28
	.byte	0xb
	.4byte	.LASF34
	.byte	0x3
	.byte	0x1e
	.byte	0xe
	.4byte	0x60
	.byte	0x2c
	.byte	0xb
	.4byte	.LASF35
	.byte	0x3
	.byte	0x1f
	.byte	0xe
	.4byte	0x60
	.byte	0x30
	.byte	0xb
	.4byte	.LASF36
	.byte	0x3
	.byte	0x20
	.byte	0xe
	.4byte	0x60
	.byte	0x34
	.byte	0xb
	.4byte	.LASF37
	.byte	0x3
	.byte	0x21
	.byte	0xe
	.4byte	0x60
	.byte	0x38
	.byte	0
	.byte	0xc
	.4byte	.LASF41
	.byte	0x3
	.byte	0x22
	.byte	0x1f
	.4byte	0xb4
	.byte	0x4
	.byte	0xd
	.byte	0x7
	.byte	0x4
	.4byte	0x81
	.byte	0x3
	.byte	0x24
	.byte	0xe
	.4byte	0x23d
	.byte	0x7
	.4byte	.LASF38
	.byte	0
	.byte	0x7
	.4byte	.LASF39
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF40
	.byte	0x3
	.byte	0x27
	.byte	0x3
	.4byte	0x222
	.byte	0x9
	.byte	0x3c
	.byte	0x4
	.byte	0x3
	.byte	0x29
	.byte	0x9
	.4byte	0x262
	.byte	0xe
	.4byte	.LASF43
	.byte	0x3
	.byte	0x2a
	.byte	0x25
	.4byte	0x215
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	.LASF42
	.byte	0x3
	.byte	0x2b
	.byte	0x3
	.4byte	0x249
	.byte	0x4
	.byte	0xf
	.4byte	.LASF61
	.byte	0x3c
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x8
	.4byte	0x28c
	.byte	0x10
	.string	"ctx"
	.byte	0x1
	.byte	0xa
	.byte	0x12
	.4byte	0x262
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LASF45
	.byte	0x1
	.byte	0x2f
	.byte	0x5
	.4byte	0x7a
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x331
	.byte	0x12
	.string	"aes"
	.byte	0x1
	.byte	0x2f
	.byte	0x39
	.4byte	0x331
	.4byte	.LLST6
	.byte	0x13
	.4byte	.LASF44
	.byte	0x1
	.byte	0x2f
	.byte	0x53
	.4byte	0x88
	.4byte	.LLST7
	.byte	0x12
	.string	"in"
	.byte	0x1
	.byte	0x2f
	.byte	0x68
	.4byte	0x337
	.4byte	.LLST8
	.byte	0x12
	.string	"out"
	.byte	0x1
	.byte	0x2f
	.byte	0x75
	.4byte	0xae
	.4byte	.LLST9
	.byte	0x14
	.string	"op"
	.byte	0x1
	.byte	0x31
	.byte	0x15
	.4byte	0x23d
	.4byte	.LLST10
	.byte	0x15
	.4byte	.LVL17
	.4byte	0x443
	.byte	0x16
	.4byte	.LVL18
	.4byte	0x44f
	.4byte	0x327
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.byte	0x79
	.byte	0
	.byte	0x30
	.byte	0x2e
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0x17
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x91
	.byte	0x68
	.byte	0x6
	.byte	0
	.byte	0x15
	.4byte	.LVL19
	.4byte	0x45b
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x26f
	.byte	0x8
	.byte	0x4
	.4byte	0x4d
	.byte	0x11
	.4byte	.LASF46
	.byte	0x1
	.byte	0x24
	.byte	0x5
	.4byte	0x7a
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x3be
	.byte	0x12
	.string	"aes"
	.byte	0x1
	.byte	0x24
	.byte	0x3b
	.4byte	0x331
	.4byte	.LLST2
	.byte	0x13
	.4byte	.LASF44
	.byte	0x1
	.byte	0x24
	.byte	0x55
	.4byte	0x88
	.4byte	.LLST3
	.byte	0x12
	.string	"key"
	.byte	0x1
	.byte	0x24
	.byte	0x6a
	.4byte	0x337
	.4byte	.LLST4
	.byte	0x13
	.4byte	.LASF47
	.byte	0x1
	.byte	0x24
	.byte	0x73
	.4byte	0x7a
	.4byte	.LLST5
	.byte	0x18
	.4byte	.LVL12
	.4byte	0x467
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x17
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x17
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x17
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x38
	.byte	0x1b
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LASF48
	.byte	0x1
	.byte	0x1a
	.byte	0x6
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0x3ee
	.byte	0x12
	.string	"aes"
	.byte	0x1
	.byte	0x1a
	.byte	0x3c
	.4byte	0x3ee
	.4byte	.LLST1
	.byte	0x15
	.4byte	.LVL6
	.4byte	0x473
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x331
	.byte	0x1a
	.4byte	.LASF49
	.byte	0x1
	.byte	0xd
	.byte	0x1c
	.4byte	0x331
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0x443
	.byte	0x14
	.string	"aes"
	.byte	0x1
	.byte	0xf
	.byte	0x20
	.4byte	0x331
	.4byte	.LLST0
	.byte	0x16
	.4byte	.LVL0
	.4byte	0x47f
	.4byte	0x432
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.byte	0x18
	.4byte	.LVL2
	.4byte	0x48b
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x3
	.byte	0x35
	.byte	0x5
	.byte	0x1b
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0x3
	.byte	0x3b
	.byte	0x5
	.byte	0x1b
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0x3
	.byte	0x36
	.byte	0x5
	.byte	0x1b
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0x3
	.byte	0x38
	.byte	0x5
	.byte	0x1b
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x4
	.byte	0x94
	.byte	0x6
	.byte	0x1b
	.4byte	.LASF55
	.4byte	.LASF55
	.byte	0x4
	.byte	0x91
	.byte	0x7
	.byte	0x1b
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0x3
	.byte	0x37
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x5
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
	.byte	0x6
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
	.byte	0x7
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x13
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x88,0x1
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
	.byte	0xa
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
	.byte	0xb
	.byte	0xb
	.byte	0xd
	.byte	0xb
	.byte	0xc
	.byte	0xb
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0xc
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
	.byte	0x88,0x1
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x4
	.byte	0x1
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
	.byte	0x88,0x1
	.byte	0xb
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x88,0x1
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
	.byte	0x10
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
	.byte	0x88,0x1
	.byte	0xb
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x15
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
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
	.byte	0x17
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x1b
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST6:
	.4byte	.LVL15
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17-1
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL15
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL17-1
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL15
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL17-1
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x72
	.byte	0x6c
	.4byte	.LVL22
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL15
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL17-1
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x91
	.byte	0x68
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x72
	.byte	0x68
	.4byte	.LVL22
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL16
	.4byte	.LVL17-1
	.2byte	0x8
	.byte	0x7b
	.byte	0
	.byte	0x30
	.byte	0x2e
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL17-1
	.4byte	.LVL20
	.2byte	0x8
	.byte	0x79
	.byte	0
	.byte	0x30
	.byte	0x2e
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL9
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12-1
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL12-1
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL3
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF26:
	.string	"aesIV0"
.LASF27:
	.string	"aesIV1"
.LASF28:
	.string	"aesIV2"
.LASF29:
	.string	"aesIV3"
.LASF45:
	.string	"blcrypto_suite_aes_crypt"
.LASF9:
	.string	"long long unsigned int"
.LASF52:
	.string	"bl_aes_release_hw"
.LASF22:
	.string	"aesXTS"
.LASF25:
	.string	"aesDstAddr"
.LASF3:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF12:
	.string	"AES_DEC"
.LASF11:
	.string	"AES_ENC"
.LASF47:
	.string	"bits"
.LASF2:
	.string	"long int"
.LASF39:
	.string	"BL_AES_DECRYPT"
.LASF55:
	.string	"pvPortMalloc"
.LASF30:
	.string	"aesKey0"
.LASF31:
	.string	"aesKey1"
.LASF10:
	.string	"unsigned int"
.LASF33:
	.string	"aesKey3"
.LASF34:
	.string	"aesKey4"
.LASF35:
	.string	"aesKey5"
.LASF36:
	.string	"aesKey6"
.LASF37:
	.string	"aesKey7"
.LASF41:
	.string	"bl_SEC_Eng_AES_Link_Config_Type"
.LASF24:
	.string	"aesSrcAddr"
.LASF8:
	.string	"long unsigned int"
.LASF17:
	.string	"aesHwKeyEn"
.LASF58:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/security/blcrypto_suite/src/blcrypto_suite_aes.c"
.LASF5:
	.string	"short unsigned int"
.LASF43:
	.string	"link_cfg"
.LASF23:
	.string	"aesMsgLen"
.LASF56:
	.string	"bl_aes_init"
.LASF57:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF54:
	.string	"vPortFree"
.LASF51:
	.string	"bl_aes_transform"
.LASF53:
	.string	"bl_aes_set_key"
.LASF61:
	.string	"blcrypto_suite_aes"
.LASF48:
	.string	"blcrypto_suite_aes_deinit"
.LASF20:
	.string	"aesBlockMode"
.LASF60:
	.string	"crypto_aes_mode"
.LASF18:
	.string	"aesIntClr"
.LASF50:
	.string	"bl_aes_acquire_hw"
.LASF14:
	.string	"aesMode"
.LASF4:
	.string	"unsigned char"
.LASF21:
	.string	"aesIVSel"
.LASF1:
	.string	"short int"
.LASF16:
	.string	"aesDecKeySel"
.LASF7:
	.string	"uint32_t"
.LASF42:
	.string	"bl_sec_aes_t"
.LASF59:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/build_out/blcrypto_suite"
.LASF13:
	.string	"char"
.LASF15:
	.string	"aesDecEn"
.LASF44:
	.string	"mode"
.LASF19:
	.string	"aesIntSet"
.LASF38:
	.string	"BL_AES_ENCRYPT"
.LASF46:
	.string	"blcrypto_suite_aes_set_key"
.LASF32:
	.string	"aesKey2"
.LASF6:
	.string	"uint8_t"
.LASF40:
	.string	"bl_sec_aes_op_t"
.LASF49:
	.string	"blcrypto_suite_aes_init"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
