	.file	"aws_iot_jobs_types.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.aws_iot_jobs_map_string_to_job_status,"ax",@progbits
	.align	1
	.globl	aws_iot_jobs_map_string_to_job_status
	.type	aws_iot_jobs_map_string_to_job_status, @function
aws_iot_jobs_map_string_to_job_status:
.LFB1:
	.file 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_jobs_types.c"
	.loc 1 30 75
	.cfi_startproc
.LVL0:
	.loc 1 31 2
	.loc 1 31 5 is_stmt 0
	beq	a0,zero,.L3
	.loc 1 30 75 discriminator 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 31 17 discriminator 1
	lbu	a4,0(a0)
	mv	s0,a0
	.loc 1 32 10 discriminator 1
	li	a5,0
	.loc 1 31 17 discriminator 1
	beq	a4,zero,.L1
	.loc 1 33 9 is_stmt 1
	.loc 1 33 13 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	lw	a1,%lo(.LANCHOR0)(a5)
	call	strcmp
.LVL1:
	.loc 1 34 10
	li	a5,1
	.loc 1 33 12
	beq	a0,zero,.L1
	.loc 1 35 9 is_stmt 1
	.loc 1 35 12 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	lw	a1,%lo(.LANCHOR1)(a5)
	mv	a0,s0
	call	strcmp
.LVL2:
	.loc 1 36 10
	li	a5,2
	.loc 1 35 11
	beq	a0,zero,.L1
	.loc 1 37 9 is_stmt 1
	.loc 1 37 12 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	lw	a1,%lo(.LANCHOR2)(a5)
	mv	a0,s0
	call	strcmp
.LVL3:
	.loc 1 38 10
	li	a5,3
	.loc 1 37 11
	beq	a0,zero,.L1
	.loc 1 39 9 is_stmt 1
	.loc 1 39 12 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	lw	a1,%lo(.LANCHOR3)(a5)
	mv	a0,s0
	call	strcmp
.LVL4:
	.loc 1 40 10
	li	a5,4
	.loc 1 39 11
	beq	a0,zero,.L1
	.loc 1 41 9 is_stmt 1
	.loc 1 41 12 is_stmt 0
	lui	a5,%hi(.LANCHOR4)
	lw	a1,%lo(.LANCHOR4)(a5)
	mv	a0,s0
	call	strcmp
.LVL5:
	.loc 1 42 10
	li	a5,5
	.loc 1 41 11
	beq	a0,zero,.L1
	.loc 1 43 9 is_stmt 1
	.loc 1 43 12 is_stmt 0
	lui	a5,%hi(.LANCHOR5)
	lw	a1,%lo(.LANCHOR5)(a5)
	mv	a0,s0
	call	strcmp
.LVL6:
	.loc 1 44 10
	li	a5,6
	.loc 1 43 11
	beq	a0,zero,.L1
	.loc 1 46 10
	li	a5,99
.L1:
	.loc 1 48 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL7:
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL8:
.L3:
	.loc 1 32 10
	li	a5,0
	.loc 1 48 1
	mv	a0,a5
.LVL9:
	ret
	.cfi_endproc
.LFE1:
	.size	aws_iot_jobs_map_string_to_job_status, .-aws_iot_jobs_map_string_to_job_status
	.section	.text.aws_iot_jobs_map_status_to_string,"ax",@progbits
	.align	1
	.globl	aws_iot_jobs_map_status_to_string
	.type	aws_iot_jobs_map_status_to_string, @function
aws_iot_jobs_map_status_to_string:
.LFB2:
	.loc 1 50 74 is_stmt 1
	.cfi_startproc
.LVL10:
	.loc 1 51 2
	addi	a0,a0,-1
.LVL11:
	li	a5,5
	bgtu	a0,a5,.L27
	lui	a5,%hi(.L21)
	addi	a5,a5,%lo(.L21)
	slli	a0,a0,2
.LVL12:
	add	a0,a0,a5
	lw	a5,0(a0)
	jr	a5
	.section	.rodata.aws_iot_jobs_map_status_to_string,"a",@progbits
	.align	2
	.align	2
.L21:
	.word	.L26
	.word	.L25
	.word	.L24
	.word	.L23
	.word	.L22
	.word	.L20
	.section	.text.aws_iot_jobs_map_status_to_string
.L26:
	.loc 1 53 3
	.loc 1 53 10 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	lw	a0,%lo(.LANCHOR0)(a5)
	ret
.L25:
	.loc 1 55 3 is_stmt 1
	.loc 1 55 10 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	lw	a0,%lo(.LANCHOR1)(a5)
	ret
.L24:
	.loc 1 57 3 is_stmt 1
	.loc 1 57 10 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	lw	a0,%lo(.LANCHOR2)(a5)
	ret
.L23:
	.loc 1 59 3 is_stmt 1
	.loc 1 59 10 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	lw	a0,%lo(.LANCHOR3)(a5)
	ret
.L22:
	.loc 1 61 3 is_stmt 1
	.loc 1 61 10 is_stmt 0
	lui	a5,%hi(.LANCHOR4)
	lw	a0,%lo(.LANCHOR4)(a5)
	ret
