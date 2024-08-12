	.file	"button.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.set_is_config,"ax",@progbits
	.align	1
	.globl	set_is_config
	.type	set_is_config, @function
set_is_config:
.LFB29:
	.file 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/button.c"
	.loc 1 18 34
	.cfi_startproc
.LVL0:
	.loc 1 19 5
	.loc 1 19 15 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	sb	a0,%lo(.LANCHOR0)(a5)
	.loc 1 20 1
	ret
	.cfi_endproc
.LFE29:
	.size	set_is_config, .-set_is_config
	.section	.text.reset_flag,"ax",@progbits
	.align	1
	.globl	reset_flag
	.type	reset_flag, @function
reset_flag:
.LFB30:
	.loc 1 22 31 is_stmt 1
	.cfi_startproc
.LVL1:
	.loc 1 23 5
	.loc 1 23 10 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	sb	zero,%lo(.LANCHOR1)(a5)
	.loc 1 24 1
	ret
	.cfi_endproc
.LFE30:
	.size	reset_flag, .-reset_flag
	.section	.text.blink_led_200,"ax",@progbits
	.align	1
	.globl	blink_led_200
	.type	blink_led_200, @function
blink_led_200:
.LFB31:
	.loc 1 26 25 is_stmt 1
	.cfi_startproc
	.loc 1 27 5
	.loc 1 29 5
	.loc 1 26 25 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	.loc 1 29 28
	lui	s0,%hi(.LANCHOR2)
	.loc 1 26 25
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 29 28
	addi	s0,s0,%lo(.LANCHOR2)
	.loc 1 29 8
	call	xTaskGetTickCount
.LVL2:
	.loc 1 29 28
	lw	a5,0(s0)
	sub	a0,a0,a5
	.loc 1 29 7
	li	a5,199
	bleu	a0,a5,.L3
.LBB4:
.LBB5:
	.loc 1 33 5 is_stmt 1
	.loc 1 33 19 is_stmt 0
	call	xTaskGetTickCount
.LVL3:
	.loc 1 35 18
	lui	a5,%hi(.LANCHOR3)
	addi	a5,a5,%lo(.LANCHOR3)
	lbu	a1,0(a5)
	.loc 1 33 17
	sw	a0,0(s0)
	.loc 1 35 5 is_stmt 1
	.loc 1 36 5 is_stmt 0
	li	a0,3
	.loc 1 35 18
	seqz	a1,a1
	.loc 1 35 16
	sb	a1,0(a5)
	.loc 1 36 5 is_stmt 1
	call	bl_gpio_output_set
.LVL4:
	.loc 1 37 5
	.loc 1 37 19 is_stmt 0
	call	xTaskGetTickCount
.LVL5:
	.loc 1 37 17
	sw	a0,0(s0)
.L3:
.LBE5:
.LBE4:
	.loc 1 39 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE31:
	.size	blink_led_200, .-blink_led_200
	.section	.text.get_button_status,"ax",@progbits
	.align	1
	.globl	get_button_status
	.type	get_button_status, @function
get_button_status:
.LFB32:
	.loc 1 41 32 is_stmt 1
	.cfi_startproc
	.loc 1 42 5
	.loc 1 41 32 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 42 12
	li	a0,21
	.loc 1 41 32
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 42 12
	call	bl_gpio_input_get_value
.LVL6:
	.loc 1 43 1
	lw	ra,12(sp)
	.cfi_restore 1
	andi	a0,a0,0xff
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE32:
	.size	get_button_status, .-get_button_status
	.section	.text.button_state,"ax",@progbits
	.align	1
	.globl	button_state
	.type	button_state, @function
button_state:
.LFB33:
	.loc 1 46 33 is_stmt 1
	.cfi_startproc
	.loc 1 47 5
	.loc 1 48 5
	.loc 1 49 5
	.loc 1 50 5
	.loc 1 52 5
	.loc 1 46 33 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	.loc 1 52 28
	lui	s0,%hi(.LANCHOR4)
	.loc 1 46 33
	sw	ra,12(sp)
	sw	s1,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.loc 1 52 28
	addi	s0,s0,%lo(.LANCHOR4)
	.loc 1 52 8
	call	xTaskGetTickCount
