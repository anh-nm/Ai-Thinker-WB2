	.file	"aws_iot_jobs_topics.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.aws_iot_jobs_get_api_topic.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"$aws/things/%s/jobs/%s/%s%s"
	.align	2
.LC1:
	.string	"$aws/things/%s/jobs/#"
	.align	2
.LC2:
	.string	"$aws/things/%s/jobs/%s%s"
	.section	.text.aws_iot_jobs_get_api_topic,"ax",@progbits
	.align	1
	.globl	aws_iot_jobs_get_api_topic
	.type	aws_iot_jobs_get_api_topic, @function
aws_iot_jobs_get_api_topic:
.LFB7:
	.file 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_jobs_topics.c"
	.loc 1 97 1
	.cfi_startproc
.LVL0:
	.loc 1 98 2
	.loc 1 97 1 is_stmt 0
	mv	a6,a3
	mv	a3,a4
.LVL1:
	mv	a4,a5
.LVL2:
	.loc 1 98 5
	beq	a3,zero,.L1
	.loc 1 102 2 is_stmt 1
	.loc 1 102 37 is_stmt 0
	addi	a7,a2,-5
	.loc 1 102 5
	li	a5,1
.LVL3:
	bgtu	a7,a5,.L3
	.loc 1 102 76 discriminator 1
	bne	a6,a5,.L1
.L19:
.LBB10:
.LBB11:
	.loc 1 70 9
	li	t1,0
.L4:
.LBE11:
.LBE10:
	.loc 1 111 2 is_stmt 1
.LVL4:
	.loc 1 38 2
	addi	a5,a2,-1
	li	a7,6
	bgtu	a5,a7,.L1
	slli	a7,a5,2
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	add	a5,a5,a7
	lw	t3,0(a5)
.LVL5:
	.loc 1 112 2
	.loc 1 112 5 is_stmt 0
	beq	t3,zero,.L1
	.loc 1 116 2 is_stmt 1
.LVL6:
	.loc 1 75 2
	addi	a7,a6,-1
	li	a6,3
.LVL7:
	.loc 1 112 5 is_stmt 0
	li	a5,0
	bgtu	a7,a6,.L6
	slli	a6,a7,2
	lui	a7,%hi(.LANCHOR1)
.LVL8:
	addi	a7,a7,%lo(.LANCHOR1)
	add	a6,a7,a6
	lw	a5,0(a6)
.L6:
.LVL9:
	.loc 1 118 2 is_stmt 1
	.loc 1 118 5 is_stmt 0
	bne	t1,zero,.L7
	.loc 1 118 19 discriminator 1
	li	a6,7
	bne	a2,a6,.L8
	.loc 1 118 55 discriminator 2
	beq	a4,zero,.L9
.L7:
	.loc 1 119 3 is_stmt 1
	.loc 1 119 10 is_stmt 0
	lui	a2,%hi(.LC0)
.LVL10:
	mv	a6,a5
	addi	a2,a2,%lo(.LC0)
	mv	a5,t3
.LVL11:
	tail	snprintf
.LVL12:
.L3:
	.loc 1 106 1 is_stmt 1
.LBB14:
.LBB12:
	.loc 1 59 2
	addi	a7,a2,-3
	bgtu	a7,a5,.L19
.LVL13:
.LBE12:
.LBE14:
	.loc 1 107 2
.LBB15:
.LBB13:
	.loc 1 62 9 is_stmt 0
	li	t1,1
.LBE13:
.LBE15:
	.loc 1 107 5
	bne	a4,zero,.L4
.LVL14:
.L1:
	.loc 1 125 1
	li	a0,-1
.LVL15:
	ret
.LVL16:
.L9:
	.loc 1 120 9 is_stmt 1
	.loc 1 121 3
	.loc 1 121 10 is_stmt 0
	lui	a2,%hi(.LC1)
.LVL17:
	addi	a2,a2,%lo(.LC1)
	tail	snprintf
.LVL18:
.L8:
	.loc 1 120 9 is_stmt 1
	.loc 1 123 3
	.loc 1 123 10 is_stmt 0
	lui	a2,%hi(.LC2)
.LVL19:
	mv	a4,t3
.LVL20:
	addi	a2,a2,%lo(.LC2)
	tail	snprintf
.LVL21:
	.cfi_endproc
.LFE7:
	.size	aws_iot_jobs_get_api_topic, .-aws_iot_jobs_get_api_topic
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC3:
	.string	""
	.align	2
.LC4:
	.string	"/accepted"
	.align	2
.LC5:
	.string	"/rejected"
	.align	2
.LC6:
	.string	"/+"
	.align	2
.LC7:
	.string	"get"
	.align	2
.LC8:
	.string	"start-next"
	.align	2
.LC9:
	.string	"update"
	.align	2
.LC10:
	.string	"notify"
	.align	2
