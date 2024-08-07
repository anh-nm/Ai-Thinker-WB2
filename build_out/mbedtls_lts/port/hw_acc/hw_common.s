	.file	"hw_common.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.mpi_words_to_reg_size,"ax",@progbits
	.align	1
	.globl	mpi_words_to_reg_size
	.type	mpi_words_to_reg_size, @function
mpi_words_to_reg_size:
.LFB8:
	.file 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/security/mbedtls_lts/port/hw_acc/hw_common.c"
	.loc 1 7 1
	.cfi_startproc
.LVL0:
	.loc 1 8 5
	.loc 1 8 12 is_stmt 0
	slli	a5,a0,2
.LVL1:
	.loc 1 9 5 is_stmt 1
	.loc 1 9 8 is_stmt 0
	li	a4,8
	bleu	a5,a4,.L3
	.loc 1 10 10 is_stmt 1
	.loc 1 10 13 is_stmt 0
	li	a4,16
	.loc 1 10 34
	li	a0,2
.LVL2:
	.loc 1 10 13
	bleu	a5,a4,.L1
	.loc 1 11 10 is_stmt 1
	.loc 1 11 13 is_stmt 0
	li	a4,32
	.loc 1 11 34
	li	a0,3
	.loc 1 11 13
	bleu	a5,a4,.L1
	.loc 1 12 10 is_stmt 1
	.loc 1 12 13 is_stmt 0
	li	a4,64
	.loc 1 12 34
	li	a0,4
	.loc 1 12 13
	bleu	a5,a4,.L1
	.loc 1 13 10 is_stmt 1
	.loc 1 13 13 is_stmt 0
	li	a4,96
	.loc 1 13 34
	li	a0,5
	.loc 1 13 13
	bleu	a5,a4,.L1
	.loc 1 14 10 is_stmt 1
	.loc 1 14 13 is_stmt 0
	li	a4,128
	.loc 1 14 35
	li	a0,6
	.loc 1 14 13
	bleu	a5,a4,.L1
	.loc 1 15 10 is_stmt 1
	.loc 1 15 13 is_stmt 0
	li	a4,192
	.loc 1 15 35
	li	a0,7
	.loc 1 15 13
	bleu	a5,a4,.L1
	.loc 1 16 10 is_stmt 1
	.loc 1 16 13 is_stmt 0
	li	a4,256
	.loc 1 16 35
	li	a0,8
	.loc 1 16 13
	bleu	a5,a4,.L1
	.loc 1 17 10 is_stmt 1
	.loc 1 17 13 is_stmt 0
	li	a4,384
	.loc 1 17 35
	li	a0,9
	.loc 1 17 13
	bleu	a5,a4,.L1
	.loc 1 18 10 is_stmt 1
	.loc 1 18 13 is_stmt 0
	li	a4,512
	.loc 1 18 35
	li	a0,10
	.loc 1 18 13
	bleu	a5,a4,.L1
	.loc 1 19 17
	li	a0,0
	ret
.LVL3:
.L3:
	.loc 1 9 28
	li	a0,1
.LVL4:
.L1:
	.loc 1 20 1
	ret
	.cfi_endproc
.LFE8:
	.size	mpi_words_to_reg_size, .-mpi_words_to_reg_size
	.section	.text.mpi_reg_size_to_words,"ax",@progbits
	.align	1
	.globl	mpi_reg_size_to_words
	.type	mpi_reg_size_to_words, @function
mpi_reg_size_to_words:
.LFB9:
	.loc 1 23 1 is_stmt 1
	.cfi_startproc
.LVL5:
	.loc 1 24 5
	.loc 1 24 8 is_stmt 0
	li	a4,1
	.loc 1 23 1
	mv	a5,a0
	.loc 1 24 8
	beq	a0,a4,.L15
	.loc 1 25 10 is_stmt 1
	.loc 1 25 13 is_stmt 0
	li	a4,2
	.loc 1 25 58
	li	a0,4
.LVL6:
	.loc 1 25 13
	beq	a5,a4,.L13
	.loc 1 26 10 is_stmt 1
	.loc 1 26 13 is_stmt 0
	li	a4,3
	.loc 1 26 58
	li	a0,8
	.loc 1 26 13
	beq	a5,a4,.L13
	.loc 1 27 10 is_stmt 1
	.loc 1 27 13 is_stmt 0
	li	a4,4
	.loc 1 27 58
	li	a0,16
	.loc 1 27 13
	beq	a5,a4,.L13
	.loc 1 28 10 is_stmt 1
	.loc 1 28 13 is_stmt 0
	li	a4,5
	.loc 1 28 58
	li	a0,24
	.loc 1 28 13
	beq	a5,a4,.L13
	.loc 1 29 10 is_stmt 1
	.loc 1 29 13 is_stmt 0
	li	a4,6
	.loc 1 29 59
	li	a0,32
	.loc 1 29 13
	beq	a5,a4,.L13
	.loc 1 30 10 is_stmt 1
	.loc 1 30 13 is_stmt 0
	li	a4,7
	.loc 1 30 59
	li	a0,48
	.loc 1 30 13
	beq	a5,a4,.L13
	.loc 1 31 10 is_stmt 1
	.loc 1 31 13 is_stmt 0
	li	a4,8
	.loc 1 31 59
	li	a0,64
	.loc 1 31 13
	beq	a5,a4,.L13
