	.file	"hosal_adc.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.adc_data_update,"ax",@progbits
	.align	1
	.globl	adc_data_update
	.type	adc_data_update, @function
adc_data_update:
.LFB8:
	.file 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hosal_adc.c"
	.loc 1 83 1
	.cfi_startproc
.LVL0:
	.loc 1 84 5
	.loc 1 85 5
	.loc 1 85 22 is_stmt 0
	lw	a5,32(a0)
.LVL1:
	.loc 1 87 5 is_stmt 1
	.loc 1 87 8 is_stmt 0
	lw	a3,12(a5)
	.loc 1 88 73
	lw	a4,4(a5)
	.loc 1 87 8
	bne	a3,zero,.L2
	.loc 1 88 9 is_stmt 1
	.loc 1 88 30 is_stmt 0
	lw	a4,4(a4)
	sw	a4,0(a5)
	.loc 1 89 9 is_stmt 1
	.loc 1 89 26 is_stmt 0
	li	a4,1
	sw	a4,12(a5)
	ret
.L2:
	.loc 1 106 9 is_stmt 1
	.loc 1 106 30 is_stmt 0
	lw	a4,20(a4)
	.loc 1 107 26
	sw	zero,12(a5)
	.loc 1 106 30
	sw	a4,0(a5)
	.loc 1 107 9 is_stmt 1
	.loc 1 109 1 is_stmt 0
	ret
	.cfi_endproc
.LFE8:
	.size	adc_data_update, .-adc_data_update
	.section	.rodata.adc_parse_data.constprop.0.str1.4,"aMS",@progbits,1
	.align	2
.LC2:
	.string	"hosal_adc.c"
	.align	2
.LC3:
	.string	"ERROR "
	.align	2
.LC4:
	.string	"[%10u][%s: %s:%4d] error!\r\n"
	.section	.text.adc_parse_data.constprop.0,"ax",@progbits
	.align	1
	.type	adc_parse_data.constprop.0, @function
adc_parse_data.constprop.0:
.LFB33:
	.loc 1 446 12 is_stmt 1
	.cfi_startproc
.LVL2:
	.loc 1 452 17
	.loc 1 446 12 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	.cfi_offset 1, -4
	addi	a4,a0,40
.LVL3:
.L7:
	.loc 1 453 9 is_stmt 1
	.loc 1 453 21 is_stmt 0
	lw	a5,0(a0)
	srli	a5,a5,21
	.loc 1 453 12
	bne	a5,a1,.L5
	.loc 1 454 13 is_stmt 1
	addi	a2,sp,8
	li	a1,1
.LVL4:
	call	ADC_Parse_Result
.LVL5:
	.loc 1 455 13
	.loc 1 455 32 is_stmt 0
	lui	a5,%hi(.LC1)
	flw	fa5,12(sp)
	flw	fa4,%lo(.LC1)(a5)
	fmul.s	fa5,fa5,fa4
	.loc 1 455 18
	fcvt.w.s a0,fa5,rtz
.LVL6:
	.loc 1 457 13 is_stmt 1
.L4:
	.loc 1 462 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL7:
.L5:
	.cfi_restore_state
	.loc 1 452 32 is_stmt 1
	.loc 1 452 17
	.loc 1 452 5 is_stmt 0
	addi	a0,a0,4
	bne	a0,a4,.L7
.LVL8:
.LBB4:
.LBB5:
	.loc 1 460 5 is_stmt 1
	.loc 1 460 10
	.loc 1 460 12
	.loc 1 460 59 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL9:
	.loc 1 460 12
	beq	a0,zero,.L8
	.loc 1 460 86
	call	xTaskGetTickCountFromISR
.LVL10:
.L12:
	.loc 1 460 115
	mv	a1,a0
	.loc 1 460 12
	lui	a3,%hi(.LC2)
	lui	a2,%hi(.LC3)
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	li	a4,460
	addi	a3,a3,%lo(.LC2)
	addi	a2,a2,%lo(.LC3)
	call	bl_printk
.LVL11:
	.loc 1 460 168 is_stmt 1
	.loc 1 460 177
	.loc 1 461 5
	.loc 1 460 12 is_stmt 0
	li	a0,-1
	j	.L4
.LVL12:
.L8:
	.loc 1 460 115
	call	xTaskGetTickCount
.LVL13:
	j	.L12
.LBE5:
.LBE4:
	.cfi_endproc
.LFE33:
	.size	adc_parse_data.constprop.0, .-adc_parse_data.constprop.0
	.section	.rodata.hosal_adc_init.str1.4,"aMS",@progbits,1
	.align	2
.LC5:
	.string	"\033[31mERROR"
	.align	2
.LC6:
	.string	"%s (%d)[%s:%4d] parameter is error!\r\n\033[0m\r\n"
	.align	2
.LC7:
	.string	"[%10u][%s: %s:%4d] gpio %d can not used as adc\r\n"
	.align	2
.LC8:
	.string	"%s (%d)[%s:%4d] pin is error!\r\n\033[0m\r\n"
	.align	2
.LC9:
	.string	"%s (%d)[%s:%4d] not have enough memory!\r\n\033[0m\r\n"
	.align	2
.LC10:
	.string	"%s (%d)[%s:%4d] illegal freq. for mode0, freq 27HZ ~ 340HZ \r\n\033[0m\r\n"
	.align	2
.LC11:
	.string	"INFO  "
	.align	2
.LC12:
	.string	"[%10u][%s: %s:%4d] ADC freq: %ldHz. div:%lu\r\n"
	.align	2
.LC14:
	.string	"%s (%d)[%s:%4d] malloc lli failed. \r\n\033[0m\r\n"
	.align	2
.LC15:
	.string	"%s (%d)[%s:%4d] malloc lli buf failed. \r\n\033[0m\r\n"
	.align	2
.LC16:
	.string	"[%10u][%s: %s:%4d] not support continue mode!\r\n"
	.section	.text.hosal_adc_init,"ax",@progbits
	.align	1
	.globl	hosal_adc_init
	.type	hosal_adc_init, @function
hosal_adc_init:
.LFB17:
	.loc 1 465 1 is_stmt 1
	.cfi_startproc
.LVL14:
	.loc 1 466 5
	.loc 1 467 5
	.loc 1 468 5
	.loc 1 469 5
	.loc 1 471 5
	.loc 1 465 1 is_stmt 0
	addi	sp,sp,-192
	.cfi_def_cfa_offset 192
	sw	ra,188(sp)
	sw	s0,184(sp)
	sw	s1,180(sp)
	sw	s2,176(sp)
	sw	s3,172(sp)
	sw	s4,168(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.loc 1 471 8
	bne	a0,zero,.L14
	.loc 1 472 9 is_stmt 1 discriminator 1
	.loc 1 472 47 discriminator 1
	.loc 1 472 52 discriminator 1
	.loc 1 472 74 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 472 55 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	bleu	a4,a5,.L15
.LVL15:
.L72:
	.loc 1 516 192 is_stmt 1 discriminator 4
	.loc 1 516 201 discriminator 4
	.loc 1 517 9 discriminator 4
	.loc 1 517 16 is_stmt 0 discriminator 4
	li	a0,-1
	j	.L13
.LVL16:
.L15:
	.loc 1 472 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_adc)
	.loc 1 472 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_adc)(a4)
	bgtu	a4,a5,.L72
	.loc 1 472 153 is_stmt 1 discriminator 5
	.loc 1 472 243 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL17:
	.loc 1 472 153 discriminator 5
	beq	a0,zero,.L18
	.loc 1 472 272 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL18:
.L61:
	.loc 1 472 303 discriminator 8
	mv	a2,a0
	.loc 1 472 153 discriminator 8
	lui	a3,%hi(.LC2)
	lui	a1,%hi(.LC5)
	lui	a0,%hi(.LC6)
	li	a4,472
	addi	a3,a3,%lo(.LC2)
	addi	a1,a1,%lo(.LC5)
	addi	a0,a0,%lo(.LC6)
.LVL19:
.L71:
	.loc 1 516 16 discriminator 4
	call	bl_printk
.LVL20:
	j	.L72
.LVL21:
.L18:
	.loc 1 472 303 discriminator 8
	call	xTaskGetTickCount
.LVL22:
	j	.L61
.LVL23:
.L14:
	.loc 1 477 37
	lw	s1,8(a0)
.LBB20:
.LBB21:
	.loc 1 115 19
	lui	s3,%hi(.LANCHOR0)
.LBE21:
.LBE20:
	.loc 1 476 23
	lw	s4,4(a0)
	mv	s0,a0
	.loc 1 476 5 is_stmt 1
.LVL24:
	.loc 1 477 5
.LBB25:
.LBB22:
	.loc 1 115 19 is_stmt 0
	li	a2,40
	addi	a1,s3,%lo(.LANCHOR0)
	addi	a0,sp,108
.LVL25:
.LBE22:
.LBE25:
	.loc 1 477 9
	sw	s1,4(sp)
	.loc 1 480 5 is_stmt 1
.LVL26:
.LBB26:
.LBB23:
	.loc 1 113 5
	.loc 1 115 5
	.loc 1 115 19 is_stmt 0
	call	memcpy
.LVL27:
	.loc 1 123 5 is_stmt 1
	.loc 1 123 17
	addi	a5,sp,108
	addi	a4,sp,148
.LVL28:
.L21:
	.loc 1 124 9
	.loc 1 124 12 is_stmt 0
	lw	a3,0(a5)
	beq	s1,a3,.L20
	.loc 1 123 25 is_stmt 1
	.loc 1 123 17
	.loc 1 123 5 is_stmt 0
	addi	a5,a5,4
	bne	a5,a4,.L21
	.loc 1 129 5 is_stmt 1
	.loc 1 129 10
	.loc 1 129 12
	.loc 1 129 80 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL29:
	.loc 1 129 12
	beq	a0,zero,.L22
	.loc 1 129 107
	call	xTaskGetTickCountFromISR
.LVL30:
.L62:
	.loc 1 129 136
	mv	a1,a0
	.loc 1 129 12
	lui	s0,%hi(.LC2)
.LVL31:
	lui	a2,%hi(.LC3)
	lui	a0,%hi(.LC7)
	mv	a5,s1
	li	a4,129
	addi	a3,s0,%lo(.LC2)
	addi	a2,a2,%lo(.LC3)
	addi	a0,a0,%lo(.LC7)
	call	bl_printk
.LVL32:
	.loc 1 129 194 is_stmt 1
	.loc 1 129 203
	.loc 1 131 5
.LBE23:
.LBE26:
	.loc 1 481 5
	.loc 1 482 9
	.loc 1 482 47
	.loc 1 482 52
	.loc 1 482 74 is_stmt 0
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 482 55
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	bgtu	a4,a5,.L72
	.loc 1 482 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_adc)
	.loc 1 482 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_adc)(a4)
	bgtu	a4,a5,.L72
	.loc 1 482 153 is_stmt 1 discriminator 5
	.loc 1 482 237 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL33:
	.loc 1 482 153 discriminator 5
	beq	a0,zero,.L27
	.loc 1 482 266 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL34:
.L63:
	.loc 1 482 297 discriminator 8
	mv	a2,a0
	.loc 1 482 153 discriminator 8
	lui	a1,%hi(.LC5)
	lui	a0,%hi(.LC8)
	li	a4,482
	addi	a3,s0,%lo(.LC2)
	addi	a1,a1,%lo(.LC5)
	addi	a0,a0,%lo(.LC8)
	j	.L71
.LVL35:
.L22:
.LBB27:
.LBB24:
	.loc 1 129 136
	call	xTaskGetTickCount
.LVL36:
	j	.L62
.L20:
.LVL37:
.LBE24:
.LBE27:
	.loc 1 481 5 is_stmt 1
	.loc 1 486 5
	.loc 1 486 33 is_stmt 0
	li	a0,24
	call	pvPortMalloc
.LVL38:
	mv	s1,a0
.LVL39:
	.loc 1 487 5 is_stmt 1
	.loc 1 487 8 is_stmt 0
	bne	a0,zero,.L59
	.loc 1 488 9 is_stmt 1 discriminator 1
	.loc 1 488 47 discriminator 1
	.loc 1 488 52 discriminator 1
	.loc 1 488 74 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 488 55 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	bgtu	a4,a5,.L72
	.loc 1 488 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_adc)
	.loc 1 488 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_adc)(a4)
	bgtu	a4,a5,.L72
	.loc 1 488 153 is_stmt 1 discriminator 5
	.loc 1 488 247 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL40:
	.loc 1 488 153 discriminator 5
	beq	a0,zero,.L29
	.loc 1 488 276 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL41:
.L64:
	.loc 1 488 307 discriminator 8
	mv	a2,a0
	.loc 1 488 153 discriminator 8
	lui	a3,%hi(.LC2)
	lui	a1,%hi(.LC5)
	lui	a0,%hi(.LC9)
	li	a4,488
	addi	a3,a3,%lo(.LC2)
	addi	a1,a1,%lo(.LC5)
	addi	a0,a0,%lo(.LC9)
	j	.L71
.LVL42:
.L27:
	.loc 1 482 297 discriminator 8
	call	xTaskGetTickCount
.LVL43:
	j	.L63
.LVL44:
.L29:
	.loc 1 488 307 discriminator 8
	call	xTaskGetTickCount
.LVL45:
	j	.L64
.L59:
	.loc 1 492 5 is_stmt 1
	li	a2,24
	li	a1,0
	call	memset
.LVL46:
	.loc 1 493 5
	.loc 1 495 8 is_stmt 0
	lw	a5,12(s0)
	.loc 1 493 15
	sw	s1,32(s0)
	.loc 1 495 5 is_stmt 1
	.loc 1 495 8 is_stmt 0
	bne	a5,zero,.L31
	.loc 1 496 9 is_stmt 1
	.loc 1 496 23 is_stmt 0
	addi	a5,s4,-27
	.loc 1 496 12
	li	a4,313
	bleu	a5,a4,.L32
	.loc 1 497 13 is_stmt 1 discriminator 1
	.loc 1 497 51 discriminator 1
	.loc 1 497 56 discriminator 1
	.loc 1 497 78 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 497 59 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	bgtu	a4,a5,.L72
	.loc 1 497 122 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_adc)
	.loc 1 497 101 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_adc)(a4)
	bgtu	a4,a5,.L72
	.loc 1 497 157 is_stmt 1 discriminator 5
	.loc 1 497 271 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL47:
	.loc 1 497 157 discriminator 5
	beq	a0,zero,.L33
	.loc 1 497 300 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL48:
.L65:
	.loc 1 497 331 discriminator 8
	mv	a2,a0
	.loc 1 497 157 discriminator 8
	lui	a3,%hi(.LC2)
	lui	a1,%hi(.LC5)
	lui	a0,%hi(.LC10)
	li	a4,497
	addi	a3,a3,%lo(.LC2)
	addi	a1,a1,%lo(.LC5)
	addi	a0,a0,%lo(.LC10)
	j	.L71
.L33:
	.loc 1 497 331 discriminator 8
	call	xTaskGetTickCount
.LVL49:
	j	.L65
.L32:
	.loc 1 508 9 is_stmt 1
	li	a2,1
	addi	a1,sp,4
	li	a0,10
	call	GLB_GPIO_Func_Init
.LVL50:
	.loc 1 511 9
.LBB28:
.LBB29:
	.loc 1 180 5
	.loc 1 181 5
	.loc 1 182 5
	.loc 1 184 5
	.loc 1 184 8 is_stmt 0
	lw	a5,12(s0)
	.loc 1 187 19
	li	s2,1
	.loc 1 184 8
	bne	a5,zero,.L35
	.loc 1 185 19
	li	s2,10
.L35:
.LVL51:
	.loc 1 190 5 is_stmt 1
	.loc 1 190 40 is_stmt 0
	li	a5,4096
	addi	a5,a5,1024
	mul	s2,s2,a5
.LVL52:
	.loc 1 190 17
	li	a5,96002048
	addi	a5,a5,-2048
	divu	s2,a5,s2
.LVL53:
	.loc 1 192 5 is_stmt 1
	.loc 1 192 9 is_stmt 0
	divu	s1,s2,s4
.LVL54:
	.loc 1 193 5 is_stmt 1
	.loc 1 193 15 is_stmt 0
	addi	a4,s1,1
	.loc 1 193 20
	mul	a5,s4,a4
	.loc 1 193 8
	remu	s4,s2,s4
.LVL55:
	.loc 1 193 27
	sub	a5,a5,s2
	.loc 1 193 8
	bgeu	a5,s4,.L36
	.loc 1 194 13
	mv	s1,a4
.LVL56:
.L36:
	.loc 1 197 5 is_stmt 1
	li	a5,64
	bleu	s1,a5,.L37
	li	s1,64
.LVL57:
.L37:
	.loc 1 203 5
	.loc 1 213 5
	.loc 1 213 10
	.loc 1 213 12
	.loc 1 213 77 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL58:
	.loc 1 213 12
	beq	a0,zero,.L38
	.loc 1 213 104
	call	xTaskGetTickCountFromISR
.LVL59:
.L66:
	.loc 1 213 12
	divu	a5,s2,s1
	.loc 1 213 133
	mv	a1,a0
	.loc 1 213 12
	lui	s4,%hi(.LC2)
	lui	a2,%hi(.LC11)
	lui	a0,%hi(.LC12)
	mv	a6,s1
	li	a4,213
	addi	a3,s4,%lo(.LC2)
	addi	a2,a2,%lo(.LC11)
	addi	a0,a0,%lo(.LC12)
	call	bl_printk
.LVL60:
	.loc 1 213 217 is_stmt 1
	.loc 1 213 226
	.loc 1 215 5
	addi	a2,s1,-1
	andi	a2,a2,0xff
	li	a1,0
	li	a0,1
	call	GLB_Set_ADC_CLK
.LVL61:
.LBE29:
.LBE28:
	.loc 1 512 9
.LBB31:
.LBB32:
	.loc 1 304 5
	.loc 1 308 5
	.loc 1 308 13 is_stmt 0
	addi	a1,s3,%lo(.LANCHOR0)
	li	a2,10
	addi	a1,a1,40
	addi	a0,sp,16
	call	memcpy
.LVL62:
	.loc 1 310 5 is_stmt 1
	.loc 1 320 18 is_stmt 0
	li	a3,5
	.loc 1 319 18
	li	a5,1
	.loc 1 318 18
	li	a4,2
	.loc 1 310 29
	lw	s2,12(s0)
.LVL63:
	.loc 1 311 5 is_stmt 1
	.loc 1 320 18 is_stmt 0
	sw	a3,116(sp)
	.loc 1 321 20
	li	a3,4
	.loc 1 318 18
	sw	a4,108(sp)
	.loc 1 319 18
	sw	a5,112(sp)
	.loc 1 321 20
	sw	a3,148(sp)
	.loc 1 331 21
	sw	a5,120(sp)
	.loc 1 332 21
	sw	a5,124(sp)
	.loc 1 333 24
	sw	a4,128(sp)
	.loc 1 343 15
	sw	a5,136(sp)
	.loc 1 311 19
	lw	s1,8(s0)
.LVL64:
	.loc 1 313 5 is_stmt 1
	.loc 1 314 5
	.loc 1 315 5
	.loc 1 316 5
	.loc 1 318 5
	.loc 1 319 5
	.loc 1 320 5
	.loc 1 321 5
	.loc 1 324 5
	.loc 1 331 9
	.loc 1 332 9
	.loc 1 333 9
	.loc 1 342 5
	.loc 1 342 19 is_stmt 0
	sw	zero,132(sp)
	.loc 1 343 5 is_stmt 1
	.loc 1 348 5
	.loc 1 348 16 is_stmt 0
	sw	zero,140(sp)
	.loc 1 351 5 is_stmt 1
	.loc 1 351 21 is_stmt 0
	sw	zero,144(sp)
	.loc 1 352 5 is_stmt 1
	.loc 1 352 25 is_stmt 0
	sw	zero,152(sp)
	.loc 1 353 5 is_stmt 1
	.loc 1 353 26 is_stmt 0
	sh	zero,156(sp)
	.loc 1 355 5 is_stmt 1
	call	ADC_Disable
