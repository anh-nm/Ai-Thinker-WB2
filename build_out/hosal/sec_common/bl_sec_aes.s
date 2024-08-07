	.file	"bl_sec_aes.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.bl_sec_aes_init,"ax",@progbits
	.align	1
	.globl	bl_sec_aes_init
	.type	bl_sec_aes_init, @function
bl_sec_aes_init:
.LFB8:
	.file 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/sec_common/bl_sec_aes.c"
	.loc 1 8 1
	.cfi_startproc
	.loc 1 9 5
	.loc 1 8 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 9 5
	li	a0,0
	.loc 1 8 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 9 5
	call	Sec_Eng_AES_Enable_BE
.LVL0:
	.loc 1 10 5 is_stmt 1
	.loc 1 11 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	bl_sec_aes_init, .-bl_sec_aes_init
	.section	.text.bl_aes_acquire_hw,"ax",@progbits
	.align	1
	.globl	bl_aes_acquire_hw
	.type	bl_aes_acquire_hw, @function
bl_aes_acquire_hw:
.LFB9:
	.loc 1 14 1 is_stmt 1
	.cfi_startproc
	.loc 1 15 5
	.loc 1 14 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 15 5
	call	vTaskEnterCritical
.LVL1:
	.loc 1 16 5 is_stmt 1
	.loc 1 17 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	bl_aes_acquire_hw, .-bl_aes_acquire_hw
	.section	.text.bl_aes_release_hw,"ax",@progbits
	.align	1
	.globl	bl_aes_release_hw
	.type	bl_aes_release_hw, @function
bl_aes_release_hw:
.LFB10:
	.loc 1 20 1 is_stmt 1
	.cfi_startproc
	.loc 1 21 5
	.loc 1 20 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 21 5
	call	vTaskExitCritical
.LVL2:
	.loc 1 22 5 is_stmt 1
	.loc 1 23 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	bl_aes_release_hw, .-bl_aes_release_hw
	.section	.text.bl_aes_init,"ax",@progbits
	.align	1
	.globl	bl_aes_init
	.type	bl_aes_init, @function
bl_aes_init:
.LFB11:
	.loc 1 26 1 is_stmt 1
	.cfi_startproc
.LVL3:
	.loc 1 27 5
	.loc 1 27 8 is_stmt 0
	beq	a0,zero,.L9
	.loc 1 26 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 30 5
	li	a2,60
	li	a1,0
	.loc 1 26 1
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	mv	s0,a0
	.loc 1 30 5 is_stmt 1
	call	memset
.LVL4:
	.loc 1 31 5
	.loc 1 32 5
	.loc 1 31 29 is_stmt 0
	lbu	a5,1(s0)
	.loc 1 34 12
	li	a0,0
	.loc 1 31 29
	andi	a5,a5,-51
	ori	a5,a5,2
	sb	a5,1(s0)
	.loc 1 34 5 is_stmt 1
	.loc 1 35 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL5:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL6:
.L9:
	.loc 1 28 16
	li	a0,-1
.LVL7:
	.loc 1 35 1
	ret
	.cfi_endproc
.LFE11:
	.size	bl_aes_init, .-bl_aes_init
	.section	.text.bl_aes_set_key,"ax",@progbits
	.align	1
	.globl	bl_aes_set_key
	.type	bl_aes_set_key, @function
bl_aes_set_key:
.LFB12:
	.loc 1 38 1 is_stmt 1
	.cfi_startproc
.LVL8:
	.loc 1 39 5
	.loc 1 39 8 is_stmt 0
	beq	a0,zero,.L18
	mv	a5,a0
	mv	a1,a2
.LVL9:
	.loc 1 40 16 discriminator 1
	li	a0,-1
.LVL10:
	.loc 1 39 15 discriminator 1
	beq	a2,zero,.L24
	mv	a2,a3
.LVL11:
	.loc 1 39 9 discriminator 2
	andi	a4,a3,-9
	li	a3,16