.LC11:
	.string	"notify-next"
	.align	2
.LC12:
	.string	"+"
	.section	.rodata.CSWTCH.1,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	CSWTCH.1, @object
	.size	CSWTCH.1, 28
CSWTCH.1:
	.word	.LC7
	.word	.LC8
	.word	.LC7
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	.LC12
	.section	.rodata.CSWTCH.4,"a"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	CSWTCH.4, @object
	.size	CSWTCH.4, 16
CSWTCH.4:
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.text
.Letext0:
	.file 2 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 3 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_jobs_topics.h"
	.file 4 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2ac
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF39
	.byte	0xc
	.4byte	.LASF40
	.4byte	.LASF41
	.4byte	.Ldebug_ranges0+0x20
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
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x4
	.4byte	.LASF17
	.byte	0x2
	.byte	0xd1
	.byte	0x16
	.4byte	0x64
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x64
	.byte	0x3
	.byte	0x2a
	.byte	0xe
	.4byte	0xb6
	.byte	0x6
	.4byte	.LASF9
	.byte	0
	.byte	0x6
	.4byte	.LASF10
	.byte	0x1
	.byte	0x6
	.4byte	.LASF11
	.byte	0x2
	.byte	0x6
	.4byte	.LASF12
	.byte	0x3
	.byte	0x6
	.4byte	.LASF13
	.byte	0x4
	.byte	0x6
	.4byte	.LASF14
	.byte	0x5
	.byte	0x6
	.4byte	.LASF15
	.byte	0x6
	.byte	0x6
	.4byte	.LASF16
	.byte	0x7
	.byte	0
	.byte	0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0x33
	.byte	0x3
	.4byte	0x77
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x64
	.byte	0x3
	.byte	0x39
	.byte	0xe
	.4byte	0xef
	.byte	0x6
	.4byte	.LASF19
	.byte	0
	.byte	0x6
	.4byte	.LASF20
	.byte	0x1
	.byte	0x6
	.4byte	.LASF21
	.byte	0x2
	.byte	0x6
	.4byte	.LASF22
	.byte	0x3
	.byte	0x6
	.4byte	.LASF23
	.byte	0x4
	.byte	0
	.byte	0x4
	.4byte	.LASF24
	.byte	0x3
	.byte	0x3f
	.byte	0x3
	.4byte	0xc2
	.byte	0x7
	.byte	0x4
	.4byte	0x101
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF25
	.byte	0x8
	.4byte	0x101
	.byte	0x7
	.byte	0x4
	.4byte	0x108
	.byte	0x9
	.4byte	.LASF42
	.byte	0x1
	.byte	0x5e
	.byte	0x5
	.4byte	0x5d
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x241
	.byte	0xa
	.4byte	.LASF26
	.byte	0x1
	.byte	0x5e
	.byte	0x26
	.4byte	0xfb
	.4byte	.LLST0
	.byte	0xa
	.4byte	.LASF27
	.byte	0x1
	.byte	0x5e
	.byte	0x35
	.4byte	0x6b
	.4byte	.LLST1
	.byte	0xa
	.4byte	.LASF28
	.byte	0x1
	.byte	0x5f
	.byte	0x1f
	.4byte	0xb6
	.4byte	.LLST2
	.byte	0xa
	.4byte	.LASF29
	.byte	0x1
	.byte	0x5f
	.byte	0x4b
	.4byte	0xef
	.4byte	.LLST3
	.byte	0xa
	.4byte	.LASF30
	.byte	0x1
	.byte	0x60
	.byte	0xf
	.4byte	0x10d
	.4byte	.LLST4
	.byte	0xa
	.4byte	.LASF31
	.byte	0x1
	.byte	0x60
	.byte	0x26
	.4byte	0x10d
	.4byte	.LLST5
	.byte	0xb
	.4byte	.LASF32
	.byte	0x1
	.byte	0x6a
	.byte	0x6
	.4byte	0x241
	.4byte	.LLST6
	.byte	0xb
	.4byte	.LASF33
	.byte	0x1
	.byte	0x6f
	.byte	0xe
	.4byte	0x10d
	.4byte	.LLST7
	.byte	0xb
	.4byte	.LASF34
	.byte	0x1
	.byte	0x74
	.byte	0xe
	.4byte	0x10d
	.4byte	.LLST8
	.byte	0xc
	.4byte	0x266
	.4byte	.LBB10
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x6a
	.byte	0x15
	.4byte	0x1db
	.byte	0xd
	.4byte	0x277
	.4byte	.LLST9
	.byte	0
	.byte	0xe
	.4byte	.LVL12
	.4byte	0x2a2
	.4byte	0x204
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0xf
	.byte	0x1
	.byte	0x5f
	.byte	0xe
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x31
	.byte	0x1c
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x22
	.byte	0x6
	.byte	0
	.byte	0xe
	.4byte	.LVL18
	.4byte	0x2a2
	.4byte	0x21b
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x10
	.4byte	.LVL21
	.4byte	0x2a2
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0xf
	.byte	0x1
	.byte	0x5e
	.byte	0xe
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x31
	.byte	0x1c
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x22
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF35
	.byte	0x11
	.4byte	.LASF36
	.byte	0x1
	.byte	0x4a
	.byte	0x14
	.4byte	0x10d
	.byte	0x1
	.4byte	0x266
	.byte	0x12
	.4byte	.LASF29
	.byte	0x1
	.byte	0x4a
	.byte	0x50
	.4byte	0xef
	.byte	0
	.byte	0x11
	.4byte	.LASF37
	.byte	0x1
	.byte	0x3a
	.byte	0xc
	.4byte	0x241
	.byte	0x1
	.4byte	0x284
	.byte	0x12
	.4byte	.LASF28
	.byte	0x1
	.byte	0x3a
	.byte	0x44
	.4byte	0xb6
	.byte	0
	.byte	0x11
	.4byte	.LASF38
	.byte	0x1
	.byte	0x25
	.byte	0x14
	.4byte	0x10d
	.byte	0x1
	.4byte	0x2a2
	.byte	0x12
	.4byte	.LASF28
	.byte	0x1
	.byte	0x25
	.byte	0x4e
	.4byte	0xb6
	.byte	0
	.byte	0x13
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x4
	.2byte	0x10a
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
	.byte	0x6
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xa
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
	.byte	0xb
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
	.byte	0xc
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x52
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x58
	.byte	0xb
	.byte	0x59
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x13
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
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12-1
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18-1
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21-1
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL12-1
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL18-1
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL21-1
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL19
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL1
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x3
	.byte	0x81
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL16
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL2
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL12-1
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL18-1
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL21-1
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL3
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL12-1
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL18-1
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL20
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL5
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL12-1
	.4byte	.LVL12
	.2byte	0xd
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x31
	.byte	0x1c
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x22
	.4byte	.LVL16
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL18-1
	.4byte	.LVL18
	.2byte	0xd
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x31
	.byte	0x1c
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x22
	.4byte	.LVL18
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL21-1
	.4byte	.LFE7
	.2byte	0xd
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x31
	.byte	0x1c
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL11
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL16
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL18
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5c
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
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	0
	.4byte	0
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF11:
	.string	"JOB_START_NEXT_TOPIC"