.LVL65:
	.loc 1 356 5
	call	ADC_Enable
.LVL66:
	.loc 1 357 5
	call	ADC_Reset
.LVL67:
	.loc 1 359 5
	addi	a0,sp,108
	call	ADC_Init
.LVL68:
	.loc 1 361 5
	.loc 1 361 8 is_stmt 0
	bne	s2,zero,.L40
	addi	a3,sp,28
	addi	a4,sp,68
	.loc 1 362 16
	li	a5,0
	mv	a0,a3
	mv	a1,a4
	.loc 1 364 34
	li	a6,23
	.loc 1 362 9
	li	a2,10
.LVL69:
.L41:
	.loc 1 363 13 is_stmt 1
	.loc 1 363 49 is_stmt 0
	addi	s1,sp,16
	add	a7,s1,a5
	lbu	a7,0(a7)
	.loc 1 364 34
	sw	a6,0(a4)
	.loc 1 362 30
	addi	a5,a5,1
.LVL70:
	.loc 1 363 49
	sw	a7,0(a3)
	.loc 1 363 53 is_stmt 1
	.loc 1 364 13
	.loc 1 362 29
.LVL71:
	.loc 1 362 21
	.loc 1 362 9 is_stmt 0
	addi	a4,a4,4
	addi	a3,a3,4
	bne	a5,a2,.L41
	.loc 1 367 9 is_stmt 1
	li	a3,1
	li	a2,10
	call	ADC_Scan_Channel_Config
.LVL72:
.L42:
	.loc 1 375 5
	.loc 1 376 24 is_stmt 0
	li	a5,1
	.loc 1 377 5
	addi	a0,sp,8
	.loc 1 376 24
	sw	a5,12(sp)
	.loc 1 375 32
	sw	zero,8(sp)
	.loc 1 376 5 is_stmt 1
	.loc 1 377 5
	call	ADC_FIFO_Cfg
.LVL73:
	.loc 1 379 5
	call	ADC_SET_TSVBE_LOW
.LVL74:
.LBE32:
.LBE31:
	.loc 1 513 9
.LBB38:
.LBB39:
	.loc 1 246 5
	.loc 1 247 5
	.loc 1 248 5
	.loc 1 249 5
	.loc 1 257 21 is_stmt 0
	li	a0,0
	.loc 1 249 22
	lw	s2,32(s0)
.LVL75:
	.loc 1 251 5 is_stmt 1
	.loc 1 257 5
	.loc 1 257 21 is_stmt 0
	call	hosal_dma_chan_request
.LVL76:
	.loc 1 257 19
	sw	a0,20(s0)
	.loc 1 259 5 is_stmt 1
	.loc 1 259 14 is_stmt 0
	li	a0,32
	call	pvPortMalloc
.LVL77:
	mv	s1,a0
.LVL78:
	.loc 1 260 5 is_stmt 1
	.loc 1 260 8 is_stmt 0
	bne	a0,zero,.L44
	.loc 1 261 9 is_stmt 1
	.loc 1 261 47
	.loc 1 261 52
	.loc 1 261 74 is_stmt 0
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 261 55
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	bgtu	a4,a5,.L46
	.loc 1 261 118
	lui	a4,%hi(_fsymf_level_hosalhosal_adc)
	.loc 1 261 97
	lw	a4,%lo(_fsymf_level_hosalhosal_adc)(a4)
	bgtu	a4,a5,.L46
	.loc 1 261 153 is_stmt 1
	.loc 1 261 243 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL79:
	.loc 1 261 153
	beq	a0,zero,.L48
	.loc 1 261 272
	call	xTaskGetTickCountFromISR
.LVL80:
.L67:
	.loc 1 261 303
	mv	a2,a0
	.loc 1 261 153
	lui	a1,%hi(.LC5)
	lui	a0,%hi(.LC14)
	li	a4,261
	addi	a3,s4,%lo(.LC2)
	addi	a1,a1,%lo(.LC5)
	addi	a0,a0,%lo(.LC14)
.L69:
	.loc 1 268 153
	call	bl_printk
.LVL81:
.L46:
.LBE39:
.LBE38:
	.loc 1 514 9 is_stmt 1
.LBB43:
.LBB44:
	.loc 1 384 5
	lbu	s1,20(s0)
	li	a2,1
	li	a1,2
	mv	a0,s1
	call	DMA_IntMask
.LVL82:
	.loc 1 385 5
	li	a2,0
	li	a1,0
	mv	a0,s1
	call	DMA_IntMask
.LVL83:
	.loc 1 386 5
	li	a2,0
	li	a1,1
	mv	a0,s1
	call	DMA_IntMask
.LVL84:
	.loc 1 388 5
	call	ADC_Start
.LVL85:
	.loc 1 389 5
	call	DMA_Enable
.LVL86:
	.loc 1 390 5
	mv	a0,s1
	call	DMA_Channel_Enable
.LVL87:
.LBE44:
.LBE43:
	.loc 1 520 5
	.loc 1 520 14 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	sw	s0,%lo(.LANCHOR2)(a5)
	.loc 1 522 5 is_stmt 1
	.loc 1 522 12 is_stmt 0
	li	a0,0
.LVL88:
.L13:
	.loc 1 523 1
	lw	ra,188(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,184(sp)
	.cfi_restore 8
	lw	s1,180(sp)
	.cfi_restore 9
	lw	s2,176(sp)
	.cfi_restore 18
	lw	s3,172(sp)
	.cfi_restore 19
	lw	s4,168(sp)
	.cfi_restore 20
	addi	sp,sp,192
	.cfi_def_cfa_offset 0
	jr	ra
.LVL89:
.L38:
	.cfi_restore_state
.LBB45:
.LBB30:
	.loc 1 213 133
	call	xTaskGetTickCount
.LVL90:
	j	.L66
.LVL91:
.L40:
.LBE30:
.LBE45:
.LBB46:
.LBB37:
	.loc 1 370 9 is_stmt 1
.LBB33:
.LBB34:
	.loc 1 136 5
	.loc 1 138 5
	addi	a4,s1,-4
	li	a5,11
.LBE34:
.LBE33:
	.loc 1 361 8 is_stmt 0
	li	a0,-1
	bgtu	a4,a5,.L43
	lui	a5,%hi(.LANCHOR1)
	addi	a5,a5,%lo(.LANCHOR1)
	add	a5,a5,a4
	lb	a0,0(a5)
.L43:
.LVL92:
.LBB36:
.LBB35:
	.loc 1 175 5 is_stmt 1
.LBE35:
.LBE36:
	.loc 1 371 9
	li	a2,1
	li	a1,23
	call	ADC_Channel_Config
.LVL93:
	.loc 1 372 9
	li	a0,0
	call	ADC_Mic_Init
.LVL94:
	j	.L42
.LVL95:
.L48:
.LBE37:
.LBE46:
.LBB47:
.LBB42:
	.loc 1 261 303 is_stmt 0
	call	xTaskGetTickCount
.LVL96:
	j	.L67
.L44:
	.loc 1 266 5 is_stmt 1
	.loc 1 266 14 is_stmt 0
	li	a0,80
	call	pvPortMalloc
.LVL97:
	mv	s3,a0
.LVL98:
	.loc 1 267 5 is_stmt 1
	.loc 1 267 8 is_stmt 0
	bne	a0,zero,.L50
	.loc 1 268 9 is_stmt 1
	.loc 1 268 47
	.loc 1 268 52
	.loc 1 268 74 is_stmt 0
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 268 55
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	bgtu	a4,a5,.L46
	.loc 1 268 118
	lui	a4,%hi(_fsymf_level_hosalhosal_adc)
	.loc 1 268 97
	lw	a4,%lo(_fsymf_level_hosalhosal_adc)(a4)
	bgtu	a4,a5,.L46
	.loc 1 268 153 is_stmt 1
	.loc 1 268 247 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL99:
	.loc 1 268 153
	beq	a0,zero,.L51
	.loc 1 268 276
	call	xTaskGetTickCountFromISR
.LVL100:
.L68:
	.loc 1 268 307
	mv	a2,a0
	.loc 1 268 153
	lui	a1,%hi(.LC5)
	lui	a0,%hi(.LC15)
	li	a4,268
	addi	a3,s4,%lo(.LC2)
	addi	a1,a1,%lo(.LC5)
	addi	a0,a0,%lo(.LC15)
	j	.L69
.L51:
	.loc 1 268 307
	call	xTaskGetTickCount
.LVL101:
	j	.L68
.LVL102:
.L50:
	.loc 1 273 5 is_stmt 1
	.loc 1 276 5 is_stmt 0
	lbu	a0,20(s0)
.LVL103:
	.loc 1 273 16
	li	a5,2
	sw	a5,108(sp)
	.loc 1 274 5 is_stmt 1
	.loc 1 274 22 is_stmt 0
	li	a5,22
	sw	a5,112(sp)
	.loc 1 275 5 is_stmt 1
	.loc 1 275 22 is_stmt 0
	sw	zero,116(sp)
	.loc 1 276 5 is_stmt 1
	call	DMA_Channel_Disable
.LVL104:
	.loc 1 278 5
.LBB40:
.LBB41:
	.loc 1 220 5
	.loc 1 222 5
	.loc 1 223 5
	.loc 1 224 5
	.loc 1 225 5
	.loc 1 226 5
	.loc 1 227 5
	.loc 1 228 5
	.loc 1 229 5
	.loc 1 230 5
	.loc 1 231 5
	.loc 1 233 5
	.loc 1 236 22 is_stmt 0
	lw	a4,12(s1)
	.loc 1 235 35
	addi	a5,s1,16
	.loc 1 235 23
	sw	a5,8(s1)
	.loc 1 236 22
	li	a3,-2008547328
	li	a5,33554432
	addi	a3,a3,10
	and	a4,a5,a4
	or	a4,a4,a3
	sw	a4,12(s1)
	.loc 1 239 39
	addi	a4,s3,40
	.loc 1 239 27
	sw	a4,20(s1)
	.loc 1 241 22
	lw	a4,28(s1)
	.loc 1 233 26
	li	a2,1073750016
	addi	a2,a2,4
	.loc 1 241 22
	and	a5,a5,a4
	or	a5,a5,a3
	.loc 1 233 26
	sw	a2,0(s1)
	.loc 1 234 5 is_stmt 1
	.loc 1 238 26 is_stmt 0
	sw	a2,16(s1)
	.loc 1 241 22
	sw	a5,28(s1)
	.loc 1 234 27
	sw	s3,4(s1)
	.loc 1 235 5 is_stmt 1
	.loc 1 236 5
	.loc 1 238 5
	.loc 1 239 5
	.loc 1 240 5
	.loc 1 240 23 is_stmt 0
	sw	s1,24(s1)
	.loc 1 241 5 is_stmt 1
.LVL105:
.LBE41:
.LBE40:
	.loc 1 279 5
	lbu	a0,20(s0)
	addi	a1,sp,108
	call	DMA_LLI_Init
.LVL106:
	.loc 1 280 5
	lbu	a0,20(s0)
	mv	a1,s1
	call	DMA_LLI_Update
.LVL107:
	.loc 1 282 5
	.loc 1 287 23 is_stmt 0
	li	a5,10
	.loc 1 282 20
	sw	s3,8(s2)
	.loc 1 283 5 is_stmt 1
	.loc 1 283 21 is_stmt 0
	sw	s1,4(s2)
	.loc 1 284 5 is_stmt 1
	.loc 1 284 22 is_stmt 0
	sw	zero,12(s2)
	.loc 1 285 5 is_stmt 1
	.loc 1 285 29 is_stmt 0
	sw	zero,16(s2)
	.loc 1 286 5 is_stmt 1
	.loc 1 286 26 is_stmt 0
	sw	zero,0(s2)
	.loc 1 287 5 is_stmt 1
	.loc 1 287 23 is_stmt 0
	sw	a5,20(s2)
	.loc 1 296 5 is_stmt 1
	lw	a0,20(s0)
	lui	a1,%hi(adc_data_update)
	mv	a2,s0
	addi	a1,a1,%lo(adc_data_update)
	call	hosal_dma_irq_callback_set
.LVL108:
	.loc 1 298 5
	.loc 1 298 12 is_stmt 0
	j	.L46
.LVL109:
.L31:
.LBE42:
.LBE47:
	.loc 1 516 9 is_stmt 1
	.loc 1 516 14
	.loc 1 516 16
	.loc 1 516 83 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL110:
	.loc 1 516 16
	beq	a0,zero,.L53
	.loc 1 516 110 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL111:
.L70:
	.loc 1 516 139 discriminator 2
	mv	a1,a0
	.loc 1 516 16 discriminator 2
	lui	a3,%hi(.LC2)
	lui	a2,%hi(.LC3)
	lui	a0,%hi(.LC16)
	li	a4,516
	addi	a3,a3,%lo(.LC2)
	addi	a2,a2,%lo(.LC3)
	addi	a0,a0,%lo(.LC16)
	j	.L71
.L53:
	.loc 1 516 139 discriminator 2
	call	xTaskGetTickCount
.LVL112:
	j	.L70
	.cfi_endproc
.LFE17:
	.size	hosal_adc_init, .-hosal_adc_init
	.section	.rodata.hosal_adc_add_channel.str1.4,"aMS",@progbits,1
	.align	2
.LC17:
	.string	"%s (%d)[%s:%4d] channel is error!\033[0m\r\n"
	.section	.text.hosal_adc_add_channel,"ax",@progbits
	.align	1
	.globl	hosal_adc_add_channel
	.type	hosal_adc_add_channel, @function
hosal_adc_add_channel:
.LFB18:
	.loc 1 526 1 is_stmt 1
	.cfi_startproc
.LVL113:
	.loc 1 527 5
	.loc 1 526 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.loc 1 535 8
	li	a5,11
	.loc 1 527 22
	lw	s1,32(a0)
.LVL114:
	.loc 1 528 5 is_stmt 1
	.loc 1 530 5
	.loc 1 535 5
	.loc 1 535 8 is_stmt 0
	bleu	a1,a5,.L74
.LVL115:
.LBB50:
.LBB51:
	.loc 1 536 9 is_stmt 1
	.loc 1 536 47
	.loc 1 536 52
	.loc 1 536 74 is_stmt 0
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 536 55
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	li	a0,-1
.LVL116:
	bgtu	a4,a5,.L73
	.loc 1 536 118
	lui	a4,%hi(_fsymf_level_hosalhosal_adc)
	.loc 1 536 97
	lw	a4,%lo(_fsymf_level_hosalhosal_adc)(a4)
	bgtu	a4,a5,.L73
	.loc 1 536 153 is_stmt 1
	.loc 1 536 237 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL117:
	.loc 1 536 153
	beq	a0,zero,.L76
	.loc 1 536 266
	call	xTaskGetTickCountFromISR
.LVL118:
.L81:
	.loc 1 536 297
	mv	a2,a0
	.loc 1 536 153
	lui	a3,%hi(.LC2)
	lui	a1,%hi(.LC5)
	lui	a0,%hi(.LC17)
	addi	a0,a0,%lo(.LC17)
	li	a4,536
	addi	a3,a3,%lo(.LC2)
	addi	a1,a1,%lo(.LC5)
	call	bl_printk
.LVL119:
	li	a0,-1
.LVL120:
.L73:
.LBE51:
.LBE50:
	.loc 1 546 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
.LVL121:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL122:
.L76:
	.cfi_restore_state
.LBB53:
.LBB52:
	.loc 1 536 297
	call	xTaskGetTickCount
.LVL123:
	j	.L81
.LVL124:
.L74:
.LBE52:
.LBE53:
	.loc 1 540 9
	lw	a5,8(a0)
	mv	s0,a1
	.loc 1 540 5 is_stmt 1
	.loc 1 541 5 is_stmt 0
	li	a2,1
	addi	a1,sp,12
.LVL125:
	li	a0,10
.LVL126:
	.loc 1 540 9
	sw	a5,12(sp)
	.loc 1 541 5 is_stmt 1
	call	GLB_GPIO_Func_Init
.LVL127:
	.loc 1 543 5
	.loc 1 543 34 is_stmt 0
	li	a1,1
	sll	a1,a1,s0
	.loc 1 543 29
	lw	s0,16(s1)
.LVL128:
	.loc 1 545 12
	li	a0,0
	.loc 1 543 29
	or	s0,s0,a1
	sw	s0,16(s1)
	.loc 1 545 5 is_stmt 1
	.loc 1 545 12 is_stmt 0
	j	.L73
	.cfi_endproc
.LFE18:
	.size	hosal_adc_add_channel, .-hosal_adc_add_channel
	.section	.rodata.hosal_adc_remove_channel.str1.4,"aMS",@progbits,1
	.align	2
.LC18:
	.string	"%s (%d)[%s:%4d] channel is error!\r\n\033[0m\r\n"
	.section	.text.hosal_adc_remove_channel,"ax",@progbits
	.align	1
	.globl	hosal_adc_remove_channel
	.type	hosal_adc_remove_channel, @function
hosal_adc_remove_channel:
.LFB19:
	.loc 1 549 1 is_stmt 1
	.cfi_startproc
.LVL129:
	.loc 1 550 5
	.loc 1 557 8 is_stmt 0
	li	a5,11
	.loc 1 550 22
	lw	a4,32(a0)
.LVL130:
	.loc 1 552 5 is_stmt 1
	.loc 1 557 5
	.loc 1 557 8 is_stmt 0
	bleu	a1,a5,.L83
.LVL131:
.LBB56:
.LBB57:
	.loc 1 558 9 is_stmt 1
	.loc 1 558 47
	.loc 1 558 52
	.loc 1 558 74 is_stmt 0
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 558 55
	lw	a4,%lo(_fsymc_level_hosal)(a5)
.LVL132:
	li	a5,4
	li	a0,-1
.LVL133:
	bgtu	a4,a5,.L90
	.loc 1 558 118
	lui	a4,%hi(_fsymf_level_hosalhosal_adc)
	.loc 1 558 97
	lw	a4,%lo(_fsymf_level_hosalhosal_adc)(a4)
	bgtu	a4,a5,.L90
	.loc 1 558 153 is_stmt 1
.LBE57:
.LBE56:
	.loc 1 549 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
.LVL134:
	.cfi_offset 1, -4
.LBB61:
.LBB58:
	.loc 1 558 241
	call	xPortIsInsideInterrupt
.LVL135:
	.loc 1 558 153
	beq	a0,zero,.L85
	.loc 1 558 270
	call	xTaskGetTickCountFromISR
.LVL136:
.L93:
	.loc 1 558 301
	mv	a2,a0
	.loc 1 558 153
	lui	a3,%hi(.LC2)
	lui	a1,%hi(.LC5)
	lui	a0,%hi(.LC18)
	addi	a0,a0,%lo(.LC18)
	li	a4,558
	addi	a3,a3,%lo(.LC2)
	addi	a1,a1,%lo(.LC5)
	call	bl_printk
.LVL137:
.LBE58:
.LBE61:
	.loc 1 565 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
.LBB62:
.LBB59:
	.loc 1 558 153
	li	a0,-1
.LBE59:
.LBE62:
	.loc 1 565 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L85:
	.cfi_restore_state
.LBB63:
.LBB60:
	.loc 1 558 301
	call	xTaskGetTickCount
.LVL138:
	j	.L93
.LVL139:
.L83:
	.cfi_def_cfa_offset 0
	.cfi_restore 1
.LBE60:
.LBE63:
	.loc 1 562 5 is_stmt 1
	.loc 1 562 36 is_stmt 0
	li	a5,1
	sll	a1,a5,a1
.LVL140:
	.loc 1 562 29
	lw	a5,16(a4)
	.loc 1 562 32
	not	a1,a1
	.loc 1 564 12
	li	a0,0
.LVL141:
	.loc 1 562 29
	and	a1,a5,a1
	sw	a1,16(a4)
	.loc 1 564 5 is_stmt 1
	.loc 1 564 12 is_stmt 0
	ret
.LVL142:
.L90:
	.loc 1 565 1
	ret
	.cfi_endproc
.LFE19:
	.size	hosal_adc_remove_channel, .-hosal_adc_remove_channel
	.section	.text.hosal_adc_add_reference_channel,"ax",@progbits
	.align	1
	.globl	hosal_adc_add_reference_channel
	.type	hosal_adc_add_reference_channel, @function
hosal_adc_add_reference_channel:
.LFB20:
	.loc 1 568 1 is_stmt 1
	.cfi_startproc
.LVL143:
	.loc 1 569 5
	.loc 1 569 23 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	sw	a1,%lo(.LANCHOR3)(a5)
	.loc 1 570 5 is_stmt 1
	.loc 1 570 23 is_stmt 0
	lui	a5,%hi(.LANCHOR4)
	fsw	fa0,%lo(.LANCHOR4)(a5)
	.loc 1 571 5 is_stmt 1
	.loc 1 571 12 is_stmt 0
	tail	hosal_adc_add_channel
.LVL144:
	.cfi_endproc
.LFE20:
	.size	hosal_adc_add_reference_channel, .-hosal_adc_add_reference_channel
	.section	.text.hosal_adc_remove_reference_channel,"ax",@progbits
	.align	1
	.globl	hosal_adc_remove_reference_channel
	.type	hosal_adc_remove_reference_channel, @function
hosal_adc_remove_reference_channel:
.LFB21:
	.loc 1 575 1 is_stmt 1
	.cfi_startproc
.LVL145:
	.loc 1 576 5
	.loc 1 576 14 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	addi	a5,a5,%lo(.LANCHOR3)
	lw	a1,0(a5)
.LVL146:
	.loc 1 577 5 is_stmt 1
	.loc 1 577 23 is_stmt 0
	li	a4,-1
	sw	a4,0(a5)
	.loc 1 578 5 is_stmt 1
	.loc 1 578 12 is_stmt 0
	tail	hosal_adc_remove_channel
.LVL147:
	.cfi_endproc
.LFE21:
	.size	hosal_adc_remove_reference_channel, .-hosal_adc_remove_reference_channel
	.section	.rodata.hosal_adc_device_get.str1.4,"aMS",@progbits,1
	.align	2
.LC19:
	.string	"%s (%d)[%s:%4d] please init adc first!\r\n\033[0m\r\n"
	.section	.text.hosal_adc_device_get,"ax",@progbits
	.align	1
	.globl	hosal_adc_device_get
	.type	hosal_adc_device_get, @function
hosal_adc_device_get:
.LFB22:
	.loc 1 582 1 is_stmt 1
	.cfi_startproc
	.loc 1 583 5
	.loc 1 582 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 583 13
	lui	a5,%hi(.LANCHOR2)
	.loc 1 582 1
	sw	s0,8(sp)
	.cfi_offset 8, -8
	.loc 1 583 13
	lw	s0,%lo(.LANCHOR2)(a5)
	.loc 1 582 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 583 8
	bne	s0,zero,.L96
	.loc 1 584 9 is_stmt 1 discriminator 1
	.loc 1 584 47 discriminator 1
	.loc 1 584 52 discriminator 1
	.loc 1 584 74 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 584 55 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	bgtu	a4,a5,.L96
	.loc 1 584 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_adc)
	.loc 1 584 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_adc)(a4)
	bgtu	a4,a5,.L96
	.loc 1 584 153 is_stmt 1 discriminator 5
	.loc 1 584 246 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL148:
	.loc 1 584 153 discriminator 5
	beq	a0,zero,.L98
	.loc 1 584 275 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL149:
