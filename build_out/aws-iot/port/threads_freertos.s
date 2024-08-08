	.file	"threads_freertos.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.aws_iot_thread_mutex_init,"ax",@progbits
	.align	1
	.globl	aws_iot_thread_mutex_init
	.type	aws_iot_thread_mutex_init, @function
aws_iot_thread_mutex_init:
.LFB3:
	.file 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/aws-iot/port/threads_freertos.c"
	.loc 1 35 1
	.cfi_startproc
.LVL0:
	.loc 1 36 5
	.loc 1 35 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	mv	s0,a0
	.loc 1 36 21
	li	a0,4
.LVL1:
	.loc 1 35 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 36 21
	call	xQueueCreateMutex
.LVL2:
	.loc 1 36 19
	sw	a0,0(s0)
	.loc 1 37 5 is_stmt 1
	.loc 1 37 36 is_stmt 0
	bne	a0,zero,.L3
	li	a0,-46
.L1:
	.loc 1 38 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL3:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL4:
.L3:
	.cfi_restore_state
	.loc 1 37 36
	li	a0,0
	j	.L1
	.cfi_endproc
.LFE3:
	.size	aws_iot_thread_mutex_init, .-aws_iot_thread_mutex_init
	.section	.text.aws_iot_thread_mutex_lock,"ax",@progbits
	.align	1
	.globl	aws_iot_thread_mutex_lock
	.type	aws_iot_thread_mutex_lock, @function
aws_iot_thread_mutex_lock:
.LFB4:
	.loc 1 50 1 is_stmt 1
	.cfi_startproc
.LVL5:
	.loc 1 51 5
	.loc 1 50 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 51 5
	lw	a0,0(a0)
.LVL6:
	li	a1,-1
	call	xQueueTakeMutexRecursive
.LVL7:
	.loc 1 52 5 is_stmt 1
	.loc 1 53 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	aws_iot_thread_mutex_lock, .-aws_iot_thread_mutex_lock
	.section	.text.aws_iot_thread_mutex_trylock,"ax",@progbits
	.align	1
	.globl	aws_iot_thread_mutex_trylock
	.type	aws_iot_thread_mutex_trylock, @function
aws_iot_thread_mutex_trylock:
.LFB5:
	.loc 1 65 1 is_stmt 1
	.cfi_startproc
.LVL8:
	.loc 1 66 5
	.loc 1 65 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 66 9
	lw	a0,0(a0)
.LVL9:
	li	a1,0
	call	xQueueTakeMutexRecursive
.LVL10:
	.loc 1 66 8
	bne	a0,zero,.L9
	.loc 1 69 16
	li	a0,-47
.L7:
	.loc 1 71 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L9:
	.cfi_restore_state
	.loc 1 67 16
	li	a0,0
	j	.L7
	.cfi_endproc
.LFE5:
	.size	aws_iot_thread_mutex_trylock, .-aws_iot_thread_mutex_trylock
	.section	.text.aws_iot_thread_mutex_unlock,"ax",@progbits
	.align	1
	.globl	aws_iot_thread_mutex_unlock
	.type	aws_iot_thread_mutex_unlock, @function
aws_iot_thread_mutex_unlock:
.LFB6:
	.loc 1 82 1 is_stmt 1
	.cfi_startproc
.LVL11:
	.loc 1 83 5
	.loc 1 82 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 83 9
	lw	a0,0(a0)
.LVL12:
	call	xQueueGiveMutexRecursive
.LVL13:
	.loc 1 83 8
	bne	a0,zero,.L13
	.loc 1 86 16
	li	a0,-48
.L11:
	.loc 1 88 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L13:
	.cfi_restore_state
	.loc 1 84 16
	li	a0,0
	j	.L11
	.cfi_endproc
.LFE6:
	.size	aws_iot_thread_mutex_unlock, .-aws_iot_thread_mutex_unlock
	.section	.text.aws_iot_thread_mutex_destroy,"ax",@progbits
	.align	1
	.globl	aws_iot_thread_mutex_destroy
	.type	aws_iot_thread_mutex_destroy, @function
