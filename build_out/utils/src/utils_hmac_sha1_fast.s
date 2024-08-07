	.file	"utils_hmac_sha1_fast.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.utils_hmac_sha1_fast,"ax",@progbits
	.align	1
	.globl	utils_hmac_sha1_fast
	.type	utils_hmac_sha1_fast, @function
utils_hmac_sha1_fast:
.LFB1:
	.file 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/utils/src/utils_hmac_sha1_fast.c"
	.loc 1 15 1
	.cfi_startproc
.LVL0:
	.loc 1 16 5
	.loc 1 17 5
	.loc 1 18 5
	.loc 1 19 5
	.loc 1 20 5
	.loc 1 23 5
	.loc 1 15 1 is_stmt 0
	addi	sp,sp,-336
	.cfi_def_cfa_offset 336
.LVL1:
	.loc 1 24 5 is_stmt 1
	.loc 1 27 5
	.loc 1 15 1 is_stmt 0
	sw	s1,324(sp)
	sw	s2,320(sp)
	sw	s4,312(sp)
	sw	s5,308(sp)
	sw	s7,300(sp)
	sw	s8,296(sp)
	sw	s9,292(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	mv	s4,a5
	sw	ra,332(sp)
	sw	s0,328(sp)
	sw	s3,316(sp)
	sw	s6,304(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 19, -20
	.cfi_offset 22, -32
	.loc 1 27 8
	li	a5,64
.LVL2:
	.loc 1 15 1
	mv	s8,a0
	mv	s9,a1
	mv	s7,a2
	mv	s2,a3
	mv	s1,a4
	mv	s5,a6
	.loc 1 27 8
	ble	a4,a5,.L2
	.loc 1 29 9 is_stmt 1
	li	a1,0
.LVL3:
	addi	a0,sp,96
.LVL4:
	call	bl_sha_init
.LVL5:
	.loc 1 30 9
	mv	a2,s1
	mv	a1,s2
	addi	a0,sp,96
	call	bl_sha_update
.LVL6:
	.loc 1 31 9
	mv	a1,s2
	addi	a0,sp,96
	call	bl_sha_finish
.LVL7:
	.loc 1 33 9
	.loc 1 33 17 is_stmt 0
	li	s1,20
.LVL8:
.L2:
	.loc 1 49 5 is_stmt 1
	li	a2,64
	li	a1,0
	addi	a0,sp,8
.LVL9:
	call	memset
.LVL10:
	.loc 1 50 5
	mv	a2,s1
	mv	a1,s2
	addi	a0,sp,8
.LVL11:
	call	memcpy
.LVL12:
	.loc 1 53 5
	.loc 1 53 17
	addi	s0,sp,8
.LVL13:
	.loc 1 55 32 is_stmt 0
	li	a5,909520896
	addi	s6,sp,72
.LVL14:
	.loc 1 50 5
	mv	a4,s0
	.loc 1 55 32
	addi	a5,a5,1590
.LVL15:
.L3:
	.loc 1 55 9 is_stmt 1 discriminator 3
	.loc 1 55 32 is_stmt 0 discriminator 3
	lw	a3,0(a4)
	xor	a3,a3,a5
	sw	a3,0(a4)
	lw	a3,4(a4)
	xor	a3,a3,a5
	sw	a3,4(a4)
	.loc 1 53 24 is_stmt 1 discriminator 3
	.loc 1 53 17 discriminator 3
	.loc 1 53 5 is_stmt 0 discriminator 3
	addi	a4,a4,8
	bne	a4,s6,.L3
	.loc 1 58 5 is_stmt 1
	li	a1,0
	addi	a0,sp,96
	call	bl_sha_init
.LVL16:
	.loc 1 59 5
	li	a2,64
	addi	a1,sp,8
	addi	a0,sp,96
	call	bl_sha_update
.LVL17:
	.loc 1 60 5
	.loc 1 60 12 is_stmt 0
	li	s3,0
.LVL18:
.L4:
	.loc 1 60 17 is_stmt 1 discriminator 1
	.loc 1 60 5 is_stmt 0 discriminator 1
	blt	s3,s7,.L5
	.loc 1 66 5 is_stmt 1
	mv	a1,s6
	addi	a0,sp,96
	call	bl_sha_finish
.LVL19:
	.loc 1 70 5
	li	a2,64
	li	a1,0
	addi	a0,sp,8
	call	memset
.LVL20:
	.loc 1 71 5
	mv	a2,s1
	mv	a1,s2
	addi	a0,sp,8
	call	memcpy
.LVL21:
	.loc 1 74 5
	.loc 1 74 17
	.loc 1 76 32 is_stmt 0
	li	a4,1549557760
	addi	a4,a4,-932
.LVL22:
.L6:
	.loc 1 76 9 is_stmt 1 discriminator 3
	.loc 1 76 32 is_stmt 0 discriminator 3
	lw	a5,0(s0)
	xor	a5,a5,a4
	sw	a5,0(s0)
	lw	a5,4(s0)
	xor	a5,a5,a4
	sw	a5,4(s0)
	.loc 1 74 24 is_stmt 1 discriminator 3
	.loc 1 74 17 discriminator 3
	.loc 1 74 5 is_stmt 0 discriminator 3
	addi	s0,s0,8
	bne	s0,s6,.L6
	.loc 1 79 5 is_stmt 1
	li	a1,0
	addi	a0,sp,96
	call	bl_sha_init
.LVL23:
	.loc 1 80 5
	addi	a1,sp,8
.LVL24:
	li	a2,64
	addi	a0,sp,96
	call	bl_sha_update
.LVL25:
	.loc 1 81 5
	li	a2,20
	mv	a1,s0
	addi	a0,sp,96
	call	bl_sha_update
.LVL26:
	.loc 1 82 5
	mv	a1,s0
	addi	a0,sp,96
	call	bl_sha_finish
.LVL27:
	.loc 1 83 5
	mv	a2,s5
	mv	a1,s0
	mv	a0,s4
	call	memcpy
.LVL28:
	.loc 1 84 1 is_stmt 0
	lw	ra,332(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,328(sp)
	.cfi_restore 8
	lw	s1,324(sp)
	.cfi_restore 9
.LVL29:
	lw	s2,320(sp)
	.cfi_restore 18
.LVL30:
	lw	s3,316(sp)
	.cfi_restore 19
	lw	s4,312(sp)
	.cfi_restore 20
.LVL31:
	lw	s5,308(sp)
	.cfi_restore 21
.LVL32:
	lw	s6,304(sp)
	.cfi_restore 22
.LVL33:
	lw	s7,300(sp)
	.cfi_restore 23
.LVL34:
	lw	s8,296(sp)
	.cfi_restore 24
.LVL35:
	lw	s9,292(sp)
	.cfi_restore 25
.LVL36:
	addi	sp,sp,336
	.cfi_def_cfa_offset 0
.LVL37:
	jr	ra
.LVL38:
.L5:
	.cfi_restore_state
	.loc 1 63 9 is_stmt 1 discriminator 3
	slli	a4,s3,2
	.loc 1 63 52 is_stmt 0 discriminator 3
	add	a5,s9,a4
	.loc 1 63 9 discriminator 3
	add	a4,s8,a4
	lw	a2,0(a5)
	lw	a1,0(a4)
	addi	a0,sp,96
	.loc 1 60 31 discriminator 3
	addi	s3,s3,1
.LVL39:
	.loc 1 63 9 discriminator 3
	call	bl_sha_update
.LVL40:
	.loc 1 60 30 is_stmt 1 discriminator 3
	j	.L4
	.cfi_endproc
.LFE1:
	.size	utils_hmac_sha1_fast, .-utils_hmac_sha1_fast
	.text
.Letext0:
	.file 2 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/sec_common/bl_sec_common.h"
	.file 4 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_sec.h"
	.file 5 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x52d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF49
	.byte	0xc
	.4byte	.LASF50
	.4byte	.LASF51
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
	.4byte	0x5b
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.byte	0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x37
	.byte	0x20
	.4byte	0x6e
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
	.4byte	0x41
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x3
	.byte	0x5
	.byte	0xe
	.4byte	0xc3
	.byte	0x7
	.4byte	.LASF12
	.byte	0
	.byte	0x7
	.4byte	.LASF13
	.byte	0x1
	.byte	0x7
	.4byte	.LASF14
	.byte	0x2
	.byte	0x7
	.4byte	.LASF15
	.byte	0x3
	.byte	0x7
	.4byte	.LASF16
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.byte	0x5
	.byte	0
	.byte	0x3
	.4byte	.LASF18
	.byte	0x3
	.byte	0xc
	.byte	0x3
	.4byte	0x90
	.byte	0x8
	.byte	0x14
	.byte	0x3
	.byte	0x12
	.byte	0x9
	.4byte	0x10d
	.byte	0x9
	.4byte	.LASF19
	.byte	0x3
	.byte	0x13
	.byte	0xe
	.4byte	0x10d
	.byte	0
	.byte	0x9
	.4byte	.LASF20
	.byte	0x3
	.byte	0x14
	.byte	0xf
	.4byte	0x11d
	.byte	0x8
	.byte	0x9
	.4byte	.LASF21
	.byte	0x3
	.byte	0x15
	.byte	0xf
	.4byte	0x11d
	.byte	0xc
	.byte	0x9
	.4byte	.LASF22
	.byte	0x3
	.byte	0x16
	.byte	0xe
	.4byte	0x4f
	.byte	0x10
	.byte	0
	.byte	0xa
	.4byte	0x4f
	.4byte	0x11d
	.byte	0xb
	.4byte	0x7c
	.byte	0x1
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x4f
	.byte	0x3
	.4byte	.LASF23
	.byte	0x3
	.byte	0x17
	.byte	0x3
	.4byte	0xcf
	.byte	0xc
	.byte	0x28
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0x9
	.4byte	0x1a4
	.byte	0xd
	.4byte	.LASF24
	.byte	0x3
	.byte	0x1b
	.byte	0xe
	.4byte	0x4f
	.byte	0x4
	.byte	0x3
	.byte	0x1b
	.byte	0
	.byte	0xd
	.4byte	.LASF25
	.byte	0x3
	.byte	0x1d
	.byte	0xe
	.4byte	0x4f
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.byte	0xd
	.4byte	.LASF26
	.byte	0x3
	.byte	0x1f
	.byte	0xe
	.4byte	0x4f
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.byte	0xd
	.4byte	.LASF27
	.byte	0x3
	.byte	0x20
	.byte	0xe
	.4byte	0x4f
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.byte	0xd
	.4byte	.LASF28
	.byte	0x3
	.byte	0x22
	.byte	0xe
	.4byte	0x4f
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0x9
	.4byte	.LASF29
	.byte	0x3
	.byte	0x23
	.byte	0xe
	.4byte	0x4f
	.byte	0x4
	.byte	0x9
	.4byte	.LASF30
	.byte	0x3
	.byte	0x24
	.byte	0xe
	.4byte	0x1a4
	.byte	0x8
	.byte	0
	.byte	0xa
	.4byte	0x4f
	.4byte	0x1b4
	.byte	0xb
	.4byte	0x7c
	.byte	0x7
	.byte	0
	.byte	0xe
	.4byte	.LASF32
	.byte	0x3
	.byte	0x25
	.byte	0x20
	.4byte	0x12f
	.byte	0x4
	.byte	0xf
	.4byte	.LASF52
	.byte	0xc0
	.byte	0x4
	.byte	0x3
	.byte	0x27
	.byte	0x10
	.4byte	0x212
	.byte	0x9
	.4byte	.LASF31
	.byte	0x3
	.byte	0x28
	.byte	0x13
	.4byte	0xc3
	.byte	0
	.byte	0x10
	.string	"ctx"
	.byte	0x3
	.byte	0x29
	.byte	0x20
	.4byte	0x123
	.byte	0x4
	.byte	0x11
	.4byte	.LASF53
	.byte	0x3
	.byte	0x2a
	.byte	0x25
	.4byte	0x1b4
	.byte	0x4
	.byte	0x18
	.byte	0x10
	.string	"tmp"
	.byte	0x3
	.byte	0x2b
	.byte	0xe
	.4byte	0x212
	.byte	0x40
	.byte	0x10
	.string	"pad"
	.byte	0x3
	.byte	0x2c
	.byte	0xe
	.4byte	0x212
	.byte	0x80
	.byte	0
	.byte	0xa
	.4byte	0x4f
	.4byte	0x222
	.byte	0xb
	.4byte	0x7c
	.byte	0xf
	.byte	0
	.byte	0xe
	.4byte	.LASF33
	.byte	0x3
	.byte	0x2d
	.byte	0x3
	.4byte	0x1c1
	.byte	0x4
	.byte	0x12
	.4byte	.LASF54
	.byte	0x1
	.byte	0x8
	.byte	0x6
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0x4d8
	.byte	0x13
	.4byte	.LASF34
	.byte	0x1
	.byte	0x8
	.byte	0x2c
	.4byte	0x4d8
	.4byte	.LLST0
	.byte	0x13
	.4byte	.LASF35
	.byte	0x1
	.byte	0x9
	.byte	0x1b
	.4byte	0x4de
	.4byte	.LLST1
	.byte	0x13
	.4byte	.LASF36
	.byte	0x1
	.byte	0xa
	.byte	0x19
	.4byte	0x75
	.4byte	.LLST2
	.byte	0x14
	.string	"key"
	.byte	0x1
	.byte	0xb
	.byte	0x24
	.4byte	0x83
	.4byte	.LLST3
	.byte	0x13
	.4byte	.LASF37
	.byte	0x1
	.byte	0xc
	.byte	0x19
	.4byte	0x75
	.4byte	.LLST4
	.byte	0x13
	.4byte	.LASF38
	.byte	0x1
	.byte	0xd
	.byte	0x24
	.4byte	0x83
	.4byte	.LLST5
	.byte	0x13
	.4byte	.LASF39
	.byte	0x1
	.byte	0xe
	.byte	0x19
	.4byte	0x75
	.4byte	.LLST6
	.byte	0x15
	.4byte	.LASF40
	.byte	0x1
	.byte	0x10
	.byte	0xe
	.4byte	0x4e4
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7d
	.byte	0x15
	.4byte	.LASF41
	.byte	0x1
	.byte	0x11
	.byte	0x12
	.4byte	0x222
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7e
	.byte	0x16
	.4byte	.LASF42
	.byte	0x1
	.byte	0x12
	.byte	0x14
	.4byte	0x83
	.4byte	.LLST7
	.byte	0x16
	.4byte	.LASF43
	.byte	0x1
	.byte	0x13
	.byte	0x14
	.4byte	0x83
	.4byte	.LLST8
	.byte	0x17
	.string	"i"
	.byte	0x1
	.byte	0x14
	.byte	0x9
	.4byte	0x75
	.4byte	.LLST9
	.byte	0x18
	.4byte	.LVL5
	.4byte	0x4f4
	.4byte	0x31d
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7e
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x18
	.4byte	.LVL6
	.4byte	0x500
	.4byte	0x33e
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7e
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL7
	.4byte	0x50c
	.4byte	0x359
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7e
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL10
	.4byte	0x518
	.4byte	0x379
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7d
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0x18
	.4byte	.LVL12
	.4byte	0x524
	.4byte	0x39a
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7d
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL16
	.4byte	0x4f4
	.4byte	0x3b4
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7e
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x18
	.4byte	.LVL17
	.4byte	0x500
	.4byte	0x3d5
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7e
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0x18
	.4byte	.LVL19
	.4byte	0x50c
	.4byte	0x3f0
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7e
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL20
	.4byte	0x518
	.4byte	0x40f
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0x18
	.4byte	.LVL21
	.4byte	0x524
	.4byte	0x42f
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL23
	.4byte	0x4f4
	.4byte	0x449
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7e
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x18
	.4byte	.LVL25
	.4byte	0x500
	.4byte	0x46b
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7e
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7d
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0x18
	.4byte	.LVL26
	.4byte	0x500
	.4byte	0x48b
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7e
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0x18
	.4byte	.LVL27
	.4byte	0x50c
	.4byte	0x4a6
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7e
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL28
	.4byte	0x524
	.4byte	0x4c6
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL40
	.4byte	0x500
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x90,0x7e
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x83
	.byte	0x5
	.byte	0x4
	.4byte	0x75
	.byte	0xa
	.4byte	0x62
	.4byte	0x4f4
	.byte	0xb
	.4byte	0x7c
	.byte	0xa
	.byte	0
	.byte	0x1b
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x4
	.byte	0x23
	.byte	0x5
	.byte	0x1b
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x4
	.byte	0x25
	.byte	0x5
	.byte	0x1b
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0x4
	.byte	0x26
	.byte	0x5
	.byte	0x1b
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0x5
	.byte	0x21
	.byte	0x8
	.byte	0x1b
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0x5
	.byte	0x1f
	.byte	0x8
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
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
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
	.byte	0x9
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
	.byte	0xd
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
	.byte	0xe
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
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x18
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
	.byte	0x19
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
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
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL5-1
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL34
	.4byte	.LVL38
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL5-1
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL30
	.4byte	.LVL38
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL5-1
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x44
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL38
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL2
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL31
	.4byte	.LVL38
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL0
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL5-1
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL32
	.4byte	.LVL38
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x60
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL1
	.4byte	.LVL9
	.2byte	0x4
	.byte	0x91
	.byte	0xb8,0x7d
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10-1
	.4byte	.LVL11
	.2byte	0x4
	.byte	0x91
	.byte	0xb8,0x7d
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12-1
	.4byte	.LVL13
	.2byte	0x4
	.byte	0x91
	.byte	0xb8,0x7d
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x4
	.byte	0x91
	.byte	0xb8,0x7d
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL25-1
	.4byte	.LVL37
	.2byte	0x4
	.byte	0x91
	.byte	0xb8,0x7d
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x4
	.byte	0x72
	.byte	0xb8,0x7d
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL1
	.4byte	.LVL14
	.2byte	0x4
	.byte	0x91
	.byte	0xf8,0x7d
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL33
	.4byte	.LVL37
	.2byte	0x4
	.byte	0x91
	.byte	0xf8,0x7d
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x4
	.byte	0x72
	.byte	0xf8,0x7d
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x3
	.byte	0x83
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF3:
	.string	"long long int"
.LASF33:
	.string	"bl_sha_ctx_t"
.LASF11:
	.string	"char"
.LASF45:
	.string	"bl_sha_update"
.LASF29:
	.string	"shaSrcAddr"
.LASF54:
	.string	"utils_hmac_sha1_fast"
.LASF21:
	.string	"shaPadding"
.LASF35:
	.string	"pTextLen"
.LASF2:
	.string	"long int"
.LASF24:
	.string	"shaMode"
.LASF28:
	.string	"shaMsgLen"
.LASF8:
	.string	"uint64_t"
.LASF13:
	.string	"BL_SHA224"
.LASF51:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/build_out/utils"
.LASF0:
	.string	"signed char"
.LASF4:
	.string	"unsigned char"
.LASF6:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF20:
	.string	"shaBuf"
.LASF22:
	.string	"linkAddr"
.LASF46:
	.string	"bl_sha_finish"
.LASF47:
	.string	"memset"
.LASF1:
	.string	"short int"
.LASF25:
	.string	"shaHashSel"
.LASF12:
	.string	"BL_SHA1"
.LASF10:
	.string	"unsigned int"
.LASF32:
	.string	"bl_SEC_Eng_SHA_Link_Config_Type"
.LASF9:
	.string	"long long unsigned int"
.LASF30:
	.string	"result"
.LASF40:
	.string	"pBuf"
.LASF19:
	.string	"total"
.LASF15:
	.string	"BL_MD5"
.LASF17:
	.string	"BL_SHA512"
.LASF16:
	.string	"BL_SHA384"
.LASF49:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF27:
	.string	"shaIntSet"
.LASF50:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/utils/src/utils_hmac_sha1_fast.c"
.LASF23:
	.string	"bl_SEC_Eng_SHA256_Link_Ctx"
.LASF31:
	.string	"type"
.LASF14:
	.string	"BL_SHA256"
.LASF41:
	.string	"sha_ctx"
.LASF38:
	.string	"output"
.LASF36:
	.string	"textNum"
.LASF53:
	.string	"link_cfg"
.LASF37:
	.string	"key_len"
.LASF7:
	.string	"uint32_t"
.LASF26:
	.string	"shaIntClr"
.LASF44:
	.string	"bl_sha_init"
.LASF39:
	.string	"outputLen"
.LASF34:
	.string	"ppText"
.LASF48:
	.string	"memcpy"
.LASF42:
	.string	"k_pad"
.LASF43:
	.string	"digest"
.LASF18:
	.string	"bl_sha_type_t"
.LASF52:
	.string	"bl_sha_ctx"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