.LVL12:
	beq	a4,a3,.L16
	.loc 1 39 57 discriminator 4
	li	a4,32
	bne	a2,a4,.L24
.L16:
	.loc 1 42 5 is_stmt 1
	.loc 1 44 5
	.loc 1 38 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 44 32
	lw	a4,0(a5)
	.loc 1 46 8
	li	a3,16
	.loc 1 44 32
	andi	a4,a4,-65
	sw	a4,0(a5)
	.loc 1 45 5 is_stmt 1
	.loc 1 46 5
	.loc 1 47 18 is_stmt 0
	li	a4,0
	.loc 1 46 8
	beq	a2,a3,.L17
	.loc 1 48 12 is_stmt 1
	.loc 1 48 15 is_stmt 0
	li	a3,24
	.loc 1 49 18
	li	a4,2
	.loc 1 48 15
	beq	a2,a3,.L17
	.loc 1 51 18
	li	a4,1
.L17:
.LVL13:
	.loc 1 53 5 is_stmt 1
	.loc 1 53 27 is_stmt 0
	slli	a3,a4,3
	lw	a4,0(a5)
.LVL14:
	.loc 1 54 5
	addi	a0,a5,28
	.loc 1 53 27
	andi	a4,a4,-25
	or	a4,a4,a3
	sw	a4,0(a5)
	.loc 1 54 5 is_stmt 1
	call	memcpy
.LVL15:
	.loc 1 56 5
	.loc 1 57 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 56 12
	li	a0,0
	.loc 1 57 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL16:
.L18:
	.loc 1 40 16
	li	a0,-1
.LVL17:
	ret
.LVL18:
.L24:
	.loc 1 57 1
	ret
	.cfi_endproc
.LFE12:
	.size	bl_aes_set_key, .-bl_aes_set_key
	.section	.text.bl_aes_set_mode,"ax",@progbits
	.align	1
	.globl	bl_aes_set_mode
	.type	bl_aes_set_mode, @function
bl_aes_set_mode:
.LFB13:
	.loc 1 60 1 is_stmt 1
	.cfi_startproc
.LVL19:
	.loc 1 61 5
	.loc 1 60 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s1,4(sp)
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 62 16
	li	s1,-1
	.loc 1 61 8
	beq	a0,zero,.L26
	.loc 1 64 32
	lw	a4,0(a0)
	mv	a5,a1
	li	a3,-12288
	andi	a5,a5,3
	addi	a3,a3,-1
	slli	a5,a5,12
	and	a4,a4,a3
	or	a5,a4,a5
	sw	a5,0(a0)
	mv	s0,a0
	mv	a1,a2
.LVL20:
	.loc 1 64 5 is_stmt 1
	.loc 1 65 5
	.loc 1 70 12 is_stmt 0
	li	s1,0
	.loc 1 65 8
	beq	a2,zero,.L26
	.loc 1 66 9 is_stmt 1
	li	a2,16
.LVL21:
	addi	a0,a0,12
.LVL22:
	call	memcpy
.LVL23:
	.loc 1 67 9
	.loc 1 67 32 is_stmt 0
	lw	a5,0(s0)
	li	a4,-16384
	addi	a4,a4,-1
	and	a5,a5,a4
	sw	a5,0(s0)
.LVL24:
.L26:
	.loc 1 71 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	mv	a0,s1
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	bl_aes_set_mode, .-bl_aes_set_mode
	.section	.text.bl_aes_transform_blocks,"ax",@progbits
	.align	1
	.globl	bl_aes_transform_blocks
	.type	bl_aes_transform_blocks, @function
bl_aes_transform_blocks:
.LFB14:
	.loc 1 74 1 is_stmt 1
	.cfi_startproc