.L20:
	.loc 1 63 3 is_stmt 1
	.loc 1 63 10 is_stmt 0
	lui	a5,%hi(.LANCHOR5)
	lw	a0,%lo(.LANCHOR5)(a5)
	ret
.L27:
	.loc 1 50 74
	li	a0,0
	.loc 1 69 1
	ret
	.cfi_endproc
.LFE2:
	.size	aws_iot_jobs_map_status_to_string, .-aws_iot_jobs_map_status_to_string
	.globl	JOB_EXECUTION_REJECTED_STR
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"REJECTED"
	.globl	JOB_EXECUTION_CANCELED_STR
	.align	2
.LC1:
	.string	"CANCELED"
	.globl	JOB_EXECUTION_SUCCEEDED_STR
	.align	2
.LC2:
	.string	"SUCCEEDED"
	.globl	JOB_EXECUTION_FAILED_STR
	.align	2
.LC3:
	.string	"FAILED"
	.globl	JOB_EXECUTION_IN_PROGRESS_STR
	.align	2
.LC4:
	.string	"IN_PROGRESS"
	.globl	JOB_EXECUTION_QUEUED_STR
	.align	2
.LC5:
	.string	"QUEUED"
	.section	.sdata.JOB_EXECUTION_CANCELED_STR,"aw"
	.align	2
	.set	.LANCHOR4,. + 0
	.type	JOB_EXECUTION_CANCELED_STR, @object
	.size	JOB_EXECUTION_CANCELED_STR, 4
JOB_EXECUTION_CANCELED_STR:
	.word	.LC1
	.section	.sdata.JOB_EXECUTION_FAILED_STR,"aw"
	.align	2
	.set	.LANCHOR2,. + 0
	.type	JOB_EXECUTION_FAILED_STR, @object
	.size	JOB_EXECUTION_FAILED_STR, 4
JOB_EXECUTION_FAILED_STR:
	.word	.LC3
	.section	.sdata.JOB_EXECUTION_IN_PROGRESS_STR,"aw"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	JOB_EXECUTION_IN_PROGRESS_STR, @object
	.size	JOB_EXECUTION_IN_PROGRESS_STR, 4
JOB_EXECUTION_IN_PROGRESS_STR:
	.word	.LC4
	.section	.sdata.JOB_EXECUTION_QUEUED_STR,"aw"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	JOB_EXECUTION_QUEUED_STR, @object
	.size	JOB_EXECUTION_QUEUED_STR, 4
JOB_EXECUTION_QUEUED_STR:
	.word	.LC5
	.section	.sdata.JOB_EXECUTION_REJECTED_STR,"aw"
	.align	2
	.set	.LANCHOR5,. + 0
	.type	JOB_EXECUTION_REJECTED_STR, @object
	.size	JOB_EXECUTION_REJECTED_STR, 4
JOB_EXECUTION_REJECTED_STR:
	.word	.LC0
	.section	.sdata.JOB_EXECUTION_SUCCEEDED_STR,"aw"
	.align	2
	.set	.LANCHOR3,. + 0
	.type	JOB_EXECUTION_SUCCEEDED_STR, @object
	.size	JOB_EXECUTION_SUCCEEDED_STR, 4
JOB_EXECUTION_SUCCEEDED_STR:
	.word	.LC2
	.text