aws_iot_thread_mutex_destroy:
.LFB7:
	.loc 1 99 1 is_stmt 1
	.cfi_startproc
.LVL14:
	.loc 1 100 5
	.loc 1 99 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 100 5
	lw	a0,0(a0)
.LVL15:
	call	vQueueDelete
.LVL16:
	.loc 1 101 5 is_stmt 1
	.loc 1 102 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	aws_iot_thread_mutex_destroy, .-aws_iot_thread_mutex_destroy
	.text
.Letext0:
	.file 2 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 4 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
	.file 5 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/semphr.h"
	.file 6 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_error.h"
	.file 7 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/threads_interface.h"
	.file 8 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/aws-iot/port/include/threads_platform.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x3ab
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF86
	.byte	0xc
	.4byte	.LASF87
	.4byte	.LASF88
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
	.4byte	0x75
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x41
	.byte	0x12
	.4byte	0x69
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x4
	.4byte	.LASF13
	.byte	0x4
	.byte	0x30
	.byte	0x22
	.4byte	0xa2
	.byte	0x5
	.byte	0x4
	.4byte	0xa8
	.byte	0x6
	.4byte	.LASF89
	.byte	0x4
	.4byte	.LASF14
	.byte	0x5
	.byte	0x25
	.byte	0x17
	.4byte	0x96
	.byte	0x7
	.4byte	.LASF90
	.byte	0x4
	.byte	0x8
	.byte	0x22
	.byte	0x8
	.4byte	0xd4
	.byte	0x8
	.4byte	.LASF91
	.byte	0x8
	.byte	0x23
	.byte	0x17
	.4byte	0xad
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x5
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0x28
	.byte	0xe
	.4byte	0x245
	.byte	0xa
	.4byte	.LASF15
	.byte	0x6
	.byte	0xa
	.4byte	.LASF16
	.byte	0x5
	.byte	0xa
	.4byte	.LASF17
	.byte	0x4
	.byte	0xa
	.4byte	.LASF18
	.byte	0x3
	.byte	0xa
	.4byte	.LASF19
	.byte	0x2
	.byte	0xa
	.4byte	.LASF20
	.byte	0x1
	.byte	0xa
	.4byte	.LASF21
	.byte	0
	.byte	0xb
	.4byte	.LASF22
	.byte	0x7f
	.byte	0xb
	.4byte	.LASF23
	.byte	0x7e
	.byte	0xb
	.4byte	.LASF24
	.byte	0x7d
	.byte	0xb
	.4byte	.LASF25
	.byte	0x7c
	.byte	0xb
	.4byte	.LASF26
	.byte	0x7b
	.byte	0xb
	.4byte	.LASF27
	.byte	0x7a
	.byte	0xb
	.4byte	.LASF28
	.byte	0x79
	.byte	0xb
	.4byte	.LASF29
	.byte	0x78
	.byte	0xb
	.4byte	.LASF30
	.byte	0x77
	.byte	0xb
	.4byte	.LASF31
	.byte	0x76
	.byte	0xb
	.4byte	.LASF32
	.byte	0x75
	.byte	0xb
	.4byte	.LASF33
	.byte	0x74
	.byte	0xb
	.4byte	.LASF34
	.byte	0x73
	.byte	0xb
	.4byte	.LASF35
	.byte	0x72
	.byte	0xb
	.4byte	.LASF36
	.byte	0x71
	.byte	0xb
	.4byte	.LASF37
	.byte	0x70
	.byte	0xb
	.4byte	.LASF38
	.byte	0x6f
	.byte	0xb
	.4byte	.LASF39
	.byte	0x6e
	.byte	0xb
	.4byte	.LASF40
	.byte	0x6d
	.byte	0xb
	.4byte	.LASF41
	.byte	0x6c
	.byte	0xb
	.4byte	.LASF42
	.byte	0x6b
	.byte	0xb
	.4byte	.LASF43
	.byte	0x6a
	.byte	0xb
	.4byte	.LASF44
	.byte	0x69
	.byte	0xb
	.4byte	.LASF45
	.byte	0x68
	.byte	0xb
	.4byte	.LASF46
	.byte	0x67
	.byte	0xb
	.4byte	.LASF47
	.byte	0x66
	.byte	0xb
	.4byte	.LASF48
	.byte	0x65
	.byte	0xb
	.4byte	.LASF49
	.byte	0x64
	.byte	0xb
	.4byte	.LASF50
	.byte	0x63
	.byte	0xb
	.4byte	.LASF51
	.byte	0x62
	.byte	0xb
	.4byte	.LASF52
	.byte	0x61
	.byte	0xb
	.4byte	.LASF53
	.byte	0x60
	.byte	0xb
	.4byte	.LASF54
	.byte	0x5f
	.byte	0xb
	.4byte	.LASF55
	.byte	0x5e
	.byte	0xb
	.4byte	.LASF56
	.byte	0x5d
	.byte	0xb
	.4byte	.LASF57
	.byte	0x5c
	.byte	0xb
	.4byte	.LASF58
	.byte	0x5b
	.byte	0xb
	.4byte	.LASF59
	.byte	0x5a
	.byte	0xb
	.4byte	.LASF60
	.byte	0x59
	.byte	0xb
	.4byte	.LASF61
	.byte	0x58
	.byte	0xb
	.4byte	.LASF62
	.byte	0x57
	.byte	0xb
	.4byte	.LASF63
	.byte	0x56
	.byte	0xb
	.4byte	.LASF64
	.byte	0x55
	.byte	0xb
	.4byte	.LASF65
	.byte	0x54
	.byte	0xb
	.4byte	.LASF66
	.byte	0x53
	.byte	0xb
	.4byte	.LASF67
	.byte	0x52
	.byte	0xb
	.4byte	.LASF68
	.byte	0x51
	.byte	0xb
	.4byte	.LASF69
	.byte	0x50
	.byte	0xb
	.4byte	.LASF70
	.byte	0x4f
	.byte	0xb
	.4byte	.LASF71
	.byte	0x4e
	.byte	0xb
	.4byte	.LASF72
	.byte	0x4d
	.byte	0xb
	.4byte	.LASF73
	.byte	0x4c
	.byte	0
	.byte	0x4
	.4byte	.LASF74
	.byte	0x6
	.byte	0xa0
	.byte	0x3
	.4byte	0xd4
	.byte	0x4
	.4byte	.LASF75
	.byte	0x7
	.byte	0x31
	.byte	0x1d
	.4byte	0xb9
	.byte	0xc
	.4byte	.LASF76
	.byte	0x1
	.byte	0x62
	.byte	0xd
	.4byte	0x245
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x291
	.byte	0xd
	.4byte	.LASF78
	.byte	0x1
	.byte	0x62
	.byte	0x37
	.4byte	0x291
	.4byte	.LLST4
	.byte	0xe
	.4byte	.LVL16
	.4byte	0x37a
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x251
	.byte	0xc
	.4byte	.LASF77
	.byte	0x1
	.byte	0x51
	.byte	0xd
	.4byte	0x245
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x2cb
	.byte	0xd
	.4byte	.LASF78
	.byte	0x1
	.byte	0x51
	.byte	0x36
	.4byte	0x291
	.4byte	.LLST3
	.byte	0xe
	.4byte	.LVL13
	.4byte	0x387
	.byte	0
	.byte	0xc
	.4byte	.LASF79
	.byte	0x1
	.byte	0x40
	.byte	0xd
	.4byte	0x245
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x305
	.byte	0xd
	.4byte	.LASF78
	.byte	0x1
	.byte	0x40
	.byte	0x37
	.4byte	0x291
	.4byte	.LLST2
	.byte	0xf
	.4byte	.LVL10
	.4byte	0x394
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	.LASF80
	.byte	0x1
	.byte	0x31
	.byte	0xd
	.4byte	0x245
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x340
	.byte	0xd
	.4byte	.LASF78
	.byte	0x1
	.byte	0x31
	.byte	0x34
	.4byte	0x291
	.4byte	.LLST1
	.byte	0xf
	.4byte	.LVL7
	.4byte	0x394
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	.LASF81
	.byte	0x1
	.byte	0x22
	.byte	0xd
	.4byte	0x245
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x37a
	.byte	0xd
	.4byte	.LASF78
	.byte	0x1
	.byte	0x22
	.byte	0x34
	.4byte	0x291
	.4byte	.LLST0
	.byte	0xf
	.4byte	.LVL2
	.4byte	0x3a1
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0x4
	.2byte	0x392
	.byte	0x6
	.byte	0x11
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0x4
	.2byte	0x593
	.byte	0xc
	.byte	0x11
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0x4
	.2byte	0x592
	.byte	0xc
	.byte	0x11
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0x4
	.2byte	0x586
	.byte	0xf
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
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
	.byte	0xa
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xd
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
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
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
.LLST4:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LFE5
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
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x58
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
.LASF90:
	.string	"_IoT_Mutex_t"