.LVL25:
	.loc 1 75 5
	.loc 1 76 5
	.loc 1 76 8 is_stmt 0
	beq	a0,zero,.L34
	.loc 1 74 1 discriminator 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	sw	s1,20(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.loc 1 76 15 discriminator 1
	sw	a2,12(sp)
	mv	s0,a0
	.loc 1 77 16 discriminator 1
	li	a0,-1
.LVL26:
	.loc 1 76 15 discriminator 1
	beq	a2,zero,.L32
	.loc 1 76 9 discriminator 2
	sw	a4,8(sp)
	beq	a4,zero,.L32
	mv	s1,a3
	.loc 1 80 5 is_stmt 1
	.loc 1 81 16 is_stmt 0
	li	a0,0
	.loc 1 80 8
	beq	a3,zero,.L32
.LVL27:
.LBB4:
.LBB5:
	.loc 1 83 5 is_stmt 1
	lw	a5,0(s0)
	snez	a1,a1
.LVL28:
	slli	a1,a1,5
	andi	a5,a5,-33
	or	a1,a5,a1
	sw	a1,0(s0)
	.loc 1 89 5
	call	Sec_Eng_AES_Enable_Link
.LVL29:
	.loc 1 90 5
	.loc 1 90 11 is_stmt 0
	lw	a4,8(sp)
	lw	a2,12(sp)
	mv	a1,s0
	slli	a3,s1,4
	li	a0,0
	call	Sec_Eng_AES_Link_Work
.LVL30:
	mv	s0,a0
.LVL31:
	.loc 1 91 5 is_stmt 1
	li	a0,0
	call	Sec_Eng_AES_Disable_Link
.LVL32:
	.loc 1 93 5
	.loc 1 93 12 is_stmt 0
	snez	a0,s0
.LVL33:
.L32:
.LBE5:
.LBE4:
	.loc 1 94 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL34:
.L34:
	.loc 1 77 16
	li	a0,-1
.LVL35:
	.loc 1 94 1
	ret
	.cfi_endproc
.LFE14:
	.size	bl_aes_transform_blocks, .-bl_aes_transform_blocks
	.section	.text.bl_aes_transform,"ax",@progbits
	.align	1
	.globl	bl_aes_transform
	.type	bl_aes_transform, @function
bl_aes_transform:
.LFB15:
	.loc 1 97 1 is_stmt 1
	.cfi_startproc
.LVL36:
	.loc 1 98 5
	.loc 1 97 1 is_stmt 0
	mv	a4,a3
	.loc 1 98 12
	li	a3,1
.LVL37:
	tail	bl_aes_transform_blocks
.LVL38:
	.cfi_endproc
.LFE15:
	.size	bl_aes_transform, .-bl_aes_transform
	.text
.Letext0:
	.file 2 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 3 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 4 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/sec_common/bl_sec_aes.h"
	.file 5 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 6 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_sec_eng.h"
	.file 7 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 8 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x719
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF83
	.byte	0xc
	.4byte	.LASF84
	.4byte	.LASF85
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0xd1
	.byte	0x16
	.4byte	0x38
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF3
	.byte	0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x6c
	.byte	0x5
	.4byte	0x5b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.byte	0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x31
	.byte	0x1c
	.4byte	0x7f
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.byte	0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x92
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.byte	0x6
	.byte	0x4
	.4byte	0x5b
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.byte	0x7
	.byte	0x3c
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.byte	0x9
	.4byte	0x20e
	.byte	0x8
	.4byte	.LASF14
	.byte	0x4
	.byte	0x8
	.byte	0xe
	.4byte	0x86
	.byte	0x4
	.byte	0x2
	.byte	0x1b
	.byte	0
	.byte	0x8
	.4byte	.LASF15
	.byte	0x4
	.byte	0x9
	.byte	0xe
	.4byte	0x86
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.byte	0x8
	.4byte	.LASF16
	.byte	0x4
	.byte	0xa
	.byte	0xe
	.4byte	0x86
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.byte	0x8
	.4byte	.LASF17
	.byte	0x4
	.byte	0xb
	.byte	0xe
	.4byte	0x86
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.byte	0x8
	.4byte	.LASF18
	.byte	0x4
	.byte	0xd
	.byte	0xe
	.4byte	0x86
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.byte	0x8
	.4byte	.LASF19
	.byte	0x4
	.byte	0xe
	.byte	0xe
	.4byte	0x86
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.byte	0x8
	.4byte	.LASF20
	.byte	0x4
	.byte	0x10
	.byte	0xe
	.4byte	0x86
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0
	.byte	0x8
	.4byte	.LASF21
	.byte	0x4
	.byte	0x11
	.byte	0xe
	.4byte	0x86
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.byte	0x8
	.4byte	.LASF22
	.byte	0x4
	.byte	0x12
	.byte	0xe
	.4byte	0x86
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.byte	0x8
	.4byte	.LASF23
	.byte	0x4
	.byte	0x13
	.byte	0xe
	.4byte	0x86
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0x9
	.4byte	.LASF24
	.byte	0x4
	.byte	0x14
	.byte	0xe
	.4byte	0x86
	.byte	0x4
	.byte	0x9
	.4byte	.LASF25
	.byte	0x4
	.byte	0x15
	.byte	0xe
	.4byte	0x86
	.byte	0x8
	.byte	0x9
	.4byte	.LASF26
	.byte	0x4
	.byte	0x16
	.byte	0xe
	.4byte	0x86
	.byte	0xc
	.byte	0x9
	.4byte	.LASF27
	.byte	0x4
	.byte	0x17
	.byte	0xe
	.4byte	0x86
	.byte	0x10
	.byte	0x9
	.4byte	.LASF28
	.byte	0x4
	.byte	0x18
	.byte	0xe
	.4byte	0x86
	.byte	0x14
	.byte	0x9
	.4byte	.LASF29
	.byte	0x4
	.byte	0x19
	.byte	0xe
	.4byte	0x86
	.byte	0x18
	.byte	0x9
	.4byte	.LASF30
	.byte	0x4
	.byte	0x1a
	.byte	0xe
	.4byte	0x86
	.byte	0x1c
	.byte	0x9
	.4byte	.LASF31
	.byte	0x4
	.byte	0x1b
	.byte	0xe
	.4byte	0x86
	.byte	0x20
	.byte	0x9
	.4byte	.LASF32
	.byte	0x4
	.byte	0x1c
	.byte	0xe
	.4byte	0x86
	.byte	0x24
	.byte	0x9
	.4byte	.LASF33
	.byte	0x4
	.byte	0x1d
	.byte	0xe
	.4byte	0x86
	.byte	0x28
	.byte	0x9
	.4byte	.LASF34
	.byte	0x4
	.byte	0x1e
	.byte	0xe
	.4byte	0x86
	.byte	0x2c
	.byte	0x9
	.4byte	.LASF35
	.byte	0x4
	.byte	0x1f
	.byte	0xe
	.4byte	0x86
	.byte	0x30
	.byte	0x9
	.4byte	.LASF36
	.byte	0x4
	.byte	0x20
	.byte	0xe
	.4byte	0x86
	.byte	0x34
	.byte	0x9
	.4byte	.LASF37
	.byte	0x4
	.byte	0x21
	.byte	0xe
	.4byte	0x86
	.byte	0x38
	.byte	0
	.byte	0xa
	.4byte	.LASF41
	.byte	0x4
	.byte	0x22
	.byte	0x1f
	.4byte	0xad
	.byte	0x4
	.byte	0xb
	.byte	0x7
	.byte	0x4
	.4byte	0x38
	.byte	0x4
	.byte	0x24
	.byte	0xe
	.4byte	0x236
	.byte	0xc
	.4byte	.LASF38
	.byte	0
	.byte	0xc
	.4byte	.LASF39
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF40
	.byte	0x4
	.byte	0x27
	.byte	0x3
	.4byte	0x21b
	.byte	0x7
	.byte	0x3c
	.byte	0x4
	.byte	0x4
	.byte	0x29
	.byte	0x9
	.4byte	0x25b
	.byte	0xd
	.4byte	.LASF86
	.byte	0x4
	.byte	0x2a
	.byte	0x25
	.4byte	0x20e
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0xa
	.4byte	.LASF42
	.byte	0x4
	.byte	0x2b
	.byte	0x3
	.4byte	0x242
	.byte	0x4
	.byte	0xb
	.byte	0x7
	.byte	0x4
	.4byte	0x38
	.byte	0x4
	.byte	0x2e
	.byte	0xe
	.4byte	0x289
	.byte	0xc
	.4byte	.LASF43
	.byte	0
	.byte	0xc
	.4byte	.LASF44
	.byte	0x1
	.byte	0xc
	.4byte	.LASF45
	.byte	0x2
	.byte	0
	.byte	0x3
	.4byte	.LASF46
	.byte	0x4
	.byte	0x32
	.byte	0x3
	.4byte	0x268
	.byte	0xb
	.byte	0x7
	.byte	0x4
	.4byte	0x38
	.byte	0x5
	.byte	0x17
	.byte	0x1
	.4byte	0x2b6
	.byte	0xc
	.4byte	.LASF47
	.byte	0
	.byte	0xc
	.4byte	.LASF48
	.byte	0x1
	.byte	0xc
	.4byte	.LASF49
	.byte	0x2
	.byte	0
	.byte	0xb
	.byte	0x7
	.byte	0x4
	.4byte	0x38
	.byte	0x6
	.byte	0x39
	.byte	0xe
	.4byte	0x2cb
	.byte	0xc
	.4byte	.LASF50
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x7
	.byte	0x4
	.4byte	0x38
	.byte	0x6
	.byte	0x51
	.byte	0xe
	.4byte	0x2ec
	.byte	0xc
	.4byte	.LASF51
	.byte	0
	.byte	0xc
	.4byte	.LASF52
	.byte	0x1
	.byte	0xc
	.4byte	.LASF53
	.byte	0x2
	.byte	0
	.byte	0xb
	.byte	0x7
	.byte	0x4
	.4byte	0x38
	.byte	0x6
	.byte	0x5a
	.byte	0xe
	.4byte	0x313
	.byte	0xc
	.4byte	.LASF54
	.byte	0
	.byte	0xc
	.4byte	.LASF55
	.byte	0x1
	.byte	0xc
	.4byte	.LASF56
	.byte	0x2
	.byte	0xc
	.4byte	.LASF57
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF58
	.byte	0x6
	.byte	0x5f
	.byte	0x2
	.4byte	0x2ec
	.byte	0xb
	.byte	0x7
	.byte	0x4
	.4byte	0x38
	.byte	0x6
	.byte	0x6e
	.byte	0xe
	.4byte	0x33a
	.byte	0xc
	.4byte	.LASF59
	.byte	0
	.byte	0xc
	.4byte	.LASF60
	.byte	0x1
	.byte	0
	.byte	0xb
	.byte	0x7
	.byte	0x4
	.4byte	0x38
	.byte	0x6
	.byte	0x7e
	.byte	0xe
	.4byte	0x355
	.byte	0xc
	.4byte	.LASF61
	.byte	0
	.byte	0xc
	.4byte	.LASF62
	.byte	0x1
	.byte	0
	.byte	0xe
	.4byte	.LASF66
	.byte	0x1
	.byte	0x60
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x3da
	.byte	0xf
	.string	"aes"
	.byte	0x1
	.byte	0x60
	.byte	0x24
	.4byte	0x3da
	.4byte	.LLST20
	.byte	0xf
	.string	"op"
	.byte	0x1
	.byte	0x60
	.byte	0x39
	.4byte	0x236
	.4byte	.LLST21
	.byte	0x10
	.4byte	.LASF63
	.byte	0x1
	.byte	0x60
	.byte	0x4c
	.4byte	0x3e0
	.4byte	.LLST22
	.byte	0x10
	.4byte	.LASF64
	.byte	0x1
	.byte	0x60
	.byte	0x5c
	.4byte	0xa0
	.4byte	.LLST23
	.byte	0x11
	.4byte	.LVL38
	.4byte	0x3e6
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x12
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x31
	.byte	0x12
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x25b
	.byte	0x6
	.byte	0x4
	.4byte	0x67
	.byte	0x13
	.4byte	.LASF87
	.byte	0x1
	.byte	0x49
	.byte	0x5
	.4byte	0x25
	.byte	0x1
	.4byte	0x43f
	.byte	0x14
	.string	"aes"
	.byte	0x1
	.byte	0x49
	.byte	0x2b
	.4byte	0x3da
	.byte	0x14
	.string	"op"
	.byte	0x1
	.byte	0x49
	.byte	0x40
	.4byte	0x236
	.byte	0x15
	.4byte	.LASF63
	.byte	0x1
	.byte	0x49
	.byte	0x53
	.4byte	0x3e0
	.byte	0x15
	.4byte	.LASF65
	.byte	0x1
	.byte	0x49
	.byte	0x63
	.4byte	0x73
	.byte	0x15
	.4byte	.LASF64
	.byte	0x1
	.byte	0x49
	.byte	0x73
	.4byte	0xa0
	.byte	0x16
	.string	"ret"
	.byte	0x1
	.byte	0x4b
	.byte	0x9
	.4byte	0x25
	.byte	0
	.byte	0xe
	.4byte	.LASF67
	.byte	0x1
	.byte	0x3b
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x4a5
	.byte	0xf
	.string	"aes"
	.byte	0x1
	.byte	0x3b
	.byte	0x23
	.4byte	0x3da
	.4byte	.LLST6
	.byte	0x10
	.4byte	.LASF68
	.byte	0x1
	.byte	0x3b
	.byte	0x3a
	.4byte	0x289
	.4byte	.LLST7
	.byte	0xf
	.string	"iv"
	.byte	0x1
	.byte	0x3b
	.byte	0x4e
	.4byte	0x3e0
	.4byte	.LLST8
	.byte	0x17
	.4byte	.LVL23
	.4byte	0x6b8
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0xc
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF69
	.byte	0x1
	.byte	0x25
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x522
	.byte	0xf
	.string	"aes"
	.byte	0x1
	.byte	0x25
	.byte	0x22
	.4byte	0x3da
	.4byte	.LLST1
	.byte	0xf
	.string	"op"
	.byte	0x1
	.byte	0x25
	.byte	0x37
	.4byte	0x236
	.4byte	.LLST2
	.byte	0xf
	.string	"key"
	.byte	0x1
	.byte	0x25
	.byte	0x4a
	.4byte	0x3e0
	.4byte	.LLST3
	.byte	0x10
	.4byte	.LASF70
	.byte	0x1
	.byte	0x25
	.byte	0x56
	.4byte	0x2c
	.4byte	.LLST4
	.byte	0x18
	.4byte	.LASF88
	.byte	0x1
	.byte	0x2d
	.byte	0x1a
	.4byte	0x313
	.4byte	.LLST5
	.byte	0x17
	.4byte	.LVL15
	.4byte	0x6b8
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF71
	.byte	0x1
	.byte	0x19
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x568
	.byte	0xf
	.string	"aes"
	.byte	0x1
	.byte	0x19
	.byte	0x1f
	.4byte	0x3da
	.4byte	.LLST0
	.byte	0x17
	.4byte	.LVL4
	.4byte	0x6c4
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x3c
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LASF72
	.byte	0x1
	.byte	0x13
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x58c
	.byte	0x1a
	.4byte	.LVL2
	.4byte	0x6d0
	.byte	0
	.byte	0x19
	.4byte	.LASF73
	.byte	0x1
	.byte	0xd
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x5b0
	.byte	0x1a
	.4byte	.LVL1
	.4byte	0x6dc
	.byte	0
	.byte	0x19
	.4byte	.LASF74
	.byte	0x1
	.byte	0x7
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x5da
	.byte	0x17
	.4byte	.LVL0
	.4byte	0x6e8
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	0x3e6
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x6b8
	.byte	0x1c
	.4byte	0x3f7
	.4byte	.LLST9
	.byte	0x1c
	.4byte	0x403
	.4byte	.LLST10
	.byte	0x1c
	.4byte	0x40e
	.4byte	.LLST11
	.byte	0x1c
	.4byte	0x41a
	.4byte	.LLST12
	.byte	0x1c
	.4byte	0x426
	.4byte	.LLST13
	.byte	0x1d
	.4byte	0x432
	.byte	0x1e
	.4byte	0x3e6
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x49
	.byte	0x5
	.byte	0x1c
	.4byte	0x426
	.4byte	.LLST14
	.byte	0x1c
	.4byte	0x41a
	.4byte	.LLST15
	.byte	0x1c
	.4byte	0x40e
	.4byte	.LLST16
	.byte	0x1c
	.4byte	0x403
	.4byte	.LLST17
	.byte	0x1c
	.4byte	0x3f7
	.4byte	.LLST18
	.byte	0x1f
	.4byte	0x432
	.4byte	.LLST19
	.byte	0x20
	.4byte	.LVL29
	.4byte	0x6f5
	.4byte	0x678
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x20
	.4byte	.LVL30
	.4byte	0x702
	.4byte	0x6a7
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0x12
	.byte	0x1
	.byte	0x5d
	.byte	0x4
	.byte	0x79
	.byte	0
	.byte	0x34
	.byte	0x24
	.byte	0x12
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0x91
	.byte	0x68
	.byte	0x6
	.byte	0
	.byte	0x17
	.4byte	.LVL32
	.4byte	0x70f
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0x7
	.byte	0x1f
	.byte	0x8
	.byte	0x21
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0x7
	.byte	0x21
	.byte	0x8
	.byte	0x21
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0x8
	.byte	0x62
	.byte	0xd
	.byte	0x21
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x8
	.byte	0x61
	.byte	0xd
	.byte	0x22
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x6
	.2byte	0x1c0
	.byte	0x6
	.byte	0x22
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x6
	.2byte	0x1c1
	.byte	0x6
	.byte	0x22
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x6
	.2byte	0x1c3
	.byte	0xd
	.byte	0x22
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0x6
	.2byte	0x1c2
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
	.byte	0x8
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
	.byte	0xe
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
	.byte	0xb
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
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x17
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
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
	.byte	0x1a
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
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
	.byte	0x1c
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1d
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1e
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
	.byte	0x1f
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
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
	.byte	0x22
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
.LLST20:
	.4byte	.LVL36
	.4byte	.LVL38-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL38-1
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL36
	.4byte	.LVL38-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL38-1
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL36
	.4byte	.LVL38-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL38-1
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL37
	.4byte	.LVL38-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL38-1
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL24
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL20
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL21
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL23-1
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL15-1
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL18
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL11
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL15-1
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL18
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL12
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL15-1
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL18
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4-1
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL31
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL35
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL28
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL25
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL29-1
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL25
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL29-1
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL25
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL29-1
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL27
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL29-1
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL27
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL27
	.4byte	.LVL29-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL29-1
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL28
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL27
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x58
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
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
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
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF30:
	.string	"aesKey0"
.LASF31:
	.string	"aesKey1"
.LASF32:
	.string	"aesKey2"
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
.LASF51:
	.string	"SEC_ENG_AES_ECB"
.LASF71:
	.string	"bl_aes_init"
.LASF78:
	.string	"vTaskEnterCritical"
.LASF5:
	.string	"size_t"
.LASF63:
	.string	"input"
.LASF79:
	.string	"Sec_Eng_AES_Enable_BE"
.LASF44:
	.string	"BL_AES_CTR"
.LASF39:
	.string	"BL_AES_DECRYPT"
.LASF65:
	.string	"n_blk"
.LASF75:
	.string	"memcpy"
.LASF84:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/sec_common/bl_sec_aes.c"
.LASF62:
	.string	"SEC_ENG_AES_DECRYPTION"
.LASF2:
	.string	"short int"
.LASF80:
	.string	"Sec_Eng_AES_Enable_Link"
.LASF28:
	.string	"aesIV2"
.LASF57:
	.string	"SEC_ENG_AES_DOUBLE_KEY_128BITS"
.LASF10:
	.string	"uint32_t"
.LASF18:
	.string	"aesIntClr"
.LASF23:
	.string	"aesMsgLen"
.LASF43:
	.string	"BL_AES_ECB"
.LASF60:
	.string	"SEC_ENG_AES_USE_OLD"
.LASF4:
	.string	"long long int"
.LASF17:
	.string	"aesHwKeyEn"
.LASF76:
	.string	"memset"
.LASF49:
	.string	"TIMEOUT"
.LASF3:
	.string	"long int"
.LASF74:
	.string	"bl_sec_aes_init"
.LASF61:
	.string	"SEC_ENG_AES_ENCRYPTION"
.LASF81:
	.string	"Sec_Eng_AES_Link_Work"
.LASF38:
	.string	"BL_AES_ENCRYPT"
.LASF45:
	.string	"BL_AES_CBC"
.LASF48:
	.string	"ERROR"
.LASF69:
	.string	"bl_aes_set_key"
.LASF40:
	.string	"bl_sec_aes_op_t"
.LASF22:
	.string	"aesXTS"
.LASF15:
	.string	"aesDecEn"
.LASF77:
	.string	"vTaskExitCritical"
.LASF7:
	.string	"unsigned char"
.LASF55:
	.string	"SEC_ENG_AES_KEY_256BITS"
.LASF66:
	.string	"bl_aes_transform"
.LASF1:
	.string	"signed char"
.LASF12:
	.string	"long long unsigned int"
.LASF41:
	.string	"bl_SEC_Eng_AES_Link_Config_Type"
.LASF0:
	.string	"unsigned int"
.LASF8:
	.string	"uint16_t"
.LASF25:
	.string	"aesDstAddr"
.LASF26:
	.string	"aesIV0"
.LASF27:
	.string	"aesIV1"
.LASF53:
	.string	"SEC_ENG_AES_CBC"
.LASF29:
	.string	"aesIV3"
.LASF88:
	.string	"key_type"
.LASF47:
	.string	"SUCCESS"
.LASF9:
	.string	"short unsigned int"
.LASF58:
	.string	"SEC_ENG_AES_Key_Type"
.LASF59:
	.string	"SEC_ENG_AES_USE_NEW"
.LASF13:
	.string	"char"
.LASF19:
	.string	"aesIntSet"
.LASF68:
	.string	"mode"
.LASF46:
	.string	"bl_sec_aes_mode_t"
.LASF54:
	.string	"SEC_ENG_AES_KEY_128BITS"
.LASF21:
	.string	"aesIVSel"
.LASF56:
	.string	"SEC_ENG_AES_KEY_192BITS"
.LASF85:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/build_out/hosal"
.LASF24:
	.string	"aesSrcAddr"
.LASF11:
	.string	"long unsigned int"
.LASF50:
	.string	"SEC_ENG_AES_ID0"
.LASF20:
	.string	"aesBlockMode"
.LASF70:
	.string	"key_len"
.LASF86:
	.string	"link_cfg"
.LASF6:
	.string	"uint8_t"
.LASF72:
	.string	"bl_aes_release_hw"
.LASF64:
	.string	"output"
.LASF67:
	.string	"bl_aes_set_mode"
.LASF52:
	.string	"SEC_ENG_AES_CTR"
.LASF82:
	.string	"Sec_Eng_AES_Disable_Link"
.LASF16:
	.string	"aesDecKeySel"
.LASF87:
	.string	"bl_aes_transform_blocks"
.LASF73:
	.string	"bl_aes_acquire_hw"
.LASF42:
	.string	"bl_sec_aes_t"
.LASF14:
	.string	"aesMode"
.LASF83:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