.L101:
	.loc 1 584 306 discriminator 8
	mv	a2,a0
	.loc 1 584 153 discriminator 8
	lui	a3,%hi(.LC2)
	lui	a1,%hi(.LC5)
	lui	a0,%hi(.LC19)
	li	a4,584
	addi	a3,a3,%lo(.LC2)
	addi	a1,a1,%lo(.LC5)
	addi	a0,a0,%lo(.LC19)
	call	bl_printk
.LVL150:
.L96:
	.loc 1 589 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L98:
	.cfi_restore_state
	.loc 1 584 306 discriminator 8
	call	xTaskGetTickCount
.LVL151:
	j	.L101
	.cfi_endproc
.LFE22:
	.size	hosal_adc_device_get, .-hosal_adc_device_get
	.section	.rodata.hosal_adc_value_get.str1.4,"aMS",@progbits,1
	.align	2
.LC20:
	.string	"%s (%d)[%s:%4d] channel = %d  not init as adc \r\n\033[0m\r\n"
	.align	2
.LC21:
	.string	"%s (%d)[%s:%4d] adc sampling not finish. \r\n\033[0m\r\n"
	.section	.text.hosal_adc_value_get,"ax",@progbits
	.align	1
	.globl	hosal_adc_value_get
	.type	hosal_adc_value_get, @function
hosal_adc_value_get:
.LFB23:
	.loc 1 592 1 is_stmt 1
	.cfi_startproc
.LVL152:
	.loc 1 593 5
	.loc 1 594 5
	.loc 1 592 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	s5,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.loc 1 601 8
	li	a5,11
	.loc 1 594 22
	lw	s3,32(a0)
.LVL153:
	.loc 1 596 5 is_stmt 1
	.loc 1 601 5
	.loc 1 601 8 is_stmt 0
	bleu	a1,a5,.L103
	.loc 1 602 9 is_stmt 1 discriminator 1
	.loc 1 602 47 discriminator 1
	.loc 1 602 52 discriminator 1
	.loc 1 602 74 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 602 55 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	bleu	a4,a5,.L104
.LVL154:
.L131:
	.loc 1 603 16 discriminator 10
	li	s0,-1
.L102:
	.loc 1 635 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
.LVL155:
	lw	s4,8(sp)
	.cfi_restore 20
	lw	s5,4(sp)
	.cfi_restore 21
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL156:
.L104:
	.cfi_restore_state
	.loc 1 602 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_adc)
	.loc 1 602 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_adc)(a4)
	bgtu	a4,a5,.L131
	.loc 1 602 153 is_stmt 1 discriminator 5
	.loc 1 602 241 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL157:
	.loc 1 602 153 discriminator 5
	beq	a0,zero,.L107
	.loc 1 602 270 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL158:
.L128:
	.loc 1 602 301 discriminator 8
	mv	a2,a0
	.loc 1 602 153 discriminator 8
	lui	a3,%hi(.LC2)
	lui	a1,%hi(.LC5)
	lui	a0,%hi(.LC18)
	li	a4,602
	addi	a3,a3,%lo(.LC2)
	addi	a1,a1,%lo(.LC5)
	addi	a0,a0,%lo(.LC18)
.L132:
	.loc 1 602 153 discriminator 10
	call	bl_printk
.LVL159:
	j	.L131
.L107:
	.loc 1 602 301 discriminator 8
	call	xTaskGetTickCount
.LVL160:
	j	.L128
.LVL161:
.L103:
	.loc 1 606 25
	lw	a4,16(s3)
	.loc 1 606 13
	li	a5,1
	sll	a5,a5,a1
	.loc 1 606 25
	and	a5,a5,a4
	mv	s2,a1
	.loc 1 606 5 is_stmt 1
	.loc 1 606 8 is_stmt 0
	bne	a5,zero,.L109
	.loc 1 607 9 is_stmt 1 discriminator 1
	.loc 1 607 47 discriminator 1
	.loc 1 607 52 discriminator 1
	.loc 1 607 74 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 607 55 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	bgtu	a4,a5,.L131
	.loc 1 607 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_adc)
	.loc 1 607 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_adc)(a4)
	bgtu	a4,a5,.L131
	.loc 1 607 153 is_stmt 1 discriminator 5
	.loc 1 607 254 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL162:
	.loc 1 607 153 discriminator 5
	beq	a0,zero,.L110
	.loc 1 607 283 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL163:
.L129:
	.loc 1 607 314 discriminator 8
	mv	a2,a0
	.loc 1 607 153 discriminator 8
	lui	a3,%hi(.LC2)
	lui	a1,%hi(.LC5)
	lui	a0,%hi(.LC20)
	mv	a5,s2
	li	a4,607
	addi	a3,a3,%lo(.LC2)
	addi	a1,a1,%lo(.LC5)
	addi	a0,a0,%lo(.LC20)
	call	bl_printk
.LVL164:
	j	.L131
.L110:
	.loc 1 607 314 discriminator 8
	call	xTaskGetTickCount
.LVL165:
	j	.L129
.LVL166:
.L109:
	.loc 1 611 8
	lw	a5,0(s3)
	mv	s1,a2
	.loc 1 611 5 is_stmt 1
	mv	s4,a2
	.loc 1 616 11 is_stmt 0
	li	s5,-1
	.loc 1 611 8
	bne	a5,zero,.L112
.LVL167:
	.loc 1 612 9 is_stmt 1 discriminator 1
	.loc 1 612 47 discriminator 1
	.loc 1 612 52 discriminator 1
	.loc 1 612 74 is_stmt 0 discriminator 1
	lui	a5,%hi(_fsymc_level_hosal)
	.loc 1 612 55 discriminator 1
	lw	a4,%lo(_fsymc_level_hosal)(a5)
	li	a5,4
	bgtu	a4,a5,.L131
	.loc 1 612 118 discriminator 3
	lui	a4,%hi(_fsymf_level_hosalhosal_adc)
	.loc 1 612 97 discriminator 3
	lw	a4,%lo(_fsymf_level_hosalhosal_adc)(a4)
	bgtu	a4,a5,.L131
	.loc 1 612 153 is_stmt 1 discriminator 5
	.loc 1 612 249 is_stmt 0 discriminator 5
	call	xPortIsInsideInterrupt
.LVL168:
	.loc 1 612 153 discriminator 5
	beq	a0,zero,.L113
	.loc 1 612 278 discriminator 7
	call	xTaskGetTickCountFromISR
.LVL169:
.L130:
	.loc 1 612 309 discriminator 8
	mv	a2,a0
	.loc 1 612 153 discriminator 8
	lui	a3,%hi(.LC2)
	lui	a1,%hi(.LC5)
	lui	a0,%hi(.LC21)
	li	a4,612
	addi	a3,a3,%lo(.LC2)
	addi	a1,a1,%lo(.LC5)
	addi	a0,a0,%lo(.LC21)
	j	.L132
.L113:
	.loc 1 612 309 discriminator 8
	call	xTaskGetTickCount
.LVL170:
	j	.L130
.LVL171:
.L115:
	.loc 1 617 9 is_stmt 1
	.loc 1 617 12 is_stmt 0
	beq	s4,zero,.L131
	.loc 1 620 9 is_stmt 1
	li	a0,1
	call	vTaskDelay
.LVL172:
	addi	s4,s4,-1
.LVL173:
.L112:
	.loc 1 616 11
	.loc 1 616 19 is_stmt 0
	lw	a0,0(s3)
	mv	a1,s2
	call	adc_parse_data.constprop.0
.LVL174:
	mv	s0,a0
.LVL175:
	.loc 1 616 11
	beq	a0,s5,.L115
	.loc 1 623 5 is_stmt 1
	.loc 1 623 32 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	.loc 1 623 8
	lw	a3,%lo(.LANCHOR3)(a5)
	li	a4,11
	addi	s2,a5,%lo(.LANCHOR3)
.LVL176:
	.loc 1 624 15
	li	s4,-1
.LVL177:
	.loc 1 623 8
	bgtu	a3,a4,.L102
.LVL178:
.L116:
	.loc 1 624 15 is_stmt 1
	.loc 1 624 29 is_stmt 0
	lw	a1,0(s2)
	lw	a0,0(s3)
	call	adc_parse_data.constprop.0
.LVL179:
	.loc 1 624 15
	beq	a0,s4,.L117
	.loc 1 631 9 is_stmt 1
	.loc 1 631 26 is_stmt 0
	lui	a5,%hi(.LANCHOR4)
	fcvt.s.w	fa5,s0
	flw	fa4,%lo(.LANCHOR4)(a5)
	fmul.s	fa5,fa5,fa4
	.loc 1 631 46
	fcvt.s.w	fa4,a0
	fdiv.s	fa5,fa5,fa4
	.loc 1 631 16
	fcvt.w.s s0,fa5,rtz
.LVL180:
	j	.L102
.LVL181:
.L117:
	.loc 1 625 13 is_stmt 1
	.loc 1 625 16 is_stmt 0
	beq	s1,zero,.L131
	.loc 1 628 13 is_stmt 1
	li	a0,1
.LVL182:
	call	vTaskDelay
.LVL183:
	addi	s1,s1,-1
.LVL184:
	j	.L116
	.cfi_endproc
.LFE23:
	.size	hosal_adc_value_get, .-hosal_adc_value_get
	.section	.rodata.hosal_adc_sample_cb_reg.str1.4,"aMS",@progbits,1
	.align	2
.LC22:
	.string	"[%10u][%s: %s:%4d] not support now!\r\n"
	.section	.text.hosal_adc_sample_cb_reg,"ax",@progbits
	.align	1
	.globl	hosal_adc_sample_cb_reg
	.type	hosal_adc_sample_cb_reg, @function
hosal_adc_sample_cb_reg:
.LFB24:
	.loc 1 647 1
	.cfi_startproc
.LVL185:
	.loc 1 648 5
	.loc 1 648 10
	.loc 1 648 12
	.loc 1 647 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 648 69
	call	xPortIsInsideInterrupt
.LVL186:
	.loc 1 648 12
	beq	a0,zero,.L134
	.loc 1 648 96 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL187:
.L137:
	.loc 1 648 125 discriminator 2
	mv	a1,a0
	.loc 1 648 12 discriminator 2
	lui	a3,%hi(.LC2)
	lui	a2,%hi(.LC3)
	lui	a0,%hi(.LC22)
	addi	a0,a0,%lo(.LC22)
	li	a4,648
	addi	a3,a3,%lo(.LC2)
	addi	a2,a2,%lo(.LC3)
	call	bl_printk
.LVL188:
	.loc 1 648 178 is_stmt 1 discriminator 2
	.loc 1 648 187 discriminator 2
	.loc 1 649 5 discriminator 2
	.loc 1 650 1 is_stmt 0 discriminator 2
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	li	a0,-1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L134:
	.cfi_restore_state
	.loc 1 648 125 discriminator 2
	call	xTaskGetTickCount
.LVL189:
	j	.L137
	.cfi_endproc
.LFE24:
	.size	hosal_adc_sample_cb_reg, .-hosal_adc_sample_cb_reg
	.section	.text.hosal_adc_start,"ax",@progbits
	.align	1
	.globl	hosal_adc_start
	.type	hosal_adc_start, @function
hosal_adc_start:
.LFB25:
	.loc 1 653 1 is_stmt 1
	.cfi_startproc
.LVL190:
	.loc 1 654 5
	.loc 1 654 10
	.loc 1 654 12
	.loc 1 653 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 654 69
	call	xPortIsInsideInterrupt
.LVL191:
	.loc 1 654 12
	beq	a0,zero,.L139
	.loc 1 654 96 discriminator 1
	call	xTaskGetTickCountFromISR
.LVL192:
.L142:
	.loc 1 654 125 discriminator 2
	mv	a1,a0
	.loc 1 654 12 discriminator 2
	lui	a3,%hi(.LC2)
	lui	a2,%hi(.LC3)
	lui	a0,%hi(.LC22)
	addi	a0,a0,%lo(.LC22)
	li	a4,654
	addi	a3,a3,%lo(.LC2)
	addi	a2,a2,%lo(.LC3)
	call	bl_printk
.LVL193:
	.loc 1 654 178 is_stmt 1 discriminator 2
	.loc 1 654 187 discriminator 2
	.loc 1 655 5 discriminator 2
	.loc 1 656 1 is_stmt 0 discriminator 2
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	li	a0,-1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.L139:
	.cfi_restore_state
	.loc 1 654 125 discriminator 2
	call	xTaskGetTickCount
.LVL194:
	j	.L142
	.cfi_endproc
.LFE25:
	.size	hosal_adc_start, .-hosal_adc_start
	.section	.text.hosal_adc_stop,"ax",@progbits
	.align	1
	.globl	hosal_adc_stop
	.type	hosal_adc_stop, @function
hosal_adc_stop:
.LFB26:
	.loc 1 659 1 is_stmt 1
	.cfi_startproc
.LVL195:
	.loc 1 660 4
	.loc 1 661 1 is_stmt 0
	li	a0,0
.LVL196:
	ret
	.cfi_endproc
.LFE26:
	.size	hosal_adc_stop, .-hosal_adc_stop
	.section	.text.hosal_adc_finalize,"ax",@progbits
	.align	1
	.globl	hosal_adc_finalize
	.type	hosal_adc_finalize, @function
hosal_adc_finalize:
.LFB27:
	.loc 1 664 1 is_stmt 1
	.cfi_startproc
.LVL197:
	.loc 1 665 5
	.loc 1 664 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.loc 1 665 22
	lw	s1,32(a0)
.LVL198:
	.loc 1 667 5 is_stmt 1
	.loc 1 672 5
	.loc 1 664 1 is_stmt 0
	mv	s0,a0
	.loc 1 672 5
	lw	a0,8(s1)
.LVL199:
	call	vPortFree
.LVL200:
	.loc 1 673 5 is_stmt 1
	lw	a0,4(s1)
	call	vPortFree
.LVL201:
	.loc 1 674 5
	mv	a0,s1
	call	vPortFree
.LVL202:
	.loc 1 675 5
	call	ADC_Stop
.LVL203:
	.loc 1 676 5
	lw	a0,20(s0)
	call	hosal_dma_chan_stop
.LVL204:
	.loc 1 677 5
	lw	a0,20(s0)
	call	hosal_dma_chan_release
.LVL205:
	.loc 1 679 5
	.loc 1 680 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL206:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL207:
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE27:
	.size	hosal_adc_finalize, .-hosal_adc_finalize
	.globl	_fsymf_info_hosalhosal_adc
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC23:
	.string	"hosal.hosal_adc"
	.comm	_fsymf_level_hosalhosal_adc,4,4
	.align	2
.LC24:
	.string	"hosal"
	.weak	_fsymc_level_hosal
	.section	.srodata.cst4,"aM",@progbits,4
	.align	2
.LC1:
	.word	1148846080
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC0:
	.word	4
	.word	5
	.word	6
	.word	9
	.word	10
	.word	11
	.word	12
	.word	13
	.word	14
	.word	15
.LC13:
	.string	""
	.ascii	"\001\002\003\004\005\007\t\n\013"
	.section	.rodata.CSWTCH.79,"a"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	CSWTCH.79, @object
	.size	CSWTCH.79, 12
CSWTCH.79:
	.byte	1
	.byte	4
	.byte	5
	.byte	-1
	.byte	-1
	.byte	7
	.byte	9
	.byte	10
	.byte	0
	.byte	3
	.byte	2
	.byte	11
	.section	.sbss._fsymc_level_hosal,"aw",@nobits
	.align	2
	.type	_fsymc_level_hosal, @object
	.size	_fsymc_level_hosal, 4
_fsymc_level_hosal:
	.zero	4
	.section	.sbss.pgdevice,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	pgdevice, @object
	.size	pgdevice, 4
