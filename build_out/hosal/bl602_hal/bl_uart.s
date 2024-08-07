	.file	"bl_uart.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.uart_generic_notify_handler,"ax",@progbits
	.align	1
	.type	uart_generic_notify_handler, @function
uart_generic_notify_handler:
.LFB27:
	.file 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_uart.c"
	.loc 1 434 1
	.cfi_startproc
.LVL0:
	.loc 1 435 5
	.loc 1 436 5
	.loc 1 437 5
	.loc 1 438 5
	.loc 1 439 5
	.loc 1 439 14 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	slli	a4,a0,2
	addi	a5,a5,%lo(.LANCHOR0)
	.loc 1 434 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 439 14
	add	a5,a5,a4
	.loc 1 434 1
	sw	s3,12(sp)
	.cfi_offset 19, -20
	.loc 1 439 14
	lw	s3,0(a5)
.LVL1:
	.loc 1 441 5 is_stmt 1
	.loc 1 434 1 is_stmt 0
	sw	s0,24(sp)
	sw	ra,28(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 441 12
	lw	s2,32(s3)
.LVL2:
	.loc 1 442 5 is_stmt 1
	.loc 1 442 13 is_stmt 0
	lw	s1,36(s3)
.LVL3:
	.loc 1 446 5 is_stmt 1
	.loc 1 434 1 is_stmt 0
	mv	s0,a0
	.loc 1 446 19
	andi	a5,s2,1
	.loc 1 446 7
	beq	a5,zero,.L2
	.loc 1 446 56 discriminator 1
	andi	a5,s1,1
	.loc 1 446 40 discriminator 1
	bne	a5,zero,.L2
	.loc 1 447 9 is_stmt 1
	.loc 1 447 47 is_stmt 0
	li	a5,1
	sw	a5,40(s3)
.L2:
	.loc 1 451 5 is_stmt 1
	.loc 1 451 19 is_stmt 0
	andi	a5,s2,2
	.loc 1 451 7
	beq	a5,zero,.L4
	.loc 1 451 56 discriminator 1
	andi	a5,s1,2
	.loc 1 451 40 discriminator 1
	bne	a5,zero,.L4
	.loc 1 452 9 is_stmt 1
	.loc 1 452 47 is_stmt 0
	li	a5,2
	.loc 1 455 12
	lui	a4,%hi(.LANCHOR1)
	addi	a4,a4,%lo(.LANCHOR1)
	.loc 1 452 47
	sw	a5,40(s3)
	.loc 1 455 9 is_stmt 1
	.loc 1 455 12 is_stmt 0
	slli	a5,s0,4
	add	a5,a4,a5
	lw	a4,0(a5)
.LVL4:
	.loc 1 456 9 is_stmt 1
	.loc 1 458 9
	.loc 1 458 12 is_stmt 0
	beq	a4,zero,.L4
	.loc 1 460 13 is_stmt 1
	lw	a0,4(a5)
.LVL5:
	jalr	a4
.LVL6:
.L4:
	.loc 1 465 5
	.loc 1 465 19 is_stmt 0
	andi	a5,s2,4
	.loc 1 465 7
	beq	a5,zero,.L6
	.loc 1 465 56 discriminator 1
	andi	a5,s1,4
	.loc 1 465 40 discriminator 1
	bne	a5,zero,.L6
	.loc 1 467 9 is_stmt 1
	.loc 1 467 12 is_stmt 0
	lui	a4,%hi(.LANCHOR1)
	addi	a4,a4,%lo(.LANCHOR1)
	slli	a5,s0,4
	add	a5,a4,a5
	lw	a4,8(a5)
.LVL7:
	.loc 1 468 9 is_stmt 1
	.loc 1 470 9
	.loc 1 470 12 is_stmt 0
	beq	a4,zero,.L6
	.loc 1 472 13 is_stmt 1
	lw	a0,12(a5)
	jalr	a4
.LVL8:
.L6:
	.loc 1 477 5
	.loc 1 477 19 is_stmt 0
	andi	a5,s2,8
	.loc 1 477 7
	beq	a5,zero,.L7
	.loc 1 477 56 discriminator 1
	andi	a5,s1,8
	.loc 1 477 40 discriminator 1
	bne	a5,zero,.L7
	.loc 1 480 9 is_stmt 1
	.loc 1 480 12 is_stmt 0
	lui	a4,%hi(.LANCHOR1)
	addi	a4,a4,%lo(.LANCHOR1)
	slli	a5,s0,4
	add	a5,a4,a5
	lw	a4,0(a5)
.LVL9:
	.loc 1 481 9 is_stmt 1
	.loc 1 483 9
	.loc 1 483 12 is_stmt 0
	beq	a4,zero,.L7
	.loc 1 485 13 is_stmt 1
	lw	a0,4(a5)
	jalr	a4
.LVL10:
.L7:
	.loc 1 490 5
	.loc 1 490 20 is_stmt 0
	andi	a5,s2,16
	.loc 1 490 8
	beq	a5,zero,.L9
	.loc 1 490 57 discriminator 1
	andi	a5,s1,16
	.loc 1 490 41 discriminator 1
	bne	a5,zero,.L9
	.loc 1 491 9 is_stmt 1
	.loc 1 494 12 is_stmt 0
	lui	a0,%hi(.LANCHOR1)
	slli	s0,s0,4
	addi	a0,a0,%lo(.LANCHOR1)
	.loc 1 491 47
	li	a5,16
	.loc 1 494 12
	add	s0,a0,s0
	.loc 1 491 47
	sw	a5,40(s3)
	.loc 1 494 9 is_stmt 1
	.loc 1 494 12 is_stmt 0
	lw	a5,0(s0)
.LVL11:
	.loc 1 495 9 is_stmt 1
	.loc 1 497 9
	.loc 1 497 12 is_stmt 0
	beq	a5,zero,.L9
	.loc 1 499 13 is_stmt 1
	lw	a0,4(s0)
	jalr	a5
.LVL12:
.L9:
	.loc 1 504 5
	.loc 1 504 19 is_stmt 0
	andi	a5,s2,32
	.loc 1 504 7
	beq	a5,zero,.L1
	.loc 1 504 56 discriminator 1
	andi	a5,s1,32
	.loc 1 504 40 discriminator 1
	bne	a5,zero,.L1
	.loc 1 505 9 is_stmt 1
	.loc 1 505 47 is_stmt 0
	li	a5,32
	sw	a5,40(s3)
	.loc 1 509 5 is_stmt 1
	.loc 1 510 5
	.loc 1 513 5
	.loc 1 514 5
	.loc 1 516 5
.L1:
	.loc 1 517 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
.LVL13:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL14:
	lw	s3,12(sp)
	.cfi_restore 19
.LVL15:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE27:
	.size	uart_generic_notify_handler, .-uart_generic_notify_handler
	.section	.text.UART0_IRQHandler,"ax",@progbits
	.align	1
	.globl	UART0_IRQHandler
	.type	UART0_IRQHandler, @function
UART0_IRQHandler:
.LFB28:
	.loc 1 520 1 is_stmt 1
	.cfi_startproc
	.loc 1 521 5
	li	a0,0
	tail	uart_generic_notify_handler
.LVL16:
	.cfi_endproc
.LFE28:
	.size	UART0_IRQHandler, .-UART0_IRQHandler
	.section	.text.UART1_IRQHandler,"ax",@progbits
	.align	1
	.globl	UART1_IRQHandler
	.type	UART1_IRQHandler, @function
UART1_IRQHandler:
.LFB29:
	.loc 1 525 1
	.cfi_startproc
	.loc 1 526 5
	li	a0,1
	tail	uart_generic_notify_handler
.LVL17:
	.cfi_endproc
.LFE29:
	.size	UART1_IRQHandler, .-UART1_IRQHandler
	.section	.text.gpio_init,"ax",@progbits
	.align	1
	.type	gpio_init, @function
gpio_init:
.LFB8:
	.loc 1 29 1
	.cfi_startproc
.LVL18:
	.loc 1 30 5
	.loc 1 31 5
	.loc 1 33 5
	.loc 1 34 5
	.loc 1 35 5
	.loc 1 37 5
	.loc 1 29 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	.loc 1 35 17
	li	a5,7
	.loc 1 29 1
	sw	s2,48(sp)
	sw	s6,32(sp)
	.loc 1 35 17
	sb	a5,9(sp)
	.cfi_offset 18, -16
	.cfi_offset 22, -32
	.loc 1 38 18
	li	s2,2
	.loc 1 33 15
	li	a5,257
	.loc 1 29 1
	mv	s6,a0
	.loc 1 40 5
	addi	a0,sp,8
.LVL19:
	.loc 1 33 15
	sh	a5,12(sp)
	.loc 1 29 1
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s3,44(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	mv	s1,a3
	sw	s4,40(sp)
	sw	s5,36(sp)
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	mv	s4,a2
	mv	s5,a1
	mv	s0,a4
	.loc 1 37 17
	sb	a2,8(sp)
	.loc 1 38 5 is_stmt 1
	.loc 1 39 5
	.loc 1 40 5
	.loc 1 29 1 is_stmt 0
	sw	s7,28(sp)
	sw	s8,24(sp)
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.loc 1 38 18
	sh	s2,10(sp)
	.loc 1 40 5
	call	GLB_GPIO_Init
.LVL20:
	.loc 1 42 5 is_stmt 1
	.loc 1 45 5 is_stmt 0
	addi	a0,sp,8
	.loc 1 42 17
	sb	s5,8(sp)
	.loc 1 43 5 is_stmt 1
	.loc 1 44 5
	.loc 1 43 18 is_stmt 0
	sh	s2,10(sp)
	.loc 1 45 5 is_stmt 1
	.loc 1 47 25 is_stmt 0
	addi	s3,s1,-1
	.loc 1 45 5
	call	GLB_GPIO_Init
.LVL21:
	.loc 1 47 5 is_stmt 1
	.loc 1 47 25 is_stmt 0
	andi	s3,s3,0xff
	.loc 1 47 8
	li	a5,253
	bgtu	s3,a5,.L40
	.loc 1 48 9 is_stmt 1
	.loc 1 51 9 is_stmt 0
	addi	a0,sp,8
	.loc 1 48 21
	sb	s1,8(sp)
	.loc 1 49 9 is_stmt 1
	.loc 1 50 9
	.loc 1 49 22 is_stmt 0
	sh	s2,10(sp)
	.loc 1 51 9 is_stmt 1
	call	GLB_GPIO_Init
.LVL22:
.L40:
	.loc 1 54 5
	.loc 1 54 25 is_stmt 0
	addi	s2,s0,-1
	andi	s2,s2,0xff
	.loc 1 54 8
	li	a5,253
	bgtu	s2,a5,.L41
	.loc 1 55 9 is_stmt 1
	.loc 1 56 22 is_stmt 0
	li	a5,2
	.loc 1 58 9
	addi	a0,sp,8
	.loc 1 55 21
	sb	s0,8(sp)
	.loc 1 56 9 is_stmt 1
	.loc 1 57 9
	.loc 1 56 22 is_stmt 0
	sh	a5,10(sp)
	.loc 1 58 9 is_stmt 1
	call	GLB_GPIO_Init
.LVL23:
.L41:
	.loc 1 62 5
	.loc 1 62 8 is_stmt 0
	beq	s6,zero,.L45
	.loc 1 71 20
	li	s6,4
	.loc 1 70 20
	li	s7,5
	.loc 1 69 19
	li	s8,7
	.loc 1 68 19
	li	a1,6
.L42:
.LVL24:
	.loc 1 77 5 is_stmt 1
	andi	a0,s5,7
	call	GLB_UART_Fun_Sel
.LVL25:
	.loc 1 78 5
	mv	a1,s8
	andi	a0,s4,7
	call	GLB_UART_Fun_Sel
.LVL26:
	.loc 1 80 5
	.loc 1 80 8 is_stmt 0
	li	a5,253
	bgtu	s3,a5,.L43
	.loc 1 81 9 is_stmt 1
	mv	a1,s7
	andi	a0,s1,7
	call	GLB_UART_Fun_Sel
.LVL27:
.L43:
	.loc 1 83 5
	.loc 1 83 8 is_stmt 0
	li	a5,253
	bgtu	s2,a5,.L39
	.loc 1 84 9 is_stmt 1
	mv	a1,s6
	andi	a0,s0,7
	call	GLB_UART_Fun_Sel
.LVL28:
.L39:
	.loc 1 86 1 is_stmt 0
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	lw	s1,52(sp)
	.cfi_restore 9
	lw	s2,48(sp)
	.cfi_restore 18
	lw	s3,44(sp)
	.cfi_restore 19
	lw	s4,40(sp)
	.cfi_restore 20
	lw	s5,36(sp)
	.cfi_restore 21
	lw	s6,32(sp)
	.cfi_restore 22
.LVL29:
	lw	s7,28(sp)
	.cfi_restore 23
.LVL30:
	lw	s8,24(sp)
	.cfi_restore 24
.LVL31:
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.L45:
	.cfi_restore_state
	.loc 1 66 20
	li	s6,0
	.loc 1 65 20
	li	s7,1
	.loc 1 64 19
	li	s8,3
	.loc 1 63 19
	li	a1,2
	j	.L42
	.cfi_endproc
.LFE8:
	.size	gpio_init, .-gpio_init
	.section	.text.bl_uart_init,"ax",@progbits
	.align	1
	.globl	bl_uart_init
	.type	bl_uart_init, @function
bl_uart_init:
.LFB9:
	.loc 1 89 1 is_stmt 1
	.cfi_startproc
.LVL32:
	.loc 1 90 5
	.loc 1 91 5
	.loc 1 93 5
	.loc 1 89 1 is_stmt 0
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	s3,60(sp)
	.cfi_offset 19, -20
	mv	s3,a1
	.loc 1 93 19
	lui	a1,%hi(.LANCHOR2)
.LVL33:
	.loc 1 89 1
	sw	s0,72(sp)
	sw	s1,68(sp)
	sw	s4,56(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 20, -24
	.loc 1 93 19
	addi	s1,a1,%lo(.LANCHOR2)
	.loc 1 89 1
	mv	s0,a0
	.loc 1 93 19
	addi	a1,a1,%lo(.LANCHOR2)
	.loc 1 89 1
	mv	s4,a2
	.loc 1 93 19
	addi	a0,sp,12
.LVL34:
	li	a2,36
.LVL35:
	.loc 1 89 1
	sw	ra,76(sp)
	sw	s2,64(sp)
	sw	s5,52(sp)
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.cfi_offset 21, -28
	mv	s2,a5
	sw	s6,48(sp)
	.cfi_offset 22, -32
	.loc 1 89 1
	mv	s5,a3
	mv	s6,a4
	.loc 1 93 19
	call	memcpy
.LVL36:
	.loc 1 105 5 is_stmt 1
	.loc 1 105 23 is_stmt 0
	addi	a1,s1,36
	li	a2,12
	mv	a0,sp
	.loc 1 114 11
	lui	s1,%hi(.LANCHOR3)
	.loc 1 105 23
	call	memcpy
.LVL37:
	.loc 1 114 5 is_stmt 1
	.loc 1 114 11 is_stmt 0
	addi	s1,s1,%lo(.LANCHOR3)
	.loc 1 114 8
	lbu	a5,0(s1)
	bne	a5,zero,.L48
	.loc 1 115 9 is_stmt 1
	li	a2,3
	li	a1,1
	li	a0,1
	call	GLB_Set_UART_CLK
.LVL38:
	.loc 1 116 9
	.loc 1 116 23 is_stmt 0
	li	a5,1
	sb	a5,0(s1)
.L48:
	.loc 1 120 5 is_stmt 1
	mv	a4,s6
	mv	a3,s5
	mv	a2,s4
	mv	a1,s3
	mv	a0,s0
	call	gpio_init
.LVL39:
	.loc 1 122 5
	.loc 1 123 21 is_stmt 0
	li	a5,40001536
	addi	a5,a5,-1536
	.loc 1 126 5
	li	a2,1
	li	a1,8
	mv	a0,s0
	.loc 1 123 21
	sw	a5,12(sp)
	.loc 1 122 22
	sw	s2,16(sp)
	.loc 1 123 5 is_stmt 1
	.loc 1 126 5
	call	UART_IntMask
.LVL40:
	.loc 1 129 5
	li	a1,2
	mv	a0,s0
	call	UART_Disable
.LVL41:
	.loc 1 132 5
	addi	a1,sp,12
	mv	a0,s0
	call	UART_Init
.LVL42:
	.loc 1 135 5
	li	a1,1
	mv	a0,s0
	call	UART_TxFreeRun
.LVL43:
	.loc 1 138 5
	mv	a1,sp
	mv	a0,s0
	call	UART_FifoConfig
.LVL44:
	.loc 1 141 5
	mv	a0,s0
	li	a1,2
	call	UART_Enable
.LVL45:
	.loc 1 143 5
	.loc 1 144 1 is_stmt 0
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	lw	s1,68(sp)
	.cfi_restore 9
	lw	s2,64(sp)
	.cfi_restore 18
.LVL46:
	lw	s3,60(sp)
	.cfi_restore 19
	lw	s4,56(sp)
	.cfi_restore 20
	lw	s5,52(sp)
	.cfi_restore 21
	lw	s6,48(sp)
	.cfi_restore 22
	li	a0,0
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	bl_uart_init, .-bl_uart_init
	.section	.text.bl_uart_init_ex,"ax",@progbits
	.align	1
	.globl	bl_uart_init_ex
	.type	bl_uart_init_ex, @function
bl_uart_init_ex:
.LFB10:
	.loc 1 148 1 is_stmt 1
	.cfi_startproc
.LVL47:
	.loc 1 149 5
	.loc 1 150 5
	.loc 1 152 5
	.loc 1 148 1 is_stmt 0
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	s7,60(sp)
	.cfi_offset 23, -36
	mv	s7,a1
	.loc 1 152 19
	lui	a1,%hi(.LANCHOR2)
.LVL48:
	.loc 1 148 1
	sw	s0,88(sp)
	sw	s3,76(sp)
	sw	s8,56(sp)
	.cfi_offset 8, -8
	.cfi_offset 19, -20
	.cfi_offset 24, -40
	.loc 1 152 19
	addi	s3,a1,%lo(.LANCHOR2)
	.loc 1 148 1
	mv	s0,a0
	.loc 1 152 19
	addi	a1,a1,%lo(.LANCHOR2)
	.loc 1 148 1
	mv	s8,a2
	.loc 1 152 19
	addi	a0,sp,12
.LVL49:
	li	a2,36
.LVL50:
	.loc 1 148 1
	sw	ra,92(sp)
	sw	s1,84(sp)
	sw	s2,80(sp)
	sw	s4,72(sp)
	sw	s5,68(sp)
	sw	s6,64(sp)
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.loc 1 148 1
	mv	s2,a3
	mv	s6,a5
	mv	s1,a4
	mv	s5,a6
	mv	s4,a7
	.loc 1 152 19
	call	memcpy
.LVL51:
	.loc 1 164 5 is_stmt 1
	.loc 1 164 23 is_stmt 0
	addi	a1,s3,36
	li	a2,12
	mv	a0,sp
	.loc 1 173 11
	lui	s3,%hi(.LANCHOR4)
	.loc 1 164 23
	call	memcpy
.LVL52:
	.loc 1 173 5 is_stmt 1
	.loc 1 173 11 is_stmt 0
	addi	s3,s3,%lo(.LANCHOR4)
	.loc 1 173 8
	lbu	a5,0(s3)
	bne	a5,zero,.L51
	.loc 1 174 9 is_stmt 1
	li	a2,3
	li	a1,1
	li	a0,1
	call	GLB_Set_UART_CLK
.LVL53:
	.loc 1 175 9
	.loc 1 175 23 is_stmt 0
	li	a5,1
	sb	a5,0(s3)
.L51:
	.loc 1 179 5 is_stmt 1
	mv	a3,s2
	mv	a4,s1
	mv	a2,s8
	mv	a1,s7
	mv	a0,s0
	call	gpio_init
.LVL54:
	.loc 1 181 5
	.loc 1 182 21 is_stmt 0
	li	a5,40001536
	addi	a5,a5,-1536
	sw	a5,12(sp)
	.loc 1 185 20
	lw	a5,96(sp)
	.loc 1 187 25
	addi	s2,s2,-1
	.loc 1 181 22
	sw	s6,16(sp)
	.loc 1 182 5 is_stmt 1
	.loc 1 183 5
	.loc 1 185 20 is_stmt 0
	sw	a5,28(sp)
	.loc 1 183 22
	sw	s5,20(sp)
	.loc 1 184 5 is_stmt 1
	.loc 1 184 22 is_stmt 0
	sw	s4,24(sp)
	.loc 1 185 5 is_stmt 1
	.loc 1 187 5
	.loc 1 187 8 is_stmt 0
	andi	s2,s2,0xff
	li	a5,253
	bgtu	s2,a5,.L52
	.loc 1 188 9 is_stmt 1
	.loc 1 188 32 is_stmt 0
	li	a5,1
	sw	a5,32(sp)
.L52:
	.loc 1 190 5 is_stmt 1
	.loc 1 190 25 is_stmt 0
	addi	s1,s1,-1
	.loc 1 190 8
	andi	s1,s1,0xff
	li	a5,253
	bgtu	s1,a5,.L53
	.loc 1 191 9 is_stmt 1
	.loc 1 191 36 is_stmt 0
	li	a5,1
	sw	a5,40(sp)
.L53:
	.loc 1 195 5 is_stmt 1
	li	a2,1
	li	a1,8
	mv	a0,s0
	call	UART_IntMask
.LVL55:
	.loc 1 198 5
	li	a1,2
	mv	a0,s0
	call	UART_Disable
.LVL56:
	.loc 1 201 5
	addi	a1,sp,12
	mv	a0,s0
	call	UART_Init
.LVL57:
	.loc 1 204 5
	li	a1,1
	mv	a0,s0
	call	UART_TxFreeRun
.LVL58:
	.loc 1 207 5
	mv	a1,sp
	mv	a0,s0
	call	UART_FifoConfig
.LVL59:
	.loc 1 210 5
	mv	a0,s0
	li	a1,2
	call	UART_Enable
.LVL60:
	.loc 1 212 5
	.loc 1 213 1 is_stmt 0
	lw	ra,92(sp)
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	lw	s1,84(sp)
	.cfi_restore 9
	lw	s2,80(sp)
	.cfi_restore 18
	lw	s3,76(sp)
	.cfi_restore 19
	lw	s4,72(sp)
	.cfi_restore 20
.LVL61:
	lw	s5,68(sp)
	.cfi_restore 21
.LVL62:
	lw	s6,64(sp)
	.cfi_restore 22
.LVL63:
	lw	s7,60(sp)
	.cfi_restore 23
	lw	s8,56(sp)
	.cfi_restore 24
	li	a0,0
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
.LVL64:
	jr	ra
	.cfi_endproc
.LFE10:
	.size	bl_uart_init_ex, .-bl_uart_init_ex
	.section	.text.bl_uart_data_send,"ax",@progbits
	.align	1
	.globl	bl_uart_data_send
	.type	bl_uart_data_send, @function
bl_uart_data_send:
.LFB11:
	.loc 1 217 1 is_stmt 1
	.cfi_startproc
.LVL65:
	.loc 1 218 5
	.loc 1 218 14 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	slli	a4,a0,2
	addi	a5,a5,%lo(.LANCHOR0)
	.loc 1 217 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 218 14
	add	a5,a5,a4
	.loc 1 217 1
	sw	s2,0(sp)
	.cfi_offset 18, -16
	.loc 1 218 14
	lw	s2,0(a5)
.LVL66:
	.loc 1 221 5 is_stmt 1
	.loc 1 217 1 is_stmt 0
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.loc 1 217 1
	mv	s0,a0
	mv	s1,a1
.LVL67:
.L56:
	.loc 1 222 5 is_stmt 1 discriminator 1
	.loc 1 221 11 discriminator 1
	.loc 1 221 12 is_stmt 0 discriminator 1
	mv	a0,s0
	call	UART_GetTxFifoCount
.LVL68:
	.loc 1 221 11 discriminator 1
	beq	a0,zero,.L56
	.loc 1 224 5 is_stmt 1
	.loc 1 224 44 is_stmt 0
	sb	s1,136(s2)
	.loc 1 226 5 is_stmt 1
	.loc 1 227 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
	lw	s2,0(sp)
	.cfi_restore 18
.LVL69:
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	bl_uart_data_send, .-bl_uart_data_send
	.section	.text.bl_uart_data_recv,"ax",@progbits
	.align	1
	.globl	bl_uart_data_recv
	.type	bl_uart_data_recv, @function
bl_uart_data_recv:
.LFB12:
	.loc 1 230 1 is_stmt 1
	.cfi_startproc
.LVL70:
	.loc 1 231 5
	.loc 1 232 5
	.loc 1 232 14 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	slli	a4,a0,2
	addi	a5,a5,%lo(.LANCHOR0)
	.loc 1 230 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 232 14
	add	a5,a5,a4
	.loc 1 230 1
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 232 14
	lw	s0,0(a5)
.LVL71:
	.loc 1 235 5 is_stmt 1
	.loc 1 235 9 is_stmt 0
	call	UART_GetRxFifoCount
.LVL72:
	.loc 1 235 8
	beq	a0,zero,.L62
	.loc 1 236 9 is_stmt 1
	.loc 1 236 16 is_stmt 0
	lbu	a0,140(s0)
	andi	a0,a0,0xff
.LVL73:
.L60:
	.loc 1 242 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL74:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL75:
.L62:
	.cfi_restore_state
	.loc 1 238 13
	li	a0,-1
.LVL76:
	.loc 1 241 5 is_stmt 1
	.loc 1 241 12 is_stmt 0
	j	.L60
	.cfi_endproc
.LFE12:
	.size	bl_uart_data_recv, .-bl_uart_data_recv
	.section	.text.bl_uart_int_rx_enable,"ax",@progbits
	.align	1
	.globl	bl_uart_int_rx_enable
	.type	bl_uart_int_rx_enable, @function
bl_uart_int_rx_enable:
.LFB13:
	.loc 1 245 1 is_stmt 1
	.cfi_startproc
.LVL77:
	.loc 1 246 5
	.loc 1 245 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 246 5
	li	a1,24
	.loc 1 245 1
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 245 1
	mv	s0,a0
	.loc 1 246 5
	call	UART_SetRxTimeoutValue
.LVL78:
	.loc 1 247 5 is_stmt 1
	li	a2,0
	li	a1,3
	mv	a0,s0
	call	UART_IntMask
.LVL79:
	.loc 1 248 5
	li	a2,0
	li	a1,1
	mv	a0,s0
	call	UART_IntMask
.LVL80:
	.loc 1 249 5
	mv	a0,s0
	li	a2,0
	li	a1,4
	call	UART_IntMask
.LVL81:
	.loc 1 250 5
	.loc 1 251 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	bl_uart_int_rx_enable, .-bl_uart_int_rx_enable
	.section	.text.bl_uart_int_rx_disable,"ax",@progbits
	.align	1
	.globl	bl_uart_int_rx_disable
	.type	bl_uart_int_rx_disable, @function
bl_uart_int_rx_disable:
.LFB14:
	.loc 1 254 1 is_stmt 1
	.cfi_startproc
.LVL82:
	.loc 1 255 5
	.loc 1 254 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 255 5
	li	a2,1
	li	a1,3
	.loc 1 254 1
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 254 1
	mv	s0,a0
	.loc 1 255 5
	call	UART_IntMask
.LVL83:
	.loc 1 256 5 is_stmt 1
	li	a2,1
	li	a1,1
	mv	a0,s0
	call	UART_IntMask
.LVL84:
	.loc 1 257 5
	mv	a0,s0
	li	a2,1
	li	a1,4
	call	UART_IntMask
.LVL85:
	.loc 1 258 5
	.loc 1 259 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE14:
	.size	bl_uart_int_rx_disable, .-bl_uart_int_rx_disable
	.section	.text.bl_uart_int_tx_enable,"ax",@progbits
	.align	1
	.globl	bl_uart_int_tx_enable
	.type	bl_uart_int_tx_enable, @function
bl_uart_int_tx_enable:
.LFB15:
	.loc 1 262 1 is_stmt 1
	.cfi_startproc
.LVL86:
	.loc 1 263 5
	.loc 1 262 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 263 5
	li	a2,0
	li	a1,2
	.loc 1 262 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 263 5
	call	UART_IntMask
.LVL87:
	.loc 1 264 5 is_stmt 1
	.loc 1 265 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE15:
	.size	bl_uart_int_tx_enable, .-bl_uart_int_tx_enable
	.section	.text.bl_uart_int_tx_disable,"ax",@progbits
	.align	1
	.globl	bl_uart_int_tx_disable
	.type	bl_uart_int_tx_disable, @function
bl_uart_int_tx_disable:
.LFB16:
	.loc 1 268 1 is_stmt 1
	.cfi_startproc
.LVL88:
	.loc 1 269 5
	.loc 1 268 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 269 5
	li	a2,1
	li	a1,2
	.loc 1 268 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 269 5
	call	UART_IntMask
.LVL89:
	.loc 1 270 5 is_stmt 1
	.loc 1 271 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE16:
	.size	bl_uart_int_tx_disable, .-bl_uart_int_tx_disable
	.section	.text.bl_uart_flush,"ax",@progbits
	.align	1
	.globl	bl_uart_flush
	.type	bl_uart_flush, @function
bl_uart_flush:
.LFB17:
	.loc 1 274 1 is_stmt 1
	.cfi_startproc
.LVL90:
	.loc 1 276 5
	.loc 1 274 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.loc 1 274 1
	mv	s0,a0
	.loc 1 276 11
	li	s1,32
.LVL91:
.L73:
	.loc 1 277 5 is_stmt 1 discriminator 1
	.loc 1 276 11 discriminator 1
	.loc 1 276 20 is_stmt 0 discriminator 1
	mv	a0,s0
	call	UART_GetTxFifoCount
.LVL92:
	.loc 1 276 11 discriminator 1
	bne	a0,s1,.L73
	.loc 1 279 10
	li	s1,1
.L74:
	.loc 1 279 47 is_stmt 1 discriminator 1
	.loc 1 279 10 discriminator 1
	.loc 1 279 11 is_stmt 0 discriminator 1
	mv	a0,s0
	call	UART_GetTxBusBusyStatus
.LVL93:
	.loc 1 279 10 discriminator 1
	beq	a0,s1,.L74
	.loc 1 281 5 is_stmt 1
	.loc 1 282 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE17:
	.size	bl_uart_flush, .-bl_uart_flush
	.section	.text.bl_uart_getdefconfig,"ax",@progbits
	.align	1
	.globl	bl_uart_getdefconfig
	.type	bl_uart_getdefconfig, @function
bl_uart_getdefconfig:
.LFB18:
	.loc 1 285 1 is_stmt 1
	.cfi_startproc
.LVL94:
	.loc 1 286 5
	.loc 1 286 8 is_stmt 0
	beq	a1,zero,.L78
	.loc 1 291 5 is_stmt 1
	.loc 1 291 13 is_stmt 0
	sb	zero,0(a1)
.L78:
	.loc 1 292 1
	ret
	.cfi_endproc
.LFE18:
	.size	bl_uart_getdefconfig, .-bl_uart_getdefconfig
	.section	.text.bl_uart_setconfig,"ax",@progbits
	.align	1
	.globl	bl_uart_setconfig
	.type	bl_uart_setconfig, @function
bl_uart_setconfig:
.LFB19:
	.loc 1 295 1 is_stmt 1
	.cfi_startproc
.LVL95:
	.loc 1 296 5
	.loc 1 295 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s2,48(sp)
	.cfi_offset 18, -16
	mv	s2,a1
	.loc 1 296 19
	lui	a1,%hi(.LANCHOR2+48)
.LVL96:
	.loc 1 295 1
	sw	s0,56(sp)
	sw	s1,52(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a0
	mv	s1,a2
	.loc 1 296 19
	addi	a1,a1,%lo(.LANCHOR2+48)
	li	a2,36
.LVL97:
	addi	a0,sp,12
.LVL98:
	.loc 1 295 1
	sw	ra,60(sp)
	.cfi_offset 1, -4
	.loc 1 296 19
	call	memcpy
.LVL99:
	.loc 1 309 5 is_stmt 1
	.loc 1 313 5 is_stmt 0
	li	a1,2
	mv	a0,s0
	.loc 1 309 22
	sw	s2,16(sp)
	.loc 1 310 5 is_stmt 1
	.loc 1 310 20 is_stmt 0
	sw	s1,28(sp)
	.loc 1 313 5 is_stmt 1
	call	UART_Disable
.LVL100:
	.loc 1 315 5
	addi	a1,sp,12
	mv	a0,s0
	call	UART_Init
.LVL101:
	.loc 1 317 5
	li	a1,1
	mv	a0,s0
	call	UART_TxFreeRun
.LVL102:
	.loc 1 319 5
	mv	a0,s0
	li	a1,2
	call	UART_Enable
.LVL103:
	.loc 1 320 1 is_stmt 0
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	lw	s1,52(sp)
	.cfi_restore 9
.LVL104:
	lw	s2,48(sp)
	.cfi_restore 18
.LVL105:
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE19:
	.size	bl_uart_setconfig, .-bl_uart_setconfig
	.section	.text.bl_uart_setbaud,"ax",@progbits
	.align	1
	.globl	bl_uart_setbaud
	.type	bl_uart_setbaud, @function
bl_uart_setbaud:
.LFB20:
	.loc 1 323 1 is_stmt 1
	.cfi_startproc
.LVL106:
	.loc 1 324 5
	li	a2,0
	tail	bl_uart_setconfig
.LVL107:
	.cfi_endproc
.LFE20:
	.size	bl_uart_setbaud, .-bl_uart_setbaud
	.section	.text.bl_uart_int_enable,"ax",@progbits
	.align	1
	.globl	bl_uart_int_enable
	.type	bl_uart_int_enable, @function
bl_uart_int_enable:
.LFB21:
	.loc 1 328 1
	.cfi_startproc
.LVL108:
	.loc 1 329 5
	.loc 1 328 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 329 5
	beq	a0,zero,.L87
	li	a4,1
	beq	a0,a4,.L88
	li	a0,-1
.LVL109:
.L86:
	.loc 1 353 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL110:
.L87:
	.cfi_restore_state
	.loc 1 332 13 is_stmt 1
	call	bl_uart_int_rx_enable
.LVL111:
	.loc 1 333 13
	li	a0,0
	call	bl_uart_int_tx_enable
.LVL112:
	.loc 1 334 13
	lui	a1,%hi(UART0_IRQHandler)
	li	a0,45
	addi	a1,a1,%lo(UART0_IRQHandler)
	call	bl_irq_register
.LVL113:
	.loc 1 335 13
	li	a0,45
.L91:
	.loc 1 343 13 is_stmt 0
	call	bl_irq_enable
.LVL114:
	.loc 1 345 9 is_stmt 1
	.loc 1 352 12 is_stmt 0
	li	a0,0
	.loc 1 345 9
	j	.L86
.LVL115:
.L88:
	.loc 1 340 13 is_stmt 1
	call	bl_uart_int_rx_enable
.LVL116:
	.loc 1 341 13
	li	a0,1
	call	bl_uart_int_tx_enable
.LVL117:
	.loc 1 342 13
	lui	a1,%hi(UART1_IRQHandler)
	li	a0,46
	addi	a1,a1,%lo(UART1_IRQHandler)
	call	bl_irq_register
.LVL118:
	.loc 1 343 13
	li	a0,46
	j	.L91
	.cfi_endproc
.LFE21:
	.size	bl_uart_int_enable, .-bl_uart_int_enable
	.section	.text.bl_uart_int_disable,"ax",@progbits
	.align	1
	.globl	bl_uart_int_disable
	.type	bl_uart_int_disable, @function
bl_uart_int_disable:
.LFB22:
	.loc 1 356 1
	.cfi_startproc
.LVL119:
	.loc 1 357 5
	.loc 1 356 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 357 5
	beq	a0,zero,.L93
	li	a4,1
	beq	a0,a4,.L94
	li	a0,-1
.LVL120:
.L92:
	.loc 1 381 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL121:
.L93:
	.cfi_restore_state
	.loc 1 360 13 is_stmt 1
	call	bl_uart_int_rx_disable
.LVL122:
	.loc 1 361 13
	li	a0,0
	call	bl_uart_int_tx_disable
.LVL123:
	.loc 1 362 13
	lui	a1,%hi(UART0_IRQHandler)
	li	a0,45
	addi	a1,a1,%lo(UART0_IRQHandler)
	call	bl_irq_unregister
.LVL124:
	.loc 1 363 13
	li	a0,45
.L97:
	.loc 1 371 13 is_stmt 0
	call	bl_irq_disable
.LVL125:
	.loc 1 373 9 is_stmt 1
	.loc 1 380 12 is_stmt 0
	li	a0,0
	.loc 1 373 9
	j	.L92
.LVL126:
.L94:
	.loc 1 368 13 is_stmt 1
	call	bl_uart_int_rx_disable
.LVL127:
	.loc 1 369 13
	li	a0,1
	call	bl_uart_int_tx_disable
.LVL128:
	.loc 1 370 13
	lui	a1,%hi(UART1_IRQHandler)
	li	a0,46
	addi	a1,a1,%lo(UART1_IRQHandler)
	call	bl_irq_unregister
.LVL129:
	.loc 1 371 13
	li	a0,46
	j	.L97
	.cfi_endproc
.LFE22:
	.size	bl_uart_int_disable, .-bl_uart_int_disable
	.section	.text.bl_uart_int_rx_notify_register,"ax",@progbits
	.align	1
	.globl	bl_uart_int_rx_notify_register
	.type	bl_uart_int_rx_notify_register, @function
bl_uart_int_rx_notify_register:
.LFB23:
	.loc 1 384 1
	.cfi_startproc
.LVL130:
	.loc 1 385 5
	.loc 1 385 8 is_stmt 0
	li	a5,1
	bgtu	a0,a5,.L100
	.loc 1 390 5 is_stmt 1
	.loc 1 390 33 is_stmt 0
	slli	a5,a0,4
	lui	a0,%hi(.LANCHOR1)
.LVL131:
	addi	a0,a0,%lo(.LANCHOR1)
	add	a0,a0,a5
	sw	a1,0(a0)
	.loc 1 391 5 is_stmt 1
	.loc 1 391 37 is_stmt 0
	sw	a2,4(a0)
	.loc 1 393 5 is_stmt 1
	.loc 1 393 12 is_stmt 0
	li	a0,0
	ret
.LVL132:
.L100:
	.loc 1 387 16
	li	a0,-1
.LVL133:
	.loc 1 394 1
	ret
	.cfi_endproc
.LFE23:
	.size	bl_uart_int_rx_notify_register, .-bl_uart_int_rx_notify_register
	.section	.text.bl_uart_int_tx_notify_register,"ax",@progbits
	.align	1
	.globl	bl_uart_int_tx_notify_register
	.type	bl_uart_int_tx_notify_register, @function
bl_uart_int_tx_notify_register:
.LFB24:
	.loc 1 397 1 is_stmt 1
	.cfi_startproc
.LVL134:
	.loc 1 398 5
	.loc 1 398 8 is_stmt 0
	li	a5,1
	bgtu	a0,a5,.L103
	.loc 1 403 5 is_stmt 1
	.loc 1 403 33 is_stmt 0
	slli	a5,a0,4
	lui	a0,%hi(.LANCHOR1)
.LVL135:
	addi	a0,a0,%lo(.LANCHOR1)
	add	a0,a0,a5
	sw	a1,8(a0)
	.loc 1 404 5 is_stmt 1
	.loc 1 404 37 is_stmt 0
	sw	a2,12(a0)
	.loc 1 406 5 is_stmt 1
	.loc 1 406 12 is_stmt 0
	li	a0,0
	ret
.LVL136:
.L103:
	.loc 1 400 16
	li	a0,-1
.LVL137:
	.loc 1 407 1
	ret
	.cfi_endproc
.LFE24:
	.size	bl_uart_int_tx_notify_register, .-bl_uart_int_tx_notify_register
	.section	.text.bl_uart_int_rx_notify_unregister,"ax",@progbits
	.align	1
	.globl	bl_uart_int_rx_notify_unregister
	.type	bl_uart_int_rx_notify_unregister, @function
bl_uart_int_rx_notify_unregister:
.LFB25:
	.loc 1 410 1 is_stmt 1
	.cfi_startproc
.LVL138:
	.loc 1 411 5
	.loc 1 411 8 is_stmt 0
	li	a5,1
	bgtu	a0,a5,.L106
	.loc 1 415 5 is_stmt 1
	.loc 1 415 33 is_stmt 0
	slli	a5,a0,4
	lui	a0,%hi(.LANCHOR1)
.LVL139:
	addi	a0,a0,%lo(.LANCHOR1)
	add	a0,a0,a5
	sw	zero,0(a0)
	.loc 1 416 5 is_stmt 1
	.loc 1 416 37 is_stmt 0
	sw	zero,4(a0)
	.loc 1 418 5 is_stmt 1
	.loc 1 418 12 is_stmt 0
	li	a0,0
	ret
.LVL140:
.L106:
	.loc 1 413 16
	li	a0,-1
.LVL141:
	.loc 1 419 1
	ret
	.cfi_endproc
.LFE25:
	.size	bl_uart_int_rx_notify_unregister, .-bl_uart_int_rx_notify_unregister
	.section	.text.bl_uart_int_tx_notify_unregister,"ax",@progbits
	.align	1
	.globl	bl_uart_int_tx_notify_unregister
	.type	bl_uart_int_tx_notify_unregister, @function
bl_uart_int_tx_notify_unregister:
.LFB26:
	.loc 1 422 1 is_stmt 1
	.cfi_startproc
.LVL142:
	.loc 1 423 5
	.loc 1 423 8 is_stmt 0
	li	a5,1
	bgtu	a0,a5,.L109
	.loc 1 427 5 is_stmt 1
	.loc 1 427 33 is_stmt 0
	slli	a5,a0,4
	lui	a0,%hi(.LANCHOR1)
.LVL143:
	addi	a0,a0,%lo(.LANCHOR1)
	add	a0,a0,a5
	sw	zero,8(a0)
	.loc 1 428 5 is_stmt 1
	.loc 1 428 37 is_stmt 0
	sw	zero,12(a0)
	.loc 1 430 5 is_stmt 1
	.loc 1 430 12 is_stmt 0
	li	a0,0
	ret
.LVL144:
.L109:
	.loc 1 425 16
	li	a0,-1
.LVL145:
	.loc 1 431 1
	ret
	.cfi_endproc
.LFE26:
	.size	bl_uart_int_tx_notify_unregister, .-bl_uart_int_tx_notify_unregister
	.section	.rodata
	.align	2
	.set	.LANCHOR2,. + 0
.LC0:
	.word	160000000
	.word	115200
	.word	3
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
.LC1:
	.byte	16
	.byte	16
	.zero	2
	.word	0
	.word	0
.LC2:
	.word	40000000
	.word	115200
	.word	3
	.word	1
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.bss.g_uart_notify_arg,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	g_uart_notify_arg, @object
	.size	g_uart_notify_arg, 32
g_uart_notify_arg:
	.zero	32
	.section	.sbss.uart_clk_init.0,"aw",@nobits
	.set	.LANCHOR4,. + 0
	.type	uart_clk_init.0, @object
	.size	uart_clk_init.0, 1
uart_clk_init.0:
	.zero	1
	.section	.sbss.uart_clk_init.1,"aw",@nobits
	.set	.LANCHOR3,. + 0
	.type	uart_clk_init.1, @object
	.size	uart_clk_init.1, 1
uart_clk_init.1:
	.zero	1
	.section	.srodata.uartAddr,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	uartAddr, @object
	.size	uartAddr, 8
uartAddr:
	.word	1073782784
	.word	1073783040
	.text
.Letext0:
	.file 2 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
	.file 4 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 5 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_uart.h"
	.file 6 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_gpio.h"
	.file 7 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_hbn.h"
	.file 8 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h"
	.file 9 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_uart.h"
	.file 10 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_irq.h"
	.file 11 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x13ac
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF219
	.byte	0xc
	.4byte	.LASF220
	.4byte	.LASF221
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x7
	.byte	0x4
	.4byte	0x1d2
	.byte	0x3
	.byte	0x41
	.byte	0xe
	.4byte	0x1d2
	.byte	0x3
	.4byte	.LASF0
	.byte	0x3
	.byte	0x3
	.4byte	.LASF1
	.byte	0x7
	.byte	0x3
	.4byte	.LASF2
	.byte	0xb
	.byte	0x3
	.4byte	.LASF3
	.byte	0xc
	.byte	0x3
	.4byte	.LASF4
	.byte	0x10
	.byte	0x3
	.4byte	.LASF5
	.byte	0x11
	.byte	0x3
	.4byte	.LASF6
	.byte	0x12
	.byte	0x3
	.4byte	.LASF7
	.byte	0x13
	.byte	0x3
	.4byte	.LASF8
	.byte	0x14
	.byte	0x3
	.4byte	.LASF9
	.byte	0x15
	.byte	0x3
	.4byte	.LASF10
	.byte	0x16
	.byte	0x3
	.4byte	.LASF11
	.byte	0x17
	.byte	0x3
	.4byte	.LASF12
	.byte	0x18
	.byte	0x3
	.4byte	.LASF13
	.byte	0x19
	.byte	0x3
	.4byte	.LASF14
	.byte	0x1a
	.byte	0x3
	.4byte	.LASF15
	.byte	0x1b
	.byte	0x3
	.4byte	.LASF16
	.byte	0x1c
	.byte	0x3
	.4byte	.LASF17
	.byte	0x1d
	.byte	0x3
	.4byte	.LASF18
	.byte	0x1e
	.byte	0x3
	.4byte	.LASF19
	.byte	0x1f
	.byte	0x3
	.4byte	.LASF20
	.byte	0x20
	.byte	0x3
	.4byte	.LASF21
	.byte	0x21
	.byte	0x3
	.4byte	.LASF22
	.byte	0x22
	.byte	0x3
	.4byte	.LASF23
	.byte	0x23
	.byte	0x3
	.4byte	.LASF24
	.byte	0x24
	.byte	0x3
	.4byte	.LASF25
	.byte	0x25
	.byte	0x3
	.4byte	.LASF26
	.byte	0x26
	.byte	0x3
	.4byte	.LASF27
	.byte	0x27
	.byte	0x3
	.4byte	.LASF28
	.byte	0x28
	.byte	0x3
	.4byte	.LASF29
	.byte	0x29
	.byte	0x3
	.4byte	.LASF30
	.byte	0x2a
	.byte	0x3
	.4byte	.LASF31
	.byte	0x2b
	.byte	0x3
	.4byte	.LASF32
	.byte	0x2c
	.byte	0x3
	.4byte	.LASF33
	.byte	0x2d
	.byte	0x3
	.4byte	.LASF34
	.byte	0x2e
	.byte	0x3
	.4byte	.LASF35
	.byte	0x2f
	.byte	0x3
	.4byte	.LASF36
	.byte	0x30
	.byte	0x3
	.4byte	.LASF37
	.byte	0x31
	.byte	0x3
	.4byte	.LASF38
	.byte	0x32
	.byte	0x3
	.4byte	.LASF39
	.byte	0x33
	.byte	0x3
	.4byte	.LASF40
	.byte	0x34
	.byte	0x3
	.4byte	.LASF41
	.byte	0x35
	.byte	0x3
	.4byte	.LASF42
	.byte	0x36
	.byte	0x3
	.4byte	.LASF43
	.byte	0x37
	.byte	0x3
	.4byte	.LASF44
	.byte	0x38
	.byte	0x3
	.4byte	.LASF45
	.byte	0x39
	.byte	0x3
	.4byte	.LASF46
	.byte	0x3a
	.byte	0x3
	.4byte	.LASF47
	.byte	0x3b
	.byte	0x3
	.4byte	.LASF48
	.byte	0x3c
	.byte	0x3
	.4byte	.LASF49
	.byte	0x3d
	.byte	0x3
	.4byte	.LASF50
	.byte	0x3e
	.byte	0x3
	.4byte	.LASF51
	.byte	0x3f
	.byte	0x3
	.4byte	.LASF52
	.byte	0x40
	.byte	0x3
	.4byte	.LASF53
	.byte	0x41
	.byte	0x3
	.4byte	.LASF54
	.byte	0x42
	.byte	0x3
	.4byte	.LASF55
	.byte	0x43
	.byte	0x3
	.4byte	.LASF56
	.byte	0x44
	.byte	0x3
	.4byte	.LASF57
	.byte	0x45
	.byte	0x3
	.4byte	.LASF58
	.byte	0x46
	.byte	0x3
	.4byte	.LASF59
	.byte	0x47
	.byte	0x3
	.4byte	.LASF60
	.byte	0x48
	.byte	0x3
	.4byte	.LASF61
	.byte	0x49
	.byte	0x3
	.4byte	.LASF62
	.byte	0x4a
	.byte	0x3
	.4byte	.LASF63
	.byte	0x4b
	.byte	0x3
	.4byte	.LASF64
	.byte	0x4c
	.byte	0x3
	.4byte	.LASF65
	.byte	0x4d
	.byte	0x3
	.4byte	.LASF66
	.byte	0x4e
	.byte	0x3
	.4byte	.LASF67
	.byte	0x4f
	.byte	0x3
	.4byte	.LASF68
	.byte	0x50
	.byte	0
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF69
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF70
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF71
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF72
	.byte	0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF73
	.byte	0x5
	.4byte	.LASF76
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x206
	.byte	0x6
	.4byte	0x1f5
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF74
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF75
	.byte	0x5
	.4byte	.LASF77
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x225
	.byte	0x6
	.4byte	0x214
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF78
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF79
	.byte	0x7
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x8
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF80
	.byte	0x2
	.byte	0x7
	.byte	0x4
	.4byte	0x1d2
	.byte	0x4
	.byte	0x21
	.byte	0x1
	.4byte	0x25e
	.byte	0x3
	.4byte	.LASF81
	.byte	0
	.byte	0x3
	.4byte	.LASF82
	.byte	0x1
	.byte	0
	.byte	0x5
	.4byte	.LASF83
	.byte	0x4
	.byte	0x24
	.byte	0x2
	.4byte	0x243
	.byte	0x2
	.byte	0x7
	.byte	0x4
	.4byte	0x1d2
	.byte	0x4
	.byte	0x2a
	.byte	0x1
	.4byte	0x285
	.byte	0x3
	.4byte	.LASF84
	.byte	0
	.byte	0x9
	.string	"SET"
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x7
	.byte	0x4
	.4byte	0x1d2
	.byte	0x4
	.byte	0x33
	.byte	0x1
	.4byte	0x2a0
	.byte	0x3
	.4byte	.LASF85
	.byte	0
	.byte	0x3
	.4byte	.LASF86
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x7
	.byte	0x4
	.4byte	0x1d2
	.byte	0x5
	.byte	0x39
	.byte	0xe
	.4byte	0x2c1
	.byte	0x3
	.4byte	.LASF87
	.byte	0
	.byte	0x3
	.4byte	.LASF88
	.byte	0x1
	.byte	0x3
	.4byte	.LASF89
	.byte	0x2
	.byte	0
	.byte	0x5
	.4byte	.LASF90
	.byte	0x5
	.byte	0x3d
	.byte	0x2
	.4byte	0x2a0
	.byte	0x2
	.byte	0x7
	.byte	0x4
	.4byte	0x1d2
	.byte	0x5
	.byte	0x42
	.byte	0xe
	.4byte	0x2ee
	.byte	0x3
	.4byte	.LASF91
	.byte	0
	.byte	0x3
	.4byte	.LASF92
	.byte	0x1
	.byte	0x3
	.4byte	.LASF93
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x7
	.byte	0x4
	.4byte	0x1d2
	.byte	0x5
	.byte	0x4b
	.byte	0xe
	.4byte	0x30f
	.byte	0x3
	.4byte	.LASF94
	.byte	0
	.byte	0x3
	.4byte	.LASF95
	.byte	0x1
	.byte	0x3
	.4byte	.LASF96
	.byte	0x2
	.byte	0
	.byte	0x5
	.4byte	.LASF97
	.byte	0x5
	.byte	0x4f
	.byte	0x2
	.4byte	0x2ee
	.byte	0x2
	.byte	0x7
	.byte	0x4
	.4byte	0x1d2
	.byte	0x5
	.byte	0x54
	.byte	0xe
	.4byte	0x342
	.byte	0x3
	.4byte	.LASF98
	.byte	0
	.byte	0x3
	.4byte	.LASF99
	.byte	0x1
	.byte	0x3
	.4byte	.LASF100
	.byte	0x2
	.byte	0x3
	.4byte	.LASF101
	.byte	0x3
	.byte	0
	.byte	0x5
	.4byte	.LASF102
	.byte	0x5
	.byte	0x59
	.byte	0x2
	.4byte	0x31b
	.byte	0x2
	.byte	0x7
	.byte	0x4
	.4byte	0x1d2
	.byte	0x5
	.byte	0x5e
	.byte	0xe
	.4byte	0x375
	.byte	0x3
	.4byte	.LASF103
	.byte	0
	.byte	0x3
	.4byte	.LASF104
	.byte	0x1
	.byte	0x3
	.4byte	.LASF105
	.byte	0x2
	.byte	0x3
	.4byte	.LASF106
	.byte	0x3
	.byte	0
	.byte	0x5
	.4byte	.LASF107
	.byte	0x5
	.byte	0x63
	.byte	0x2
	.4byte	0x34e
	.byte	0x2
	.byte	0x7
	.byte	0x4
	.4byte	0x1d2
	.byte	0x5
	.byte	0x68
	.byte	0xe
	.4byte	0x39c
	.byte	0x3
	.4byte	.LASF108
	.byte	0
	.byte	0x3
	.4byte	.LASF109
	.byte	0x1
	.byte	0
	.byte	0x5
	.4byte	.LASF110
	.byte	0x5
	.byte	0x6b
	.byte	0x2
	.4byte	0x381
	.byte	0x2
	.byte	0x7
	.byte	0x4
	.4byte	0x1d2
	.byte	0x5
	.byte	0x78
	.byte	0xe
	.4byte	0x3ed
	.byte	0x3
	.4byte	.LASF111
	.byte	0
	.byte	0x3
	.4byte	.LASF112
	.byte	0x1
	.byte	0x3
	.4byte	.LASF113
	.byte	0x2
	.byte	0x3
	.4byte	.LASF114
	.byte	0x3
	.byte	0x3
	.4byte	.LASF115
	.byte	0x4
	.byte	0x3
	.4byte	.LASF116
	.byte	0x5
	.byte	0x3
	.4byte	.LASF117
	.byte	0x6
	.byte	0x3
	.4byte	.LASF118
	.byte	0x7
	.byte	0x3
	.4byte	.LASF119
	.byte	0x8
	.byte	0
	.byte	0xa
	.byte	0x24
	.byte	0x5
	.byte	0x91
	.byte	0x9
	.4byte	0x46c
	.byte	0xb
	.4byte	.LASF120
	.byte	0x5
	.byte	0x92
	.byte	0xe
	.4byte	0x214
	.byte	0
	.byte	0xb
	.4byte	.LASF121
	.byte	0x5
	.byte	0x93
	.byte	0xe
	.4byte	0x214
	.byte	0x4
	.byte	0xb
	.4byte	.LASF122
	.byte	0x5
	.byte	0x94
	.byte	0x18
	.4byte	0x342
	.byte	0x8
	.byte	0xb
	.4byte	.LASF123
	.byte	0x5
	.byte	0x95
	.byte	0x18
	.4byte	0x375
	.byte	0xc
	.byte	0xb
	.4byte	.LASF124
	.byte	0x5
	.byte	0x96
	.byte	0x16
	.4byte	0x30f
	.byte	0x10
	.byte	0xb
	.4byte	.LASF125
	.byte	0x5
	.byte	0x97
	.byte	0x11
	.4byte	0x25e
	.byte	0x14
	.byte	0xb
	.4byte	.LASF126
	.byte	0x5
	.byte	0x98
	.byte	0x11
	.4byte	0x25e
	.byte	0x18
	.byte	0xb
	.4byte	.LASF127
	.byte	0x5
	.byte	0x99
	.byte	0x11
	.4byte	0x25e
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF128
	.byte	0x5
	.byte	0x9a
	.byte	0x1e
	.4byte	0x39c
	.byte	0x20
	.byte	0
	.byte	0x5
	.4byte	.LASF129
	.byte	0x5
	.byte	0x9b
	.byte	0x2
	.4byte	0x3ed
	.byte	0xa
	.byte	0xc
	.byte	0x5
	.byte	0xa0
	.byte	0x9
	.4byte	0x4b6
	.byte	0xb
	.4byte	.LASF130
	.byte	0x5
	.byte	0xa1
	.byte	0xd
	.4byte	0x1f5
	.byte	0
	.byte	0xb
	.4byte	.LASF131
	.byte	0x5
	.byte	0xa2
	.byte	0xd
	.4byte	0x1f5
	.byte	0x1
	.byte	0xb
	.4byte	.LASF132
	.byte	0x5
	.byte	0xa3
	.byte	0x11
	.4byte	0x25e
	.byte	0x4
	.byte	0xb
	.4byte	.LASF133
	.byte	0x5
	.byte	0xa4
	.byte	0x11
	.4byte	0x25e
	.byte	0x8
	.byte	0
	.byte	0x5
	.4byte	.LASF134
	.byte	0x5
	.byte	0xa5
	.byte	0x2
	.4byte	0x478
	.byte	0xa
	.byte	0x6
	.byte	0x6
	.byte	0x7e
	.byte	0x9
	.4byte	0x51a
	.byte	0xb
	.4byte	.LASF135
	.byte	0x6
	.byte	0x80
	.byte	0xd
	.4byte	0x1f5
	.byte	0
	.byte	0xb
	.4byte	.LASF136
	.byte	0x6
	.byte	0x81
	.byte	0xd
	.4byte	0x1f5
	.byte	0x1
	.byte	0xb
	.4byte	.LASF137
	.byte	0x6
	.byte	0x82
	.byte	0xd
	.4byte	0x1f5
	.byte	0x2
	.byte	0xb
	.4byte	.LASF138
	.byte	0x6
	.byte	0x83
	.byte	0xd
	.4byte	0x1f5
	.byte	0x3
	.byte	0xb
	.4byte	.LASF139
	.byte	0x6
	.byte	0x84
	.byte	0xd
	.4byte	0x1f5
	.byte	0x4
	.byte	0xb
	.4byte	.LASF140
	.byte	0x6
	.byte	0x85
	.byte	0xd
	.4byte	0x1f5
	.byte	0x5
	.byte	0
	.byte	0x5
	.4byte	.LASF141
	.byte	0x6
	.byte	0x86
	.byte	0x2
	.4byte	0x4c2
	.byte	0x2
	.byte	0x7
	.byte	0x4
	.4byte	0x1d2
	.byte	0x7
	.byte	0x7e
	.byte	0xe
	.4byte	0x541
	.byte	0x3
	.4byte	.LASF142
	.byte	0
	.byte	0x3
	.4byte	.LASF143
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x7
	.byte	0x4
	.4byte	0x1d2
	.byte	0x8
	.byte	0xf6
	.byte	0xe
	.4byte	0x580
	.byte	0x3
	.4byte	.LASF144
	.byte	0
	.byte	0x3
	.4byte	.LASF145
	.byte	0x1
	.byte	0x3
	.4byte	.LASF146
	.byte	0x2
	.byte	0x3
	.4byte	.LASF147
	.byte	0x3
	.byte	0x3
	.4byte	.LASF148
	.byte	0x4
	.byte	0x3
	.4byte	.LASF149
	.byte	0x5
	.byte	0x3
	.4byte	.LASF150
	.byte	0x6
	.byte	0x3
	.4byte	.LASF151
	.byte	0x7
	.byte	0
	.byte	0x5
	.4byte	.LASF152
	.byte	0x8
	.byte	0xff
	.byte	0x2
	.4byte	0x541
	.byte	0x5
	.4byte	.LASF153
	.byte	0x9
	.byte	0x7
	.byte	0x10
	.4byte	0x598
	.byte	0xc
	.byte	0x4
	.4byte	0x59e
	.byte	0xd
	.4byte	0x5a9
	.byte	0xe
	.4byte	0x23a
	.byte	0
	.byte	0xf
	.4byte	0x220
	.4byte	0x5b9
	.byte	0x10
	.4byte	0x1d2
	.byte	0x1
	.byte	0
	.byte	0x6
	.4byte	0x5a9
	.byte	0x11
	.4byte	.LASF159
	.byte	0x1
	.byte	0x10
	.byte	0x17
	.4byte	0x5b9
	.byte	0x5
	.byte	0x3
	.4byte	uartAddr
	.byte	0x12
	.4byte	.LASF222
	.byte	0x10
	.byte	0x1
	.byte	0x12
	.byte	0x10
	.4byte	0x612
	.byte	0xb
	.4byte	.LASF154
	.byte	0x1
	.byte	0x13
	.byte	0x16
	.4byte	0x58c
	.byte	0
	.byte	0xb
	.4byte	.LASF155
	.byte	0x1
	.byte	0x14
	.byte	0xb
	.4byte	0x23a
	.byte	0x4
	.byte	0xb
	.4byte	.LASF156
	.byte	0x1
	.byte	0x16
	.byte	0x16
	.4byte	0x58c
	.byte	0x8
	.byte	0xb
	.4byte	.LASF157
	.byte	0x1
	.byte	0x17
	.byte	0xb
	.4byte	0x23a
	.byte	0xc
	.byte	0
	.byte	0x5
	.4byte	.LASF158
	.byte	0x1
	.byte	0x18
	.byte	0x3
	.4byte	0x5d0
	.byte	0xf
	.4byte	0x612
	.4byte	0x62e
	.byte	0x10
	.4byte	0x1d2
	.byte	0x1
	.byte	0
	.byte	0x11
	.4byte	.LASF160
	.byte	0x1
	.byte	0x1a
	.byte	0x19
	.4byte	0x61e
	.byte	0x5
	.byte	0x3
	.4byte	g_uart_notify_arg
	.byte	0x13
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x20c
	.byte	0x6
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x1
	.byte	0x9c
	.4byte	0x667
	.byte	0x14
	.4byte	.LVL17
	.4byte	0x68e
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x207
	.byte	0x6
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x1
	.byte	0x9c
	.4byte	0x68e
	.byte	0x14
	.4byte	.LVL16
	.4byte	0x68e
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x1b1
	.byte	0x14
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x1
	.byte	0x9c
	.4byte	0x70a
	.byte	0x17
	.string	"id"
	.byte	0x1
	.2byte	0x1b1
	.byte	0x38
	.4byte	0x1f5
	.4byte	.LLST0
	.byte	0x18
	.string	"cb"
	.byte	0x1
	.2byte	0x1b3
	.byte	0x16
	.4byte	0x58c
	.4byte	.LLST1
	.byte	0x18
	.string	"arg"
	.byte	0x1
	.2byte	0x1b4
	.byte	0xb
	.4byte	0x23a
	.4byte	.LLST2
	.byte	0x19
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x1b5
	.byte	0xe
	.4byte	0x214
	.4byte	.LLST3
	.byte	0x19
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x1b6
	.byte	0xe
	.4byte	0x214
	.4byte	.LLST4
	.byte	0x19
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x1b7
	.byte	0xe
	.4byte	0x214
	.4byte	.LLST5
	.byte	0
	.byte	0x1a
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x1a5
	.byte	0x5
	.4byte	0x233
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x1
	.byte	0x9c
	.4byte	0x753
	.byte	0x17
	.string	"id"
	.byte	0x1
	.2byte	0x1a5
	.byte	0x2e
	.4byte	0x1f5
	.4byte	.LLST51
	.byte	0x1b
	.string	"cb"
	.byte	0x1
	.2byte	0x1a5
	.byte	0x43
	.4byte	0x58c
	.byte	0x1
	.byte	0x5b
	.byte	0x1b
	.string	"arg"
	.byte	0x1
	.2byte	0x1a5
	.byte	0x4d
	.4byte	0x23a
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0x1a
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x199
	.byte	0x5
	.4byte	0x233
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x1
	.byte	0x9c
	.4byte	0x79c
	.byte	0x17
	.string	"id"
	.byte	0x1
	.2byte	0x199
	.byte	0x2e
	.4byte	0x1f5
	.4byte	.LLST50
	.byte	0x1b
	.string	"cb"
	.byte	0x1
	.2byte	0x199
	.byte	0x43
	.4byte	0x58c
	.byte	0x1
	.byte	0x5b
	.byte	0x1b
	.string	"arg"
	.byte	0x1
	.2byte	0x199
	.byte	0x4d
	.4byte	0x23a
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0x1a
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x18c
	.byte	0x5
	.4byte	0x233
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x1
	.byte	0x9c
	.4byte	0x7e5
	.byte	0x17
	.string	"id"
	.byte	0x1
	.2byte	0x18c
	.byte	0x2c
	.4byte	0x1f5
	.4byte	.LLST49
	.byte	0x1b
	.string	"cb"
	.byte	0x1
	.2byte	0x18c
	.byte	0x41
	.4byte	0x58c
	.byte	0x1
	.byte	0x5b
	.byte	0x1b
	.string	"arg"
	.byte	0x1
	.2byte	0x18c
	.byte	0x4b
	.4byte	0x23a
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0x1a
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x17f
	.byte	0x5
	.4byte	0x233
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x1
	.byte	0x9c
	.4byte	0x82e
	.byte	0x17
	.string	"id"
	.byte	0x1
	.2byte	0x17f
	.byte	0x2c
	.4byte	0x1f5
	.4byte	.LLST48
	.byte	0x1b
	.string	"cb"
	.byte	0x1
	.2byte	0x17f
	.byte	0x41
	.4byte	0x58c
	.byte	0x1
	.byte	0x5b
	.byte	0x1b
	.string	"arg"
	.byte	0x1
	.2byte	0x17f
	.byte	0x4b
	.4byte	0x23a
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0x1a
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x163
	.byte	0x5
	.4byte	0x233
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x1
	.byte	0x9c
	.4byte	0x8d1
	.byte	0x17
	.string	"id"
	.byte	0x1
	.2byte	0x163
	.byte	0x21
	.4byte	0x1f5
	.4byte	.LLST47
	.byte	0x1c
	.4byte	.LVL122
	.4byte	0xbac
	.byte	0x1d
	.4byte	.LVL123
	.4byte	0xb2c
	.4byte	0x875
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1d
	.4byte	.LVL124
	.4byte	0x12cb
	.4byte	0x892
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x2d
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	UART0_IRQHandler
	.byte	0
	.byte	0x1c
	.4byte	.LVL125
	.4byte	0x12d7
	.byte	0x1c
	.4byte	.LVL127
	.4byte	0xbac
	.byte	0x1d
	.4byte	.LVL128
	.4byte	0xb2c
	.4byte	0x8b7
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x1e
	.4byte	.LVL129
	.4byte	0x12cb
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x2e
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	UART1_IRQHandler
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x147
	.byte	0x5
	.4byte	0x233
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.4byte	0x974
	.byte	0x17
	.string	"id"
	.byte	0x1
	.2byte	0x147
	.byte	0x20
	.4byte	0x1f5
	.4byte	.LLST46
	.byte	0x1c
	.4byte	.LVL111
	.4byte	0xc2c
	.byte	0x1d
	.4byte	.LVL112
	.4byte	0xb6c
	.4byte	0x918
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1d
	.4byte	.LVL113
	.4byte	0x12e3
	.4byte	0x935
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x2d
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	UART0_IRQHandler
	.byte	0
	.byte	0x1c
	.4byte	.LVL114
	.4byte	0x12ef
	.byte	0x1c
	.4byte	.LVL116
	.4byte	0xc2c
	.byte	0x1d
	.4byte	.LVL117
	.4byte	0xb6c
	.4byte	0x95a
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x1e
	.4byte	.LVL118
	.4byte	0x12e3
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x2e
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	UART1_IRQHandler
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x142
	.byte	0x6
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x1
	.byte	0x9c
	.4byte	0x9c3
	.byte	0x17
	.string	"id"
	.byte	0x1
	.2byte	0x142
	.byte	0x1e
	.4byte	0x1f5
	.4byte	.LLST44
	.byte	0x1f
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x142
	.byte	0x2b
	.4byte	0x214
	.4byte	.LLST45
	.byte	0x14
	.4byte	.LVL107
	.4byte	0x9c3
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x126
	.byte	0x6
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x1
	.byte	0x9c
	.4byte	0xaa1
	.byte	0x17
	.string	"id"
	.byte	0x1
	.2byte	0x126
	.byte	0x20
	.4byte	0x1f5
	.4byte	.LLST41
	.byte	0x1f
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x126
	.byte	0x2d
	.4byte	0x214
	.4byte	.LLST42
	.byte	0x1f
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x126
	.byte	0x48
	.4byte	0x30f
	.4byte	.LLST43
	.byte	0x20
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x128
	.byte	0x13
	.4byte	0x46c
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x1d
	.4byte	.LVL99
	.4byte	0x12fb
	.4byte	0xa3f
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR2+48
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x24
	.byte	0
	.byte	0x1d
	.4byte	.LVL100
	.4byte	0x1306
	.4byte	0xa58
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x1d
	.4byte	.LVL101
	.4byte	0x1313
	.4byte	0xa72
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0
	.byte	0x1d
	.4byte	.LVL102
	.4byte	0x1320
	.4byte	0xa8b
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x1e
	.4byte	.LVL103
	.4byte	0x132d
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x11c
	.byte	0x6
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0xad6
	.byte	0x1b
	.string	"id"
	.byte	0x1
	.2byte	0x11c
	.byte	0x23
	.4byte	0x1f5
	.byte	0x1
	.byte	0x5a
	.byte	0x21
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x11c
	.byte	0x30
	.4byte	0xad6
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0xc
	.byte	0x4
	.4byte	0x1f5
	.byte	0x1a
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x111
	.byte	0x5
	.4byte	0x233
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0xb2c
	.byte	0x17
	.string	"id"
	.byte	0x1
	.2byte	0x111
	.byte	0x1b
	.4byte	0x1f5
	.4byte	.LLST40
	.byte	0x1d
	.4byte	.LVL92
	.4byte	0x133a
	.4byte	0xb1b
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL93
	.4byte	0x1347
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x10b
	.byte	0x5
	.4byte	0x233
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0xb6c
	.byte	0x17
	.string	"id"
	.byte	0x1
	.2byte	0x10b
	.byte	0x24
	.4byte	0x1f5
	.4byte	.LLST39
	.byte	0x1e
	.4byte	.LVL89
	.4byte	0x1354
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x105
	.byte	0x5
	.4byte	0x233
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0xbac
	.byte	0x17
	.string	"id"
	.byte	0x1
	.2byte	0x105
	.byte	0x23
	.4byte	0x1f5
	.4byte	.LLST38
	.byte	0x1e
	.4byte	.LVL87
	.4byte	0x1354
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LASF181
	.byte	0x1
	.byte	0xfd
	.byte	0x5
	.4byte	0x233
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0xc2c
	.byte	0x23
	.string	"id"
	.byte	0x1
	.byte	0xfd
	.byte	0x24
	.4byte	0x1f5
	.4byte	.LLST37
	.byte	0x1d
	.4byte	.LVL83
	.4byte	0x1354
	.4byte	0xbf3
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x1d
	.4byte	.LVL84
	.4byte	0x1354
	.4byte	0xc11
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x1e
	.4byte	.LVL85
	.4byte	0x1354
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x34
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LASF182
	.byte	0x1
	.byte	0xf4
	.byte	0x5
	.4byte	0x233
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0xcc5
	.byte	0x23
	.string	"id"
	.byte	0x1
	.byte	0xf4
	.byte	0x23
	.4byte	0x1f5
	.4byte	.LLST36
	.byte	0x1d
	.4byte	.LVL78
	.4byte	0x1361
	.4byte	0xc6e
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x48
	.byte	0
	.byte	0x1d
	.4byte	.LVL79
	.4byte	0x1354
	.4byte	0xc8c
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1d
	.4byte	.LVL80
	.4byte	0x1354
	.4byte	0xcaa
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1e
	.4byte	.LVL81
	.4byte	0x1354
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x34
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LASF183
	.byte	0x1
	.byte	0xe5
	.byte	0x5
	.4byte	0x233
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0xd18
	.byte	0x23
	.string	"id"
	.byte	0x1
	.byte	0xe5
	.byte	0x1f
	.4byte	0x1f5
	.4byte	.LLST33
	.byte	0x24
	.string	"ret"
	.byte	0x1
	.byte	0xe7
	.byte	0x9
	.4byte	0x233
	.4byte	.LLST34
	.byte	0x25
	.4byte	.LASF165
	.byte	0x1
	.byte	0xe8
	.byte	0xe
	.4byte	0x214
	.4byte	.LLST35
	.byte	0x1c
	.4byte	.LVL72
	.4byte	0x136e
	.byte	0
	.byte	0x22
	.4byte	.LASF184
	.byte	0x1
	.byte	0xd8
	.byte	0x5
	.4byte	0x233
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0xd72
	.byte	0x23
	.string	"id"
	.byte	0x1
	.byte	0xd8
	.byte	0x1f
	.4byte	0x1f5
	.4byte	.LLST30
	.byte	0x26
	.4byte	.LASF185
	.byte	0x1
	.byte	0xd8
	.byte	0x2b
	.4byte	0x1f5
	.4byte	.LLST31
	.byte	0x25
	.4byte	.LASF165
	.byte	0x1
	.byte	0xda
	.byte	0xe
	.4byte	0x214
	.4byte	.LLST32
	.byte	0x1e
	.4byte	.LVL68
	.4byte	0x133a
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LASF186
	.byte	0x1
	.byte	0x92
	.byte	0x5
	.4byte	0x233
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0xf81
	.byte	0x23
	.string	"id"
	.byte	0x1
	.byte	0x92
	.byte	0x1d
	.4byte	0x1f5
	.4byte	.LLST21
	.byte	0x26
	.4byte	.LASF187
	.byte	0x1
	.byte	0x92
	.byte	0x29
	.4byte	0x1f5
	.4byte	.LLST22
	.byte	0x26
	.4byte	.LASF188
	.byte	0x1
	.byte	0x92
	.byte	0x39
	.4byte	0x1f5
	.4byte	.LLST23
	.byte	0x26
	.4byte	.LASF189
	.byte	0x1
	.byte	0x92
	.byte	0x49
	.4byte	0x1f5
	.4byte	.LLST24
	.byte	0x26
	.4byte	.LASF190
	.byte	0x1
	.byte	0x92
	.byte	0x5a
	.4byte	0x1f5
	.4byte	.LLST25
	.byte	0x26
	.4byte	.LASF175
	.byte	0x1
	.byte	0x92
	.byte	0x6c
	.4byte	0x214
	.4byte	.LLST26
	.byte	0x26
	.4byte	.LASF122
	.byte	0x1
	.byte	0x93
	.byte	0x25
	.4byte	0x342
	.4byte	.LLST27
	.byte	0x26
	.4byte	.LASF123
	.byte	0x1
	.byte	0x93
	.byte	0x42
	.4byte	0x375
	.4byte	.LLST28
	.byte	0x26
	.4byte	.LASF124
	.byte	0x1
	.byte	0x93
	.byte	0x5d
	.4byte	0x30f
	.4byte	.LLST29
	.byte	0x11
	.4byte	.LASF191
	.byte	0x1
	.byte	0x95
	.byte	0x14
	.4byte	0x1f5
	.byte	0x5
	.byte	0x3
	.4byte	uart_clk_init.0
	.byte	0x27
	.4byte	.LASF192
	.byte	0x1
	.byte	0x96
	.byte	0x13
	.4byte	0x201
	.byte	0x3
	.byte	0x11
	.4byte	.LASF193
	.byte	0x1
	.byte	0x98
	.byte	0x13
	.4byte	0x46c
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0x11
	.4byte	.LASF194
	.byte	0x1
	.byte	0xa4
	.byte	0x17
	.4byte	0x4b6
	.byte	0x3
	.byte	0x91
	.byte	0xa0,0x7f
	.byte	0x1d
	.4byte	.LVL51
	.4byte	0x12fb
	.4byte	0xe7b
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x24
	.byte	0
	.byte	0x1d
	.4byte	.LVL52
	.4byte	0x12fb
	.4byte	0xe9d
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR2+36
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x1d
	.4byte	.LVL53
	.4byte	0x137b
	.4byte	0xeba
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x1d
	.4byte	.LVL54
	.4byte	0x1160
	.4byte	0xee6
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LVL55
	.4byte	0x1354
	.4byte	0xf04
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x38
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x1d
	.4byte	.LVL56
	.4byte	0x1306
	.4byte	0xf1d
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x1d
	.4byte	.LVL57
	.4byte	0x1313
	.4byte	0xf38
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0
	.byte	0x1d
	.4byte	.LVL58
	.4byte	0x1320
	.4byte	0xf51
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x1d
	.4byte	.LVL59
	.4byte	0x1388
	.4byte	0xf6b
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL60
	.4byte	0x132d
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LASF195
	.byte	0x1
	.byte	0x58
	.byte	0x5
	.4byte	0x233
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x1160
	.byte	0x23
	.string	"id"
	.byte	0x1
	.byte	0x58
	.byte	0x1a
	.4byte	0x1f5
	.4byte	.LLST15
	.byte	0x26
	.4byte	.LASF187
	.byte	0x1
	.byte	0x58
	.byte	0x26
	.4byte	0x1f5
	.4byte	.LLST16
	.byte	0x26
	.4byte	.LASF188
	.byte	0x1
	.byte	0x58
	.byte	0x36
	.4byte	0x1f5
	.4byte	.LLST17
	.byte	0x26
	.4byte	.LASF189
	.byte	0x1
	.byte	0x58
	.byte	0x46
	.4byte	0x1f5
	.4byte	.LLST18
	.byte	0x26
	.4byte	.LASF190
	.byte	0x1
	.byte	0x58
	.byte	0x57
	.4byte	0x1f5
	.4byte	.LLST19
	.byte	0x26
	.4byte	.LASF175
	.byte	0x1
	.byte	0x58
	.byte	0x69
	.4byte	0x214
	.4byte	.LLST20
	.byte	0x11
	.4byte	.LASF191
	.byte	0x1
	.byte	0x5a
	.byte	0x14
	.4byte	0x1f5
	.byte	0x5
	.byte	0x3
	.4byte	uart_clk_init.1
	.byte	0x27
	.4byte	.LASF192
	.byte	0x1
	.byte	0x5b
	.byte	0x13
	.4byte	0x201
	.byte	0x3
	.byte	0x11
	.4byte	.LASF193
	.byte	0x1
	.byte	0x5d
	.byte	0x13
	.4byte	0x46c
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x11
	.4byte	.LASF194
	.byte	0x1
	.byte	0x69
	.byte	0x17
	.4byte	0x4b6
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x1d
	.4byte	.LVL36
	.4byte	0x12fb
	.4byte	0x105a
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x24
	.byte	0
	.byte	0x1d
	.4byte	.LVL37
	.4byte	0x12fb
	.4byte	0x107c
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR2+36
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x1d
	.4byte	.LVL38
	.4byte	0x137b
	.4byte	0x1099
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x1d
	.4byte	.LVL39
	.4byte	0x1160
	.4byte	0x10c5
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LVL40
	.4byte	0x1354
	.4byte	0x10e3
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x38
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x1d
	.4byte	.LVL41
	.4byte	0x1306
	.4byte	0x10fc
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x1d
	.4byte	.LVL42
	.4byte	0x1313
	.4byte	0x1117
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0
	.byte	0x1d
	.4byte	.LVL43
	.4byte	0x1320
	.4byte	0x1130
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x1d
	.4byte	.LVL44
	.4byte	0x1388
	.4byte	0x114a
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL45
	.4byte	0x132d
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	.LASF197
	.byte	0x1
	.byte	0x1c
	.byte	0xd
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x12cb
	.byte	0x23
	.string	"id"
	.byte	0x1
	.byte	0x1c
	.byte	0x1f
	.4byte	0x1f5
	.4byte	.LLST6
	.byte	0x26
	.4byte	.LASF187
	.byte	0x1
	.byte	0x1c
	.byte	0x2b
	.4byte	0x1f5
	.4byte	.LLST7
	.byte	0x26
	.4byte	.LASF188
	.byte	0x1
	.byte	0x1c
	.byte	0x3b
	.4byte	0x1f5
	.4byte	.LLST8
	.byte	0x26
	.4byte	.LASF189
	.byte	0x1
	.byte	0x1c
	.byte	0x4b
	.4byte	0x1f5
	.4byte	.LLST9
	.byte	0x26
	.4byte	.LASF190
	.byte	0x1
	.byte	0x1c
	.byte	0x5c
	.4byte	0x1f5
	.4byte	.LLST10
	.byte	0x29
	.string	"cfg"
	.byte	0x1
	.byte	0x1e
	.byte	0x17
	.4byte	0x51a
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x25
	.4byte	.LASF198
	.byte	0x1
	.byte	0x1f
	.byte	0x1b
	.4byte	0x580
	.4byte	.LLST11
	.byte	0x25
	.4byte	.LASF199
	.byte	0x1
	.byte	0x1f
	.byte	0x26
	.4byte	0x580
	.4byte	.LLST12
	.byte	0x25
	.4byte	.LASF200
	.byte	0x1
	.byte	0x1f
	.byte	0x31
	.4byte	0x580
	.4byte	.LLST13
	.byte	0x25
	.4byte	.LASF201
	.byte	0x1
	.byte	0x1f
	.byte	0x3d
	.4byte	0x580
	.4byte	.LLST14
	.byte	0x1d
	.4byte	.LVL20
	.4byte	0x1395
	.4byte	0x1228
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0
	.byte	0x1d
	.4byte	.LVL21
	.4byte	0x1395
	.4byte	0x123c
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0
	.byte	0x1d
	.4byte	.LVL22
	.4byte	0x1395
	.4byte	0x1250
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0
	.byte	0x1d
	.4byte	.LVL23
	.4byte	0x1395
	.4byte	0x1264
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0
	.byte	0x1d
	.4byte	.LVL25
	.4byte	0x13a2
	.4byte	0x127a
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x4
	.byte	0x85
	.byte	0
	.byte	0x37
	.byte	0x1a
	.byte	0
	.byte	0x1d
	.4byte	.LVL26
	.4byte	0x13a2
	.4byte	0x1296
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x4
	.byte	0x84
	.byte	0
	.byte	0x37
	.byte	0x1a
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LVL27
	.4byte	0x13a2
	.4byte	0x12b2
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x4
	.byte	0x79
	.byte	0
	.byte	0x37
	.byte	0x1a
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL28
	.4byte	0x13a2
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x4
	.byte	0x78
	.byte	0
	.byte	0x37
	.byte	0x1a
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2a
	.4byte	.LASF202
	.4byte	.LASF202
	.byte	0xa
	.byte	0x17
	.byte	0x6
	.byte	0x2a
	.4byte	.LASF203
	.4byte	.LASF203
	.byte	0xa
	.byte	0x4
	.byte	0x6
	.byte	0x2a
	.4byte	.LASF204
	.4byte	.LASF204
	.byte	0xa
	.byte	0x16
	.byte	0x6
	.byte	0x2a
	.4byte	.LASF205
	.4byte	.LASF205
	.byte	0xa
	.byte	0x3
	.byte	0x6
	.byte	0x2b
	.4byte	.LASF223
	.4byte	.LASF224
	.byte	0xb
	.byte	0
	.byte	0x2c
	.4byte	.LASF206
	.4byte	.LASF206
	.byte	0x5
	.2byte	0x11a
	.byte	0xd
	.byte	0x2c
	.4byte	.LASF207
	.4byte	.LASF207
	.byte	0x5
	.2byte	0x115
	.byte	0xd
	.byte	0x2c
	.4byte	.LASF208
	.4byte	.LASF208
	.byte	0x5
	.2byte	0x122
	.byte	0xd
	.byte	0x2c
	.4byte	.LASF209
	.4byte	.LASF209
	.byte	0x5
	.2byte	0x119
	.byte	0xd
	.byte	0x2c
	.4byte	.LASF210
	.4byte	.LASF210
	.byte	0x5
	.2byte	0x12d
	.byte	0x9
	.byte	0x2c
	.4byte	.LASF211
	.4byte	.LASF211
	.byte	0x5
	.2byte	0x130
	.byte	0xd
	.byte	0x2c
	.4byte	.LASF212
	.4byte	.LASF212
	.byte	0x5
	.2byte	0x126
	.byte	0xd
	.byte	0x2c
	.4byte	.LASF213
	.4byte	.LASF213
	.byte	0x5
	.2byte	0x11d
	.byte	0xd
	.byte	0x2c
	.4byte	.LASF214
	.4byte	.LASF214
	.byte	0x5
	.2byte	0x12e
	.byte	0x9
	.byte	0x2c
	.4byte	.LASF215
	.4byte	.LASF215
	.byte	0x8
	.2byte	0x238
	.byte	0xd
	.byte	0x2c
	.4byte	.LASF216
	.4byte	.LASF216
	.byte	0x5
	.2byte	0x117
	.byte	0xd
	.byte	0x2c
	.4byte	.LASF217
	.4byte	.LASF217
	.byte	0x8
	.2byte	0x276
	.byte	0xd
	.byte	0x2c
	.4byte	.LASF218
	.4byte	.LASF218
	.byte	0x8
	.2byte	0x26f
	.byte	0xd
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
	.byte	0x3
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
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
	.byte	0x6
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
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
	.byte	0x8
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xa
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x5
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
	.byte	0x14
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
	.byte	0x15
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
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
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
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
	.byte	0x5
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
	.byte	0x1b
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1d
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
	.byte	0x1e
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1f
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x22
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
	.byte	0x23
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
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x26
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
	.byte	0x27
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
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x28
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
	.byte	0x29
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
	.byte	0x2a
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
	.byte	0x2b
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
	.byte	0
	.byte	0
	.byte	0x2c
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
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL11
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL6-1
	.2byte	0xa
	.byte	0x78
	.byte	0
	.byte	0x34
	.byte	0x24
	.byte	0x3
	.4byte	g_uart_notify_arg+4
	.byte	0x22
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0xa
	.byte	0x78
	.byte	0
	.byte	0x34
	.byte	0x24
	.byte	0x3
	.4byte	g_uart_notify_arg+12
	.byte	0x22
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0xa
	.byte	0x78
	.byte	0
	.byte	0x34
	.byte	0x24
	.byte	0x3
	.4byte	g_uart_notify_arg+4
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL1
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL143
	.4byte	.LVL144
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL145
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL139
	.4byte	.LVL140
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL140
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL141
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL134
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL135
	.4byte	.LVL136
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL137
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL132
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL133
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL121
	.4byte	.LVL122-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL122-1
	.4byte	.LVL126
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL126
	.4byte	.LVL127-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL127-1
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LVL111-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL111-1
	.4byte	.LVL115
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL115
	.4byte	.LVL116-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL116-1
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL106
	.4byte	.LVL107-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL107-1
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL106
	.4byte	.LVL107-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL107-1
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL95
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL98
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL96
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL105
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL95
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL97
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL104
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL91
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL88
	.4byte	.LVL89-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL89-1
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL86
	.4byte	.LVL87-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL87-1
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL82
	.4byte	.LVL83-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL83-1
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL77
	.4byte	.LVL78-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL78-1
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL70
	.4byte	.LVL72-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL72-1
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL76
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL71
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL75
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL67
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL67
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL66
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL49
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL48
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL47
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL50
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL47
	.4byte	.LVL51-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL51-1
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL47
	.4byte	.LVL51-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL51-1
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL47
	.4byte	.LVL51-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL51-1
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL63
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL47
	.4byte	.LVL51-1
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL51-1
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL62
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x60
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL47
	.4byte	.LVL51-1
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL51-1
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL61
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x61
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL47
	.4byte	.LVL64
	.2byte	0x2
	.byte	0x91
	.byte	0
	.4byte	.LVL64
	.4byte	.LFE10
	.2byte	0x2
	.byte	0x72
	.byte	0
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL33
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL35
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL32
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL36-1
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL32
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL36-1
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL32
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL36-1
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL46
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL18
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL20-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL18
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL20-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL18
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL20-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL18
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL20-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL24
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL24
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL24
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xc4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
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
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
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
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF98:
	.string	"UART_DATABITS_5"
.LASF99:
	.string	"UART_DATABITS_6"
.LASF100:
	.string	"UART_DATABITS_7"
.LASF101:
	.string	"UART_DATABITS_8"
.LASF8:
	.string	"SEC_BMX_ERR_IRQn"
.LASF116:
	.string	"UART_INT_PCE"
.LASF217:
	.string	"GLB_GPIO_Init"
.LASF171:
	.string	"bl_uart_int_enable"
.LASF42:
	.string	"TIMER_WDT_IRQn"
.LASF207:
	.string	"UART_Init"
.LASF62:
	.string	"MAC_TXRX_MISC_IRQn"
.LASF97:
	.string	"UART_Parity_Type"
.LASF148:
	.string	"GLB_UART_SIG_FUN_UART1_RTS"
.LASF6:
	.string	"L1C_BMX_ERR_IRQn"
.LASF110:
	.string	"UART_ByteBitInverse_Type"
.LASF29:
	.string	"GPADC_DMA_IRQn"
.LASF184:
	.string	"bl_uart_data_send"
.LASF196:
	.string	"uart_generic_notify_handler"
.LASF72:
	.string	"long int"
.LASF81:
	.string	"DISABLE"
.LASF210:
	.string	"UART_GetTxFifoCount"
.LASF169:
	.string	"bl_uart_int_rx_notify_register"
.LASF83:
	.string	"BL_Fun_Type"
.LASF155:
	.string	"rx_cb_arg"
.LASF12:
	.string	"DMA_BMX_ERR_IRQn"
.LASF11:
	.string	"SDIO_IRQn"
.LASF112:
	.string	"UART_INT_RX_END"
.LASF160:
	.string	"g_uart_notify_arg"
.LASF70:
	.string	"signed char"
.LASF127:
	.string	"rtsSoftwareControl"
.LASF205:
	.string	"bl_irq_enable"
.LASF173:
	.string	"baud"
.LASF79:
	.string	"long long unsigned int"
.LASF175:
	.string	"baudrate"
.LASF14:
	.string	"SEC_CDET_IRQn"
.LASF165:
	.string	"UARTx"
.LASF45:
	.string	"RESERVED12"
.LASF46:
	.string	"RESERVED13"
.LASF47:
	.string	"RESERVED14"
.LASF49:
	.string	"RESERVED16"
.LASF50:
	.string	"RESERVED17"
.LASF51:
	.string	"RESERVED18"
.LASF52:
	.string	"RESERVED19"
.LASF214:
	.string	"UART_GetRxFifoCount"
.LASF48:
	.string	"GPIO_INT0_IRQn"
.LASF144:
	.string	"GLB_UART_SIG_FUN_UART0_RTS"
.LASF223:
	.string	"memcpy"
.LASF82:
	.string	"ENABLE"
.LASF73:
	.string	"long long int"
.LASF209:
	.string	"UART_Enable"
.LASF94:
	.string	"UART_PARITY_NONE"
.LASF186:
	.string	"bl_uart_init_ex"
.LASF154:
	.string	"rx_cb"
.LASF117:
	.string	"UART_INT_TX_FER"
.LASF198:
	.string	"tx_sigfun"
.LASF111:
	.string	"UART_INT_TX_END"
.LASF75:
	.string	"short unsigned int"
.LASF124:
	.string	"parity"
.LASF106:
	.string	"UART_STOPBITS_2"
.LASF134:
	.string	"UART_FifoCfg_Type"
.LASF36:
	.string	"I2C_IRQn"
.LASF9:
	.string	"RF_TOP_INT0_IRQn"
.LASF213:
	.string	"UART_SetRxTimeoutValue"
.LASF53:
	.string	"RESERVED20"
.LASF177:
	.string	"bl_uart_getdefconfig"
.LASF86:
	.string	"MASK"
.LASF13:
	.string	"SEC_GMAC_IRQn"
.LASF88:
	.string	"UART1_ID"
.LASF69:
	.string	"unsigned int"
.LASF58:
	.string	"WIFI_IRQn"
.LASF151:
	.string	"GLB_UART_SIG_FUN_UART1_RXD"
.LASF200:
	.string	"cts_sigfun"
.LASF105:
	.string	"UART_STOPBITS_1_5"
.LASF78:
	.string	"long unsigned int"
.LASF221:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/build_out/hosal"
.LASF212:
	.string	"UART_IntMask"
.LASF102:
	.string	"UART_DataBits_Type"
.LASF118:
	.string	"UART_INT_RX_FER"
.LASF185:
	.string	"data"
.LASF218:
	.string	"GLB_UART_Fun_Sel"
.LASF204:
	.string	"bl_irq_register"
.LASF57:
	.string	"BOR_IRQn"
.LASF181:
	.string	"bl_uart_int_rx_disable"
.LASF157:
	.string	"tx_cb_arg"
.LASF10:
	.string	"RF_TOP_INT1_IRQn"
.LASF182:
	.string	"bl_uart_int_rx_enable"
.LASF122:
	.string	"dataBits"
.LASF202:
	.string	"bl_irq_unregister"
.LASF92:
	.string	"UART_RX"
.LASF211:
	.string	"UART_GetTxBusBusyStatus"
.LASF59:
	.string	"BZ_PHY_IRQn"
.LASF158:
	.string	"bl_uart_notify_t"
.LASF133:
	.string	"rxFifoDmaEnable"
.LASF224:
	.string	"__builtin_memcpy"
.LASF129:
	.string	"UART_CFG_Type"
.LASF89:
	.string	"UART_ID_MAX"
.LASF140:
	.string	"smtCtrl"
.LASF33:
	.string	"UART0_IRQn"
.LASF121:
	.string	"baudRate"
.LASF85:
	.string	"UNMASK"
.LASF166:
	.string	"bl_uart_int_tx_notify_unregister"
.LASF153:
	.string	"cb_uart_notify_t"
.LASF18:
	.string	"SEC_SHA_IRQn"
.LASF17:
	.string	"SEC_AES_IRQn"
.LASF139:
	.string	"drive"
.LASF156:
	.string	"tx_cb"
.LASF113:
	.string	"UART_INT_TX_FIFO_REQ"
.LASF54:
	.string	"PDS_WAKEUP_IRQn"
.LASF189:
	.string	"cts_pin"
.LASF203:
	.string	"bl_irq_disable"
.LASF135:
	.string	"gpioPin"
.LASF95:
	.string	"UART_PARITY_ODD"
.LASF103:
	.string	"UART_STOPBITS_0_5"
.LASF0:
	.string	"MSOFT_IRQn"
.LASF120:
	.string	"uartClk"
.LASF190:
	.string	"rts_pin"
.LASF192:
	.string	"uart_div"
.LASF19:
	.string	"DMA_ALL_IRQn"
.LASF149:
	.string	"GLB_UART_SIG_FUN_UART1_CTS"
.LASF66:
	.string	"MAC_PORT_TRG_IRQn"
.LASF126:
	.string	"rxDeglitch"
.LASF161:
	.string	"UART1_IRQHandler"
.LASF107:
	.string	"UART_StopBits_Type"
.LASF108:
	.string	"UART_LSB_FIRST"
.LASF199:
	.string	"rx_sigfun"
.LASF162:
	.string	"UART0_IRQHandler"
.LASF138:
	.string	"pullType"
.LASF164:
	.string	"maskVal"
.LASF114:
	.string	"UART_INT_RX_FIFO_REQ"
.LASF20:
	.string	"RESERVED0"
.LASF21:
	.string	"RESERVED1"
.LASF22:
	.string	"RESERVED2"
.LASF25:
	.string	"RESERVED3"
.LASF26:
	.string	"RESERVED4"
.LASF32:
	.string	"RESERVED6"
.LASF84:
	.string	"RESET"
.LASF188:
	.string	"rx_pin"
.LASF39:
	.string	"RESERVED9"
.LASF60:
	.string	"BLE_IRQn"
.LASF24:
	.string	"IRRX_IRQn"
.LASF15:
	.string	"SEC_PKA_IRQn"
.LASF74:
	.string	"unsigned char"
.LASF61:
	.string	"MAC_TXRX_TIMER_IRQn"
.LASF137:
	.string	"gpioMode"
.LASF27:
	.string	"SF_CTRL_IRQn"
.LASF87:
	.string	"UART0_ID"
.LASF176:
	.string	"UartCfg"
.LASF23:
	.string	"IRTX_IRQn"
.LASF195:
	.string	"bl_uart_init"
.LASF172:
	.string	"bl_uart_setbaud"
.LASF170:
	.string	"bl_uart_int_disable"
.LASF63:
	.string	"MAC_RX_TRG_IRQn"
.LASF91:
	.string	"UART_TX"
.LASF125:
	.string	"ctsFlowControl"
.LASF2:
	.string	"MEXT_IRQn"
.LASF30:
	.string	"EFUSE_IRQn"
.LASF180:
	.string	"bl_uart_int_tx_enable"
.LASF147:
	.string	"GLB_UART_SIG_FUN_UART0_RXD"
.LASF168:
	.string	"bl_uart_int_tx_notify_register"
.LASF174:
	.string	"bl_uart_setconfig"
.LASF163:
	.string	"tmpVal"
.LASF215:
	.string	"GLB_Set_UART_CLK"
.LASF28:
	.string	"RESERVED5"
.LASF132:
	.string	"txFifoDmaEnable"
.LASF77:
	.string	"uint32_t"
.LASF109:
	.string	"UART_MSB_FIRST"
.LASF37:
	.string	"RESERVED8"
.LASF193:
	.string	"uartCfg"
.LASF34:
	.string	"UART1_IRQn"
.LASF5:
	.string	"BMX_TO_IRQn"
.LASF80:
	.string	"char"
.LASF222:
	.string	"bl_uart_notify"
.LASF1:
	.string	"MTIME_IRQn"
.LASF183:
	.string	"bl_uart_data_recv"
.LASF123:
	.string	"stopBits"
.LASF65:
	.string	"MAC_GEN_IRQn"
.LASF71:
	.string	"short int"
.LASF136:
	.string	"gpioFun"
.LASF96:
	.string	"UART_PARITY_EVEN"
.LASF167:
	.string	"bl_uart_int_rx_notify_unregister"
.LASF4:
	.string	"BMX_ERR_IRQn"
.LASF104:
	.string	"UART_STOPBITS_1"
.LASF40:
	.string	"TIMER_CH0_IRQn"
.LASF130:
	.string	"txFifoDmaThreshold"
.LASF152:
	.string	"GLB_UART_SIG_FUN_Type"
.LASF38:
	.string	"PWM_IRQn"
.LASF55:
	.string	"HBN_OUT0_IRQn"
.LASF35:
	.string	"RESERVED7"
.LASF43:
	.string	"RESERVED10"
.LASF220:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_uart.c"
.LASF44:
	.string	"RESERVED11"
.LASF67:
	.string	"WIFI_IPC_PUBLIC_IRQn"
.LASF216:
	.string	"UART_FifoConfig"
.LASF90:
	.string	"UART_ID_Type"
.LASF179:
	.string	"bl_uart_int_tx_disable"
.LASF187:
	.string	"tx_pin"
.LASF68:
	.string	"IRQn_LAST"
.LASF159:
	.string	"uartAddr"
.LASF128:
	.string	"byteBitInverse"
.LASF219:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF76:
	.string	"uint8_t"
.LASF197:
	.string	"gpio_init"
.LASF191:
	.string	"uart_clk_init"
.LASF3:
	.string	"CLIC_SOFT_PEND_IRQn"
.LASF64:
	.string	"MAC_TX_TRG_IRQn"
.LASF131:
	.string	"rxFifoDmaThreshold"
.LASF115:
	.string	"UART_INT_RTO"
.LASF16:
	.string	"SEC_TRNG_IRQn"
.LASF208:
	.string	"UART_TxFreeRun"
.LASF145:
	.string	"GLB_UART_SIG_FUN_UART0_CTS"
.LASF143:
	.string	"HBN_UART_CLK_160M"
.LASF119:
	.string	"UART_INT_ALL"
.LASF206:
	.string	"UART_Disable"
.LASF31:
	.string	"SPI_IRQn"
.LASF7:
	.string	"L1C_BMX_TO_IRQn"
.LASF201:
	.string	"rts_sigfun"
.LASF41:
	.string	"TIMER_CH1_IRQn"
.LASF194:
	.string	"fifoCfg"
.LASF146:
	.string	"GLB_UART_SIG_FUN_UART0_TXD"
.LASF142:
	.string	"HBN_UART_CLK_FCLK"
.LASF56:
	.string	"HBN_OUT1_IRQn"
.LASF93:
	.string	"UART_TXRX"
.LASF178:
	.string	"bl_uart_flush"
.LASF150:
	.string	"GLB_UART_SIG_FUN_UART1_TXD"
.LASF141:
	.string	"GLB_GPIO_Cfg_Type"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
