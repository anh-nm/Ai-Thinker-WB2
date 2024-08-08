	.file	"aws_iot_shadow_actions.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.aws_iot_shadow_internal_action,"ax",@progbits
	.align	1
	.globl	aws_iot_shadow_internal_action
	.type	aws_iot_shadow_internal_action, @function
aws_iot_shadow_internal_action:
.LFB23:
	.file 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_actions.c"
	.loc 1 34 78
	.cfi_startproc
.LVL0:
	.loc 1 35 2
	.loc 1 36 1
	.loc 1 37 1
	.loc 1 38 2
	.loc 1 39 2
	.loc 1 41 2
	.loc 1 43 2
	.loc 1 34 78 is_stmt 0
	addi	sp,sp,-144
	.cfi_def_cfa_offset 144
	sw	s0,136(sp)
	sw	ra,140(sp)
	sw	s1,132(sp)
	sw	s2,128(sp)
	sw	s3,124(sp)
	sw	s4,120(sp)
	sw	s5,116(sp)
	sw	s6,112(sp)
	sw	s7,108(sp)
	sw	s8,104(sp)
	sw	s9,100(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.loc 1 44 15
	li	s0,-2
	.loc 1 43 4
	beq	a0,zero,.L1
	mv	s5,a2
	.loc 1 44 15 discriminator 1
	li	s0,-2
	.loc 1 43 23 discriminator 1
	beq	a2,zero,.L1
	mv	s1,a0
	mv	s2,a1
	.loc 1 47 25
	addi	a2,sp,4
.LVL1:
	mv	a1,a3
.LVL2:
	mv	a0,s5
.LVL3:
	li	a3,90
.LVL4:
	mv	s4,a4
	mv	s7,a5
	mv	s8,a6
	mv	s9,a7
	.loc 1 44 40 is_stmt 1
	.loc 1 47 2
	.loc 1 47 25 is_stmt 0
	call	extractClientToken
.LVL5:
	mv	s6,a0
.LVL6:
	.loc 1 49 2 is_stmt 1
	.loc 1 49 4 is_stmt 0
	beq	a0,zero,.L8
	.loc 1 49 26 discriminator 1
	beq	s4,zero,.L8
	.loc 1 50 3 is_stmt 1
	.loc 1 50 6 is_stmt 0
	addi	a0,sp,3
.LVL7:
	call	getNextFreeIndexOfAckWaitList
.LVL8:
	mv	s3,a0
	.loc 1 62 12
	li	s0,-1
	.loc 1 50 5
	beq	a0,zero,.L1
	.loc 1 51 4 is_stmt 1
.LVL9:
	.loc 1 54 3
	.loc 1 55 4
	.loc 1 55 8 is_stmt 0
	mv	a1,s2
	mv	a0,s1
	call	isSubscriptionPresent
.LVL10:
	mv	s0,a0
	.loc 1 56 15
	mv	a2,s9
	mv	a1,s2
	mv	a0,s1
	.loc 1 55 6
	bne	s0,zero,.L4
	.loc 1 56 5 is_stmt 1
	.loc 1 56 15 is_stmt 0
	call	subscribeToShadowActionAcks
.LVL11:
	mv	s0,a0
.LVL12:
	.loc 1 66 2 is_stmt 1
	.loc 1 66 4 is_stmt 0
	beq	a0,zero,.L3
.LVL13:
.L1:
	.loc 1 76 1
	lw	ra,140(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,136(sp)
	.cfi_restore 8
	lw	s1,132(sp)
	.cfi_restore 9
	lw	s2,128(sp)
	.cfi_restore 18
	lw	s3,124(sp)
	.cfi_restore 19
	lw	s4,120(sp)
	.cfi_restore 20
	lw	s5,116(sp)
	.cfi_restore 21
	lw	s6,112(sp)
	.cfi_restore 22
	lw	s7,108(sp)
	.cfi_restore 23
	lw	s8,104(sp)
	.cfi_restore 24
	lw	s9,100(sp)
	.cfi_restore 25
	addi	sp,sp,144
	.cfi_def_cfa_offset 0
	jr	ra
.LVL14:
.L4:
	.cfi_restore_state
	.loc 1 58 5 is_stmt 1
	call	incrementSubscriptionCnt
.LVL15:
	.loc 1 66 2
	.loc 1 51 22 is_stmt 0
	mv	s3,s0
.LVL16:
.L3:
	.loc 1 67 3 is_stmt 1
	.loc 1 67 13 is_stmt 0
	mv	a2,s5
	mv	a1,s2
	mv	a0,s1
	call	publishToShadowAction
.LVL17:
	mv	s0,a0
.LVL18:
	.loc 1 70 2 is_stmt 1
	.loc 1 70 4 is_stmt 0
	beq	s6,zero,.L1
	.loc 1 70 26 discriminator 1
	beq	s4,zero,.L1
	.loc 1 70 47 discriminator 2
	bne	a0,zero,.L1
	.loc 1 70 71 discriminator 3
	beq	s3,zero,.L1
	.loc 1 71 3 is_stmt 1
	lbu	a0,3(sp)
	mv	a6,s8
	mv	a5,s7
	mv	a4,s4
	addi	a3,sp,4
	mv	a2,s2
	mv	a1,s1
	call	addToAckWaitList
.LVL19:
	j	.L1
.LVL20:
.L8:
	.loc 1 37 6 is_stmt 0
	li	s3,0
	j	.L3
	.cfi_endproc
.LFE23:
	.size	aws_iot_shadow_internal_action, .-aws_iot_shadow_internal_action
	.text
.Letext0:
	.file 2 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 4 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 5 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_error.h"
	.file 6 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_shadow_interface.h"
	.file 7 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_shadow_json.h"
	.file 8 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_shadow_records.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4e5
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF105
	.byte	0xc
	.4byte	.LASF106
	.4byte	.LASF107
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
	.byte	0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0xd1
	.byte	0x16
	.4byte	0x7c
	.byte	0x5
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x6
	.4byte	0x91
	.byte	0x7
	.byte	0x4
	.4byte	0x98
	.byte	0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x54
	.byte	0x8
	.byte	0x5
	.byte	0x4
	.4byte	0x75
	.byte	0x5
	.byte	0x28
	.byte	0xe
	.4byte	0x22c
	.byte	0x9
	.4byte	.LASF15
	.byte	0x6
	.byte	0x9
	.4byte	.LASF16
	.byte	0x5
	.byte	0x9
	.4byte	.LASF17
	.byte	0x4
	.byte	0x9
	.4byte	.LASF18
	.byte	0x3
	.byte	0x9
	.4byte	.LASF19
	.byte	0x2
	.byte	0x9
	.4byte	.LASF20
	.byte	0x1
	.byte	0x9
	.4byte	.LASF21
	.byte	0
	.byte	0xa
	.4byte	.LASF22
	.byte	0x7f
	.byte	0xa
	.4byte	.LASF23
	.byte	0x7e
	.byte	0xa
	.4byte	.LASF24
	.byte	0x7d
	.byte	0xa
	.4byte	.LASF25
	.byte	0x7c
	.byte	0xa
	.4byte	.LASF26
	.byte	0x7b
	.byte	0xa
	.4byte	.LASF27
	.byte	0x7a
	.byte	0xa
	.4byte	.LASF28
	.byte	0x79
	.byte	0xa
	.4byte	.LASF29
	.byte	0x78
	.byte	0xa
	.4byte	.LASF30
	.byte	0x77
	.byte	0xa
	.4byte	.LASF31
	.byte	0x76
	.byte	0xa
	.4byte	.LASF32
	.byte	0x75
	.byte	0xa
	.4byte	.LASF33
	.byte	0x74
	.byte	0xa
	.4byte	.LASF34
	.byte	0x73
	.byte	0xa
	.4byte	.LASF35
	.byte	0x72
	.byte	0xa
	.4byte	.LASF36
	.byte	0x71
	.byte	0xa
	.4byte	.LASF37
	.byte	0x70
	.byte	0xa
	.4byte	.LASF38
	.byte	0x6f
	.byte	0xa
	.4byte	.LASF39
	.byte	0x6e
	.byte	0xa
	.4byte	.LASF40
	.byte	0x6d
	.byte	0xa
	.4byte	.LASF41
	.byte	0x6c
	.byte	0xa
	.4byte	.LASF42
	.byte	0x6b
	.byte	0xa
	.4byte	.LASF43
	.byte	0x6a
	.byte	0xa
	.4byte	.LASF44
	.byte	0x69
	.byte	0xa
	.4byte	.LASF45
	.byte	0x68
	.byte	0xa
	.4byte	.LASF46
	.byte	0x67
	.byte	0xa
	.4byte	.LASF47
	.byte	0x66
	.byte	0xa
	.4byte	.LASF48
	.byte	0x65
	.byte	0xa
	.4byte	.LASF49
	.byte	0x64
	.byte	0xa
	.4byte	.LASF50
	.byte	0x63
	.byte	0xa
	.4byte	.LASF51
	.byte	0x62
	.byte	0xa
	.4byte	.LASF52
	.byte	0x61
	.byte	0xa
	.4byte	.LASF53
	.byte	0x60
	.byte	0xa
	.4byte	.LASF54
	.byte	0x5f
	.byte	0xa
	.4byte	.LASF55
	.byte	0x5e
	.byte	0xa
	.4byte	.LASF56
	.byte	0x5d
	.byte	0xa
	.4byte	.LASF57
	.byte	0x5c
	.byte	0xa
	.4byte	.LASF58
	.byte	0x5b
	.byte	0xa
	.4byte	.LASF59
	.byte	0x5a
	.byte	0xa
	.4byte	.LASF60
	.byte	0x59
	.byte	0xa
	.4byte	.LASF61
	.byte	0x58
	.byte	0xa
	.4byte	.LASF62
	.byte	0x57
	.byte	0xa
	.4byte	.LASF63
	.byte	0x56
	.byte	0xa
	.4byte	.LASF64
	.byte	0x55
	.byte	0xa
	.4byte	.LASF65
	.byte	0x54
	.byte	0xa
	.4byte	.LASF66
	.byte	0x53
	.byte	0xa
	.4byte	.LASF67
	.byte	0x52
	.byte	0xa
	.4byte	.LASF68
	.byte	0x51
	.byte	0xa
	.4byte	.LASF69
	.byte	0x50
	.byte	0xa
	.4byte	.LASF70
	.byte	0x4f
	.byte	0xa
	.4byte	.LASF71
	.byte	0x4e
	.byte	0xa
	.4byte	.LASF72
	.byte	0x4d
	.byte	0xa
	.4byte	.LASF73
	.byte	0x4c
	.byte	0
	.byte	0x3
	.4byte	.LASF74
	.byte	0x5
	.byte	0xa0
	.byte	0x3
	.4byte	0xbb
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF75
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x6
	.byte	0x9c
	.byte	0xe
	.4byte	0x260
	.byte	0x9
	.4byte	.LASF76
	.byte	0
	.byte	0x9
	.4byte	.LASF77
	.byte	0x1
	.byte	0x9
	.4byte	.LASF78
	.byte	0x2
	.byte	0
	.byte	0x3
	.4byte	.LASF79
	.byte	0x6
	.byte	0x9e
	.byte	0x3
	.4byte	0x23f
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x6
	.byte	0xa6
	.byte	0xe
	.4byte	0x28d
	.byte	0x9
	.4byte	.LASF80
	.byte	0
	.byte	0x9
	.4byte	.LASF81
	.byte	0x1
	.byte	0x9
	.4byte	.LASF82
	.byte	0x2
	.byte	0
	.byte	0x3
	.4byte	.LASF83
	.byte	0x6
	.byte	0xa8
	.byte	0x3
	.4byte	0x26c
	.byte	0x3
	.4byte	.LASF84
	.byte	0x6
	.byte	0xb7
	.byte	0x10
	.4byte	0x2a5
	.byte	0x7
	.byte	0x4
	.4byte	0x2ab
	.byte	0xb
	.4byte	0x2ca
	.byte	0xc
	.4byte	0x9d
	.byte	0xc
	.4byte	0x28d
	.byte	0xc
	.4byte	0x260
	.byte	0xc
	.4byte	0x9d
	.byte	0xc
	.4byte	0x8f
	.byte	0
	.byte	0xd
	.4byte	.LASF108
	.byte	0x1
	.byte	0x20
	.byte	0xd
	.4byte	0x22c
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x1
	.byte	0x9c
	.4byte	0x484
	.byte	0xe
	.4byte	.LASF85
	.byte	0x1
	.byte	0x20
	.byte	0x38
	.4byte	0x9d
	.4byte	.LLST0
	.byte	0xe
	.4byte	.LASF86
	.byte	0x1
	.byte	0x20
	.byte	0x54
	.4byte	0x28d
	.4byte	.LLST1
	.byte	0xe
	.4byte	.LASF87
	.byte	0x1
	.byte	0x21
	.byte	0x1a
	.4byte	0x9d
	.4byte	.LLST2
	.byte	0xe
	.4byte	.LASF88
	.byte	0x1
	.byte	0x21
	.byte	0x38
	.4byte	0x83
	.4byte	.LLST3
	.byte	0xe
	.4byte	.LASF89
	.byte	0x1
	.byte	0x21
	.byte	0x55
	.4byte	0x299
	.4byte	.LLST4
	.byte	0xe
	.4byte	.LASF90
	.byte	0x1
	.byte	0x22
	.byte	0x14
	.4byte	0x8f
	.4byte	.LLST5
	.byte	0xe
	.4byte	.LASF91
	.byte	0x1
	.byte	0x22
	.byte	0x2f
	.4byte	0xaf
	.4byte	.LLST6
	.byte	0xe
	.4byte	.LASF92
	.byte	0x1
	.byte	0x22
	.byte	0x44
	.4byte	0x238
	.4byte	.LLST7
	.byte	0xf
	.4byte	.LASF93
	.byte	0x1
	.byte	0x23
	.byte	0xe
	.4byte	0x22c
	.4byte	.LLST8
	.byte	0xf
	.4byte	.LASF94
	.byte	0x1
	.byte	0x24
	.byte	0x6
	.4byte	0x238
	.4byte	.LLST9
	.byte	0xf
	.4byte	.LASF95
	.byte	0x1
	.byte	0x25
	.byte	0x6
	.4byte	0x238
	.4byte	.LLST10
	.byte	0x10
	.4byte	.LASF96
	.byte	0x1
	.byte	0x26
	.byte	0xa
	.4byte	0xa3
	.byte	0x3
	.byte	0x91
	.byte	0xf3,0x7e
	.byte	0x10
	.4byte	.LASF97
	.byte	0x1
	.byte	0x27
	.byte	0x7
	.4byte	0x484
	.byte	0x3
	.byte	0x91
	.byte	0xf4,0x7e
	.byte	0x11
	.4byte	.LVL5
	.4byte	0x494
	.4byte	0x3dc
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0xf4,0x7e
	.byte	0x12
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x8
	.byte	0x5a
	.byte	0
	.byte	0x11
	.4byte	.LVL8
	.4byte	0x4a0
	.4byte	0x3f1
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xf3,0x7e
	.byte	0
	.byte	0x11
	.4byte	.LVL10
	.4byte	0x4ac
	.4byte	0x40b
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LVL11
	.4byte	0x4b8
	.4byte	0x42b
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x89
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LVL15
	.4byte	0x4c4
	.byte	0x11
	.4byte	.LVL17
	.4byte	0x4d0
	.4byte	0x454
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LVL19
	.4byte	0x4dc
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0x91
	.byte	0xf4,0x7e
	.byte	0x12
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x60
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	0x91
	.4byte	0x494
	.byte	0x16
	.4byte	0x7c
	.byte	0x59
	.byte	0
	.byte	0x17
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0x7
	.byte	0x2b
	.byte	0x5
	.byte	0x17
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0x8
	.byte	0x2e
	.byte	0x5
	.byte	0x17
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0x8
	.byte	0x26
	.byte	0x5
	.byte	0x17
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0x8
	.byte	0x27
	.byte	0xd
	.byte	0x17
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0x8
	.byte	0x28
	.byte	0x6
	.byte	0x17
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0x8
	.byte	0x2a
	.byte	0xd
	.byte	0x17
	.4byte	.LASF104
	.4byte	.LASF104
	.byte	0x8
	.byte	0x2b
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
	.byte	0x9
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xd
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
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
	.byte	0xe
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
	.byte	0x11
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
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x17
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
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL15-1
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL1
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL5-1
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL5-1
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL0
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL5-1
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL0
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL5-1
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x60
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL0
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL5-1
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x61
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL0
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL20
	.4byte	.LFE23
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL0
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL0
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LFE23
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
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
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF104:
	.string	"addToAckWaitList"
.LASF87:
	.string	"pJsonDocumentToBeSent"
.LASF44:
	.string	"NETWORK_ERR_NET_UNKNOWN_HOST"
.LASF102:
	.string	"incrementSubscriptionCnt"
.LASF68:
	.string	"MUTEX_LOCK_ERROR"
.LASF92:
	.string	"isSticky"
.LASF60:
	.string	"MQTT_CONNACK_SERVER_UNAVAILABLE_ERROR"
.LASF52:
	.string	"MQTT_RX_MESSAGE_PACKET_TYPE_INVALID_ERROR"
.LASF16:
	.string	"NETWORK_MANUALLY_DISCONNECTED"
.LASF2:
	.string	"short int"
.LASF11:
	.string	"size_t"
.LASF37:
	.string	"NETWORK_MBEDTLS_ERR_CTR_DRBG_ENTROPY_SOURCE_FAILED"
.LASF78:
	.string	"SHADOW_ACK_ACCEPTED"
.LASF77:
	.string	"SHADOW_ACK_REJECTED"
.LASF53:
	.string	"MQTT_RX_BUFFER_TOO_SHORT_ERROR"
.LASF97:
	.string	"extractedClientToken"
.LASF46:
	.string	"NETWORK_SSL_NOTHING_TO_READ"
.LASF22:
	.string	"FAILURE"
.LASF96:
	.string	"indexAckWaitList"
.LASF56:
	.string	"MQTT_DECODE_REMAINING_LENGTH_ERROR"
.LASF27:
	.string	"NETWORK_SSL_CONNECT_TIMEOUT_ERROR"
.LASF82:
	.string	"SHADOW_DELETE"
.LASF19:
	.string	"MQTT_NOTHING_TO_READ"
.LASF67:
	.string	"MUTEX_INIT_ERROR"
.LASF54:
	.string	"MQTT_TX_BUFFER_TOO_SHORT_ERROR"
.LASF73:
	.string	"INVALID_TOPIC_TYPE_ERROR"
.LASF106:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_shadow_actions.c"
.LASF48:
	.string	"MQTT_CONNECT_TIMEOUT_ERROR"
.LASF76:
	.string	"SHADOW_ACK_TIMEOUT"
.LASF91:
	.string	"timeout_seconds"
.LASF85:
	.string	"pThingName"
.LASF31:
	.string	"NETWORK_SSL_WRITE_TIMEOUT_ERROR"
.LASF59:
	.string	"MQTT_CONNACK_IDENTIFIER_REJECTED_ERROR"
.LASF58:
	.string	"MQTT_CONNACK_UNACCEPTABLE_PROTOCOL_VERSION_ERROR"
.LASF8:
	.string	"long long int"
.LASF86:
	.string	"action"
.LASF81:
	.string	"SHADOW_UPDATE"
.LASF72:
	.string	"LIMIT_EXCEEDED_ERROR"
.LASF28:
	.string	"NETWORK_SSL_WRITE_ERROR"
.LASF4:
	.string	"long int"
.LASF38:
	.string	"NETWORK_SSL_UNKNOWN_ERROR"
.LASF43:
	.string	"NETWORK_ERR_NET_SOCKET_FAILED"
.LASF99:
	.string	"getNextFreeIndexOfAckWaitList"
.LASF83:
	.string	"ShadowActions_t"
.LASF90:
	.string	"pCallbackContext"
.LASF51:
	.string	"MQTT_CLIENT_NOT_IDLE_ERROR"
.LASF5:
	.string	"__uint8_t"
.LASF34:
	.string	"NETWORK_DISCONNECTED_ERROR"
.LASF6:
	.string	"__uint32_t"
.LASF65:
	.string	"SHADOW_JSON_BUFFER_TRUNCATED"
.LASF13:
	.string	"uint8_t"
.LASF57:
	.string	"MQTT_CONNACK_UNKNOWN_ERROR"
.LASF1:
	.string	"unsigned char"
.LASF108:
	.string	"aws_iot_shadow_internal_action"
.LASF88:
	.string	"jsonSize"
.LASF45:
	.string	"NETWORK_ERR_NET_CONNECT_FAILED"
.LASF15:
	.string	"NETWORK_PHYSICAL_LAYER_CONNECTED"
.LASF39:
	.string	"NETWORK_PHYSICAL_LAYER_DISCONNECTED"
.LASF80:
	.string	"SHADOW_GET"
.LASF0:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF14:
	.string	"uint32_t"
.LASF42:
	.string	"NETWORK_PK_PRIVATE_KEY_PARSE_ERROR"
.LASF95:
	.string	"isAckWaitListFree"
.LASF84:
	.string	"fpActionCallback_t"
.LASF69:
	.string	"MUTEX_UNLOCK_ERROR"
.LASF101:
	.string	"subscribeToShadowActionAcks"
.LASF50:
	.string	"MQTT_UNEXPECTED_CLIENT_STATE_ERROR"
.LASF49:
	.string	"MQTT_REQUEST_TIMEOUT_ERROR"
.LASF26:
	.string	"TCP_SETUP_ERROR"
.LASF21:
	.string	"SUCCESS"
.LASF47:
	.string	"MQTT_CONNECTION_ERROR"
.LASF40:
	.string	"NETWORK_X509_ROOT_CRT_PARSE_ERROR"
.LASF35:
	.string	"NETWORK_RECONNECT_TIMED_OUT_ERROR"
.LASF71:
	.string	"MAX_SIZE_ERROR"
.LASF12:
	.string	"char"
.LASF103:
	.string	"publishToShadowAction"
.LASF18:
	.string	"NETWORK_RECONNECTED"
.LASF3:
	.string	"short unsigned int"
.LASF32:
	.string	"NETWORK_SSL_READ_TIMEOUT_ERROR"
.LASF75:
	.string	"_Bool"
.LASF41:
	.string	"NETWORK_X509_DEVICE_CRT_PARSE_ERROR"
.LASF25:
	.string	"SSL_CONNECTION_ERROR"
.LASF100:
	.string	"isSubscriptionPresent"
.LASF107:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/build_out/aws-iot"
.LASF66:
	.string	"SHADOW_JSON_ERROR"
.LASF79:
	.string	"Shadow_Ack_Status_t"
.LASF23:
	.string	"NULL_VALUE_ERROR"
.LASF94:
	.string	"isClientTokenPresent"
.LASF29:
	.string	"NETWORK_SSL_INIT_ERROR"
.LASF7:
	.string	"long unsigned int"
.LASF55:
	.string	"MQTT_MAX_SUBSCRIPTIONS_REACHED_ERROR"
.LASF33:
	.string	"NETWORK_SSL_READ_ERROR"
.LASF30:
	.string	"NETWORK_SSL_CERT_ERROR"
.LASF98:
	.string	"extractClientToken"
.LASF62:
	.string	"MQTT_CONNACK_NOT_AUTHORIZED_ERROR"
.LASF20:
	.string	"MQTT_CONNACK_CONNECTION_ACCEPTED"
.LASF74:
	.string	"IoT_Error_t"
.LASF93:
	.string	"ret_val"
.LASF63:
	.string	"JSON_PARSE_ERROR"
.LASF64:
	.string	"SHADOW_WAIT_FOR_PUBLISH"
.LASF36:
	.string	"NETWORK_ALREADY_CONNECTED_ERROR"
.LASF70:
	.string	"MUTEX_DESTROY_ERROR"
.LASF10:
	.string	"unsigned int"
.LASF61:
	.string	"MQTT_CONNACK_BAD_USERDATA_ERROR"
.LASF17:
	.string	"NETWORK_ATTEMPTING_RECONNECT"
.LASF24:
	.string	"TCP_CONNECTION_ERROR"
.LASF89:
	.string	"callback"
.LASF105:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