pgdevice:
	.zero	4
	.section	.sdata.adc_refer_channel,"aw"
	.align	2
	.set	.LANCHOR3,. + 0
	.type	adc_refer_channel, @object
	.size	adc_refer_channel, 4
adc_refer_channel:
	.word	-1
	.section	.sdata.adc_refer_voltage,"aw"
	.align	2
	.set	.LANCHOR4,. + 0
	.type	adc_refer_voltage, @object
	.size	adc_refer_voltage, 4
adc_refer_voltage:
	.word	1065353216
	.section	.srodata.BLOG_HARD_DECLARE_DISABLE,"a"
	.align	2
	.type	BLOG_HARD_DECLARE_DISABLE, @object
	.size	BLOG_HARD_DECLARE_DISABLE, 4
BLOG_HARD_DECLARE_DISABLE:
	.zero	4
	.section	.static_blogcomponent_code.hosal,"a"
	.align	2
	.type	_fsymc_info_hosal, @object
	.size	_fsymc_info_hosal, 8
_fsymc_info_hosal:
	.word	_fsymc_level_hosal
	.word	.LC24
	.section	.static_blogfile_code.hosalhosal_adc,"a"
	.align	2
	.type	_fsymf_info_hosalhosal_adc, @object
	.size	_fsymf_info_hosalhosal_adc, 8
_fsymf_info_hosalhosal_adc:
	.word	_fsymf_level_hosalhosal_adc
	.word	.LC23
	.text