.LVL7:
.LBB4:
.LBB5:
	.loc 1 32 10 is_stmt 1
	.loc 1 32 13 is_stmt 0
	li	a4,9
	.loc 1 32 59
	li	a0,96
	.loc 1 32 13
	beq	a5,a4,.L13
	.loc 1 33 10 is_stmt 1
	.loc 1 33 13 is_stmt 0
	li	a4,10
	.loc 1 33 59
	li	a0,128
	.loc 1 33 13
	beq	a5,a4,.L13
	.loc 1 34 17
	li	a0,0
	ret
.LVL8:
.L15:
.LBE5:
.LBE4:
	.loc 1 24 52
	li	a0,2
.LVL9:
.L13:
	.loc 1 35 1
	ret
	.cfi_endproc
.LFE9:
	.size	mpi_reg_size_to_words, .-mpi_reg_size_to_words
	.section	.rodata.dump_pka_reg.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"reg %s:\r\n"
	.align	2
.LC1:
	.string	"<err>\r\n"
	.section	.text.dump_pka_reg,"ax",@progbits
	.align	1
	.globl	dump_pka_reg
	.type	dump_pka_reg, @function
dump_pka_reg:
.LFB10:
	.loc 1 39 1 is_stmt 1
	.cfi_startproc
.LVL10:
	.loc 1 40 5
	.loc 1 41 5
	.loc 1 39 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	.cfi_offset 8, -8
	mv	s0,a0
	.loc 1 41 5
	addi	a0,sp,4
