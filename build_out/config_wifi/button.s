	.file	"button.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.blink_led_200,"ax",@progbits
	.align	1
	.globl	blink_led_200
	.type	blink_led_200, @function
blink_led_200:
.LFB29:
	.file 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/button.c"
	.loc 1 49 25
	.cfi_startproc
	.loc 1 50 5
	.loc 1 52 5
	.loc 1 49 25 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	.loc 1 52 28
	lui	s0,%hi(.LANCHOR0)
	.loc 1 49 25
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 52 28
	addi	s0,s0,%lo(.LANCHOR0)
	.loc 1 52 8
	call	xTaskGetTickCount
.LVL0:
	.loc 1 52 28
	lw	a5,0(s0)
	sub	a0,a0,a5
	.loc 1 52 7
	li	a5,199
	bleu	a0,a5,.L1
.LBB4:
.LBB5:
	.loc 1 56 5 is_stmt 1
	.loc 1 56 19 is_stmt 0
	call	xTaskGetTickCount
.LVL1:
	.loc 1 58 18
	lui	a5,%hi(.LANCHOR1)
	addi	a5,a5,%lo(.LANCHOR1)
	lbu	a1,0(a5)
	.loc 1 56 17
	sw	a0,0(s0)
	.loc 1 58 5 is_stmt 1
	.loc 1 59 5 is_stmt 0
	li	a0,3
	.loc 1 58 18
	seqz	a1,a1
	.loc 1 58 16
	sb	a1,0(a5)
	.loc 1 59 5 is_stmt 1
	call	bl_gpio_output_set
.LVL2:
	.loc 1 60 5
	.loc 1 60 19 is_stmt 0
	call	xTaskGetTickCount
.LVL3:
	.loc 1 60 17
	sw	a0,0(s0)
.L1:
.LBE5:
.LBE4:
	.loc 1 62 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE29:
	.size	blink_led_200, .-blink_led_200
	.section	.text.get_button_status,"ax",@progbits
	.align	1
	.globl	get_button_status
	.type	get_button_status, @function
get_button_status:
.LFB30:
	.loc 1 64 32 is_stmt 1
	.cfi_startproc
	.loc 1 65 5
	.loc 1 64 32 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 65 12
	li	a0,21
	.loc 1 64 32
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 65 12
	call	bl_gpio_input_get_value
.LVL4:
	.loc 1 66 1
	lw	ra,12(sp)
	.cfi_restore 1
	andi	a0,a0,0xff
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE30:
	.size	get_button_status, .-get_button_status
	.section	.text.button_state,"ax",@progbits
	.align	1
	.globl	button_state
	.type	button_state, @function
button_state:
.LFB31:
	.loc 1 69 33 is_stmt 1
	.cfi_startproc
	.loc 1 70 5
	.loc 1 71 5
	.loc 1 72 5
	.loc 1 73 5
	.loc 1 75 5
	.loc 1 69 33 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	.loc 1 75 28
	lui	s0,%hi(.LANCHOR2)
	.loc 1 69 33
	sw	ra,12(sp)
	sw	s1,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.loc 1 75 28
	addi	s0,s0,%lo(.LANCHOR2)
	.loc 1 75 8
	call	xTaskGetTickCount
.LVL5:
	.loc 1 75 28
	lw	a5,0(s0)
	.loc 1 75 42
	lui	a4,%hi(.LANCHOR3)
	.loc 1 75 7
	lw	a3,%lo(.LANCHOR3)(a4)
	.loc 1 75 28
	sub	a5,a0,a5
	li	a0,0
	.loc 1 75 7
	bltu	a5,a3,.L6
	addi	s1,a4,%lo(.LANCHOR3)
.LBB8:
.LBB9:
	.loc 1 79 5 is_stmt 1
	.loc 1 79 19 is_stmt 0
	call	xTaskGetTickCount