.Letext0:
	.file 2 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/blog/blog_type.h"
	.file 4 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/blog/blog.h"
	.file 5 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_gpio.h"
	.file 6 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 7 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_adc.h"
	.file 8 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/dma_reg.h"
	.file 9 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_dma.h"
	.file 10 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h"
	.file 11 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/include/hosal_dma.h"
	.file 12 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/include/hosal_adc.h"
	.file 13 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Common/platform_print/bflb_platform.h"
	.file 14 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 15 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 16 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/utils/include/utils_log.h"
	.file 17 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 18 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1d3a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF335
	.byte	0xc
	.4byte	.LASF336
	.4byte	.LASF337
	.4byte	.Ldebug_ranges0+0xc8
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF1
	.byte	0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x22
	.byte	0x15
	.4byte	0x3f
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.byte	0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x25
	.byte	0x13
	.4byte	0x52
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x28
	.byte	0x12
	.4byte	0x65
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.byte	0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x7f
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.byte	0x3
	.4byte	.LASF11
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x92
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF12
	.byte	0x3
	.4byte	.LASF13
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0xaa
	.byte	0x4
	.4byte	0x99
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF15
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x6
	.byte	0x4
	.byte	0x7
	.byte	0x4
	.4byte	0xc7
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.byte	0x7
	.byte	0x4
	.4byte	0xd4
	.byte	0x8
	.4byte	0xdf
	.byte	0x9
	.4byte	0xbf
	.byte	0
	.byte	0xa
	.4byte	.LASF224
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x3
	.byte	0x22
	.byte	0xe
	.4byte	0x11c
	.byte	0xb
	.4byte	.LASF17
	.byte	0
	.byte	0xb
	.4byte	.LASF18
	.byte	0x1
	.byte	0xb
	.4byte	.LASF19
	.byte	0x2
	.byte	0xb
	.4byte	.LASF20
	.byte	0x3
	.byte	0xb
	.4byte	.LASF21
	.byte	0x4
	.byte	0xb
	.4byte	.LASF22
	.byte	0x5
	.byte	0xb
	.4byte	.LASF23
	.byte	0x6
	.byte	0
	.byte	0x3
	.4byte	.LASF24
	.byte	0x3
	.byte	0x2a
	.byte	0x3
	.4byte	0xdf
	.byte	0xc
	.4byte	.LASF176
	.byte	0x8
	.byte	0x3
	.byte	0x2c
	.byte	0x10
	.4byte	0x150
	.byte	0xd
	.4byte	.LASF25
	.byte	0x3
	.byte	0x2d
	.byte	0x13
	.4byte	0x150
	.byte	0
	.byte	0xd
	.4byte	.LASF26
	.byte	0x3
	.byte	0x2e
	.byte	0xb
	.4byte	0xc1
	.byte	0x4
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x11c
	.byte	0x3
	.4byte	.LASF27
	.byte	0x3
	.byte	0x2f
	.byte	0x3
	.4byte	0x128
	.byte	0x4
	.4byte	0x156
	.byte	0xe
	.4byte	.LASF28
	.byte	0x4
	.byte	0x38
	.byte	0x1b
	.4byte	0xa5
	.byte	0x5
	.byte	0x3
	.4byte	BLOG_HARD_DECLARE_DISABLE
	.byte	0xf
	.4byte	.LASF30
	.byte	0x4
	.byte	0x45
	.byte	0x12
	.4byte	0x11c
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_level_hosal
	.byte	0xe
	.4byte	.LASF29
	.byte	0x4
	.byte	0x46
	.byte	0x1e
	.4byte	0x162
	.byte	0x5
	.byte	0x3
	.4byte	_fsymc_info_hosal
	.byte	0xf
	.4byte	.LASF31
	.byte	0x4
	.byte	0x53
	.byte	0x12
	.4byte	0x11c
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_level_hosalhosal_adc
	.byte	0xf
	.4byte	.LASF32
	.byte	0x4
	.byte	0x54
	.byte	0x17
	.4byte	0x162
	.byte	0x5
	.byte	0x3
	.4byte	_fsymf_info_hosalhosal_adc
	.byte	0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.byte	0x4c
	.byte	0x1
	.4byte	0x260
	.byte	0xb
	.4byte	.LASF33
	.byte	0
	.byte	0xb
	.4byte	.LASF34
	.byte	0x1
	.byte	0xb
	.4byte	.LASF35
	.byte	0x2
	.byte	0xb
	.4byte	.LASF36
	.byte	0x3
	.byte	0xb
	.4byte	.LASF37
	.byte	0x4
	.byte	0xb
	.4byte	.LASF38
	.byte	0x5
	.byte	0xb
	.4byte	.LASF39
	.byte	0x6
	.byte	0xb
	.4byte	.LASF40
	.byte	0x7
	.byte	0xb
	.4byte	.LASF41
	.byte	0x8
	.byte	0xb
	.4byte	.LASF42
	.byte	0x9
	.byte	0xb
	.4byte	.LASF43
	.byte	0xa
	.byte	0xb
	.4byte	.LASF44
	.byte	0xb
	.byte	0xb
	.4byte	.LASF45
	.byte	0xc
	.byte	0xb
	.4byte	.LASF46
	.byte	0xd
	.byte	0xb
	.4byte	.LASF47
	.byte	0xe
	.byte	0xb
	.4byte	.LASF48
	.byte	0xf
	.byte	0xb
	.4byte	.LASF49
	.byte	0x10
	.byte	0xb
	.4byte	.LASF50
	.byte	0x11
	.byte	0xb
	.4byte	.LASF51
	.byte	0x12
	.byte	0xb
	.4byte	.LASF52
	.byte	0x13
	.byte	0xb
	.4byte	.LASF53
	.byte	0x14
	.byte	0xb
	.4byte	.LASF54
	.byte	0x15
	.byte	0xb
	.4byte	.LASF55
	.byte	0x16
	.byte	0xb
	.4byte	.LASF56
	.byte	0x17
	.byte	0
	.byte	0x3
	.4byte	.LASF57
	.byte	0x5
	.byte	0x65
	.byte	0x2
	.4byte	0x1c1
	.byte	0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.byte	0x71
	.byte	0x1
	.4byte	0x2b7
	.byte	0xb
	.4byte	.LASF58
	.byte	0x1
	.byte	0xb
	.4byte	.LASF59
	.byte	0x2
	.byte	0xb
	.4byte	.LASF60
	.byte	0x4
	.byte	0xb
	.4byte	.LASF61
	.byte	0x6
	.byte	0xb
	.4byte	.LASF62
	.byte	0x7
	.byte	0xb
	.4byte	.LASF63
	.byte	0x8
	.byte	0xb
	.4byte	.LASF64
	.byte	0x9
	.byte	0xb
	.4byte	.LASF65
	.byte	0xa
	.byte	0xb
	.4byte	.LASF66
	.byte	0xb
	.byte	0xb
	.4byte	.LASF67
	.byte	0xe
	.byte	0
	.byte	0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0x21
	.byte	0x1
	.4byte	0x2d2
	.byte	0xb
	.4byte	.LASF68
	.byte	0
	.byte	0xb
	.4byte	.LASF69
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF70
	.byte	0x6
	.byte	0x24
	.byte	0x2
	.4byte	0x2b7
	.byte	0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x6
	.byte	0x33
	.byte	0x1
	.4byte	0x2f9
	.byte	0xb
	.4byte	.LASF71
	.byte	0
	.byte	0xb
	.4byte	.LASF72
	.byte	0x1
	.byte	0
	.byte	0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0x3a
	.byte	0xe
	.4byte	0x398
	.byte	0xb
	.4byte	.LASF73
	.byte	0
	.byte	0xb
	.4byte	.LASF74
	.byte	0x1
	.byte	0xb
	.4byte	.LASF75
	.byte	0x2
	.byte	0xb
	.4byte	.LASF76
	.byte	0x3
	.byte	0xb
	.4byte	.LASF77
	.byte	0x4
	.byte	0xb
	.4byte	.LASF78
	.byte	0x5
	.byte	0xb
	.4byte	.LASF79
	.byte	0x6
	.byte	0xb
	.4byte	.LASF80
	.byte	0x7
	.byte	0xb
	.4byte	.LASF81
	.byte	0x8
	.byte	0xb
	.4byte	.LASF82
	.byte	0x9
	.byte	0xb
	.4byte	.LASF83
	.byte	0xa
	.byte	0xb
	.4byte	.LASF84
	.byte	0xb
	.byte	0xb
	.4byte	.LASF85
	.byte	0xc
	.byte	0xb
	.4byte	.LASF86
	.byte	0xd
	.byte	0xb
	.4byte	.LASF87
	.byte	0xe
	.byte	0xb
	.4byte	.LASF88
	.byte	0xf
	.byte	0xb
	.4byte	.LASF89
	.byte	0x10
	.byte	0xb
	.4byte	.LASF90
	.byte	0x11
	.byte	0xb
	.4byte	.LASF91
	.byte	0x12
	.byte	0xb
	.4byte	.LASF92
	.byte	0x13
	.byte	0xb
	.4byte	.LASF93
	.byte	0x14
	.byte	0xb
	.4byte	.LASF94
	.byte	0x15
	.byte	0xb
	.4byte	.LASF95
	.byte	0x16
	.byte	0xb
	.4byte	.LASF96
	.byte	0x17
	.byte	0
	.byte	0x3
	.4byte	.LASF97
	.byte	0x7
	.byte	0x53
	.byte	0x2
	.4byte	0x2f9
	.byte	0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0x58
	.byte	0xe
	.4byte	0x3cb
	.byte	0xb
	.4byte	.LASF98
	.byte	0
	.byte	0xb
	.4byte	.LASF99
	.byte	0x1
	.byte	0xb
	.4byte	.LASF100
	.byte	0x2
	.byte	0xb
	.4byte	.LASF101
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF102
	.byte	0x7
	.byte	0x5d
	.byte	0x2
	.4byte	0x3a4
	.byte	0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0x62
	.byte	0xe
	.4byte	0x3fe
	.byte	0xb
	.4byte	.LASF103
	.byte	0
	.byte	0xb
	.4byte	.LASF104
	.byte	0x1
	.byte	0xb
	.4byte	.LASF105
	.byte	0x2
	.byte	0xb
	.4byte	.LASF106
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF107
	.byte	0x7
	.byte	0x67
	.byte	0x2
	.4byte	0x3d7
	.byte	0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0x6c
	.byte	0xe
	.4byte	0x449
	.byte	0xb
	.4byte	.LASF108
	.byte	0
	.byte	0xb
	.4byte	.LASF109
	.byte	0x1
	.byte	0xb
	.4byte	.LASF110
	.byte	0x2
	.byte	0xb
	.4byte	.LASF111
	.byte	0x3
	.byte	0xb
	.4byte	.LASF112
	.byte	0x4
	.byte	0xb
	.4byte	.LASF113
	.byte	0x5
	.byte	0xb
	.4byte	.LASF114
	.byte	0x6
	.byte	0xb
	.4byte	.LASF115
	.byte	0x7
	.byte	0
	.byte	0x3
	.4byte	.LASF116
	.byte	0x7
	.byte	0x75
	.byte	0x2
	.4byte	0x40a
	.byte	0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0x88
	.byte	0xe
	.4byte	0x48e
	.byte	0xb
	.4byte	.LASF117
	.byte	0
	.byte	0xb
	.4byte	.LASF118
	.byte	0x1
	.byte	0xb
	.4byte	.LASF119
	.byte	0x2
	.byte	0xb
	.4byte	.LASF120
	.byte	0x3
	.byte	0xb
	.4byte	.LASF121
	.byte	0x4
	.byte	0xb
	.4byte	.LASF122
	.byte	0x5
	.byte	0xb
	.4byte	.LASF123
	.byte	0x6
	.byte	0
	.byte	0x3
	.4byte	.LASF124
	.byte	0x7
	.byte	0x90
	.byte	0x2
	.4byte	0x455
	.byte	0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0x95
	.byte	0xe
	.4byte	0x4b5
	.byte	0xb
	.4byte	.LASF125
	.byte	0
	.byte	0xb
	.4byte	.LASF126
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF127
	.byte	0x7
	.byte	0x98
	.byte	0x2
	.4byte	0x49a
	.byte	0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0x9d
	.byte	0xe
	.4byte	0x4e8
	.byte	0xb
	.4byte	.LASF128
	.byte	0
	.byte	0xb
	.4byte	.LASF129
	.byte	0x1
	.byte	0xb
	.4byte	.LASF130
	.byte	0x2
	.byte	0xb
	.4byte	.LASF131
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF132
	.byte	0x7
	.byte	0xa2
	.byte	0x2
	.4byte	0x4c1
	.byte	0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0xa7
	.byte	0xe
	.4byte	0x51b
	.byte	0xb
	.4byte	.LASF133
	.byte	0
	.byte	0xb
	.4byte	.LASF134
	.byte	0x1
	.byte	0xb
	.4byte	.LASF135
	.byte	0x2
	.byte	0xb
	.4byte	.LASF136
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF137
	.byte	0x7
	.byte	0xac
	.byte	0x2
	.4byte	0x4f4
	.byte	0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0xb9
	.byte	0xe
	.4byte	0x542
	.byte	0xb
	.4byte	.LASF138
	.byte	0
	.byte	0xb
	.4byte	.LASF139
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF140
	.byte	0x7
	.byte	0xbc
	.byte	0x2
	.4byte	0x527
	.byte	0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0xc1
	.byte	0xe
	.4byte	0x569
	.byte	0xb
	.4byte	.LASF141
	.byte	0
	.byte	0xb
	.4byte	.LASF142
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF143
	.byte	0x7
	.byte	0xc4
	.byte	0x2
	.4byte	0x54e
	.byte	0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.byte	0xc9
	.byte	0xe
	.4byte	0x5a2
	.byte	0xb
	.4byte	.LASF144
	.byte	0
	.byte	0xb
	.4byte	.LASF145
	.byte	0x1
	.byte	0xb
	.4byte	.LASF146
	.byte	0x2
	.byte	0xb
	.4byte	.LASF147
	.byte	0x3
	.byte	0xb
	.4byte	.LASF148
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF149
	.byte	0x7
	.byte	0xcf
	.byte	0x2
	.4byte	0x575
	.byte	0x11
	.byte	0x34
	.byte	0x7
	.byte	0xfc
	.byte	0x9
	.4byte	0x66b
	.byte	0xd
	.4byte	.LASF150
	.byte	0x7
	.byte	0xfd
	.byte	0x16
	.4byte	0x3cb
	.byte	0
	.byte	0xd
	.4byte	.LASF151
	.byte	0x7
	.byte	0xfe
	.byte	0x16
	.4byte	0x3fe
	.byte	0x4
	.byte	0xd
	.4byte	.LASF152
	.byte	0x7
	.byte	0xff
	.byte	0x12
	.4byte	0x449
	.byte	0x8
	.byte	0x12
	.4byte	.LASF153
	.byte	0x7
	.2byte	0x100
	.byte	0x17
	.4byte	0x48e
	.byte	0xc
	.byte	0x12
	.4byte	.LASF154
	.byte	0x7
	.2byte	0x101
	.byte	0x17
	.4byte	0x48e
	.byte	0x10
	.byte	0x12
	.4byte	.LASF155
	.byte	0x7
	.2byte	0x102
	.byte	0x17
	.4byte	0x4e8
	.byte	0x14
	.byte	0x12
	.4byte	.LASF156
	.byte	0x7
	.2byte	0x103
	.byte	0x17
	.4byte	0x4b5
	.byte	0x18
	.byte	0x13
	.string	"vcm"
	.byte	0x7
	.2byte	0x104
	.byte	0x16
	.4byte	0x51b
	.byte	0x1c
	.byte	0x12
	.4byte	.LASF157
	.byte	0x7
	.2byte	0x105
	.byte	0x13
	.4byte	0x542
	.byte	0x20
	.byte	0x12
	.4byte	.LASF158
	.byte	0x7
	.2byte	0x106
	.byte	0x18
	.4byte	0x569
	.byte	0x24
	.byte	0x12
	.4byte	.LASF159
	.byte	0x7
	.2byte	0x107
	.byte	0x19
	.4byte	0x5a2
	.byte	0x28
	.byte	0x12
	.4byte	.LASF160
	.byte	0x7
	.2byte	0x108
	.byte	0x11
	.4byte	0x2d2
	.byte	0x2c
	.byte	0x12
	.4byte	.LASF161
	.byte	0x7
	.2byte	0x109
	.byte	0xd
	.4byte	0x46
	.byte	0x30
	.byte	0
	.byte	0x14
	.4byte	.LASF162
	.byte	0x7
	.2byte	0x10a
	.byte	0x2
	.4byte	0x5ae
	.byte	0x15
	.byte	0x8
	.byte	0x7
	.2byte	0x10f
	.byte	0x9
	.4byte	0x6bb
	.byte	0x12
	.4byte	.LASF163
	.byte	0x7
	.2byte	0x110
	.byte	0xc
	.4byte	0x33
	.byte	0
	.byte	0x12
	.4byte	.LASF164
	.byte	0x7
	.2byte	0x111
	.byte	0xc
	.4byte	0x33
	.byte	0x1
	.byte	0x12
	.4byte	.LASF165
	.byte	0x7
	.2byte	0x112
	.byte	0xe
	.4byte	0x86
	.byte	0x2
	.byte	0x12
	.4byte	.LASF166
	.byte	0x7
	.2byte	0x113
	.byte	0xb
	.4byte	0x2c
	.byte	0x4
	.byte	0
	.byte	0x14
	.4byte	.LASF167
	.byte	0x7
	.2byte	0x114
	.byte	0x2
	.4byte	0x678
	.byte	0x16
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x7
	.2byte	0x119
	.byte	0xe
	.4byte	0x6f0
	.byte	0xb
	.4byte	.LASF168
	.byte	0
	.byte	0xb
	.4byte	.LASF169
	.byte	0x1
	.byte	0xb
	.4byte	.LASF170
	.byte	0x2
	.byte	0xb
	.4byte	.LASF171
	.byte	0x3
	.byte	0
	.byte	0x14
	.4byte	.LASF172
	.byte	0x7
	.2byte	0x11e
	.byte	0x2
	.4byte	0x6c8
	.byte	0x15
	.byte	0x8
	.byte	0x7
	.2byte	0x12f
	.byte	0x9
	.4byte	0x724
	.byte	0x12
	.4byte	.LASF173
	.byte	0x7
	.2byte	0x130
	.byte	0x1d
	.4byte	0x6f0
	.byte	0
	.byte	0x12
	.4byte	.LASF174
	.byte	0x7
	.2byte	0x131
	.byte	0x11
	.4byte	0x2d2
	.byte	0x4
	.byte	0
	.byte	0x14
	.4byte	.LASF175
	.byte	0x7
	.2byte	0x132
	.byte	0x2
	.4byte	0x6fd
	.byte	0x17
	.4byte	.LASF177
	.byte	0x4
	.byte	0x8
	.2byte	0x4c1
	.byte	0x10
	.4byte	0x7f7
	.byte	0x18
	.4byte	.LASF178
	.byte	0x8
	.2byte	0x4c2
	.byte	0x16
	.4byte	0x99
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.byte	0x18
	.4byte	.LASF179
	.byte	0x8
	.2byte	0x4c3
	.byte	0x16
	.4byte	0x99
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.byte	0x18
	.4byte	.LASF180
	.byte	0x8
	.2byte	0x4c4
	.byte	0x16
	.4byte	0x99
	.byte	0x4
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0x18
	.4byte	.LASF181
	.byte	0x8
	.2byte	0x4c5
	.byte	0x16
	.4byte	0x99
	.byte	0x4
	.byte	0x3
	.byte	0xb
	.byte	0
	.byte	0x18
	.4byte	.LASF182
	.byte	0x8
	.2byte	0x4c6
	.byte	0x16
	.4byte	0x99
	.byte	0x4
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0x18
	.4byte	.LASF183
	.byte	0x8
	.2byte	0x4c7
	.byte	0x16
	.4byte	0x99
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.byte	0x18
	.4byte	.LASF184
	.byte	0x8
	.2byte	0x4c8
	.byte	0x16
	.4byte	0x99
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.byte	0x19
	.string	"SI"
	.byte	0x8
	.2byte	0x4c9
	.byte	0x16
	.4byte	0x99
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.byte	0x19
	.string	"DI"
	.byte	0x8
	.2byte	0x4ca
	.byte	0x16
	.4byte	0x99
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0x18
	.4byte	.LASF185
	.byte	0x8
	.2byte	0x4cb
	.byte	0x16
	.4byte	0x99
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.byte	0x19
	.string	"I"
	.byte	0x8
	.2byte	0x4cc
	.byte	0x16
	.4byte	0x99
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x9
	.byte	0x49
	.byte	0xe
	.4byte	0x818
	.byte	0xb
	.4byte	.LASF186
	.byte	0
	.byte	0xb
	.4byte	.LASF187
	.byte	0x1
	.byte	0xb
	.4byte	.LASF188
	.byte	0x2
	.byte	0
	.byte	0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x9
	.byte	0x52
	.byte	0xe
	.4byte	0x83f
	.byte	0xb
	.4byte	.LASF189
	.byte	0
	.byte	0xb
	.4byte	.LASF190
	.byte	0x1
	.byte	0xb
	.4byte	.LASF191
	.byte	0x2
	.byte	0xb
	.4byte	.LASF192
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF193
	.byte	0x9
	.byte	0x57
	.byte	0x2
	.4byte	0x818
	.byte	0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x9
	.byte	0x5c
	.byte	0xe
	.4byte	0x872
	.byte	0xb
	.4byte	.LASF194
	.byte	0
	.byte	0xb
	.4byte	.LASF195
	.byte	0x1
	.byte	0xb
	.4byte	.LASF196
	.byte	0x2
	.byte	0xb
	.4byte	.LASF197
	.byte	0x3
	.byte	0
	.byte	0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x9
	.byte	0x66
	.byte	0xe
	.4byte	0x8c3
	.byte	0xb
	.4byte	.LASF198
	.byte	0
	.byte	0xb
	.4byte	.LASF199
	.byte	0x1
	.byte	0xb
	.4byte	.LASF200
	.byte	0x2
	.byte	0xb
	.4byte	.LASF201
	.byte	0x3
	.byte	0xb
	.4byte	.LASF202
	.byte	0x6
	.byte	0xb
	.4byte	.LASF203
	.byte	0x7
	.byte	0xb
	.4byte	.LASF204
	.byte	0xa
	.byte	0xb
	.4byte	.LASF205
	.byte	0xb
	.byte	0xb
	.4byte	.LASF206
	.byte	0x16
	.byte	0xb
	.4byte	.LASF207
	.byte	0x17
	.byte	0xb
	.4byte	.LASF208
	.byte	0
	.byte	0
	.byte	0x3
	.4byte	.LASF209
	.byte	0x9
	.byte	0x72
	.byte	0x2
	.4byte	0x872
	.byte	0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x9
	.byte	0x82
	.byte	0xe
	.4byte	0x8f0
	.byte	0xb
	.4byte	.LASF210
	.byte	0
	.byte	0xb
	.4byte	.LASF211
	.byte	0x1
	.byte	0xb
	.4byte	.LASF212
	.byte	0x2
	.byte	0
	.byte	0x11
	.byte	0x10
	.byte	0x9
	.byte	0xb0
	.byte	0x9
	.4byte	0x92e
	.byte	0xd
	.4byte	.LASF213
	.byte	0x9
	.byte	0xb1
	.byte	0xe
	.4byte	0x99
	.byte	0
	.byte	0xd
	.4byte	.LASF214
	.byte	0x9
	.byte	0xb2
	.byte	0xe
	.4byte	0x99
	.byte	0x4
	.byte	0xd
	.4byte	.LASF215
	.byte	0x9
	.byte	0xb3
	.byte	0xe
	.4byte	0x99
	.byte	0x8
	.byte	0xd
	.4byte	.LASF216
	.byte	0x9
	.byte	0xb4
	.byte	0x1c
	.4byte	0x731
	.byte	0xc
	.byte	0
	.byte	0x3
	.4byte	.LASF217
	.byte	0x9
	.byte	0xb5
	.byte	0x2
	.4byte	0x8f0
	.byte	0x11
	.byte	0xc
	.byte	0x9
	.byte	0xba
	.byte	0x9
	.4byte	0x96b
	.byte	0x1a
	.string	"dir"
	.byte	0x9
	.byte	0xbb
	.byte	0x18
	.4byte	0x83f
	.byte	0
	.byte	0xd
	.4byte	.LASF218
	.byte	0x9
	.byte	0xbc
	.byte	0x19
	.4byte	0x8c3
	.byte	0x4
	.byte	0xd
	.4byte	.LASF219
	.byte	0x9
	.byte	0xbd
	.byte	0x19
	.4byte	0x8c3
	.byte	0x8
	.byte	0
	.byte	0x3
	.4byte	.LASF220
	.byte	0x9
	.byte	0xbe
	.byte	0x2
	.4byte	0x93a
	.byte	0x7
	.byte	0x4
	.4byte	0x92e
	.byte	0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0xa
	.byte	0xbf
	.byte	0xe
	.4byte	0x998
	.byte	0xb
	.4byte	.LASF221
	.byte	0
	.byte	0xb
	.4byte	.LASF222
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF223
	.byte	0xb
	.byte	0x38
	.byte	0xd
	.4byte	0xb8
	.byte	0xa
	.4byte	.LASF225
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0xc
	.byte	0x1d
	.byte	0xe
	.4byte	0x9d5
	.byte	0xb
	.4byte	.LASF226
	.byte	0
	.byte	0xb
	.4byte	.LASF227
	.byte	0x1
	.byte	0xb
	.4byte	.LASF228
	.byte	0x2
	.byte	0xb
	.4byte	.LASF229
	.byte	0x3
	.byte	0xb
	.4byte	.LASF230
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF231
	.byte	0xc
	.byte	0x23
	.byte	0x3
	.4byte	0x9a4
	.byte	0x10
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0xc
	.byte	0x30
	.byte	0xe
	.4byte	0x9fc
	.byte	0xb
	.4byte	.LASF232
	.byte	0
	.byte	0xb
	.4byte	.LASF233
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF234
	.byte	0xc
	.byte	0x33
	.byte	0x3
	.4byte	0x9e1
	.byte	0x11
	.byte	0x10
	.byte	0xc
	.byte	0x38
	.byte	0x9
	.4byte	0xa46
	.byte	0xd
	.4byte	.LASF235
	.byte	0xc
	.byte	0x39
	.byte	0xe
	.4byte	0x99
	.byte	0
	.byte	0x1a
	.string	"pin"
	.byte	0xc
	.byte	0x3a
	.byte	0xe
	.4byte	0x99
	.byte	0x4
	.byte	0xd
	.4byte	.LASF236
	.byte	0xc
	.byte	0x3b
	.byte	0x1d
	.4byte	0x9fc
	.byte	0x8
	.byte	0xd
	.4byte	.LASF237
	.byte	0xc
	.byte	0x3c
	.byte	0xd
	.4byte	0x73
	.byte	0xc
	.byte	0
	.byte	0x3
	.4byte	.LASF238
	.byte	0xc
	.byte	0x3d
	.byte	0x3
	.4byte	0xa08
	.byte	0x3
	.4byte	.LASF239
	.byte	0xc
	.byte	0x45
	.byte	0x10
	.4byte	0xce
	.byte	0x11
	.byte	0x24
	.byte	0xc
	.byte	0x4a
	.byte	0x9
	.4byte	0xab5
	.byte	0xd
	.4byte	.LASF240
	.byte	0xc
	.byte	0x4b
	.byte	0xd
	.4byte	0x73
	.byte	0
	.byte	0xd
	.4byte	.LASF241
	.byte	0xc
	.byte	0x4c
	.byte	0x18
	.4byte	0xa46
	.byte	0x4
	.byte	0xd
	.4byte	.LASF242
	.byte	0xc
	.byte	0x4d
	.byte	0x16
	.4byte	0x998
	.byte	0x14
	.byte	0x1a
	.string	"cb"
	.byte	0xc
	.byte	0x4e
	.byte	0x15
	.4byte	0xa52
	.byte	0x18
	.byte	0xd
	.4byte	.LASF243
	.byte	0xc
	.byte	0x4f
	.byte	0xb
	.4byte	0xbf
	.byte	0x1c
	.byte	0xd
	.4byte	.LASF244
	.byte	0xc
	.byte	0x50
	.byte	0xb
	.4byte	0xbf
	.byte	0x20
	.byte	0
	.byte	0x3
	.4byte	.LASF245
	.byte	0xc
	.byte	0x51
	.byte	0x3
	.4byte	0xa5e
	.byte	0x3
	.4byte	.LASF246
	.byte	0xc
	.byte	0x59
	.byte	0x10
	.4byte	0xacd
	.byte	0x7
	.byte	0x4
	.4byte	0xad3
	.byte	0x8
	.4byte	0xae8
	.byte	0x9
	.4byte	0x9d5
	.byte	0x9
	.4byte	0xbf
	.byte	0x9
	.4byte	0x99
	.byte	0
	.byte	0xc
	.4byte	.LASF247
	.byte	0x18
	.byte	0x1
	.byte	0x1b
	.byte	0x10
	.4byte	0xb44
	.byte	0xd
	.4byte	.LASF248
	.byte	0x1
	.byte	0x1c
	.byte	0xf
	.4byte	0xb44
	.byte	0
	.byte	0xd
	.4byte	.LASF249
	.byte	0x1
	.byte	0x1d
	.byte	0xb
	.4byte	0xbf
	.byte	0x4
	.byte	0xd
	.4byte	.LASF250
	.byte	0x1
	.byte	0x1e
	.byte	0xb
	.4byte	0xbf
	.byte	0x8
	.byte	0xd
	.4byte	.LASF251
	.byte	0x1
	.byte	0x1f
	.byte	0x9
	.4byte	0xb8
	.byte	0xc
	.byte	0xd
	.4byte	.LASF252
	.byte	0x1
	.byte	0x27
	.byte	0xe
	.4byte	0x99
	.byte	0x10
	.byte	0xd
	.4byte	.LASF253
	.byte	0x1
	.byte	0x28
	.byte	0xe
	.4byte	0x99
	.byte	0x14
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x99
	.byte	0x3
	.4byte	.LASF254
	.byte	0x1
	.byte	0x29
	.byte	0x2
	.4byte	0xae8
	.byte	0xe
	.4byte	.LASF255
	.byte	0x1
	.byte	0x2b
	.byte	0x19
	.4byte	0xb68
	.byte	0x5
	.byte	0x3
	.4byte	pgdevice
	.byte	0x7
	.byte	0x4
	.4byte	0xab5
	.byte	0xe
	.4byte	.LASF256
	.byte	0x1
	.byte	0x2c
	.byte	0xc
	.4byte	0xb8
	.byte	0x5
	.byte	0x3
	.4byte	adc_refer_channel
	.byte	0xe
	.4byte	.LASF257
	.byte	0x1
	.byte	0x2d
	.byte	0xe
	.4byte	0x2c
	.byte	0x5
	.byte	0x3
	.4byte	adc_refer_voltage
	.byte	0x1b
	.4byte	.LASF259
	.byte	0x1
	.2byte	0x297
	.byte	0x5
	.4byte	0xb8
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x1
	.byte	0x9c
	.4byte	0xc11
	.byte	0x1c
	.string	"adc"
	.byte	0x1
	.2byte	0x297
	.byte	0x29
	.4byte	0xb68
	.4byte	.LLST61
	.byte	0x1d
	.4byte	.LASF258
	.byte	0x1
	.2byte	0x299
	.byte	0x16
	.4byte	0xc11
	.4byte	.LLST62
	.byte	0x1e
	.4byte	.LVL200
	.4byte	0x1b9b
	.byte	0x1e
	.4byte	.LVL201
	.4byte	0x1b9b
	.byte	0x1f
	.4byte	.LVL202
	.4byte	0x1b9b
	.4byte	0xbf5
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL203
	.4byte	0x1ba7
	.byte	0x1e
	.4byte	.LVL204
	.4byte	0x1bb4
	.byte	0x1e
	.4byte	.LVL205
	.4byte	0x1bc0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xb4a
	.byte	0x1b
	.4byte	.LASF260
	.byte	0x1
	.2byte	0x292
	.byte	0x5
	.4byte	0xb8
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x1
	.byte	0x9c
	.4byte	0xc44
	.byte	0x1c
	.string	"adc"
	.byte	0x1
	.2byte	0x292
	.byte	0x25
	.4byte	0xb68
	.4byte	.LLST60
	.byte	0
	.byte	0x1b
	.4byte	.LASF261
	.byte	0x1
	.2byte	0x28c
	.byte	0x5
	.4byte	0xb8
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x1
	.byte	0x9c
	.4byte	0xcde
	.byte	0x1c
	.string	"adc"
	.byte	0x1
	.2byte	0x28c
	.byte	0x26
	.4byte	0xb68
	.4byte	.LLST57
	.byte	0x21
	.4byte	.LASF262
	.byte	0x1
	.2byte	0x28c
	.byte	0x31
	.4byte	0xbf
	.4byte	.LLST58
	.byte	0x21
	.4byte	.LASF263
	.byte	0x1
	.2byte	0x28c
	.byte	0x40
	.4byte	0x99
	.4byte	.LLST59
	.byte	0x1e
	.4byte	.LVL191
	.4byte	0x1bcc
	.byte	0x1e
	.4byte	.LVL192
	.4byte	0x1bd8
	.byte	0x1f
	.4byte	.LVL193
	.4byte	0x1be5
	.4byte	0xcd4
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC22
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x20
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x20
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x28e
	.byte	0
	.byte	0x1e
	.4byte	.LVL194
	.4byte	0x1bf1
	.byte	0
	.byte	0x1b
	.4byte	.LASF264
	.byte	0x1
	.2byte	0x286
	.byte	0x5
	.4byte	0xb8
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x1
	.byte	0x9c
	.4byte	0xd66
	.byte	0x1c
	.string	"adc"
	.byte	0x1
	.2byte	0x286
	.byte	0x2e
	.4byte	0xb68
	.4byte	.LLST55
	.byte	0x1c
	.string	"cb"
	.byte	0x1
	.2byte	0x286
	.byte	0x42
	.4byte	0xac1
	.4byte	.LLST56
	.byte	0x1e
	.4byte	.LVL186
	.4byte	0x1bcc
	.byte	0x1e
	.4byte	.LVL187
	.4byte	0x1bd8
	.byte	0x1f
	.4byte	.LVL188
	.4byte	0x1be5
	.4byte	0xd5c
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC22
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x20
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x20
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x288
	.byte	0
	.byte	0x1e
	.4byte	.LVL189
	.4byte	0x1bf1
	.byte	0
	.byte	0x1b
	.4byte	.LASF265
	.byte	0x1
	.2byte	0x24f
	.byte	0x5
	.4byte	0xb8
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x1
	.byte	0x9c
	.4byte	0xedb
	.byte	0x1c
	.string	"adc"
	.byte	0x1
	.2byte	0x24f
	.byte	0x2a
	.4byte	0xb68
	.4byte	.LLST48
	.byte	0x21
	.4byte	.LASF266
	.byte	0x1
	.2byte	0x24f
	.byte	0x38
	.4byte	0x99
	.4byte	.LLST49
	.byte	0x21
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x24f
	.byte	0x4a
	.4byte	0x99
	.4byte	.LLST50
	.byte	0x22
	.string	"val"
	.byte	0x1
	.2byte	0x251
	.byte	0x9
	.4byte	0xb8
	.4byte	.LLST51
	.byte	0x1d
	.4byte	.LASF268
	.byte	0x1
	.2byte	0x251
	.byte	0x13
	.4byte	0xb8
	.4byte	.LLST52
	.byte	0x1d
	.4byte	.LASF269
	.byte	0x1
	.2byte	0x251
	.byte	0x23
	.4byte	0xb8
	.4byte	.LLST53
	.byte	0x1d
	.4byte	.LASF258
	.byte	0x1
	.2byte	0x252
	.byte	0x16
	.4byte	0xc11
	.4byte	.LLST54
	.byte	0x1e
	.4byte	.LVL157
	.4byte	0x1bcc
	.byte	0x1e
	.4byte	.LVL158
	.4byte	0x1bd8
	.byte	0x1e
	.4byte	.LVL159
	.4byte	0x1be5
	.byte	0x1e
	.4byte	.LVL160
	.4byte	0x1bf1
	.byte	0x1e
	.4byte	.LVL162
	.4byte	0x1bcc
	.byte	0x1e
	.4byte	.LVL163
	.4byte	0x1bd8
	.byte	0x1f
	.4byte	.LVL164
	.4byte	0x1be5
	.4byte	0xe64
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC20
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x20
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x20
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x25f
	.byte	0x20
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL165
	.4byte	0x1bf1
	.byte	0x1e
	.4byte	.LVL168
	.4byte	0x1bcc
	.byte	0x1e
	.4byte	.LVL169
	.4byte	0x1bd8
	.byte	0x1e
	.4byte	.LVL170
	.4byte	0x1bf1
	.byte	0x1f
	.4byte	.LVL172
	.4byte	0x1bfe
	.4byte	0xe9b
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x1f
	.4byte	.LVL174
	.4byte	0x193c
	.4byte	0xeb6
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x23
	.4byte	0x1692
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0x1f
	.4byte	.LVL179
	.4byte	0x193c
	.4byte	0xecb
	.byte	0x23
	.4byte	0x1692
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0x24
	.4byte	.LVL183
	.4byte	0x1bfe
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LASF270
	.byte	0x1
	.2byte	0x245
	.byte	0x12
	.4byte	0xb68
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x1
	.byte	0x9c
	.4byte	0xf42
	.byte	0x1e
	.4byte	.LVL148
	.4byte	0x1bcc
	.byte	0x1e
	.4byte	.LVL149
	.4byte	0x1bd8
	.byte	0x1f
	.4byte	.LVL150
	.4byte	0x1be5
	.4byte	0xf38
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x20
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x20
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x248
	.byte	0
	.byte	0x1e
	.4byte	.LVL151
	.4byte	0x1bf1
	.byte	0
	.byte	0x1b
	.4byte	.LASF271
	.byte	0x1
	.2byte	0x23e
	.byte	0x5
	.4byte	0xb8
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.4byte	0xf91
	.byte	0x1c
	.string	"adc"
	.byte	0x1
	.2byte	0x23e
	.byte	0x39
	.4byte	0xb68
	.4byte	.LLST46
	.byte	0x1d
	.4byte	.LASF272
	.byte	0x1
	.2byte	0x240
	.byte	0xe
	.4byte	0x99
	.4byte	.LLST47
	.byte	0x25
	.4byte	.LVL147
	.4byte	0xff8
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LASF273
	.byte	0x1
	.2byte	0x237
	.byte	0x5
	.4byte	0xb8
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x1
	.byte	0x9c
	.4byte	0xff8
	.byte	0x1c
	.string	"adc"
	.byte	0x1
	.2byte	0x237
	.byte	0x36
	.4byte	0xb68
	.4byte	.LLST43
	.byte	0x21
	.4byte	.LASF272
	.byte	0x1
	.2byte	0x237
	.byte	0x44
	.4byte	0x99
	.4byte	.LLST44
	.byte	0x21
	.4byte	.LASF274
	.byte	0x1
	.2byte	0x237
	.byte	0x59
	.4byte	0x2c
	.4byte	.LLST45
	.byte	0x25
	.4byte	.LVL144
	.4byte	0x1032
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LASF275
	.byte	0x1
	.2byte	0x224
	.byte	0x5
	.4byte	0xb8
	.byte	0x1
	.4byte	0x1032
	.byte	0x27
	.string	"adc"
	.byte	0x1
	.2byte	0x224
	.byte	0x2f
	.4byte	0xb68
	.byte	0x28
	.4byte	.LASF266
	.byte	0x1
	.2byte	0x224
	.byte	0x3d
	.4byte	0x99
	.byte	0x29
	.4byte	.LASF258
	.byte	0x1
	.2byte	0x226
	.byte	0x16
	.4byte	0xc11
	.byte	0
	.byte	0x26
	.4byte	.LASF276
	.byte	0x1
	.2byte	0x20d
	.byte	0x5
	.4byte	0xb8
	.byte	0x1
	.4byte	0x1079
	.byte	0x27
	.string	"adc"
	.byte	0x1
	.2byte	0x20d
	.byte	0x2c
	.4byte	0xb68
	.byte	0x28
	.4byte	.LASF266
	.byte	0x1
	.2byte	0x20d
	.byte	0x3a
	.4byte	0x99
	.byte	0x29
	.4byte	.LASF258
	.byte	0x1
	.2byte	0x20f
	.byte	0x16
	.4byte	0xc11
	.byte	0x2a
	.string	"pin"
	.byte	0x1
	.2byte	0x210
	.byte	0x13
	.4byte	0x260
	.byte	0
	.byte	0x1b
	.4byte	.LASF277
	.byte	0x1
	.2byte	0x1d0
	.byte	0x5
	.4byte	0xb8
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0x1673
	.byte	0x1c
	.string	"adc"
	.byte	0x1
	.2byte	0x1d0
	.byte	0x25
	.4byte	0xb68
	.4byte	.LLST6
	.byte	0x22
	.string	"res"
	.byte	0x1
	.2byte	0x1d2
	.byte	0x9
	.4byte	0xb8
	.4byte	.LLST7
	.byte	0x1d
	.4byte	.LASF278
	.byte	0x1
	.2byte	0x1d3
	.byte	0x9
	.4byte	0xb8
	.4byte	.LLST8
	.byte	0x2b
	.string	"pin"
	.byte	0x1
	.2byte	0x1d4
	.byte	0x13
	.4byte	0x260
	.byte	0x3
	.byte	0x91
	.byte	0xc4,0x7e
	.byte	0x1d
	.4byte	.LASF258
	.byte	0x1
	.2byte	0x1d5
	.byte	0x16
	.4byte	0xc11
	.4byte	.LLST9
	.byte	0x2c
	.4byte	0x18a9
	.4byte	.LBB20
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x1e0
	.byte	0xb
	.4byte	0x1194
	.byte	0x2d
	.4byte	0x18ba
	.4byte	.LLST10
	.byte	0x2e
	.4byte	.Ldebug_ranges0+0
	.byte	0x2f
	.4byte	0x18c6
	.4byte	.LLST11
	.byte	0x30
	.4byte	0x18d0
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0x1f
	.4byte	.LVL27
	.4byte	0x1c0b
	.4byte	0x1142
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.byte	0x1e
	.4byte	.LVL29
	.4byte	0x1bcc
	.byte	0x1e
	.4byte	.LVL30
	.4byte	0x1bd8
	.byte	0x1f
	.4byte	.LVL32
	.4byte	0x1be5
	.4byte	0x1189
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x20
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x20
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0x81
	.byte	0x20
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL36
	.4byte	0x1bf1
	.byte	0
	.byte	0
	.byte	0x2c
	.4byte	0x1835
	.4byte	.LBB28
	.4byte	.Ldebug_ranges0+0x28
	.byte	0x1
	.2byte	0x1ff
	.byte	0x9
	.4byte	0x125a
	.byte	0x2d
	.4byte	0x184e
	.4byte	.LLST12
	.byte	0x2d
	.4byte	0x1842
	.4byte	.LLST13
	.byte	0x2e
	.4byte	.Ldebug_ranges0+0x28
	.byte	0x2f
	.4byte	0x185a
	.4byte	.LLST14
	.byte	0x2f
	.4byte	0x1866
	.4byte	.LLST15
	.byte	0x2f
	.4byte	0x1872
	.4byte	.LLST16
	.byte	0x1e
	.4byte	.LVL58
	.4byte	0x1bcc
	.byte	0x1e
	.4byte	.LVL59
	.4byte	0x1bd8
	.byte	0x1f
	.4byte	.LVL60
	.4byte	0x1be5
	.4byte	0x1231
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0x20
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x20
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0xd5
	.byte	0x20
	.byte	0x1
	.byte	0x5f
	.byte	0xb
	.byte	0x82
	.byte	0
	.byte	0xf7
	.byte	0x25
	.byte	0x79
	.byte	0
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x60
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL61
	.4byte	0x1c16
	.4byte	0x124f
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0x7f
	.byte	0
	.byte	0x1e
	.4byte	.LVL90
	.4byte	0x1bf1
	.byte	0
	.byte	0
	.byte	0x2c
	.4byte	0x16ee
	.4byte	.LBB31
	.4byte	.Ldebug_ranges0+0x40
	.byte	0x1
	.2byte	0x200
	.byte	0x9
	.4byte	0x13b0
	.byte	0x2d
	.4byte	0x16fc
	.4byte	.LLST17
	.byte	0x2e
	.4byte	.Ldebug_ranges0+0x40
	.byte	0x2f
	.4byte	0x1709
	.4byte	.LLST18
	.byte	0x2f
	.4byte	0x1714
	.4byte	.LLST19
	.byte	0x30
	.4byte	0x1721
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7e
	.byte	0x2f
	.4byte	0x172e
	.4byte	.LLST20
	.byte	0x2f
	.4byte	0x173b
	.4byte	.LLST21
	.byte	0x30
	.4byte	0x1748
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0x30
	.4byte	0x1755
	.byte	0x3
	.byte	0x91
	.byte	0xdc,0x7e
	.byte	0x30
	.4byte	0x1762
	.byte	0x3
	.byte	0x91
	.byte	0x84,0x7f
	.byte	0x30
	.4byte	0x176f
	.byte	0x3
	.byte	0x91
	.byte	0xc8,0x7e
	.byte	0x2c
	.4byte	0x187f
	.4byte	.LBB33
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x1
	.2byte	0x172
	.byte	0x10
	.4byte	0x12fc
	.byte	0x2d
	.4byte	0x1890
	.4byte	.LLST22
	.byte	0x2e
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x2f
	.4byte	0x189c
	.4byte	.LLST23
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL62
	.4byte	0x1c0b
	.4byte	0x1321
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xd0,0x7e
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x7
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x23
	.byte	0x28
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0x1e
	.4byte	.LVL65
	.4byte	0x1c23
	.byte	0x1e
	.4byte	.LVL66
	.4byte	0x1c30
	.byte	0x1e
	.4byte	.LVL67
	.4byte	0x1c3d
	.byte	0x1f
	.4byte	.LVL68
	.4byte	0x1c4a
	.4byte	0x1351
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0
	.byte	0x1f
	.4byte	.LVL72
	.4byte	0x1c57
	.4byte	0x1369
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3a
	.byte	0x20
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x1f
	.4byte	.LVL73
	.4byte	0x1c64
	.4byte	0x137e
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xc8,0x7e
	.byte	0
	.byte	0x1e
	.4byte	.LVL74
	.4byte	0x1c71
	.byte	0x1f
	.4byte	.LVL93
	.4byte	0x1c7e
	.4byte	0x139f
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x47
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x24
	.4byte	.LVL94
	.4byte	0x1c8b
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2c
	.4byte	0x179d
	.4byte	.LBB38
	.4byte	.Ldebug_ranges0+0x70
	.byte	0x1
	.2byte	0x201
	.byte	0x9
	.4byte	0x14fd
	.byte	0x2d
	.4byte	0x17ba
	.4byte	.LLST24
	.byte	0x2d
	.4byte	0x17ae
	.4byte	.LLST25
	.byte	0x2e
	.4byte	.Ldebug_ranges0+0x70
	.byte	0x2f
	.4byte	0x17c6
	.4byte	.LLST26
	.byte	0x2f
	.4byte	0x17d2
	.4byte	.LLST27
	.byte	0x30
	.4byte	0x17de
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0x2f
	.4byte	0x17ea
	.4byte	.LLST28
	.byte	0x31
	.4byte	0x17f7
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.byte	0x1
	.2byte	0x116
	.byte	0x5
	.4byte	0x1436
	.byte	0x2d
	.4byte	0x181c
	.4byte	.LLST29
	.byte	0x2d
	.4byte	0x1810
	.4byte	.LLST30
	.byte	0x2d
	.4byte	0x1804
	.4byte	.LLST31
	.byte	0x32
	.4byte	0x1828
	.byte	0
	.byte	0x1f
	.4byte	.LVL76
	.4byte	0x1c98
	.4byte	0x1449
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1f
	.4byte	.LVL77
	.4byte	0x1ca4
	.4byte	0x145d
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x1e
	.4byte	.LVL79
	.4byte	0x1bcc
	.byte	0x1e
	.4byte	.LVL80
	.4byte	0x1bd8
	.byte	0x1e
	.4byte	.LVL81
	.4byte	0x1be5
	.byte	0x1e
	.4byte	.LVL96
	.4byte	0x1bf1
	.byte	0x1f
	.4byte	.LVL97
	.4byte	0x1ca4
	.4byte	0x1495
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x50
	.byte	0
	.byte	0x1e
	.4byte	.LVL99
	.4byte	0x1bcc
	.byte	0x1e
	.4byte	.LVL100
	.4byte	0x1bd8
	.byte	0x1e
	.4byte	.LVL101
	.4byte	0x1bf1
	.byte	0x1e
	.4byte	.LVL104
	.4byte	0x1cb0
	.byte	0x1f
	.4byte	.LVL106
	.4byte	0x1cbd
	.4byte	0x14ce
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0
	.byte	0x1f
	.4byte	.LVL107
	.4byte	0x1cca
	.4byte	0x14e2
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LVL108
	.4byte	0x1cd7
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	adc_data_update
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x31
	.4byte	0x16d2
	.4byte	.LBB43
	.4byte	.LBE43-.LBB43
	.byte	0x1
	.2byte	0x202
	.byte	0x9
	.4byte	0x1598
	.byte	0x2d
	.4byte	0x16e0
	.4byte	.LLST32
	.byte	0x1f
	.4byte	.LVL82
	.4byte	0x1ce3
	.4byte	0x1539
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x1f
	.4byte	.LVL83
	.4byte	0x1ce3
	.4byte	0x1557
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1f
	.4byte	.LVL84
	.4byte	0x1ce3
	.4byte	0x1575
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1e
	.4byte	.LVL85
	.4byte	0x1cf0
	.byte	0x1e
	.4byte	.LVL86
	.4byte	0x1cfd
	.byte	0x24
	.4byte	.LVL87
	.4byte	0x1d0a
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL17
	.4byte	0x1bcc
	.byte	0x1e
	.4byte	.LVL18
	.4byte	0x1bd8
	.byte	0x1e
	.4byte	.LVL20
	.4byte	0x1be5
	.byte	0x1e
	.4byte	.LVL22
	.4byte	0x1bf1
	.byte	0x1e
	.4byte	.LVL33
	.4byte	0x1bcc
	.byte	0x1e
	.4byte	.LVL34
	.4byte	0x1bd8
	.byte	0x1f
	.4byte	.LVL38
	.4byte	0x1ca4
	.4byte	0x15e1
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x48
	.byte	0
	.byte	0x1e
	.4byte	.LVL40
	.4byte	0x1bcc
	.byte	0x1e
	.4byte	.LVL41
	.4byte	0x1bd8
	.byte	0x1e
	.4byte	.LVL43
	.4byte	0x1bf1
	.byte	0x1e
	.4byte	.LVL45
	.4byte	0x1bf1
	.byte	0x1f
	.4byte	.LVL46
	.4byte	0x1d17
	.4byte	0x161d
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x48
	.byte	0
	.byte	0x1e
	.4byte	.LVL47
	.4byte	0x1bcc
	.byte	0x1e
	.4byte	.LVL48
	.4byte	0x1bd8
	.byte	0x1e
	.4byte	.LVL49
	.4byte	0x1bf1
	.byte	0x1f
	.4byte	.LVL50
	.4byte	0x1d23
	.4byte	0x1657
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3a
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xc4,0x7e
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x1e
	.4byte	.LVL110
	.4byte	0x1bcc
	.byte	0x1e
	.4byte	.LVL111
	.4byte	0x1bd8
	.byte	0x1e
	.4byte	.LVL112
	.4byte	0x1bf1
	.byte	0
	.byte	0x33
	.4byte	.LASF289
	.byte	0x1
	.2byte	0x1be
	.byte	0xc
	.4byte	0xb8
	.byte	0x1
	.4byte	0x16d2
	.byte	0x28
	.4byte	.LASF279
	.byte	0x1
	.2byte	0x1be
	.byte	0x25
	.4byte	0xb44
	.byte	0x28
	.4byte	.LASF253
	.byte	0x1
	.2byte	0x1be
	.byte	0x2f
	.4byte	0xb8
	.byte	0x28
	.4byte	.LASF266
	.byte	0x1
	.2byte	0x1be
	.byte	0x3e
	.4byte	0xb8
	.byte	0x2a
	.string	"i"
	.byte	0x1
	.2byte	0x1c0
	.byte	0x9
	.4byte	0xb8
	.byte	0x29
	.4byte	.LASF262
	.byte	0x1
	.2byte	0x1c1
	.byte	0xd
	.4byte	0x59
	.byte	0x29
	.4byte	.LASF280
	.byte	0x1
	.2byte	0x1c2
	.byte	0x15
	.4byte	0x6bb
	.byte	0
	.byte	0x34
	.4byte	.LASF282
	.byte	0x1
	.2byte	0x17e
	.byte	0xd
	.byte	0x1
	.4byte	0x16ee
	.byte	0x28
	.4byte	.LASF281
	.byte	0x1
	.2byte	0x17e
	.byte	0x2c
	.4byte	0x998
	.byte	0
	.byte	0x34
	.4byte	.LASF283
	.byte	0x1
	.2byte	0x12e
	.byte	0xd
	.byte	0x1
	.4byte	0x177d
	.byte	0x27
	.string	"adc"
	.byte	0x1
	.2byte	0x12e
	.byte	0x27
	.4byte	0xb68
	.byte	0x2a
	.string	"i"
	.byte	0x1
	.2byte	0x130
	.byte	0x9
	.4byte	0xb8
	.byte	0x29
	.4byte	.LASF281
	.byte	0x1
	.2byte	0x130
	.byte	0xc
	.4byte	0xb8
	.byte	0x29
	.4byte	.LASF284
	.byte	0x1
	.2byte	0x134
	.byte	0xd
	.4byte	0x177d
	.byte	0x29
	.4byte	.LASF236
	.byte	0x1
	.2byte	0x136
	.byte	0x1d
	.4byte	0x9fc
	.byte	0x2a
	.string	"pin"
	.byte	0x1
	.2byte	0x137
	.byte	0x13
	.4byte	0x260
	.byte	0x29
	.4byte	.LASF285
	.byte	0x1
	.2byte	0x139
	.byte	0x12
	.4byte	0x66b
	.byte	0x29
	.4byte	.LASF286
	.byte	0x1
	.2byte	0x13a
	.byte	0x13
	.4byte	0x178d
	.byte	0x29
	.4byte	.LASF287
	.byte	0x1
	.2byte	0x13b
	.byte	0x13
	.4byte	0x178d
	.byte	0x29
	.4byte	.LASF288
	.byte	0x1
	.2byte	0x13c
	.byte	0x17
	.4byte	0x724
	.byte	0
	.byte	0x35
	.4byte	0x73
	.4byte	0x178d
	.byte	0x36
	.4byte	0x25
	.byte	0x9
	.byte	0
	.byte	0x35
	.4byte	0x398
	.4byte	0x179d
	.byte	0x36
	.4byte	0x25
	.byte	0x9
	.byte	0
	.byte	0x37
	.4byte	.LASF290
	.byte	0x1
	.byte	0xf4
	.byte	0xc
	.4byte	0xb8
	.byte	0x1
	.4byte	0x17f7
	.byte	0x38
	.string	"adc"
	.byte	0x1
	.byte	0xf4
	.byte	0x2a
	.4byte	0xb68
	.byte	0x39
	.4byte	.LASF291
	.byte	0x1
	.byte	0xf4
	.byte	0x38
	.4byte	0x99
	.byte	0x3a
	.4byte	.LASF292
	.byte	0x1
	.byte	0xf6
	.byte	0x18
	.4byte	0x977
	.byte	0x3a
	.4byte	.LASF250
	.byte	0x1
	.byte	0xf7
	.byte	0xf
	.4byte	0xb44
	.byte	0x3a
	.4byte	.LASF293
	.byte	0x1
	.byte	0xf8
	.byte	0x16
	.4byte	0x96b
	.byte	0x3a
	.4byte	.LASF258
	.byte	0x1
	.byte	0xf9
	.byte	0x16
	.4byte	0xc11
	.byte	0
	.byte	0x3b
	.4byte	.LASF294
	.byte	0x1
	.byte	0xda
	.byte	0xd
	.byte	0x1
	.4byte	0x1835
	.byte	0x39
	.4byte	.LASF292
	.byte	0x1
	.byte	0xda
	.byte	0x31
	.4byte	0x977
	.byte	0x38
	.string	"buf"
	.byte	0x1
	.byte	0xda
	.byte	0x43
	.4byte	0xb44
	.byte	0x39
	.4byte	.LASF291
	.byte	0x1
	.byte	0xda
	.byte	0x51
	.4byte	0x99
	.byte	0x3a
	.4byte	.LASF295
	.byte	0x1
	.byte	0xdc
	.byte	0x1c
	.4byte	0x731
	.byte	0
	.byte	0x3b
	.4byte	.LASF296
	.byte	0x1
	.byte	0xb2
	.byte	0xd
	.byte	0x1
	.4byte	0x187f
	.byte	0x39
	.4byte	.LASF236
	.byte	0x1
	.byte	0xb2
	.byte	0x33
	.4byte	0x9fc
	.byte	0x39
	.4byte	.LASF278
	.byte	0x1
	.byte	0xb2
	.byte	0x42
	.4byte	0x99
	.byte	0x3c
	.string	"div"
	.byte	0x1
	.byte	0xb4
	.byte	0xe
	.4byte	0x99
	.byte	0x3a
	.4byte	.LASF297
	.byte	0x1
	.byte	0xb5
	.byte	0xe
	.4byte	0x99
	.byte	0x3a
	.4byte	.LASF298
	.byte	0x1
	.byte	0xb6
	.byte	0xe
	.4byte	0x99
	.byte	0
	.byte	0x37
	.4byte	.LASF299
	.byte	0x1
	.byte	0x86
	.byte	0xc
	.4byte	0xb8
	.byte	0x1
	.4byte	0x18a9
	.byte	0x38
	.string	"pin"
	.byte	0x1
	.byte	0x86
	.byte	0x32
	.4byte	0x260
	.byte	0x3a
	.4byte	.LASF266
	.byte	0x1
	.byte	0x88
	.byte	0x9
	.4byte	0xb8
	.byte	0
	.byte	0x37
	.4byte	.LASF300
	.byte	0x1
	.byte	0x6f
	.byte	0xc
	.4byte	0xb8
	.byte	0x1
	.4byte	0x18dd
	.byte	0x38
	.string	"pin"
	.byte	0x1
	.byte	0x6f
	.byte	0x2f
	.4byte	0x260
	.byte	0x3c
	.string	"i"
	.byte	0x1
	.byte	0x71
	.byte	0x9
	.4byte	0xb8
	.byte	0x3a
	.4byte	.LASF301
	.byte	0x1
	.byte	0x73
	.byte	0x13
	.4byte	0x18dd
	.byte	0
	.byte	0x35
	.4byte	0x260
	.4byte	0x18ed
	.byte	0x36
	.4byte	0x25
	.byte	0x9
	.byte	0
	.byte	0x3d
	.4byte	.LASF338
	.byte	0x1
	.byte	0x52
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x193c
	.byte	0x3e
	.4byte	.LASF243
	.byte	0x1
	.byte	0x52
	.byte	0x1d
	.4byte	0xbf
	.byte	0x1
	.byte	0x5a
	.byte	0x3e
	.4byte	.LASF302
	.byte	0x1
	.byte	0x52
	.byte	0x2d
	.4byte	0x99
	.byte	0x1
	.byte	0x5b
	.byte	0x3f
	.string	"adc"
	.byte	0x1
	.byte	0x54
	.byte	0x16
	.4byte	0xb68
	.byte	0x1
	.byte	0x5a
	.byte	0xe
	.4byte	.LASF258
	.byte	0x1
	.byte	0x55
	.byte	0x16
	.4byte	0xc11
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0x40
	.4byte	0x1673
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x1
	.byte	0x9c
	.4byte	0x1a1e
	.byte	0x2d
	.4byte	0x1685
	.4byte	.LLST0
	.byte	0x2d
	.4byte	0x169f
	.4byte	.LLST1
	.byte	0x2f
	.4byte	0x16ac
	.4byte	.LLST2
	.byte	0x32
	.4byte	0x16b7
	.byte	0x30
	.4byte	0x16c4
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x41
	.4byte	0x1692
	.byte	0xa
	.byte	0x31
	.4byte	0x1673
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.2byte	0x1be
	.byte	0xc
	.4byte	0x1a08
	.byte	0x2d
	.4byte	0x1685
	.4byte	.LLST3
	.byte	0x2d
	.4byte	0x1692
	.4byte	.LLST4
	.byte	0x2d
	.4byte	0x169f
	.4byte	.LLST5
	.byte	0x32
	.4byte	0x16ac
	.byte	0x32
	.4byte	0x16b7
	.byte	0x32
	.4byte	0x16c4
	.byte	0x1e
	.4byte	.LVL9
	.4byte	0x1bcc
	.byte	0x1e
	.4byte	.LVL10
	.4byte	0x1bd8
	.byte	0x1f
	.4byte	.LVL11
	.4byte	0x1be5
	.4byte	0x19fe
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x20
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x20
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x1cc
	.byte	0
	.byte	0x1e
	.4byte	.LVL13
	.4byte	0x1bf1
	.byte	0
	.byte	0x24
	.4byte	.LVL5
	.4byte	0x1d30
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0
	.byte	0x40
	.4byte	0x1032
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0x1af2
	.byte	0x2d
	.4byte	0x1044
	.4byte	.LLST33
	.byte	0x2d
	.4byte	0x1051
	.4byte	.LLST34
	.byte	0x2f
	.4byte	0x105e
	.4byte	.LLST35
	.byte	0x30
	.4byte	0x106b
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x2c
	.4byte	0x1032
	.4byte	.LBB50
	.4byte	.Ldebug_ranges0+0x88
	.byte	0x1
	.2byte	0x20d
	.byte	0x5
	.4byte	0x1ad7
	.byte	0x2d
	.4byte	0x1044
	.4byte	.LLST36
	.byte	0x2d
	.4byte	0x1051
	.4byte	.LLST37
	.byte	0x2e
	.4byte	.Ldebug_ranges0+0x88
	.byte	0x32
	.4byte	0x105e
	.byte	0x32
	.4byte	0x106b
	.byte	0x1e
	.4byte	.LVL117
	.4byte	0x1bcc
	.byte	0x1e
	.4byte	.LVL118
	.4byte	0x1bd8
	.byte	0x1f
	.4byte	.LVL119
	.4byte	0x1be5
	.4byte	0x1acc
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x20
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x20
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x218
	.byte	0
	.byte	0x1e
	.4byte	.LVL123
	.4byte	0x1bf1
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LVL127
	.4byte	0x1d23
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3a
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x40
	.4byte	0xff8
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x1
	.byte	0x9c
	.4byte	0x1b9b
	.byte	0x2d
	.4byte	0x100a
	.4byte	.LLST38
	.byte	0x2d
	.4byte	0x1017
	.4byte	.LLST39
	.byte	0x2f
	.4byte	0x1024
	.4byte	.LLST40
	.byte	0x42
	.4byte	0xff8
	.4byte	.LBB56
	.4byte	.Ldebug_ranges0+0xa0
	.byte	0x1
	.2byte	0x224
	.byte	0x5
	.byte	0x2d
	.4byte	0x100a
	.4byte	.LLST41
	.byte	0x2d
	.4byte	0x1017
	.4byte	.LLST42
	.byte	0x2e
	.4byte	.Ldebug_ranges0+0xa0
	.byte	0x32
	.4byte	0x1024
	.byte	0x1e
	.4byte	.LVL135
	.4byte	0x1bcc
	.byte	0x1e
	.4byte	.LVL136
	.4byte	0x1bd8
	.byte	0x1f
	.4byte	.LVL137
	.4byte	0x1be5
	.4byte	0x1b8f
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x20
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x20
	.byte	0x1
	.byte	0x5e
	.byte	0x3
	.byte	0xa
	.2byte	0x22e
	.byte	0
	.byte	0x1e
	.4byte	.LVL138
	.4byte	0x1bf1
	.byte	0
	.byte	0
	.byte	0
	.byte	0x43
	.4byte	.LASF303
	.4byte	.LASF303
	.byte	0xd
	.byte	0xf
	.byte	0x6
	.byte	0x44
	.4byte	.LASF304
	.4byte	.LASF304
	.byte	0x7
	.2byte	0x1fd
	.byte	0x6
	.byte	0x43
	.4byte	.LASF305
	.4byte	.LASF305
	.byte	0xb
	.byte	0x63
	.byte	0x5
	.byte	0x43
	.4byte	.LASF306
	.4byte	.LASF306
	.byte	0xb
	.byte	0x51
	.byte	0x5
	.byte	0x43
	.4byte	.LASF307
	.4byte	.LASF307
	.byte	0xe
	.byte	0x98
	.byte	0xc
	.byte	0x44
	.4byte	.LASF308
	.4byte	.LASF308
	.byte	0xf
	.2byte	0x558
	.byte	0xc
	.byte	0x43
	.4byte	.LASF309
	.4byte	.LASF309
	.byte	0x10
	.byte	0x81
	.byte	0x6
	.byte	0x44
	.4byte	.LASF310
	.4byte	.LASF310
	.byte	0xf
	.2byte	0x547
	.byte	0xc
	.byte	0x44
	.4byte	.LASF311
	.4byte	.LASF311
	.byte	0xf
	.2byte	0x2f6
	.byte	0x6
	.byte	0x45
	.4byte	.LASF339
	.4byte	.LASF340
	.byte	0x12
	.byte	0
	.byte	0x44
	.4byte	.LASF312
	.4byte	.LASF312
	.byte	0xa
	.2byte	0x262
	.byte	0xd
	.byte	0x44
	.4byte	.LASF313
	.4byte	.LASF313
	.byte	0x7
	.2byte	0x1f8
	.byte	0x6
	.byte	0x44
	.4byte	.LASF314
	.4byte	.LASF314
	.byte	0x7
	.2byte	0x1f7
	.byte	0x6
	.byte	0x44
	.4byte	.LASF315
	.4byte	.LASF315
	.byte	0x7
	.2byte	0x1f6
	.byte	0x6
	.byte	0x44
	.4byte	.LASF316
	.4byte	.LASF316
	.byte	0x7
	.2byte	0x1f9
	.byte	0x6
	.byte	0x44
	.4byte	.LASF317
	.4byte	.LASF317
	.byte	0x7
	.2byte	0x1fb
	.byte	0x6
	.byte	0x44
	.4byte	.LASF318
	.4byte	.LASF318
	.byte	0x7
	.2byte	0x1fe
	.byte	0x6
	.byte	0x44
	.4byte	.LASF319
	.4byte	.LASF319
	.byte	0x7
	.2byte	0x209
	.byte	0x6
	.byte	0x44
	.4byte	.LASF320
	.4byte	.LASF320
	.byte	0x7
	.2byte	0x1fa
	.byte	0x6
	.byte	0x44
	.4byte	.LASF321
	.4byte	.LASF321
	.byte	0x7
	.2byte	0x20c
	.byte	0xd
	.byte	0x43
	.4byte	.LASF322
	.4byte	.LASF322
	.byte	0xb
	.byte	0x48
	.byte	0x12
	.byte	0x43
	.4byte	.LASF323
	.4byte	.LASF323
	.byte	0xd
	.byte	0xc
	.byte	0x8
	.byte	0x44
	.4byte	.LASF324
	.4byte	.LASF324
	.byte	0x9
	.2byte	0x141
	.byte	0x6
	.byte	0x44
	.4byte	.LASF325
	.4byte	.LASF325
	.byte	0x9
	.2byte	0x142
	.byte	0x6
	.byte	0x44
	.4byte	.LASF326
	.4byte	.LASF326
	.byte	0x9
	.2byte	0x143
	.byte	0x6
	.byte	0x43
	.4byte	.LASF327
	.4byte	.LASF327
	.byte	0xb
	.byte	0x6e
	.byte	0x5
	.byte	0x44
	.4byte	.LASF328
	.4byte	.LASF328
	.byte	0x9
	.2byte	0x144
	.byte	0x6
	.byte	0x44
	.4byte	.LASF329
	.4byte	.LASF329
	.byte	0x7
	.2byte	0x1fc
	.byte	0x6
	.byte	0x44
	.4byte	.LASF330
	.4byte	.LASF330
	.byte	0x9
	.2byte	0x139
	.byte	0x6
	.byte	0x44
	.4byte	.LASF331
	.4byte	.LASF331
	.byte	0x9
	.2byte	0x140
	.byte	0x6
	.byte	0x43
	.4byte	.LASF332
	.4byte	.LASF332
	.byte	0x11
	.byte	0x21
	.byte	0x8
	.byte	0x44
	.4byte	.LASF333
	.4byte	.LASF333
	.byte	0xa
	.2byte	0x277
	.byte	0xd
	.byte	0x44
	.4byte	.LASF334
	.4byte	.LASF334
	.byte	0x7
	.2byte	0x203
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x5
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
	.byte	0x6
	.byte	0xf
	.byte	0
	.byte	0xb
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
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xc
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
	.byte	0x38
	.byte	0xb
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
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
	.byte	0xd
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
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0xd
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
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x16
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
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x13
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0xd
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
	.byte	0x19
	.byte	0xd
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
	.byte	0x1a
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
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0x1d
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
	.byte	0x1e
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1f
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
	.byte	0x20
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x22
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
	.byte	0x23
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x24
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x25
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
	.byte	0x26
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x27
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
	.byte	0
	.byte	0
	.byte	0x28
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
	.byte	0
	.byte	0
	.byte	0x29
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
	.byte	0
	.byte	0
	.byte	0x2a
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
	.byte	0
	.byte	0
	.byte	0x2b
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x2c
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
	.byte	0x5
	.byte	0x57
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2d
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2e
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2f
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x30
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x31
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
	.byte	0x5
	.byte	0x57
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x32
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x33
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
	.byte	0x49
	.byte	0x13
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x34
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x35
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x36
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x37
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
	.byte	0x38
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
	.byte	0x39
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
	.byte	0x3a
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
	.byte	0
	.byte	0
	.byte	0x3b
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x3c
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
	.byte	0x3d
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
	.byte	0x3e
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
	.byte	0x3f
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
	.byte	0x40
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
	.byte	0x41
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x42
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
	.byte	0x5
	.byte	0x57
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x43
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
	.byte	0x44
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
	.byte	0x45
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST61:
	.4byte	.LVL197
	.4byte	.LVL199
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL199
	.4byte	.LVL206
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL206
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL198
	.4byte	.LVL207
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL195
	.4byte	.LVL196
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL196
	.4byte	.LFE26
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL190
	.4byte	.LVL191-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL191-1
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL190
	.4byte	.LVL191-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL191-1
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL190
	.4byte	.LVL191-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL191-1
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL185
	.4byte	.LVL186-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL186-1
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL185
	.4byte	.LVL186-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL186-1
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL152
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL154
	.4byte	.LVL156
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL156
	.4byte	.LVL157-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL157-1
	.4byte	.LVL161
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL161
	.4byte	.LVL162-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL162-1
	.4byte	.LVL166
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL166
	.4byte	.LVL168-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL168-1
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL152
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL154
	.4byte	.LVL156
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL156
	.4byte	.LVL157-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL157-1
	.4byte	.LVL161
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL161
	.4byte	.LVL162-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL162-1
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL166
	.4byte	.LVL168-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL168-1
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL176
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL152
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL156
	.4byte	.LVL157-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL157-1
	.4byte	.LVL161
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL161
	.4byte	.LVL162-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL162-1
	.4byte	.LVL166
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL166
	.4byte	.LVL167
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL167
	.4byte	.LVL171
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL171
	.4byte	.LVL173
	.2byte	0x3
	.byte	0x84
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL173
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL152
	.4byte	.LVL154
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL156
	.4byte	.LVL171
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL171
	.4byte	.LVL173
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL175
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL181
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL152
	.4byte	.LVL154
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL156
	.4byte	.LVL178
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL179
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL152
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL156
	.4byte	.LVL157-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL157-1
	.4byte	.LVL161
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL161
	.4byte	.LVL162-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL162-1
	.4byte	.LVL166
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL166
	.4byte	.LVL167
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL167
	.4byte	.LVL181
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL181
	.4byte	.LVL184
	.2byte	0x3
	.byte	0x79
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL184
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL153
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL156
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL145
	.4byte	.LVL147-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL147-1
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL146
	.4byte	.LVL147-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL143
	.4byte	.LVL144-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL144-1
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL143
	.4byte	.LVL144-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL144-1
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL143
	.4byte	.LVL144-1
	.2byte	0x2
	.byte	0x90
	.byte	0x2a
	.4byte	.LVL144-1
	.4byte	.LFE20
	.2byte	0x6
	.byte	0xf3
	.byte	0x3
	.byte	0xf5
	.byte	0x2a
	.byte	0x2c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL14
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
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17-1
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL31
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL37
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL88
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LFE17
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL24
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL109
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL44
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL109
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL26
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL50
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL50
	.4byte	.LVL58-1
	.2byte	0x2
	.byte	0x78
	.byte	0xc
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL54
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL89
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL53
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL89
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL61
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL91
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x3
	.byte	0x7f
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL72-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL92
	.4byte	.LVL93-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL63
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL91
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL64
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL91
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL74
	.4byte	.LVL81
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL95
	.4byte	.LVL109
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL74
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL95
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL78
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL95
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL98
	.4byte	.LVL99-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL99-1
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL103
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL75
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL95
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL81
	.4byte	.LVL82-1
	.2byte	0x2
	.byte	0x78
	.byte	0x14
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL5-1
	.2byte	0x3
	.byte	0x7e
	.byte	0x58
	.byte	0x9f
	.4byte	.LVL5-1
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9-1
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LFE33
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9-1
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL113
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL116
	.4byte	.LVL124
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL124
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL126
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL113
	.4byte	.LVL117-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL117-1
	.4byte	.LVL124
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL125
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL128
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL114
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL122
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL116
	.4byte	.LVL120
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL122
	.4byte	.LVL124
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL115
	.4byte	.LVL117-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL117-1
	.4byte	.LVL120
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL122
	.4byte	.LVL124
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL129
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL133
	.4byte	.LVL139
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL139
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL141
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL129
	.4byte	.LVL135-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL135-1
	.4byte	.LVL139
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL139
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL140
	.4byte	.LVL142
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL142
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL130
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL132
	.4byte	.LVL133
	.2byte	0x2
	.byte	0x7a
	.byte	0x20
	.4byte	.LVL133
	.4byte	.LVL134
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x20
	.4byte	.LVL139
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL142
	.4byte	.LFE19
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x20
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL131
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL133
	.4byte	.LVL139
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL142
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL131
	.4byte	.LVL135-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL135-1
	.4byte	.LVL139
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL142
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x7c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
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
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB20
	.4byte	.LBE20
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	0
	.4byte	0
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	.LBB45
	.4byte	.LBE45
	.4byte	0
	.4byte	0
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	.LBB46
	.4byte	.LBE46
	.4byte	0
	.4byte	0
	.4byte	.LBB33
	.4byte	.LBE33
	.4byte	.LBB36
	.4byte	.LBE36
	.4byte	0
	.4byte	0
	.4byte	.LBB38
	.4byte	.LBE38
	.4byte	.LBB47
	.4byte	.LBE47
	.4byte	0
	.4byte	0
	.4byte	.LBB50
	.4byte	.LBE50
	.4byte	.LBB53
	.4byte	.LBE53
	.4byte	0
	.4byte	0
	.4byte	.LBB56
	.4byte	.LBE56
	.4byte	.LBB61
	.4byte	.LBE61
	.4byte	.LBB62
	.4byte	.LBE62
	.4byte	.LBB63
	.4byte	.LBE63
	.4byte	0
	.4byte	0
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB33
	.4byte	.LFE33
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
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF123:
	.string	"ADC_PGA_GAIN_32"