.LASF44:
	.string	"NETWORK_ERR_NET_UNKNOWN_HOST"
.LASF68:
	.string	"MUTEX_LOCK_ERROR"
.LASF60:
	.string	"MQTT_CONNACK_SERVER_UNAVAILABLE_ERROR"
.LASF52:
	.string	"MQTT_RX_MESSAGE_PACKET_TYPE_INVALID_ERROR"
.LASF16:
	.string	"NETWORK_MANUALLY_DISCONNECTED"
.LASF2:
	.string	"short int"
.LASF73:
	.string	"INVALID_TOPIC_TYPE_ERROR"
.LASF37:
	.string	"NETWORK_MBEDTLS_ERR_CTR_DRBG_ENTROPY_SOURCE_FAILED"
.LASF80:
	.string	"aws_iot_thread_mutex_lock"
.LASF53:
	.string	"MQTT_RX_BUFFER_TOO_SHORT_ERROR"
.LASF24:
	.string	"TCP_CONNECTION_ERROR"
.LASF4:
	.string	"long long int"
.LASF46:
	.string	"NETWORK_SSL_NOTHING_TO_READ"
.LASF22:
	.string	"FAILURE"
.LASF62:
	.string	"MQTT_CONNACK_NOT_AUTHORIZED_ERROR"