.LASF17:
	.string	"size_t"
.LASF36:
	.string	"_get_suffix_for_topic_type"
.LASF43:
	.string	"snprintf"
.LASF32:
	.string	"requireJobId"
.LASF21:
	.string	"JOB_ACCEPTED_REPLY_TYPE"
.LASF12:
	.string	"JOB_DESCRIBE_TOPIC"
.LASF4:
	.string	"unsigned char"
.LASF6:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF9:
	.string	"JOB_UNRECOGNIZED_TOPIC"
.LASF40:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_jobs_topics.c"
.LASF41:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/build_out/aws-iot"
.LASF42:
	.string	"aws_iot_jobs_get_api_topic"
.LASF18:
	.string	"AwsIotJobExecutionTopicType"
.LASF28:
	.string	"topicType"
.LASF29:
	.string	"replyType"
.LASF34:
	.string	"suffix"
.LASF8:
	.string	"unsigned int"
.LASF23:
	.string	"JOB_WILDCARD_REPLY_TYPE"
.LASF31:
	.string	"jobId"
.LASF7:
	.string	"long long unsigned int"
.LASF13:
	.string	"JOB_UPDATE_TOPIC"
.LASF33:
	.string	"operation"
.LASF10:
	.string	"JOB_GET_PENDING_TOPIC"
.LASF20:
	.string	"JOB_REQUEST_TYPE"
.LASF3:
	.string	"long long int"
.LASF30:
	.string	"thingName"
.LASF39:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF25:
	.string	"char"
.LASF16:
	.string	"JOB_WILDCARD_TOPIC"
.LASF27:
	.string	"bufferSize"
.LASF1:
	.string	"short int"
.LASF26:
	.string	"buffer"
.LASF37:
	.string	"_base_topic_requires_job_id"
.LASF2:
	.string	"long int"
.LASF38:
	.string	"_get_operation_for_base_topic"
.LASF24:
	.string	"AwsIotJobExecutionTopicReplyType"
.LASF0:
	.string	"signed char"
.LASF19:
	.string	"JOB_UNRECOGNIZED_TOPIC_TYPE"
.LASF35:
	.string	"_Bool"
.LASF14:
	.string	"JOB_NOTIFY_TOPIC"
.LASF15:
	.string	"JOB_NOTIFY_NEXT_TOPIC"
.LASF22:
	.string	"JOB_REJECTED_REPLY_TYPE"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