.LASF221:
	.string	"GLB_ADC_CLK_96M"
.LASF171:
	.string	"ADC_FIFO_THRESHOLD_16"
.LASF271:
	.string	"hosal_adc_remove_reference_channel"
.LASF32:
	.string	"_fsymf_info_hosalhosal_adc"
.LASF275:
	.string	"hosal_adc_remove_channel"
.LASF281:
	.string	"chan"
.LASF16:
	.string	"char"
.LASF301:
	.string	"gpio_arr"
.LASF286:
	.string	"pos_chlist_single"
.LASF20:
	.string	"BLOG_LEVEL_WARN"
.LASF137:
	.string	"ADC_PGA_VCM_Type"
.LASF21:
	.string	"BLOG_LEVEL_ERROR"
.LASF17:
	.string	"BLOG_LEVEL_ALL"
.LASF57:
	.string	"GLB_GPIO_Type"
.LASF213:
	.string	"srcDmaAddr"
.LASF0:
	.string	"unsigned int"
.LASF65:
	.string	"GPIO_FUN_ANALOG"
.LASF135:
	.string	"ADC_PGA_VCM_1P4V"
.LASF255:
	.string	"pgdevice"
.LASF333:
	.string	"GLB_GPIO_Func_Init"
.LASF138:
	.string	"ADC_VREF_3P2V"