.LASF56:
	.string	"MQTT_DECODE_REMAINING_LENGTH_ERROR"
.LASF27:
	.string	"NETWORK_SSL_CONNECT_TIMEOUT_ERROR"
.LASF67:
	.string	"MUTEX_INIT_ERROR"
.LASF40:
	.string	"NETWORK_X509_ROOT_CRT_PARSE_ERROR"
.LASF19:
	.string	"MQTT_NOTHING_TO_READ"
.LASF76:
	.string	"aws_iot_thread_mutex_destroy"
.LASF54:
	.string	"MQTT_TX_BUFFER_TOO_SHORT_ERROR"
.LASF48:
	.string	"MQTT_CONNECT_TIMEOUT_ERROR"
.LASF59:
	.string	"MQTT_CONNACK_IDENTIFIER_REJECTED_ERROR"
.LASF58:
	.string	"MQTT_CONNACK_UNACCEPTABLE_PROTOCOL_VERSION_ERROR"
.LASF21:
	.string	"SUCCESS"
.LASF11:
	.string	"TickType_t"
.LASF85:
	.string	"xQueueCreateMutex"
.LASF72:
	.string	"LIMIT_EXCEEDED_ERROR"
.LASF34:
	.string	"NETWORK_DISCONNECTED_ERROR"
.LASF3:
	.string	"long int"
.LASF38:
	.string	"NETWORK_SSL_UNKNOWN_ERROR"
.LASF43:
	.string	"NETWORK_ERR_NET_SOCKET_FAILED"
.LASF45:
	.string	"NETWORK_ERR_NET_CONNECT_FAILED"
.LASF51:
	.string	"MQTT_CLIENT_NOT_IDLE_ERROR"
.LASF13:
	.string	"QueueHandle_t"