.Letext0:
	.file 2 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_jobs_types.h"
	.file 3 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x236
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF28
	.byte	0xc
	.4byte	.LASF29
	.4byte	.LASF30
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
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x4
	.4byte	0x6b
	.byte	0x5
	.byte	0x4
	.4byte	0x72
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x2
	.byte	0x28
	.byte	0xe
	.4byte	0xbc
	.byte	0x7
	.4byte	.LASF10
	.byte	0
	.byte	0x7
	.4byte	.LASF11
	.byte	0x1
	.byte	0x7
	.4byte	.LASF12
	.byte	0x2
	.byte	0x7
	.4byte	.LASF13
	.byte	0x3
	.byte	0x7
	.4byte	.LASF14
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.byte	0x5
	.byte	0x7
	.4byte	.LASF16
	.byte	0x6
	.byte	0x7
	.4byte	.LASF17
	.byte	0x63
	.byte	0
	.byte	0x8
	.4byte	.LASF31
	.byte	0x2
	.byte	0x34
	.byte	0x3
	.4byte	0x7d
	.byte	0x9
	.4byte	.LASF18
	.byte	0x2
	.byte	0x36
	.byte	0x14
	.4byte	0x77
	.byte	0x9
	.4byte	.LASF19
	.byte	0x2
	.byte	0x37
	.byte	0x14
	.4byte	0x77
	.byte	0x9
	.4byte	.LASF20
	.byte	0x2
	.byte	0x38
	.byte	0x14
	.4byte	0x77
	.byte	0x9
	.4byte	.LASF21
	.byte	0x2
	.byte	0x3a
	.byte	0x14
	.4byte	0x77
	.byte	0x9
	.4byte	.LASF22
	.byte	0x2
	.byte	0x3b
	.byte	0x14
	.4byte	0x77
	.byte	0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF23
	.byte	0xa
	.4byte	0xc8
	.byte	0x1
	.byte	0x17
	.byte	0xd
	.byte	0x5
	.byte	0x3
	.4byte	JOB_EXECUTION_QUEUED_STR
	.byte	0xa
	.4byte	0xd4
	.byte	0x1
	.byte	0x18
	.byte	0xd
	.byte	0x5
	.byte	0x3
	.4byte	JOB_EXECUTION_IN_PROGRESS_STR
	.byte	0xa
	.4byte	0xe0
	.byte	0x1
	.byte	0x19
	.byte	0xd
	.byte	0x5
	.byte	0x3
	.4byte	JOB_EXECUTION_FAILED_STR
	.byte	0xb
	.4byte	.LASF24
	.byte	0x1
	.byte	0x1a
	.byte	0xd
	.4byte	0x77
	.byte	0x5
	.byte	0x3
	.4byte	JOB_EXECUTION_SUCCEEDED_STR
	.byte	0xa
	.4byte	0xec
	.byte	0x1
	.byte	0x1b
	.byte	0xd
	.byte	0x5
	.byte	0x3
	.4byte	JOB_EXECUTION_CANCELED_STR
	.byte	0xa
	.4byte	0xf8
	.byte	0x1
	.byte	0x1c
	.byte	0xd
	.byte	0x5
	.byte	0x3
	.4byte	JOB_EXECUTION_REJECTED_STR
	.byte	0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0x32
	.byte	0xd
	.4byte	0x77
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0x18e
	.byte	0xd
	.4byte	.LASF27
	.byte	0x1
	.byte	0x32
	.byte	0x42
	.4byte	0xbc
	.4byte	.LLST1
	.byte	0
	.byte	0xc
	.4byte	.LASF26
	.byte	0x1
	.byte	0x1e
	.byte	0x14
	.4byte	0xbc
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0x22d
	.byte	0xe
	.string	"str"
	.byte	0x1
	.byte	0x1e
	.byte	0x46
	.4byte	0x77
	.4byte	.LLST0
	.byte	0xf
	.4byte	.LVL1
	.4byte	0x22d
	.4byte	0x1cc
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LVL2
	.4byte	0x22d
	.4byte	0x1e0
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LVL3
	.4byte	0x22d
	.4byte	0x1f4
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LVL4
	.4byte	0x22d
	.4byte	0x208
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LVL5
	.4byte	0x22d
	.4byte	0x21c
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LVL6
	.4byte	0x22d
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LASF32
	.4byte	.LASF32
	.byte	0x3
	.byte	0x24
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0x9
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
	.byte	0xa
	.byte	0x34
	.byte	0
	.byte	0x47
	.byte	0x13
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x2
	.byte	0x18
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
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xc
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
	.byte	0xd
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
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
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
	.byte	0
	.byte	0
	.byte	0x12
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
.LLST1:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x3
	.byte	0x7a
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1-1
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
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF25:
	.string	"aws_iot_jobs_map_status_to_string"
.LASF12:
	.string	"JOB_EXECUTION_IN_PROGRESS"
.LASF27:
	.string	"status"
.LASF15:
	.string	"JOB_EXECUTION_CANCELED"
.LASF24:
	.string	"JOB_EXECUTION_SUCCEEDED_STR"
.LASF14:
	.string	"JOB_EXECUTION_SUCCEEDED"
.LASF26:
	.string	"aws_iot_jobs_map_string_to_job_status"
.LASF16:
	.string	"JOB_EXECUTION_REJECTED"
.LASF21:
	.string	"JOB_EXECUTION_CANCELED_STR"
.LASF29:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_jobs_types.c"
.LASF23:
	.string	"_Bool"
.LASF18:
	.string	"JOB_EXECUTION_QUEUED_STR"
.LASF11:
	.string	"JOB_EXECUTION_QUEUED"
.LASF2:
	.string	"unsigned char"
.LASF6:
	.string	"long unsigned int"
.LASF4:
	.string	"short unsigned int"
.LASF30:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/build_out/aws-iot"
.LASF13:
	.string	"JOB_EXECUTION_FAILED"
.LASF10:
	.string	"JOB_EXECUTION_STATUS_NOT_SET"
.LASF17:
	.string	"JOB_EXECUTION_UNKNOWN_STATUS"
.LASF20:
	.string	"JOB_EXECUTION_FAILED_STR"
.LASF0:
	.string	"unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF32:
	.string	"strcmp"
.LASF7:
	.string	"long long int"
.LASF28:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF9:
	.string	"char"
.LASF3:
	.string	"short int"
.LASF19:
	.string	"JOB_EXECUTION_IN_PROGRESS_STR"
.LASF5:
	.string	"long int"
.LASF1:
	.string	"signed char"
.LASF31:
	.string	"JobExecutionStatus"
.LASF22:
	.string	"JOB_EXECUTION_REJECTED_STR"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