.LASF174:
	.string	"dmaEn"
.LASF158:
	.string	"inputMode"
.LASF61:
	.string	"GPIO_FUN_I2C"
.LASF111:
	.string	"ADC_CLK_DIV_12"
.LASF112:
	.string	"ADC_CLK_DIV_16"
.LASF233:
	.string	"HOSAL_ADC_CONTINUE"
.LASF288:
	.string	"adc_fifo_cfg"
.LASF25:
	.string	"level"
.LASF326:
	.string	"DMA_LLI_Update"
.LASF105:
	.string	"ADC_V11_SEL_1P18V"
.LASF236:
	.string	"mode"
.LASF340:
	.string	"__builtin_memcpy"
.LASF258:
	.string	"pstctx"
.LASF208:
	.string	"DMA_REQ_NONE"
.LASF93:
	.string	"ADC_CHAN_SENP2"
.LASF298:
	.string	"mode_freq"
.LASF113:
	.string	"ADC_CLK_DIV_20"
.LASF114:
	.string	"ADC_CLK_DIV_24"
.LASF141:
	.string	"ADC_INPUT_SINGLE_END"
.LASF142:
	.string	"ADC_INPUT_DIFF"
.LASF27:
	.string	"blog_info_t"
.LASF292:
	.string	"pstlli"