.LVL11:
	.loc 1 39 1
	sw	ra,44(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	mv	s1,a1
	sw	s3,28(sp)
	.cfi_offset 19, -20
	.loc 1 39 1
	mv	s3,a2
	.loc 1 41 5
	call	mbedtls_mpi_init
.LVL12:
	.loc 1 42 5 is_stmt 1
	.loc 1 43 5
	lui	a0,%hi(.LC0)
	mv	a1,s0
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL13:
	.loc 1 44 5
	.loc 1 44 20 is_stmt 0
	mv	a0,s1
	call	mpi_reg_size_to_words
.LVL14:
	.loc 1 45 5
	lui	s2,%hi(.LANCHOR0)
	.loc 1 44 20
	mv	s0,a0
.LVL15:
	.loc 1 45 5 is_stmt 1
	li	a2,512
	li	a1,0
	addi	a0,s2,%lo(.LANCHOR0)
	call	memset
.LVL16:
	.loc 1 46 5
	addi	a2,s2,%lo(.LANCHOR0)
	mv	a1,s3
	mv	a0,s1
	andi	a3,s0,0xff
	call	Sec_Eng_PKA_Read_Data
.LVL17:
	.loc 1 47 5
	.loc 1 47 9 is_stmt 0
	slli	a2,s0,2
	addi	a1,s2,%lo(.LANCHOR0)
	addi	a0,sp,4
	call	mbedtls_mpi_read_binary
.LVL18:
	.loc 1 47 8
	beq	a0,zero,.L26
	.loc 1 48 9 is_stmt 1
	lui	a0,%hi(.LC1)
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL19:
	.loc 1 49 9
.L25:
	.loc 1 53 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
.LVL20:
	lw	s1,36(sp)
	.cfi_restore 9
.LVL21:
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL22:
.L26:
	.cfi_restore_state
	.loc 1 51 5 is_stmt 1
	addi	a1,sp,4
	call	dump_mpi
.LVL23:
	.loc 1 52 5
	addi	a0,sp,4
	call	mbedtls_mpi_free
.LVL24:
	j	.L25
	.cfi_endproc
.LFE10:
	.size	dump_pka_reg, .-dump_pka_reg
	.section	.bss.tmp_buf.0,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	tmp_buf.0, @object
	.size	tmp_buf.0, 512
tmp_buf.0:
	.zero	512
	.text
.Letext0:
	.file 2 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 4 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/security/mbedtls_lts/mbedtls/include/mbedtls/bignum.h"
	.file 5 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 6 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 7 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sec_eng.h"
	.file 8 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/security/mbedtls_lts/port/bignum_ext.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x391
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF35
	.byte	0xc
	.4byte	.LASF36
	.4byte	.LASF37
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
	.4byte	0x4d
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
	.4byte	0x67
	.byte	0x2
	.byte	0x4
	.byte	0x7
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
	.byte	0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0xd1
	.byte	0x16
	.4byte	0x7c
	.byte	0x5
	.byte	0x4
	.4byte	0x9c
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x6
	.4byte	0x95
	.byte	0x7
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x7
	.byte	0x86
	.byte	0xe
	.4byte	0xec
	.byte	0x8
	.4byte	.LASF13
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0x2
	.byte	0x8
	.4byte	.LASF15
	.byte	0x3
	.byte	0x8
	.4byte	.LASF16
	.byte	0x4
	.byte	0x8
	.4byte	.LASF17
	.byte	0x5
	.byte	0x8
	.4byte	.LASF18
	.byte	0x6
	.byte	0x8
	.4byte	.LASF19
	.byte	0x7
	.byte	0x8
	.4byte	.LASF20
	.byte	0x8
	.byte	0x8
	.4byte	.LASF21
	.byte	0x9
	.byte	0x8
	.4byte	.LASF22
	.byte	0xa
	.byte	0
	.byte	0x3
	.4byte	.LASF23
	.byte	0x4
	.byte	0xb2
	.byte	0x16
	.4byte	0x5b
	.byte	0x9
	.4byte	.LASF24
	.byte	0xc
	.byte	0x4
	.byte	0xc0
	.byte	0x10
	.4byte	0x127
	.byte	0xa
	.string	"s"
	.byte	0x4
	.byte	0xc2
	.byte	0x9
	.4byte	0x75
	.byte	0
	.byte	0xa
	.string	"n"
	.byte	0x4
	.byte	0xc3
	.byte	0xc
	.4byte	0x83
	.byte	0x4
	.byte	0xa
	.string	"p"
	.byte	0x4
	.byte	0xc4
	.byte	0x17
	.4byte	0x127
	.byte	0x8
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0xec
	.byte	0x3
	.4byte	.LASF24
	.byte	0x4
	.byte	0xc6
	.byte	0x1
	.4byte	0xf8
	.byte	0xb
	.4byte	.LASF38
	.byte	0x1
	.byte	0x26
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x2a0
	.byte	0xc
	.string	"tag"
	.byte	0x1
	.byte	0x26
	.byte	0x1f
	.4byte	0x8f
	.4byte	.LLST3
	.byte	0xc
	.string	"s"
	.byte	0x1
	.byte	0x26
	.byte	0x28
	.4byte	0x75
	.4byte	.LLST4
	.byte	0xc
	.string	"reg"
	.byte	0x1
	.byte	0x26
	.byte	0x33
	.4byte	0x41
	.4byte	.LLST5
	.byte	0xd
	.string	"num"
	.byte	0x1
	.byte	0x28
	.byte	0x11
	.4byte	0x12d
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0xe
	.4byte	.LASF25
	.byte	0x1
	.byte	0x2a
	.byte	0x15
	.4byte	0x2a0
	.byte	0x5
	.byte	0x3
	.4byte	tmp_buf.0
	.byte	0xf
	.4byte	.LASF26
	.byte	0x1
	.byte	0x2c
	.byte	0xc
	.4byte	0x83
	.4byte	.LLST6
	.byte	0x10
	.4byte	.LVL12
	.4byte	0x33e
	.4byte	0x1c2
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0
	.byte	0x10
	.4byte	.LVL13
	.4byte	0x34a
	.4byte	0x1df
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LVL14
	.4byte	0x2b0
	.4byte	0x1f3
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LVL16
	.4byte	0x356
	.4byte	0x216
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x200
	.byte	0
	.byte	0x10
	.4byte	.LVL17
	.4byte	0x362
	.4byte	0x23f
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LVL18
	.4byte	0x36f
	.4byte	0x264
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x4
	.byte	0x78
	.byte	0
	.byte	0x32
	.byte	0x24
	.byte	0
	.byte	0x10
	.4byte	.LVL19
	.4byte	0x34a
	.4byte	0x27b
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x10
	.4byte	.LVL23
	.4byte	0x37c
	.4byte	0x28f
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0
	.byte	0x12
	.4byte	.LVL24
	.4byte	0x388
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	0x5b
	.4byte	0x2b0
	.byte	0x14
	.4byte	0x7c
	.byte	0x7f
	.byte	0
	.byte	0x15
	.4byte	.LASF39
	.byte	0x1
	.byte	0x16
	.byte	0x8
	.4byte	0x83
	.byte	0x1
	.4byte	0x2ce
	.byte	0x16
	.4byte	.LASF40
	.byte	0x1
	.byte	0x16
	.byte	0x22
	.4byte	0x75
	.byte	0
	.byte	0x17
	.4byte	.LASF41
	.byte	0x1
	.byte	0x6
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x307
	.byte	0x18
	.4byte	.LASF26
	.byte	0x1
	.byte	0x6
	.byte	0x22
	.4byte	0x83
	.4byte	.LLST0
	.byte	0xe
	.4byte	.LASF27
	.byte	0x1
	.byte	0x8
	.byte	0xc
	.4byte	0x83
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0x19
	.4byte	0x2b0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x33e
	.byte	0x1a
	.4byte	0x2c1
	.4byte	.LLST1
	.byte	0x1b
	.4byte	0x2b0
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x16
	.byte	0x8
	.byte	0x1a
	.4byte	0x2c1
	.4byte	.LLST2
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LASF28
	.4byte	.LASF28
	.byte	0x4
	.byte	0xd0
	.byte	0x6
	.byte	0x1c
	.4byte	.LASF29
	.4byte	.LASF29
	.byte	0x5
	.byte	0xc8
	.byte	0x5
	.byte	0x1c
	.4byte	.LASF30
	.4byte	.LASF30
	.byte	0x6
	.byte	0x21
	.byte	0x8
	.byte	0x1d
	.4byte	.LASF31
	.4byte	.LASF31
	.byte	0x7
	.2byte	0x1da
	.byte	0x6
	.byte	0x1d
	.4byte	.LASF32
	.4byte	.LASF32
	.byte	0x4
	.2byte	0x1f5
	.byte	0x5
	.byte	0x1c
	.4byte	.LASF33
	.4byte	.LASF33
	.byte	0x8
	.byte	0x5
	.byte	0x6
	.byte	0x1c
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0x4
	.byte	0xd9
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
	.byte	0x49
	.byte	0x13
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
	.byte	0x8
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xa
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
	.byte	0xb
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
	.byte	0xc
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
	.byte	0xd
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x11
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
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
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0x18
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
	.byte	0x19
	.byte	0x2e
	.byte	0x1
	.byte	0x31
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
	.byte	0x1a
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x58
	.byte	0xb
	.byte	0x59
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x1c
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
	.byte	0x1d
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
.LLST3:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL15
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL10
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL12-1
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL12-1
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL15
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL22
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF11:
	.string	"size_t"
.LASF36:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/security/mbedtls_lts/port/hw_acc/hw_common.c"
.LASF10:
	.string	"unsigned int"
.LASF29:
	.string	"printf"
.LASF15:
	.string	"SEC_ENG_PKA_REG_SIZE_32"
.LASF28:
	.string	"mbedtls_mpi_init"
.LASF33:
	.string	"dump_mpi"
.LASF9:
	.string	"long long unsigned int"
.LASF4:
	.string	"unsigned char"
.LASF8:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF14:
	.string	"SEC_ENG_PKA_REG_SIZE_16"
.LASF17:
	.string	"SEC_ENG_PKA_REG_SIZE_96"
.LASF30:
	.string	"memset"
.LASF37:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/build_out/mbedtls_lts"
.LASF31:
	.string	"Sec_Eng_PKA_Read_Data"
.LASF24:
	.string	"mbedtls_mpi"
.LASF26:
	.string	"words"
.LASF40:
	.string	"reg_size"
.LASF41:
	.string	"mpi_words_to_reg_size"
.LASF25:
	.string	"tmp_buf"
.LASF12:
	.string	"char"
.LASF6:
	.string	"uint8_t"
.LASF19:
	.string	"SEC_ENG_PKA_REG_SIZE_192"
.LASF13:
	.string	"SEC_ENG_PKA_REG_SIZE_8"
.LASF23:
	.string	"mbedtls_mpi_uint"
.LASF3:
	.string	"long long int"
.LASF35:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF34:
	.string	"mbedtls_mpi_free"
.LASF39:
	.string	"mpi_reg_size_to_words"
.LASF22:
	.string	"SEC_ENG_PKA_REG_SIZE_512"
.LASF21:
	.string	"SEC_ENG_PKA_REG_SIZE_384"
.LASF1:
	.string	"short int"
.LASF38:
	.string	"dump_pka_reg"
.LASF16:
	.string	"SEC_ENG_PKA_REG_SIZE_64"
.LASF32:
	.string	"mbedtls_mpi_read_binary"
.LASF7:
	.string	"uint32_t"
.LASF2:
	.string	"long int"
.LASF20:
	.string	"SEC_ENG_PKA_REG_SIZE_256"
.LASF27:
	.string	"bytes"
.LASF0:
	.string	"signed char"
.LASF18:
	.string	"SEC_ENG_PKA_REG_SIZE_128"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