.LVL6:
	.loc 1 79 17
	sw	a0,0(s0)
	.loc 1 80 5 is_stmt 1
	lui	s0,%hi(.LANCHOR4)
	lbu	a5,%lo(.LANCHOR4)(s0)
	li	a4,4
	addi	s0,s0,%lo(.LANCHOR4)
	bgtu	a5,a4,.L8
	lui	a4,%hi(.L10)
	slli	a5,a5,2
	addi	a4,a4,%lo(.L10)
	add	a5,a5,a4
	lw	a5,0(a5)
	jr	a5
	.section	.rodata.button_state,"a",@progbits
	.align	2
	.align	2
.L10:
	.word	.L14
	.word	.L21
	.word	.L12
	.word	.L11
	.word	.L9
	.section	.text.button_state
.L14:
	.loc 1 82 13
	.loc 1 82 16 is_stmt 0
	call	get_button_status
.LVL7:
	.loc 1 82 15
	bne	a0,zero,.L8
	.loc 1 83 17 is_stmt 1
	.loc 1 83 24 is_stmt 0
	li	a5,3
	sb	a5,0(s0)
	.loc 1 84 17 is_stmt 1
	.loc 1 84 30 is_stmt 0
	li	a5,50
	sw	a5,0(s1)
.L8:
	.loc 1 121 5 is_stmt 1
	.loc 1 121 12 is_stmt 0
	lbu	a0,0(s0)
.L6:
.LBE9:
.LBE8:
	.loc 1 122 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L12:
	.cfi_restore_state
.LBB11:
.LBB10:
	.loc 1 96 13 is_stmt 1
	.loc 1 96 15 is_stmt 0
	lui	a5,%hi(.LANCHOR5)
	lbu	a5,%lo(.LANCHOR5)(a5)
	bne	a5,zero,.L8
.L21:
	.loc 1 97 17 is_stmt 1
	.loc 1 97 24 is_stmt 0
	sb	zero,0(s0)
	j	.L8
.L11:
	.loc 1 103 13 is_stmt 1
	.loc 1 103 16 is_stmt 0
	call	get_button_status
.LVL8:
	.loc 1 103 15
	bne	a0,zero,.L8
	.loc 1 104 17 is_stmt 1
	.loc 1 104 24 is_stmt 0
	li	a5,4
	sb	a5,0(s0)
	.loc 1 105 17 is_stmt 1
	.loc 1 105 35 is_stmt 0
	call	xTaskGetTickCount
.LVL9:
	.loc 1 105 33
	lui	a5,%hi(.LANCHOR6)
	sw	a0,%lo(.LANCHOR6)(a5)
	j	.L8
.L9:
	.loc 1 110 13 is_stmt 1
	.loc 1 110 16 is_stmt 0
	call	get_button_status
.LVL10:
	.loc 1 110 15
	li	a5,1
	.loc 1 110 16
	mv	s1,a0
	.loc 1 110 15
	bne	a0,a5,.L8
	.loc 1 111 17 is_stmt 1
	.loc 1 111 20 is_stmt 0
	call	xTaskGetTickCount
.LVL11:
	.loc 1 111 40
	lui	a5,%hi(.LANCHOR6)
	addi	a5,a5,%lo(.LANCHOR6)
	lw	a4,0(a5)
	sub	a0,a0,a4
	.loc 1 111 19
	li	a4,4096
	addi	a4,a4,903
	bleu	a0,a4,.L17
	.loc 1 112 21 is_stmt 1
	.loc 1 112 28 is_stmt 0
	li	a4,2
	sb	a4,0(s0)
	.loc 1 113 21 is_stmt 1
.L22:
	.loc 1 116 21
	.loc 1 116 37 is_stmt 0
	sw	zero,0(a5)
	j	.L8
.L17:
	.loc 1 115 21 is_stmt 1
	.loc 1 115 28 is_stmt 0
	sb	s1,0(s0)
	j	.L22
.LBE10:
.LBE11:
	.cfi_endproc
.LFE31:
	.size	button_state, .-button_state
	.section	.rodata.button_manual_task.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"\r\nPRINT CLICK\r\n"
	.align	2
.LC1:
	.string	"main_entry"
	.section	.text.button_manual_task,"ax",@progbits
	.align	1
	.globl	button_manual_task
	.type	button_manual_task, @function