.LASF29:
	.string	"NETWORK_SSL_INIT_ERROR"
.LASF81:
	.string	"aws_iot_thread_mutex_init"
.LASF57:
	.string	"MQTT_CONNACK_UNKNOWN_ERROR"
.LASF5:
	.string	"unsigned char"
.LASF63:
	.string	"JSON_PARSE_ERROR"
.LASF39:
	.string	"NETWORK_PHYSICAL_LAYER_DISCONNECTED"
.LASF1:
	.string	"signed char"
.LASF10:
	.string	"long long unsigned int"
.LASF8:
	.string	"uint32_t"
.LASF42:
	.string	"NETWORK_PK_PRIVATE_KEY_PARSE_ERROR"
.LASF0:
	.string	"unsigned int"
.LASF69:
	.string	"MUTEX_UNLOCK_ERROR"
.LASF31:
	.string	"NETWORK_SSL_WRITE_TIMEOUT_ERROR"
.LASF50:
	.string	"MQTT_UNEXPECTED_CLIENT_STATE_ERROR"
.LASF26:
	.string	"TCP_SETUP_ERROR"
.LASF89:
	.string	"QueueDefinition"
.LASF91:
	.string	"mutex"
.LASF47:
	.string	"MQTT_CONNECTION_ERROR"
.LASF35:
	.string	"NETWORK_RECONNECT_TIMED_OUT_ERROR"
.LASF75:
	.string	"IoT_Mutex_t"
.LASF12:
	.string	"char"
.LASF77:
	.string	"aws_iot_thread_mutex_unlock"
.LASF18:
	.string	"NETWORK_RECONNECTED"
.LASF23:
	.string	"NULL_VALUE_ERROR"
.LASF32:
	.string	"NETWORK_SSL_READ_TIMEOUT_ERROR"
.LASF41:
	.string	"NETWORK_X509_DEVICE_CRT_PARSE_ERROR"
.LASF25:
	.string	"SSL_CONNECTION_ERROR"
.LASF88:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/build_out/aws-iot"
.LASF66:
	.string	"SHADOW_JSON_ERROR"
.LASF15:
	.string	"NETWORK_PHYSICAL_LAYER_CONNECTED"
.LASF6:
	.string	"short unsigned int"
.LASF82:
	.string	"vQueueDelete"
.LASF9:
	.string	"long unsigned int"
.LASF55:
	.string	"MQTT_MAX_SUBSCRIPTIONS_REACHED_ERROR"
.LASF33:
	.string	"NETWORK_SSL_READ_ERROR"
.LASF30:
	.string	"NETWORK_SSL_CERT_ERROR"
.LASF20:
	.string	"MQTT_CONNACK_CONNECTION_ACCEPTED"
.LASF49:
	.string	"MQTT_REQUEST_TIMEOUT_ERROR"
.LASF71:
	.string	"MAX_SIZE_ERROR"
.LASF28:
	.string	"NETWORK_SSL_WRITE_ERROR"
.LASF7:
	.string	"uint8_t"
.LASF87:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/aws-iot/port/threads_freertos.c"
.LASF83:
	.string	"xQueueGiveMutexRecursive"
.LASF74:
	.string	"IoT_Error_t"
.LASF78:
	.string	"pMutex"
.LASF64:
	.string	"SHADOW_WAIT_FOR_PUBLISH"
.LASF36:
	.string	"NETWORK_ALREADY_CONNECTED_ERROR"
.LASF70:
	.string	"MUTEX_DESTROY_ERROR"
.LASF61:
	.string	"MQTT_CONNACK_BAD_USERDATA_ERROR"
.LASF79:
	.string	"aws_iot_thread_mutex_trylock"
.LASF17:
	.string	"NETWORK_ATTEMPTING_RECONNECT"
.LASF84:
	.string	"xQueueTakeMutexRecursive"
.LASF14:
	.string	"SemaphoreHandle_t"
.LASF65:
	.string	"SHADOW_JSON_BUFFER_TRUNCATED"
.LASF86:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