.LVL7:
	.loc 1 52 28
	lw	a5,0(s0)
	.loc 1 52 42
	lui	a4,%hi(.LANCHOR5)
	.loc 1 52 7
	lw	a3,%lo(.LANCHOR5)(a4)
	.loc 1 52 28
	sub	a5,a0,a5
	li	a0,0
	.loc 1 52 7
	bltu	a5,a3,.L8
	addi	s1,a4,%lo(.LANCHOR5)
.LBB8:
.LBB9:
	.loc 1 56 5 is_stmt 1
	.loc 1 56 19 is_stmt 0
	call	xTaskGetTickCount
.LVL8:
	.loc 1 56 17
	sw	a0,0(s0)
	.loc 1 57 5 is_stmt 1
	lui	s0,%hi(.LANCHOR6)
	lbu	a5,%lo(.LANCHOR6)(s0)
	li	a4,4
	addi	s0,s0,%lo(.LANCHOR6)
	bgtu	a5,a4,.L10
	lui	a4,%hi(.L12)
	slli	a5,a5,2
	addi	a4,a4,%lo(.L12)
	add	a5,a5,a4
	lw	a5,0(a5)
	jr	a5
	.section	.rodata.button_state,"a",@progbits
	.align	2
	.align	2
.L12:
	.word	.L16
	.word	.L23
	.word	.L14
	.word	.L13
	.word	.L11
	.section	.text.button_state
.L16:
	.loc 1 59 13
	.loc 1 59 16 is_stmt 0
	call	get_button_status
.LVL9:
	.loc 1 59 15
	bne	a0,zero,.L10
	.loc 1 60 17 is_stmt 1
	.loc 1 60 24 is_stmt 0
	li	a5,3
	sb	a5,0(s0)
	.loc 1 61 17 is_stmt 1
	.loc 1 61 30 is_stmt 0
	li	a5,50
	sw	a5,0(s1)
.L10:
	.loc 1 98 5 is_stmt 1
	.loc 1 98 12 is_stmt 0
	lbu	a0,0(s0)
.L8:
.LBE9:
.LBE8:
	.loc 1 99 1
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
.L14:
	.cfi_restore_state
.LBB11:
.LBB10:
	.loc 1 73 13 is_stmt 1
	.loc 1 73 15 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	lbu	a5,%lo(.LANCHOR0)(a5)
	bne	a5,zero,.L10
.L23:
	.loc 1 74 17 is_stmt 1
	.loc 1 74 24 is_stmt 0
	sb	zero,0(s0)
	j	.L10
.L13:
	.loc 1 80 13 is_stmt 1
	.loc 1 80 16 is_stmt 0
	call	get_button_status
.LVL10:
	.loc 1 80 15
	bne	a0,zero,.L10
	.loc 1 81 17 is_stmt 1
	.loc 1 81 24 is_stmt 0
	li	a5,4
	sb	a5,0(s0)
	.loc 1 82 17 is_stmt 1
	.loc 1 82 35 is_stmt 0
	call	xTaskGetTickCount
.LVL11:
	.loc 1 82 33
	lui	a5,%hi(.LANCHOR7)
	sw	a0,%lo(.LANCHOR7)(a5)
	j	.L10
.L11:
	.loc 1 87 13 is_stmt 1
	.loc 1 87 16 is_stmt 0
	call	get_button_status
.LVL12:
	.loc 1 87 15
	li	a5,1
	.loc 1 87 16
	mv	s1,a0
	.loc 1 87 15
	bne	a0,a5,.L10
	.loc 1 88 17 is_stmt 1
	.loc 1 88 20 is_stmt 0
	call	xTaskGetTickCount
.LVL13:
	.loc 1 88 40
	lui	a5,%hi(.LANCHOR7)
	addi	a5,a5,%lo(.LANCHOR7)
	lw	a4,0(a5)
	sub	a0,a0,a4
	.loc 1 88 19
	li	a4,4096
	addi	a4,a4,903
	bleu	a0,a4,.L19
	.loc 1 89 21 is_stmt 1
	.loc 1 89 28 is_stmt 0
	li	a4,2
	sb	a4,0(s0)
	.loc 1 90 21 is_stmt 1