button_manual_task:
.LFB32:
	.loc 1 126 37 is_stmt 1
	.cfi_startproc
.LVL12:
	.loc 1 128 5
	.loc 1 126 37 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	.loc 1 128 5
	li	a2,0
	li	a1,1
	li	a0,21
.LVL13:
	.loc 1 126 37
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	s6,16(sp)
	sw	s7,12(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.loc 1 128 5
	call	bl_gpio_enable_input
.LVL14:
	.loc 1 129 5 is_stmt 1
	li	a2,0
	li	a1,0
	li	a0,3
	call	bl_gpio_enable_output
.LVL15:
	.loc 1 131 5
	.loc 1 135 11 is_stmt 0
	li	s0,1
	.loc 1 140 11
	li	s2,2
	.loc 1 142 23
	lui	s3,%hi(.LANCHOR5)
	.loc 1 149 31
	lui	s1,%hi(.LANCHOR7)
	.loc 1 150 17
	lui	s4,%hi(.LC1)
	lui	s5,%hi(proc_main_entry)
	.loc 1 136 13
	lui	s6,%hi(.LC0)
	.loc 1 137 26
	lui	s7,%hi(.LANCHOR1)
.LVL16:
.L28:
	.loc 1 133 5 is_stmt 1
	.loc 1 134 9
	.loc 1 134 25 is_stmt 0
	call	button_state
.LVL17:
	.loc 1 134 23
	andi	a0,a0,0xff
.LVL18:
	.loc 1 135 9 is_stmt 1
	.loc 1 135 11 is_stmt 0
	bne	a0,s0,.L24
	.loc 1 136 13 is_stmt 1
	addi	a0,s6,%lo(.LC0)
.LVL19:
	call	printf
.LVL20:
	.loc 1 137 13
	.loc 1 137 26 is_stmt 0
	addi	a5,s7,%lo(.LANCHOR1)
	lbu	a1,0(a5)
	.loc 1 138 13
	li	a0,3
	.loc 1 137 26
	seqz	a1,a1
	.loc 1 137 24
	sb	a1,0(a5)
	.loc 1 138 13 is_stmt 1
	call	bl_gpio_output_set
.LVL21:
	.loc 1 140 9
.L25:
	.loc 1 153 9
	li	a0,50
	call	vTaskDelay
.LVL22:
	.loc 1 133 11
	.loc 1 134 23 is_stmt 0
	j	.L28
.LVL23:
.L24:
	.loc 1 140 9 is_stmt 1
	.loc 1 140 11 is_stmt 0
	bne	a0,s2,.L25
	.loc 1 142 13 is_stmt 1
	.loc 1 142 23 is_stmt 0
	sb	s0,%lo(.LANCHOR5)(s3)
	.loc 1 143 13 is_stmt 1
	call	blink_led_200
.LVL24:
	.loc 1 149 13
	.loc 1 149 15 is_stmt 0
	lw	a5,%lo(.LANCHOR7)(s1)
	bne	a5,zero,.L25
	.loc 1 150 17 is_stmt 1
	addi	a5,s1,%lo(.LANCHOR7)
	li	a4,15
	li	a3,0
	li	a2,1024
	addi	a1,s4,%lo(.LC1)
	addi	a0,s5,%lo(proc_main_entry)
	call	xTaskCreate
.LVL25:
	j	.L25
	.cfi_endproc
.LFE32:
	.size	button_manual_task, .-button_manual_task
	.globl	mainTaskHandle
	.section	.sbss.IS_CONFIG,"aw",@nobits
	.set	.LANCHOR5,. + 0
	.type	IS_CONFIG, @object
	.size	IS_CONFIG, 1
IS_CONFIG:
	.zero	1
	.section	.sbss.led_status,"aw",@nobits
	.set	.LANCHOR1,. + 0
	.type	led_status, @object
	.size	led_status, 1
led_status:
	.zero	1
	.section	.sbss.mainTaskHandle,"aw",@nobits
	.align	2
	.set	.LANCHOR7,. + 0
	.type	mainTaskHandle, @object
	.size	mainTaskHandle, 4
mainTaskHandle:
	.zero	4
	.section	.sbss.old_tick_ms.3,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	old_tick_ms.3, @object
	.size	old_tick_ms.3, 4
old_tick_ms.3:
	.zero	4
	.section	.sbss.old_tick_ms.4,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	old_tick_ms.4, @object
	.size	old_tick_ms.4, 4
old_tick_ms.4:
	.zero	4
	.section	.sbss.status.1,"aw",@nobits
	.set	.LANCHOR4,. + 0
	.type	status.1, @object
	.size	status.1, 1
status.1:
	.zero	1
	.section	.sbss.time_long_click.0,"aw",@nobits
	.align	2
	.set	.LANCHOR6,. + 0
	.type	time_long_click.0, @object
	.size	time_long_click.0, 4
time_long_click.0:
	.zero	4
	.section	.sbss.time_to_wait.2,"aw",@nobits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	time_to_wait.2, @object
	.size	time_to_wait.2, 4
time_to_wait.2:
	.zero	4
	.text
.Letext0:
	.file 2 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 4 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
	.file 5 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_pm.h"
	.file 6 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/wifi/include/bl60x_fw_api.h"
	.file 7 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/memp.h"
	.file 8 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/button.h"
	.file 9 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_gpio.h"
	.file 10 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x501
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF77
	.byte	0xc
	.4byte	.LASF78
	.4byte	.LASF79
	.4byte	.Ldebug_ranges0+0x18
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
	.byte	0x5
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x46
	.byte	0x25
	.4byte	0x98
	.byte	0x6
	.byte	0x4
	.4byte	0x9e
	.byte	0x7
	.4byte	.LASF80
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x7
	.byte	0x34
	.byte	0xe
	.4byte	0x112
	.byte	0x9
	.4byte	.LASF13
	.byte	0
	.byte	0x9
	.4byte	.LASF14
	.byte	0x1
	.byte	0x9
	.4byte	.LASF15
	.byte	0x2
	.byte	0x9
	.4byte	.LASF16
	.byte	0x3
	.byte	0x9
	.4byte	.LASF17
	.byte	0x4
	.byte	0x9
	.4byte	.LASF18
	.byte	0x5
	.byte	0x9
	.4byte	.LASF19
	.byte	0x6
	.byte	0x9
	.4byte	.LASF20
	.byte	0x7
	.byte	0x9
	.4byte	.LASF21
	.byte	0x8
	.byte	0x9
	.4byte	.LASF22
	.byte	0x9
	.byte	0x9
	.4byte	.LASF23
	.byte	0xa
	.byte	0x9
	.4byte	.LASF24
	.byte	0xb
	.byte	0x9
	.4byte	.LASF25
	.byte	0xc
	.byte	0x9
	.4byte	.LASF26
	.byte	0xd
	.byte	0x9
	.4byte	.LASF27
	.byte	0xe
	.byte	0x9
	.4byte	.LASF28
	.byte	0xf
	.byte	0
	.byte	0xa
	.4byte	.LASF32
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x4
	.byte	0x71
	.byte	0x6
	.4byte	0x137
	.byte	0x9
	.4byte	.LASF29
	.byte	0
	.byte	0x9
	.4byte	.LASF30
	.byte	0x1
	.byte	0x9
	.4byte	.LASF31
	.byte	0x2
	.byte	0
	.byte	0xa
	.4byte	.LASF33
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x5
	.byte	0x34
	.byte	0x6
	.4byte	0x17a
	.byte	0x9
	.4byte	.LASF34
	.byte	0
	.byte	0x9
	.4byte	.LASF35
	.byte	0x1
	.byte	0x9
	.4byte	.LASF36
	.byte	0x2
	.byte	0x9
	.4byte	.LASF37
	.byte	0x3
	.byte	0x9
	.4byte	.LASF38
	.byte	0x4
	.byte	0x9
	.4byte	.LASF39
	.byte	0x5
	.byte	0x9
	.4byte	.LASF40
	.byte	0x6
	.byte	0x9
	.4byte	.LASF41
	.byte	0x7
	.byte	0
	.byte	0xa
	.4byte	.LASF42
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x6
	.byte	0x9
	.byte	0xe
	.4byte	0x1db
	.byte	0x9
	.4byte	.LASF43
	.byte	0xff
	.byte	0x9
	.4byte	.LASF44
	.byte	0
	.byte	0x9
	.4byte	.LASF45
	.byte	0x1
	.byte	0x9
	.4byte	.LASF46
	.byte	0x2
	.byte	0x9
	.4byte	.LASF47
	.byte	0x3
	.byte	0x9
	.4byte	.LASF48
	.byte	0x4
	.byte	0x9
	.4byte	.LASF49
	.byte	0x5
	.byte	0x9
	.4byte	.LASF50
	.byte	0x6
	.byte	0x9
	.4byte	.LASF51
	.byte	0x7
	.byte	0x9
	.4byte	.LASF52
	.byte	0x8
	.byte	0x9
	.4byte	.LASF53
	.byte	0x8
	.byte	0x9
	.4byte	.LASF54
	.byte	0x9
	.byte	0x9
	.4byte	.LASF55
	.byte	0xa
	.byte	0
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x8
	.byte	0x13
	.byte	0xe
	.4byte	0x208
	.byte	0x9
	.4byte	.LASF56
	.byte	0
	.byte	0x9
	.4byte	.LASF57
	.byte	0x1
	.byte	0x9
	.4byte	.LASF58
	.byte	0x2
	.byte	0x9
	.4byte	.LASF59
	.byte	0x3
	.byte	0x9
	.4byte	.LASF60
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF61
	.byte	0x8
	.byte	0x19
	.byte	0x3
	.4byte	0x1db
	.byte	0xb
	.4byte	.LASF81
	.byte	0x1
	.byte	0x9
	.byte	0xe
	.4byte	0x8c
	.byte	0x5
	.byte	0x3
	.4byte	mainTaskHandle
	.byte	0xc
	.4byte	.LASF62
	.byte	0x1
	.byte	0xb
	.byte	0x10
	.4byte	0x41
	.byte	0x5
	.byte	0x3
	.4byte	led_status
	.byte	0xc
	.4byte	.LASF63
	.byte	0x1
	.byte	0xc
	.byte	0x10
	.4byte	0x41
	.byte	0x5
	.byte	0x3
	.4byte	IS_CONFIG
	.byte	0xd
	.4byte	.LASF82
	.byte	0x1
	.byte	0x7e
	.byte	0x6
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x1
	.byte	0x9c
	.4byte	0x338
	.byte	0xe
	.4byte	.LASF83
	.byte	0x1
	.byte	0x7e
	.byte	0x1f
	.4byte	0x83
	.4byte	.LLST0
	.byte	0xf
	.4byte	.LASF64
	.byte	0x1
	.byte	0x83
	.byte	0xd
	.4byte	0x41
	.4byte	.LLST1
	.byte	0x10
	.4byte	.LVL14
	.4byte	0x4a1
	.4byte	0x29d
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x45
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x10
	.4byte	.LVL15
	.4byte	0x4ad
	.4byte	0x2ba
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x12
	.4byte	.LVL17
	.4byte	0x338
	.byte	0x10
	.4byte	.LVL20
	.4byte	0x4b9
	.4byte	0x2da
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x10
	.4byte	.LVL21
	.4byte	0x4c5
	.4byte	0x2ed
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x10
	.4byte	.LVL22
	.4byte	0x4d1
	.4byte	0x301
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.byte	0x12
	.4byte	.LVL24
	.4byte	0x3bc
	.byte	0x13
	.4byte	.LVL25
	.4byte	0x4de
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x11
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x400
	.byte	0x11
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x11
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x3f
	.byte	0x11
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR7
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LASF84
	.byte	0x1
	.byte	0x45
	.byte	0xf
	.4byte	0x208
	.byte	0x1
	.4byte	0x392
	.byte	0xc
	.4byte	.LASF65
	.byte	0x1
	.byte	0x46
	.byte	0x14
	.4byte	0x41
	.byte	0x5
	.byte	0x3
	.4byte	status.1
	.byte	0xc
	.4byte	.LASF66
	.byte	0x1
	.byte	0x47
	.byte	0x15
	.4byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	time_to_wait.2
	.byte	0xc
	.4byte	.LASF67
	.byte	0x1
	.byte	0x48
	.byte	0x15
	.4byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	old_tick_ms.3
	.byte	0xc
	.4byte	.LASF68
	.byte	0x1
	.byte	0x49
	.byte	0x15
	.4byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	time_long_click.0
	.byte	0
	.byte	0x15
	.4byte	.LASF85
	.byte	0x1
	.byte	0x40
	.byte	0x9
	.4byte	0x41
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x1
	.byte	0x9c
	.4byte	0x3bc
	.byte	0x13
	.4byte	.LVL4
	.4byte	0x4eb
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x45
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LASF86
	.byte	0x1
	.byte	0x31
	.byte	0x6
	.byte	0x1
	.4byte	0x3dc
	.byte	0xc
	.4byte	.LASF67
	.byte	0x1
	.byte	0x32
	.byte	0x15
	.4byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	old_tick_ms.4
	.byte	0
	.byte	0x17
	.4byte	0x3bc
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x1
	.byte	0x9c
	.4byte	0x433
	.byte	0x18
	.4byte	0x3bc
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x31
	.byte	0x6
	.4byte	0x429
	.byte	0x12
	.4byte	.LVL1
	.4byte	0x4f7
	.byte	0x10
	.4byte	.LVL2
	.4byte	0x4c5
	.4byte	0x41f
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x12
	.4byte	.LVL3
	.4byte	0x4f7
	.byte	0
	.byte	0x12
	.4byte	.LVL0
	.4byte	0x4f7
	.byte	0
	.byte	0x17
	.4byte	0x338
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x1
	.byte	0x9c
	.4byte	0x4a1
	.byte	0x19
	.4byte	0x338
	.4byte	.LBB8
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x45
	.byte	0xf
	.4byte	0x497
	.byte	0x1a
	.4byte	.Ldebug_ranges0+0
	.byte	0x12
	.4byte	.LVL6
	.4byte	0x4f7
	.byte	0x12
	.4byte	.LVL7
	.4byte	0x392
	.byte	0x12
	.4byte	.LVL8
	.4byte	0x392
	.byte	0x12
	.4byte	.LVL9
	.4byte	0x4f7
	.byte	0x12
	.4byte	.LVL10
	.4byte	0x392
	.byte	0x12
	.4byte	.LVL11
	.4byte	0x4f7
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LVL5
	.4byte	0x4f7
	.byte	0
	.byte	0x1b
	.4byte	.LASF69
	.4byte	.LASF69
	.byte	0x9
	.byte	0x10
	.byte	0x5
	.byte	0x1b
	.4byte	.LASF70
	.4byte	.LASF70
	.byte	0x9
	.byte	0xf
	.byte	0x5
	.byte	0x1b
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0xa
	.byte	0xc8
	.byte	0x5
	.byte	0x1b
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0x9
	.byte	0x11
	.byte	0x5
	.byte	0x1c
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x3
	.2byte	0x2f6
	.byte	0x6
	.byte	0x1c
	.4byte	.LASF74
	.4byte	.LASF74
	.byte	0x3
	.2byte	0x14a
	.byte	0xd
	.byte	0x1b
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0x9
	.byte	0x13
	.byte	0x5
	.byte	0x1c
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0x3
	.2byte	0x547
	.byte	0xc
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
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
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
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0x16
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0x18
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x1a
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23
	.4byte	.LVL24-1
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
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	0
	.4byte	0
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF18:
	.string	"MEMP_ALTCP_PCB"
.LASF61:
	.string	"button_states"
.LASF32:
	.string	"lwip_internal_netif_client_data_index"
.LASF34:
	.string	"PM_MODE_STA_NONE"
.LASF1:
	.string	"short int"
.LASF17:
	.string	"MEMP_TCP_SEG"
.LASF33:
	.string	"PM_LEVEL"
.LASF12:
	.string	"TaskHandle_t"
.LASF9:
	.string	"long long unsigned int"
.LASF48:
	.string	"TASK_SM"
.LASF22:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF24:
	.string	"MEMP_SYS_TIMEOUT"
.LASF50:
	.string	"TASK_BAM"
.LASF41:
	.string	"PM_MODE_MAX"
.LASF6:
	.string	"uint8_t"
.LASF66:
	.string	"time_to_wait"
.LASF16:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF82:
	.string	"button_manual_task"
.LASF67:
	.string	"old_tick_ms"
.LASF7:
	.string	"uint32_t"
.LASF54:
	.string	"TASK_API"
.LASF25:
	.string	"MEMP_NETDB"
.LASF49:
	.string	"TASK_APM"
.LASF36:
	.string	"PM_MODE_STA_MESH"
.LASF72:
	.string	"bl_gpio_output_set"
.LASF86:
	.string	"blink_led_200"
.LASF3:
	.string	"long long int"
.LASF58:
	.string	"CONFIG"
.LASF69:
	.string	"bl_gpio_enable_input"
.LASF59:
	.string	"HOLD_BUTTON"
.LASF2:
	.string	"long int"
.LASF52:
	.string	"TASK_CFG"
.LASF31:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF71:
	.string	"printf"
.LASF80:
	.string	"tskTaskControlBlock"
.LASF40:
	.string	"PM_MODE_AP_IDLE"
.LASF76:
	.string	"xTaskGetTickCount"
.LASF70:
	.string	"bl_gpio_enable_output"
.LASF64:
	.string	"button_status"
.LASF29:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF43:
	.string	"TASK_NONE"
.LASF46:
	.string	"TASK_SCANU"
.LASF4:
	.string	"unsigned char"
.LASF51:
	.string	"TASK_RXU"
.LASF35:
	.string	"PM_MODE_STA_IDLE"
.LASF60:
	.string	"HOLD_BUTTON_LONG"
.LASF28:
	.string	"MEMP_MAX"
.LASF0:
	.string	"signed char"
.LASF30:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF73:
	.string	"vTaskDelay"
.LASF10:
	.string	"unsigned int"
.LASF44:
	.string	"TASK_MM"
.LASF81:
	.string	"mainTaskHandle"
.LASF23:
	.string	"MEMP_IGMP_GROUP"
.LASF83:
	.string	"param"
.LASF65:
	.string	"status"
.LASF5:
	.string	"short unsigned int"
.LASF42:
	.string	"wifi_fw_task_id"
.LASF56:
	.string	"NO_CLICK"
.LASF85:
	.string	"get_button_status"
.LASF11:
	.string	"char"
.LASF21:
	.string	"MEMP_TCPIP_MSG_API"
.LASF37:
	.string	"PM_MODE_STA_DOZE"
.LASF62:
	.string	"led_status"
.LASF75:
	.string	"bl_gpio_input_get_value"
.LASF74:
	.string	"xTaskCreate"
.LASF26:
	.string	"MEMP_PBUF"
.LASF45:
	.string	"TASK_SCAN"
.LASF68:
	.string	"time_long_click"
.LASF8:
	.string	"long unsigned int"
.LASF13:
	.string	"MEMP_RAW_PCB"
.LASF84:
	.string	"button_state"
.LASF78:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/button.c"
.LASF27:
	.string	"MEMP_PBUF_POOL"
.LASF79:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/build_out/config_wifi"
.LASF20:
	.string	"MEMP_NETCONN"
.LASF38:
	.string	"PM_MODE_STA_COEX"
.LASF15:
	.string	"MEMP_TCP_PCB"
.LASF39:
	.string	"PM_MODE_STA_DOWN"
.LASF53:
	.string	"TASK_LAST_EMB"
.LASF14:
	.string	"MEMP_UDP_PCB"
.LASF63:
	.string	"IS_CONFIG"
.LASF55:
	.string	"TASK_MAX"
.LASF57:
	.string	"CLICK"
.LASF47:
	.string	"TASK_ME"
.LASF19:
	.string	"MEMP_NETBUF"
.LASF77:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