.LASF178:
	.string	"TransferSize"
.LASF76:
	.string	"ADC_CHAN3"
.LASF60:
	.string	"GPIO_FUN_SPI"
.LASF238:
	.string	"hosal_adc_config_t"
.LASF297:
	.string	"source_freq"
.LASF136:
	.string	"ADC_PGA_VCM_1P6V"
.LASF13:
	.string	"uint32_t"
.LASF3:
	.string	"int8_t"
.LASF264:
	.string	"hosal_adc_sample_cb_reg"
.LASF143:
	.string	"ADC_SIG_INPUT_Type"
.LASF42:
	.string	"GLB_GPIO_PIN_9"
.LASF184:
	.string	"reserved_25"
.LASF219:
	.string	"dstPeriph"
.LASF215:
	.string	"nextLLI"
.LASF1:
	.string	"float"
.LASF95:
	.string	"ADC_CHAN_SENP0"
.LASF94:
	.string	"ADC_CHAN_SENP1"
.LASF161:
	.string	"offsetCalibVal"
.LASF92:
	.string	"ADC_CHAN_SENP3"
.LASF309:
	.string	"bl_printk"
.LASF257:
	.string	"adc_refer_voltage"
.LASF62:
	.string	"GPIO_FUN_UART"
.LASF4:
	.string	"int16_t"
.LASF115:
	.string	"ADC_CLK_DIV_32"
.LASF280:
	.string	"result"
.LASF15:
	.string	"long long unsigned int"
.LASF308:
	.string	"xTaskGetTickCountFromISR"
.LASF279:
	.string	"parr"
.LASF67:
	.string	"GPIO_FUN_JTAG"
.LASF96:
	.string	"ADC_CHAN_GND"
.LASF132:
	.string	"ADC_CHOP_MOD_Type"
.LASF316:
	.string	"ADC_Init"
.LASF274:
	.string	"refer_voltage"
.LASF210:
	.string	"DMA_INT_TCOMPLETED"
.LASF214:
	.string	"destDmaAddr"
.LASF296:
	.string	"adc_freq_init"
.LASF206:
	.string	"DMA_REQ_GPADC0"
.LASF207:
	.string	"DMA_REQ_GPADC1"
.LASF187:
	.string	"DMA_TRNS_WIDTH_16BITS"
.LASF335:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF315:
	.string	"ADC_Reset"
.LASF323:
	.string	"pvPortMalloc"
.LASF176:
	.string	"_blog_info"
.LASF325:
	.string	"DMA_LLI_Init"
.LASF329:
	.string	"ADC_Start"
.LASF165:
	.string	"value"
.LASF195:
	.string	"DMA_BURST_SIZE_4"
.LASF334:
	.string	"ADC_Parse_Result"
.LASF100:
	.string	"ADC_V18_SEL_1P82V"
.LASF253:
	.string	"data_size"
.LASF119:
	.string	"ADC_PGA_GAIN_2"
.LASF182:
	.string	"DWidth"
.LASF19:
	.string	"BLOG_LEVEL_INFO"
.LASF101:
	.string	"ADC_V18_SEL_1P92V"
.LASF185:
	.string	"Prot"
.LASF261:
	.string	"hosal_adc_start"
.LASF23:
	.string	"BLOG_LEVEL_NEVER"
.LASF324:
	.string	"DMA_Channel_Disable"
.LASF48:
	.string	"GLB_GPIO_PIN_15"
.LASF107:
	.string	"ADC_V11_SEL_Type"
.LASF52:
	.string	"GLB_GPIO_PIN_19"
.LASF103:
	.string	"ADC_V11_SEL_1P0V"
.LASF235:
	.string	"sampling_freq"
.LASF278:
	.string	"freq"
.LASF311:
	.string	"vTaskDelay"
.LASF181:
	.string	"SWidth"
.LASF179:
	.string	"SBSize"
.LASF106:
	.string	"ADC_V11_SEL_1P26V"
.LASF108:
	.string	"ADC_CLK_DIV_1"
.LASF116:
	.string	"ADC_CLK_Type"
.LASF109:
	.string	"ADC_CLK_DIV_4"
.LASF200:
	.string	"DMA_REQ_UART1_RX"
.LASF244:
	.string	"priv"
.LASF110:
	.string	"ADC_CLK_DIV_8"
.LASF163:
	.string	"posChan"
.LASF310:
	.string	"xTaskGetTickCount"
.LASF306:
	.string	"hosal_dma_chan_release"
.LASF223:
	.string	"hosal_dma_chan_t"
.LASF68:
	.string	"DISABLE"
.LASF149:
	.string	"ADC_Data_Width_Type"
.LASF117:
	.string	"ADC_PGA_GAIN_NONE"
.LASF295:
	.string	"dma_ctrl_reg"
.LASF104:
	.string	"ADC_V11_SEL_1P1V"
.LASF242:
	.string	"dma_chan"
.LASF320:
	.string	"ADC_Channel_Config"
.LASF180:
	.string	"DBSize"
.LASF139:
	.string	"ADC_VREF_2V"
.LASF59:
	.string	"GPIO_FUN_FLASH"
.LASF250:
	.string	"llibuf"
.LASF9:
	.string	"uint8_t"
.LASF247:
	.string	"adc_ctx"
.LASF63:
	.string	"GPIO_FUN_PWM"
.LASF118:
	.string	"ADC_PGA_GAIN_1"
.LASF66:
	.string	"GPIO_FUN_SWGPIO"
.LASF71:
	.string	"UNMASK"
.LASF120:
	.string	"ADC_PGA_GAIN_4"
.LASF162:
	.string	"ADC_CFG_Type"
.LASF121:
	.string	"ADC_PGA_GAIN_8"
.LASF224:
	.string	"_blog_leve"
.LASF159:
	.string	"resWidth"
.LASF73:
	.string	"ADC_CHAN0"
.LASF74:
	.string	"ADC_CHAN1"
.LASF75:
	.string	"ADC_CHAN2"
.LASF140:
	.string	"ADC_VREF_Type"
.LASF77:
	.string	"ADC_CHAN4"
.LASF78:
	.string	"ADC_CHAN5"
.LASF79:
	.string	"ADC_CHAN6"
.LASF80:
	.string	"ADC_CHAN7"
.LASF81:
	.string	"ADC_CHAN8"
.LASF82:
	.string	"ADC_CHAN9"
.LASF157:
	.string	"vref"
.LASF249:
	.string	"adc_lli"
.LASF291:
	.string	"data_num"
.LASF64:
	.string	"GPIO_FUN_EXT_PA"
.LASF8:
	.string	"long long int"
.LASF148:
	.string	"ADC_DATA_WIDTH_16_WITH_256_AVERAGE"
.LASF152:
	.string	"clkDiv"
.LASF145:
	.string	"ADC_DATA_WIDTH_14_WITH_16_AVERAGE"
.LASF251:
	.string	"lli_flag"
.LASF282:
	.string	"adc_dma_start"
.LASF331:
	.string	"DMA_Channel_Enable"
.LASF330:
	.string	"DMA_Enable"
.LASF209:
	.string	"DMA_Periph_Req_Type"
.LASF28:
	.string	"BLOG_HARD_DECLARE_DISABLE"
.LASF283:
	.string	"adc_init"
.LASF321:
	.string	"ADC_Mic_Init"
.LASF98:
	.string	"ADC_V18_SEL_1P62V"
.LASF177:
	.string	"DMA_Control_Reg"
.LASF147:
	.string	"ADC_DATA_WIDTH_16_WITH_128_AVERAGE"
.LASF201:
	.string	"DMA_REQ_UART1_TX"
.LASF31:
	.string	"_fsymf_level_hosalhosal_adc"
.LASF332:
	.string	"memset"
.LASF338:
	.string	"adc_data_update"
.LASF153:
	.string	"gain1"
.LASF263:
	.string	"size"
.LASF290:
	.string	"adc_dma_init"
.LASF85:
	.string	"ADC_CHAN_DAC_OUTA"
.LASF86:
	.string	"ADC_CHAN_DAC_OUTB"
.LASF87:
	.string	"ADC_CHAN_TSEN_P"
.LASF218:
	.string	"srcPeriph"
.LASF336:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hosal_adc.c"
.LASF126:
	.string	"ADC_BIAS_SEL_AON_BANDGAP"
.LASF307:
	.string	"xPortIsInsideInterrupt"
.LASF43:
	.string	"GLB_GPIO_PIN_10"
.LASF44:
	.string	"GLB_GPIO_PIN_11"
.LASF45:
	.string	"GLB_GPIO_PIN_12"
.LASF46:
	.string	"GLB_GPIO_PIN_13"
.LASF47:
	.string	"GLB_GPIO_PIN_14"
.LASF285:
	.string	"adccfg"
.LASF49:
	.string	"GLB_GPIO_PIN_16"
.LASF50:
	.string	"GLB_GPIO_PIN_17"
.LASF51:
	.string	"GLB_GPIO_PIN_18"
.LASF146:
	.string	"ADC_DATA_WIDTH_16_WITH_64_AVERAGE"
.LASF318:
	.string	"ADC_FIFO_Cfg"
.LASF130:
	.string	"ADC_CHOP_MOD_AZ_PGA_ON"
.LASF131:
	.string	"ADC_CHOP_MOD_AZ_PGA_RPC_ON"
.LASF262:
	.string	"data"
.LASF144:
	.string	"ADC_DATA_WIDTH_12"
.LASF102:
	.string	"ADC_V18_SEL_Type"
.LASF231:
	.string	"hosal_adc_event_t"
.LASF72:
	.string	"MASK"
.LASF260:
	.string	"hosal_adc_stop"
.LASF11:
	.string	"uint16_t"
.LASF337:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/build_out/hosal"
.LASF155:
	.string	"chopMode"
.LASF217:
	.string	"DMA_LLI_Ctrl_Type"
.LASF220:
	.string	"DMA_LLI_Cfg_Type"
.LASF266:
	.string	"channel"
.LASF222:
	.string	"GLB_ADC_CLK_XCLK"
.LASF225:
	.string	"__ADC_INT_EVENTS__"
.LASF53:
	.string	"GLB_GPIO_PIN_20"
.LASF54:
	.string	"GLB_GPIO_PIN_21"
.LASF55:
	.string	"GLB_GPIO_PIN_22"
.LASF10:
	.string	"unsigned char"
.LASF160:
	.string	"offsetCalibEn"
.LASF241:
	.string	"config"
.LASF186:
	.string	"DMA_TRNS_WIDTH_8BITS"
.LASF5:
	.string	"short int"
.LASF229:
	.string	"HOSAL_ADC_INT_DMA_TRC"
.LASF230:
	.string	"HOSAL_ADC_INT_DMA_TRE"
.LASF228:
	.string	"HOSAL_ADC_INT_DMA_TRH"
.LASF7:
	.string	"long int"
.LASF232:
	.string	"HOSAL_ADC_ONE_SHOT"
.LASF276:
	.string	"hosal_adc_add_channel"
.LASF189:
	.string	"DMA_TRNS_M2M"
.LASF190:
	.string	"DMA_TRNS_M2P"
.LASF33:
	.string	"GLB_GPIO_PIN_0"
.LASF34:
	.string	"GLB_GPIO_PIN_1"
.LASF35:
	.string	"GLB_GPIO_PIN_2"
.LASF36:
	.string	"GLB_GPIO_PIN_3"
.LASF37:
	.string	"GLB_GPIO_PIN_4"
.LASF38:
	.string	"GLB_GPIO_PIN_5"
.LASF39:
	.string	"GLB_GPIO_PIN_6"
.LASF40:
	.string	"GLB_GPIO_PIN_7"
.LASF41:
	.string	"GLB_GPIO_PIN_8"
.LASF256:
	.string	"adc_refer_channel"
.LASF287:
	.string	"neg_chlist_single"
.LASF265:
	.string	"hosal_adc_value_get"
.LASF302:
	.string	"flag"
.LASF216:
	.string	"dmaCtrl"
.LASF167:
	.string	"ADC_Result_Type"
.LASF237:
	.string	"sample_resolution"
.LASF99:
	.string	"ADC_V18_SEL_1P72V"
.LASF303:
	.string	"vPortFree"
.LASF2:
	.string	"signed char"
.LASF151:
	.string	"v11Sel"
.LASF284:
	.string	"channel_table"
.LASF88:
	.string	"ADC_CHAN_TSEN_N"
.LASF127:
	.string	"ADC_BIAS_SEL_Type"
.LASF268:
	.string	"refer_val"
.LASF125:
	.string	"ADC_BIAS_SEL_MAIN_BANDGAP"
.LASF26:
	.string	"name"
.LASF234:
	.string	"hosal_adc_sample_mode_t"
.LASF83:
	.string	"ADC_CHAN10"
.LASF84:
	.string	"ADC_CHAN11"
.LASF252:
	.string	"chan_init_table"
.LASF166:
	.string	"volt"
.LASF172:
	.string	"ADC_FIFO_Threshold_Type"
.LASF273:
	.string	"hosal_adc_add_reference_channel"
.LASF239:
	.string	"hosal_adc_irq_t"
.LASF91:
	.string	"ADC_CHAN_VABT_HALF"
.LASF129:
	.string	"ADC_CHOP_MOD_AZ_ON"
.LASF243:
	.string	"p_arg"
.LASF156:
	.string	"biasSel"
.LASF69:
	.string	"ENABLE"
.LASF194:
	.string	"DMA_BURST_SIZE_1"
.LASF202:
	.string	"DMA_REQ_I2C_RX"
.LASF14:
	.string	"long unsigned int"
.LASF211:
	.string	"DMA_INT_ERR"
.LASF322:
	.string	"hosal_dma_chan_request"
.LASF312:
	.string	"GLB_Set_ADC_CLK"
.LASF196:
	.string	"DMA_BURST_SIZE_8"
.LASF254:
	.string	"hosal_adc_ctx_t"
.LASF272:
	.string	"refer_channel"
.LASF304:
	.string	"ADC_Stop"
.LASF6:
	.string	"int32_t"
.LASF212:
	.string	"DMA_INT_ALL"
.LASF240:
	.string	"port"
.LASF124:
	.string	"ADC_PGA_GAIN_Type"
.LASF70:
	.string	"BL_Fun_Type"
.LASF97:
	.string	"ADC_Chan_Type"
.LASF327:
	.string	"hosal_dma_irq_callback_set"
.LASF22:
	.string	"BLOG_LEVEL_ASSERT"
.LASF198:
	.string	"DMA_REQ_UART0_RX"
.LASF150:
	.string	"v18Sel"
.LASF277:
	.string	"hosal_adc_init"
.LASF175:
	.string	"ADC_FIFO_Cfg_Type"
.LASF305:
	.string	"hosal_dma_chan_stop"
.LASF267:
	.string	"timeout"
.LASF89:
	.string	"ADC_CHAN_VREF"
.LASF29:
	.string	"_fsymc_info_hosal"
.LASF319:
	.string	"ADC_SET_TSVBE_LOW"
.LASF197:
	.string	"DMA_BURST_SIZE_16"
.LASF293:
	.string	"llicfg"
.LASF122:
	.string	"ADC_PGA_GAIN_16"
.LASF56:
	.string	"GLB_GPIO_PIN_MAX"
.LASF191:
	.string	"DMA_TRNS_P2M"
.LASF226:
	.string	"HOSAL_ADC_INT_OV"
.LASF192:
	.string	"DMA_TRNS_P2P"
.LASF30:
	.string	"_fsymc_level_hosal"
.LASF313:
	.string	"ADC_Disable"
.LASF193:
	.string	"DMA_Trans_Dir_Type"
.LASF248:
	.string	"channel_data"
.LASF164:
	.string	"negChan"
.LASF317:
	.string	"ADC_Scan_Channel_Config"
.LASF24:
	.string	"blog_level_t"
.LASF289:
	.string	"adc_parse_data"
.LASF12:
	.string	"short unsigned int"
.LASF203:
	.string	"DMA_REQ_I2C_TX"
.LASF328:
	.string	"DMA_IntMask"
.LASF294:
	.string	"adc_dma_lli_init"
.LASF339:
	.string	"memcpy"
.LASF227:
	.string	"HOSAL_ADC_INT_EOS"
.LASF154:
	.string	"gain2"
.LASF300:
	.string	"adc_check_gpio_valid"
.LASF18:
	.string	"BLOG_LEVEL_DEBUG"
.LASF90:
	.string	"ADC_CHAN_DCTEST"
.LASF188:
	.string	"DMA_TRNS_WIDTH_32BITS"
.LASF134:
	.string	"ADC_PGA_VCM_1P2V"
.LASF259:
	.string	"hosal_adc_finalize"
.LASF246:
	.string	"hosal_adc_cb_t"
.LASF199:
	.string	"DMA_REQ_UART0_TX"
.LASF183:
	.string	"SLargerD"
.LASF168:
	.string	"ADC_FIFO_THRESHOLD_1"
.LASF169:
	.string	"ADC_FIFO_THRESHOLD_4"
.LASF299:
	.string	"adc_get_channel_by_gpio"
.LASF170:
	.string	"ADC_FIFO_THRESHOLD_8"
.LASF128:
	.string	"ADC_CHOP_MOD_ALL_OFF"
.LASF204:
	.string	"DMA_REQ_SPI_RX"
.LASF173:
	.string	"fifoThreshold"
.LASF270:
	.string	"hosal_adc_device_get"
.LASF58:
	.string	"GPIO_FUN_SDIO"
.LASF133:
	.string	"ADC_PGA_VCM_1V"
.LASF205:
	.string	"DMA_REQ_SPI_TX"
.LASF314:
	.string	"ADC_Enable"
.LASF269:
	.string	"refer_timeout"
.LASF245:
	.string	"hosal_adc_dev_t"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