.L24:
	.loc 1 93 21
	.loc 1 93 37 is_stmt 0
	sw	zero,0(a5)
	j	.L10
.L19:
	.loc 1 92 21 is_stmt 1
	.loc 1 92 28 is_stmt 0
	sb	s1,0(s0)
	j	.L24
.LBE10:
.LBE11:
	.cfi_endproc
.LFE33:
	.size	button_state, .-button_state
	.section	.rodata.button_manual_task.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"\r\nPRINT CLICK\r\n"
	.section	.text.button_manual_task,"ax",@progbits
	.align	1
	.globl	button_manual_task
	.type	button_manual_task, @function
button_manual_task:
.LFB34:
	.loc 1 102 37 is_stmt 1
	.cfi_startproc
.LVL14:
	.loc 1 104 5
	.loc 1 102 37 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 104 5
	li	a2,0
	li	a1,1
	li	a0,21
.LVL15:
	.loc 1 102 37
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	s5,4(sp)
	sw	s6,0(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 9, -12
	.loc 1 104 5
	call	bl_gpio_enable_input
.LVL16:
	.loc 1 105 5 is_stmt 1
	li	a2,0
	li	a1,0
	li	a0,3
	call	bl_gpio_enable_output
.LVL17:
	.loc 1 107 5
	.loc 1 112 11 is_stmt 0
	li	s0,1
	.loc 1 117 11
	li	s2,2
	.loc 1 119 23
	lui	s3,%hi(.LANCHOR0)
	.loc 1 121 21
	lui	s4,%hi(.LANCHOR1)
	.loc 1 113 13
	lui	s5,%hi(.LC0)
	.loc 1 114 26
	lui	s6,%hi(.LANCHOR3)
.LVL18:
.L30:
	.loc 1 110 5 is_stmt 1
	.loc 1 111 9
	.loc 1 111 25 is_stmt 0
	call	button_state
.LVL19:
	.loc 1 111 23
	andi	a0,a0,0xff
.LVL20:
	.loc 1 112 9 is_stmt 1
	.loc 1 112 11 is_stmt 0
	bne	a0,s0,.L26
	.loc 1 113 13 is_stmt 1
	addi	a0,s5,%lo(.LC0)
.LVL21:
	call	printf
.LVL22:
	.loc 1 114 13
	.loc 1 114 26 is_stmt 0
	addi	a5,s6,%lo(.LANCHOR3)
	lbu	a1,0(a5)
	.loc 1 115 13
	li	a0,3
	.loc 1 114 26
	seqz	a1,a1
	.loc 1 114 24
	sb	a1,0(a5)
	.loc 1 115 13 is_stmt 1
	call	bl_gpio_output_set
.LVL23:
	.loc 1 117 9
.L27:
	.loc 1 135 9
	li	a0,50
	call	vTaskDelay
.LVL24:
	.loc 1 110 11
	.loc 1 111 23 is_stmt 0
	j	.L30
.LVL25:
.L26:
	.loc 1 117 9 is_stmt 1
	.loc 1 117 11 is_stmt 0
	bne	a0,s2,.L27
	.loc 1 119 13 is_stmt 1
	.loc 1 119 23 is_stmt 0
	sb	s0,%lo(.LANCHOR0)(s3)
	.loc 1 120 13 is_stmt 1
	.loc 1 121 21 is_stmt 0
	addi	s1,s4,%lo(.LANCHOR1)
	.loc 1 120 13
	call	blink_led_200
.LVL26:
	.loc 1 121 13 is_stmt 1
	.loc 1 121 15 is_stmt 0
	lbu	a5,0(s1)
	bne	a5,zero,.L27
	.loc 1 122 17 is_stmt 1
	call	wifi_ap_start
.LVL27:
	.loc 1 124 17
	.loc 1 124 22 is_stmt 0
	sb	s0,0(s1)
	j	.L27
	.cfi_endproc
.LFE34:
	.size	button_manual_task, .-button_manual_task
	.section	.sbss.IS_CONFIG,"aw",@nobits
	.set	.LANCHOR0,. + 0
	.type	IS_CONFIG, @object
	.size	IS_CONFIG, 1
IS_CONFIG:
	.zero	1
	.section	.sbss.flag,"aw",@nobits
	.set	.LANCHOR1,. + 0
	.type	flag, @object
	.size	flag, 1
flag:
	.zero	1
	.section	.sbss.led_status,"aw",@nobits
	.set	.LANCHOR3,. + 0
	.type	led_status, @object
	.size	led_status, 1
led_status:
	.zero	1
	.section	.sbss.old_tick_ms.3,"aw",@nobits
	.align	2
	.set	.LANCHOR4,. + 0
	.type	old_tick_ms.3, @object
	.size	old_tick_ms.3, 4
old_tick_ms.3:
	.zero	4
	.section	.sbss.old_tick_ms.4,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	old_tick_ms.4, @object
	.size	old_tick_ms.4, 4
old_tick_ms.4:
	.zero	4
	.section	.sbss.status.1,"aw",@nobits
	.set	.LANCHOR6,. + 0
	.type	status.1, @object
	.size	status.1, 1
status.1:
	.zero	1
	.section	.sbss.time_long_click.0,"aw",@nobits
	.align	2
	.set	.LANCHOR7,. + 0
	.type	time_long_click.0, @object
	.size	time_long_click.0, 4
time_long_click.0:
	.zero	4
	.section	.sbss.time_to_wait.2,"aw",@nobits
	.align	2
	.set	.LANCHOR5,. + 0
	.type	time_to_wait.2, @object
	.size	time_to_wait.2, 4
time_to_wait.2:
	.zero	4
	.text
.Letext0:
	.file 2 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
	.file 4 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_pm.h"
	.file 5 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/wifi/include/bl60x_fw_api.h"
	.file 6 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/memp.h"
	.file 7 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/button.h"
	.file 8 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_gpio.h"
	.file 9 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 10 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 11 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/ap.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x524
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF85
	.byte	0xc
	.4byte	.LASF86
	.4byte	.LASF87
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
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x6
	.byte	0x34
	.byte	0xe
	.4byte	0xfb
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
	.byte	0x7
	.4byte	.LASF18
	.byte	0x6
	.byte	0x7
	.4byte	.LASF19
	.byte	0x7
	.byte	0x7
	.4byte	.LASF20
	.byte	0x8
	.byte	0x7
	.4byte	.LASF21
	.byte	0x9
	.byte	0x7
	.4byte	.LASF22
	.byte	0xa
	.byte	0x7
	.4byte	.LASF23
	.byte	0xb
	.byte	0x7
	.4byte	.LASF24
	.byte	0xc
	.byte	0x7
	.4byte	.LASF25
	.byte	0xd
	.byte	0x7
	.4byte	.LASF26
	.byte	0xe
	.byte	0x7
	.4byte	.LASF27
	.byte	0xf
	.byte	0
	.byte	0x8
	.4byte	.LASF31
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x3
	.byte	0x71
	.byte	0x6
	.4byte	0x120
	.byte	0x7
	.4byte	.LASF28
	.byte	0
	.byte	0x7
	.4byte	.LASF29
	.byte	0x1
	.byte	0x7
	.4byte	.LASF30
	.byte	0x2
	.byte	0
	.byte	0x8
	.4byte	.LASF32
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x4
	.byte	0x34
	.byte	0x6
	.4byte	0x163
	.byte	0x7
	.4byte	.LASF33
	.byte	0
	.byte	0x7
	.4byte	.LASF34
	.byte	0x1
	.byte	0x7
	.4byte	.LASF35
	.byte	0x2
	.byte	0x7
	.4byte	.LASF36
	.byte	0x3
	.byte	0x7
	.4byte	.LASF37
	.byte	0x4
	.byte	0x7
	.4byte	.LASF38
	.byte	0x5
	.byte	0x7
	.4byte	.LASF39
	.byte	0x6
	.byte	0x7
	.4byte	.LASF40
	.byte	0x7
	.byte	0
	.byte	0x8
	.4byte	.LASF41
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x5
	.byte	0x9
	.byte	0xe
	.4byte	0x1c4
	.byte	0x7
	.4byte	.LASF42
	.byte	0xff
	.byte	0x7
	.4byte	.LASF43
	.byte	0
	.byte	0x7
	.4byte	.LASF44
	.byte	0x1
	.byte	0x7
	.4byte	.LASF45
	.byte	0x2
	.byte	0x7
	.4byte	.LASF46
	.byte	0x3
	.byte	0x7
	.4byte	.LASF47
	.byte	0x4
	.byte	0x7
	.4byte	.LASF48
	.byte	0x5
	.byte	0x7
	.4byte	.LASF49
	.byte	0x6
	.byte	0x7
	.4byte	.LASF50
	.byte	0x7
	.byte	0x7
	.4byte	.LASF51
	.byte	0x8
	.byte	0x7
	.4byte	.LASF52
	.byte	0x8
	.byte	0x7
	.4byte	.LASF53
	.byte	0x9
	.byte	0x7
	.4byte	.LASF54
	.byte	0xa
	.byte	0
	.byte	0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF55
	.byte	0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF56
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF57
	.byte	0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x7
	.byte	0x13
	.byte	0xe
	.4byte	0x206
	.byte	0x7
	.4byte	.LASF58
	.byte	0
	.byte	0x7
	.4byte	.LASF59
	.byte	0x1
	.byte	0x7
	.4byte	.LASF60
	.byte	0x2
	.byte	0x7
	.4byte	.LASF61
	.byte	0x3
	.byte	0x7
	.4byte	.LASF62
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF63
	.byte	0x7
	.byte	0x19
	.byte	0x3
	.4byte	0x1d9
	.byte	0x9
	.4byte	.LASF64
	.byte	0x1
	.byte	0xb
	.byte	0x10
	.4byte	0x41
	.byte	0x5
	.byte	0x3
	.4byte	led_status
	.byte	0x9
	.4byte	.LASF65
	.byte	0x1
	.byte	0xc
	.byte	0x10
	.4byte	0x41
	.byte	0x5
	.byte	0x3
	.4byte	IS_CONFIG
	.byte	0x9
	.4byte	.LASF66
	.byte	0x1
	.byte	0xd
	.byte	0x10
	.4byte	0x41
	.byte	0x5
	.byte	0x3
	.4byte	flag
	.byte	0xa
	.4byte	.LASF72
	.byte	0x1
	.byte	0x66
	.byte	0x6
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x1
	.byte	0x9c
	.4byte	0x312
	.byte	0xb
	.4byte	.LASF74
	.byte	0x1
	.byte	0x66
	.byte	0x1f
	.4byte	0x83
	.4byte	.LLST0
	.byte	0xc
	.4byte	.LASF67
	.byte	0x1
	.byte	0x6b
	.byte	0xd
	.4byte	0x41
	.4byte	.LLST1
	.byte	0xd
	.4byte	.LVL16
	.4byte	0x4c5
	.4byte	0x29b
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x45
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0xe
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xd
	.4byte	.LVL17
	.4byte	0x4d1
	.4byte	0x2b8
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0xe
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xf
	.4byte	.LVL19
	.4byte	0x312
	.byte	0xd
	.4byte	.LVL22
	.4byte	0x4dd
	.4byte	0x2d8
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0xd
	.4byte	.LVL23
	.4byte	0x4e9
	.4byte	0x2eb
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0xd
	.4byte	.LVL24
	.4byte	0x4f5
	.4byte	0x2ff
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.byte	0xf
	.4byte	.LVL26
	.4byte	0x396
	.byte	0xf
	.4byte	.LVL27
	.4byte	0x502
	.byte	0
	.byte	0x10
	.4byte	.LASF88
	.byte	0x1
	.byte	0x2e
	.byte	0xf
	.4byte	0x206
	.byte	0x1
	.4byte	0x36c
	.byte	0x9
	.4byte	.LASF68
	.byte	0x1
	.byte	0x2f
	.byte	0x14
	.4byte	0x41
	.byte	0x5
	.byte	0x3
	.4byte	status.1
	.byte	0x9
	.4byte	.LASF69
	.byte	0x1
	.byte	0x30
	.byte	0x15
	.4byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	time_to_wait.2
	.byte	0x9
	.4byte	.LASF70
	.byte	0x1
	.byte	0x31
	.byte	0x15
	.4byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	old_tick_ms.3
	.byte	0x9
	.4byte	.LASF71
	.byte	0x1
	.byte	0x32
	.byte	0x15
	.4byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	time_long_click.0
	.byte	0
	.byte	0x11
	.4byte	.LASF89
	.byte	0x1
	.byte	0x29
	.byte	0x9
	.4byte	0x41
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x1
	.byte	0x9c
	.4byte	0x396
	.byte	0x12
	.4byte	.LVL6
	.4byte	0x50e
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x45
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LASF90
	.byte	0x1
	.byte	0x1a
	.byte	0x6
	.byte	0x1
	.4byte	0x3b6
	.byte	0x9
	.4byte	.LASF70
	.byte	0x1
	.byte	0x1b
	.byte	0x15
	.4byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	old_tick_ms.4
	.byte	0
	.byte	0xa
	.4byte	.LASF73
	.byte	0x1
	.byte	0x16
	.byte	0x6
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x1
	.byte	0x9c
	.4byte	0x3db
	.byte	0x14
	.4byte	.LASF75
	.byte	0x1
	.byte	0x16
	.byte	0x19
	.4byte	0x41
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0xa
	.4byte	.LASF76
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x1
	.byte	0x9c
	.4byte	0x400
	.byte	0x14
	.4byte	.LASF75
	.byte	0x1
	.byte	0x12
	.byte	0x1c
	.4byte	0x41
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x15
	.4byte	0x396
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x1
	.byte	0x9c
	.4byte	0x457
	.byte	0x16
	.4byte	0x396
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x1a
	.byte	0x6
	.4byte	0x44d
	.byte	0xf
	.4byte	.LVL3
	.4byte	0x51a
	.byte	0xd
	.4byte	.LVL4
	.4byte	0x4e9
	.4byte	0x443
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0xf
	.4byte	.LVL5
	.4byte	0x51a
	.byte	0
	.byte	0xf
	.4byte	.LVL2
	.4byte	0x51a
	.byte	0
	.byte	0x15
	.4byte	0x312
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x1
	.byte	0x9c
	.4byte	0x4c5
	.byte	0x17
	.4byte	0x312
	.4byte	.LBB8
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x2e
	.byte	0xf
	.4byte	0x4bb
	.byte	0x18
	.4byte	.Ldebug_ranges0+0
	.byte	0xf
	.4byte	.LVL8
	.4byte	0x51a
	.byte	0xf
	.4byte	.LVL9
	.4byte	0x36c
	.byte	0xf
	.4byte	.LVL10
	.4byte	0x36c
	.byte	0xf
	.4byte	.LVL11
	.4byte	0x51a
	.byte	0xf
	.4byte	.LVL12
	.4byte	0x36c
	.byte	0xf
	.4byte	.LVL13
	.4byte	0x51a
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LVL7
	.4byte	0x51a
	.byte	0
	.byte	0x19
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0x8
	.byte	0x10
	.byte	0x5
	.byte	0x19
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x8
	.byte	0xf
	.byte	0x5
	.byte	0x19
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x9
	.byte	0xc8
	.byte	0x5
	.byte	0x19
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x8
	.byte	0x11
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0xa
	.2byte	0x2f6
	.byte	0x6
	.byte	0x19
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0xb
	.byte	0x1a
	.byte	0x6
	.byte	0x19
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0x8
	.byte	0x13
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0xa
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
	.byte	0x2
	.byte	0x18
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
	.byte	0x17
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
	.byte	0
	.byte	0x11
	.byte	0x1
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
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
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x18
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x1a
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
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LVL26-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
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
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
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
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF17:
	.string	"MEMP_ALTCP_PCB"
.LASF55:
	.string	"float"
.LASF63:
	.string	"button_states"
.LASF31:
	.string	"lwip_internal_netif_client_data_index"
.LASF33:
	.string	"PM_MODE_STA_NONE"
.LASF1:
	.string	"short int"
.LASF16:
	.string	"MEMP_TCP_SEG"
.LASF32:
	.string	"PM_LEVEL"
.LASF13:
	.string	"MEMP_UDP_PCB"
.LASF81:
	.string	"vTaskDelay"
.LASF9:
	.string	"long long unsigned int"
.LASF47:
	.string	"TASK_SM"
.LASF49:
	.string	"TASK_BAM"
.LASF75:
	.string	"value"
.LASF23:
	.string	"MEMP_SYS_TIMEOUT"
.LASF40:
	.string	"PM_MODE_MAX"
.LASF30:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF69:
	.string	"time_to_wait"
.LASF15:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF72:
	.string	"button_manual_task"
.LASF70:
	.string	"old_tick_ms"
.LASF7:
	.string	"uint32_t"
.LASF53:
	.string	"TASK_API"
.LASF24:
	.string	"MEMP_NETDB"
.LASF48:
	.string	"TASK_APM"
.LASF67:
	.string	"button_status"
.LASF80:
	.string	"bl_gpio_output_set"
.LASF90:
	.string	"blink_led_200"
.LASF3:
	.string	"long long int"
.LASF77:
	.string	"bl_gpio_enable_input"
.LASF66:
	.string	"flag"
.LASF44:
	.string	"TASK_SCAN"
.LASF61:
	.string	"HOLD_BUTTON"
.LASF2:
	.string	"long int"
.LASF51:
	.string	"TASK_CFG"
.LASF79:
	.string	"printf"
.LASF39:
	.string	"PM_MODE_AP_IDLE"
.LASF84:
	.string	"xTaskGetTickCount"
.LASF78:
	.string	"bl_gpio_enable_output"
.LASF28:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF21:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF45:
	.string	"TASK_SCANU"
.LASF4:
	.string	"unsigned char"
.LASF42:
	.string	"TASK_NONE"
.LASF50:
	.string	"TASK_RXU"
.LASF34:
	.string	"PM_MODE_STA_IDLE"
.LASF62:
	.string	"HOLD_BUTTON_LONG"
.LASF27:
	.string	"MEMP_MAX"
.LASF0:
	.string	"signed char"
.LASF29:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF52:
	.string	"TASK_LAST_EMB"
.LASF10:
	.string	"unsigned int"
.LASF43:
	.string	"TASK_MM"
.LASF8:
	.string	"long unsigned int"
.LASF22:
	.string	"MEMP_IGMP_GROUP"
.LASF74:
	.string	"param"
.LASF5:
	.string	"short unsigned int"
.LASF41:
	.string	"wifi_fw_task_id"
.LASF68:
	.string	"status"
.LASF89:
	.string	"get_button_status"
.LASF11:
	.string	"char"
.LASF20:
	.string	"MEMP_TCPIP_MSG_API"
.LASF36:
	.string	"PM_MODE_STA_DOZE"
.LASF64:
	.string	"led_status"
.LASF57:
	.string	"_Bool"
.LASF83:
	.string	"bl_gpio_input_get_value"
.LASF25:
	.string	"MEMP_PBUF"
.LASF82:
	.string	"wifi_ap_start"
.LASF60:
	.string	"CONFIG"
.LASF73:
	.string	"reset_flag"
.LASF71:
	.string	"time_long_click"
.LASF46:
	.string	"TASK_ME"
.LASF56:
	.string	"double"
.LASF12:
	.string	"MEMP_RAW_PCB"
.LASF88:
	.string	"button_state"
.LASF86:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/button.c"
.LASF6:
	.string	"uint8_t"
.LASF26:
	.string	"MEMP_PBUF_POOL"
.LASF87:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/build_out/config_wifi"
.LASF19:
	.string	"MEMP_NETCONN"
.LASF37:
	.string	"PM_MODE_STA_COEX"
.LASF14:
	.string	"MEMP_TCP_PCB"
.LASF38:
	.string	"PM_MODE_STA_DOWN"
.LASF35:
	.string	"PM_MODE_STA_MESH"
.LASF65:
	.string	"IS_CONFIG"
.LASF58:
	.string	"NO_CLICK"
.LASF54:
	.string	"TASK_MAX"
.LASF76:
	.string	"set_is_config"
.LASF59:
	.string	"CLICK"
.LASF18:
	.string	"MEMP_NETBUF"
.LASF85:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
