	.file	"aws_iot_json_utils.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.jsoneq,"ax",@progbits
	.align	1
	.globl	jsoneq
	.type	jsoneq, @function
jsoneq:
.LFB4:
	.file 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_json_utils.c"
	.loc 1 38 64
	.cfi_startproc
.LVL0:
	.loc 1 39 2
	.loc 1 38 64 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	sw	s1,20(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.loc 1 39 4
	lw	a4,0(a1)
	li	a5,3
	.loc 1 38 64
	mv	s0,a1
	.loc 1 39 4
	beq	a4,a5,.L2
.LVL1:
.L4:
	.loc 1 46 9
	li	a0,-1
.L3:
	.loc 1 47 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL2:
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL3:
.L2:
	.cfi_restore_state
	mv	s1,a0
	.loc 1 40 3 is_stmt 1
	.loc 1 40 12 is_stmt 0
	mv	a0,a2
.LVL4:
	sw	a2,12(sp)
	call	strlen
.LVL5:
	.loc 1 40 34
	lw	a5,8(s0)
	.loc 1 40 12
	mv	a2,a0
	.loc 1 40 39
	lw	a0,4(s0)
	.loc 1 40 34
	sub	a5,a5,a0
	.loc 1 40 5
	bne	a2,a5,.L4
	.loc 1 41 4 is_stmt 1
	.loc 1 41 7 is_stmt 0
	lw	a1,12(sp)
	add	a0,s1,a0
	call	strncmp
.LVL6:
	.loc 1 41 6
	snez	a0,a0
	neg	a0,a0
	j	.L3
	.cfi_endproc
.LFE4:
	.size	jsoneq, .-jsoneq
	.section	.rodata.parseUnsignedInteger32Value.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"%lu"
	.section	.text.parseUnsignedInteger32Value,"ax",@progbits
	.align	1
	.globl	parseUnsignedInteger32Value
	.type	parseUnsignedInteger32Value, @function
parseUnsignedInteger32Value:
.LFB5:
	.loc 1 49 96 is_stmt 1
	.cfi_startproc
.LVL7:
	.loc 1 50 2
	.loc 1 50 4 is_stmt 0
	lw	a3,0(a2)
	li	a4,4
	bne	a3,a4,.L11
	mv	a5,a0
	.loc 1 55 2 is_stmt 1
	.loc 1 55 31 is_stmt 0
	lw	a0,4(a2)
.LVL8:
	.loc 1 55 4
	li	a4,45
	.loc 1 55 31
	add	a0,a1,a0
	.loc 1 55 4
	lbu	a3,0(a0)
	beq	a3,a4,.L11
	.loc 1 55 57 discriminator 1
	lui	a1,%hi(.LC0)
.LVL9:
	.loc 1 49 96 discriminator 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 55 57 discriminator 1
	mv	a2,a5
.LVL10:
	addi	a1,a1,%lo(.LC0)
	.loc 1 49 96 discriminator 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 55 57 discriminator 1
	call	sscanf
.LVL11:
	.loc 1 55 48 discriminator 1
	li	a4,1
	.loc 1 60 9 discriminator 1
	li	a5,0
	.loc 1 55 48 discriminator 1
	beq	a0,a4,.L6
	.loc 1 57 10
	li	a5,-42
.L6:
	.loc 1 61 1
	lw	ra,12(sp)
	.cfi_restore 1
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL12:
.L11:
	.loc 1 57 10
	li	a5,-42
	.loc 1 61 1
	mv	a0,a5
	ret
	.cfi_endproc
.LFE5:
	.size	parseUnsignedInteger32Value, .-parseUnsignedInteger32Value
	.section	.rodata.parseUnsignedInteger16Value.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"%hu"
	.section	.text.parseUnsignedInteger16Value,"ax",@progbits
	.align	1
	.globl	parseUnsignedInteger16Value
	.type	parseUnsignedInteger16Value, @function
parseUnsignedInteger16Value:
.LFB6:
	.loc 1 63 96 is_stmt 1
	.cfi_startproc
.LVL13:
	.loc 1 64 2
	.loc 1 64 4 is_stmt 0
	lw	a3,0(a2)
	li	a4,4
	bne	a3,a4,.L20
	mv	a5,a0
	.loc 1 69 2 is_stmt 1
	.loc 1 69 31 is_stmt 0
	lw	a0,4(a2)
.LVL14:
	.loc 1 69 4
	li	a4,45
	.loc 1 69 31
	add	a0,a1,a0
	.loc 1 69 4
	lbu	a3,0(a0)
	beq	a3,a4,.L20
	.loc 1 69 57 discriminator 1
	lui	a1,%hi(.LC1)
.LVL15:
	.loc 1 63 96 discriminator 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 69 57 discriminator 1
	mv	a2,a5
.LVL16:
	addi	a1,a1,%lo(.LC1)
	.loc 1 63 96 discriminator 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 69 57 discriminator 1
	call	sscanf
.LVL17:
	.loc 1 69 48 discriminator 1
	li	a4,1
	.loc 1 74 9 discriminator 1
	li	a5,0
	.loc 1 69 48 discriminator 1
	beq	a0,a4,.L15
	.loc 1 71 10
	li	a5,-42
.L15:
	.loc 1 75 1
	lw	ra,12(sp)
	.cfi_restore 1
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL18:
.L20:
	.loc 1 71 10
	li	a5,-42
	.loc 1 75 1
	mv	a0,a5
	ret
	.cfi_endproc
.LFE6:
	.size	parseUnsignedInteger16Value, .-parseUnsignedInteger16Value
	.section	.text.parseUnsignedInteger8Value,"ax",@progbits
	.align	1
	.globl	parseUnsignedInteger8Value
	.type	parseUnsignedInteger8Value, @function
parseUnsignedInteger8Value:
.LFB7:
	.loc 1 77 94 is_stmt 1
	.cfi_startproc
.LVL19:
	.loc 1 78 2
	.loc 1 78 4 is_stmt 0
	lw	a4,0(a2)
	li	a5,4
	beq	a4,a5,.L25
	.loc 1 80 10
	li	a0,-42
.LVL20:
	.loc 1 95 1
	ret
.LVL21:
.L27:
	.cfi_def_cfa_offset 32
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 80 10
	li	a0,-42
.L24:
	.loc 1 95 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL22:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL23:
.L25:
	.loc 1 77 94
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	mv	s0,a0
	.loc 1 83 2 is_stmt 1
	.loc 1 84 2
	.loc 1 84 31 is_stmt 0
	lw	a0,4(a2)
.LVL24:
	.loc 1 84 4
	li	a5,45
	.loc 1 84 31
	add	a0,a1,a0
	.loc 1 84 4
	lbu	a4,0(a0)
	beq	a4,a5,.L27
	.loc 1 84 57 discriminator 1
	lui	a1,%hi(.LC0)
.LVL25:
	addi	a2,sp,12
.LVL26:
	addi	a1,a1,%lo(.LC0)
	call	sscanf
.LVL27:
	.loc 1 84 48 discriminator 1
	li	a5,1
	bne	a0,a5,.L27
	.loc 1 88 2 is_stmt 1
	.loc 1 88 13 is_stmt 0
	lw	a5,12(sp)
	.loc 1 88 5
	li	a4,255
	bgtu	a5,a4,.L27
	.loc 1 92 2 is_stmt 1
	.loc 1 92 5 is_stmt 0
	sb	a5,0(s0)
	.loc 1 94 2 is_stmt 1
	.loc 1 94 9 is_stmt 0
	li	a0,0
	j	.L24
	.cfi_endproc
.LFE7:
	.size	parseUnsignedInteger8Value, .-parseUnsignedInteger8Value
	.section	.rodata.parseInteger32Value.str1.4,"aMS",@progbits,1
	.align	2
.LC2:
	.string	"%ld"
	.section	.text.parseInteger32Value,"ax",@progbits
	.align	1
	.globl	parseInteger32Value
	.type	parseInteger32Value, @function
parseInteger32Value:
.LFB8:
	.loc 1 97 87 is_stmt 1
	.cfi_startproc
.LVL28:
	.loc 1 98 2
	.loc 1 98 4 is_stmt 0
	lw	a3,0(a2)
	li	a4,4
	bne	a3,a4,.L36
	.loc 1 97 87
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 103 10
	lw	a4,4(a2)
	mv	a5,a1
	.loc 1 103 2 is_stmt 1
	.loc 1 103 10 is_stmt 0
	lui	a1,%hi(.LC2)
.LVL29:
	mv	a2,a0
.LVL30:
	addi	a1,a1,%lo(.LC2)
	add	a0,a5,a4
.LVL31:
	call	sscanf
.LVL32:
	.loc 1 103 4
	li	a4,1
	.loc 1 108 9
	li	a5,0
	.loc 1 103 4
	beq	a0,a4,.L31
	.loc 1 104 3 is_stmt 1
	.loc 1 105 3
	.loc 1 105 10 is_stmt 0
	li	a5,-42
.L31:
	.loc 1 109 1
	lw	ra,12(sp)
	.cfi_restore 1
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL33:
.L36:
	.loc 1 104 3 is_stmt 1
	.loc 1 105 3
	.loc 1 105 10 is_stmt 0
	li	a5,-42
	.loc 1 109 1
	mv	a0,a5
.LVL34:
	ret
	.cfi_endproc
.LFE8:
	.size	parseInteger32Value, .-parseInteger32Value
	.section	.rodata.parseInteger16Value.str1.4,"aMS",@progbits,1
	.align	2
.LC3:
	.string	"%li"
	.section	.text.parseInteger16Value,"ax",@progbits
	.align	1
	.globl	parseInteger16Value
	.type	parseInteger16Value, @function
parseInteger16Value:
.LFB9:
	.loc 1 111 87 is_stmt 1
	.cfi_startproc
.LVL35:
	.loc 1 112 2
	.loc 1 112 4 is_stmt 0
	lw	a4,0(a2)
	li	a5,4
	beq	a4,a5,.L41
	.loc 1 114 10
	li	a0,-42
.LVL36:
	.loc 1 129 1
	ret
.LVL37:
.L43:
	.cfi_def_cfa_offset 32
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 114 10
	li	a0,-42
.L40:
	.loc 1 129 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL38:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL39:
.L41:
	.loc 1 111 87
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 118 10
	lw	a5,4(a2)
	mv	s0,a0
	mv	a0,a1
.LVL40:
	.loc 1 117 2 is_stmt 1
	.loc 1 118 2
	.loc 1 118 10 is_stmt 0
	lui	a1,%hi(.LC3)
.LVL41:
	add	a0,a0,a5
.LVL42:
	addi	a2,sp,12
.LVL43:
	addi	a1,a1,%lo(.LC3)
	call	sscanf
.LVL44:
	.loc 1 118 4
	li	a5,1
	bne	a0,a5,.L43
	.loc 1 122 2 is_stmt 1
	.loc 1 122 23 is_stmt 0
	lw	a4,12(sp)
	li	a5,32768
	.loc 1 122 4
	li	a3,65536
	.loc 1 122 23
	add	a5,a4,a5
	.loc 1 122 4
	bgeu	a5,a3,.L43
	.loc 1 126 2 is_stmt 1
	.loc 1 126 5 is_stmt 0
	sh	a4,0(s0)
	.loc 1 128 2 is_stmt 1
	.loc 1 128 9 is_stmt 0
	li	a0,0
	j	.L40
	.cfi_endproc
.LFE9:
	.size	parseInteger16Value, .-parseInteger16Value
	.section	.text.parseInteger8Value,"ax",@progbits
	.align	1
	.globl	parseInteger8Value
	.type	parseInteger8Value, @function
parseInteger8Value:
.LFB10:
	.loc 1 131 85 is_stmt 1
	.cfi_startproc
.LVL45:
	.loc 1 132 2
	.loc 1 132 4 is_stmt 0
	lw	a4,0(a2)
	li	a5,4
	beq	a4,a5,.L48
	.loc 1 134 10
	li	a0,-42
.LVL46:
	.loc 1 149 1
	ret
.LVL47:
.L50:
	.cfi_def_cfa_offset 32
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 134 10
	li	a0,-42
.L47:
	.loc 1 149 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL48:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL49:
.L48:
	.loc 1 131 85
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 138 10
	lw	a5,4(a2)
	mv	s0,a0
	mv	a0,a1
.LVL50:
	.loc 1 137 2 is_stmt 1
	.loc 1 138 2
	.loc 1 138 10 is_stmt 0
	lui	a1,%hi(.LC3)
.LVL51:
	add	a0,a0,a5
.LVL52:
	addi	a2,sp,12
.LVL53:
	addi	a1,a1,%lo(.LC3)
	call	sscanf
.LVL54:
	.loc 1 138 4
	li	a5,1
	bne	a0,a5,.L50
	.loc 1 142 2 is_stmt 1
	.loc 1 142 22 is_stmt 0
	lw	a5,12(sp)
	.loc 1 142 4
	li	a4,255
	.loc 1 142 22
	addi	a3,a5,128
	.loc 1 142 4
	bgtu	a3,a4,.L50
	.loc 1 146 2 is_stmt 1
	.loc 1 146 5 is_stmt 0
	sb	a5,0(s0)
	.loc 1 148 2 is_stmt 1
	.loc 1 148 9 is_stmt 0
	li	a0,0
	j	.L47
	.cfi_endproc
.LFE10:
	.size	parseInteger8Value, .-parseInteger8Value
	.section	.rodata.parseFloatValue.str1.4,"aMS",@progbits,1
	.align	2
.LC4:
	.string	"%f"
	.section	.text.parseFloatValue,"ax",@progbits
	.align	1
	.globl	parseFloatValue
	.type	parseFloatValue, @function
parseFloatValue:
.LFB11:
	.loc 1 151 81 is_stmt 1
	.cfi_startproc
.LVL55:
	.loc 1 152 2
	.loc 1 152 4 is_stmt 0
	lw	a3,0(a2)
	li	a4,4
	bne	a3,a4,.L59
	.loc 1 151 81
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 157 10
	lw	a4,4(a2)
	mv	a5,a1
	.loc 1 157 2 is_stmt 1
	.loc 1 157 10 is_stmt 0
	lui	a1,%hi(.LC4)
.LVL56:
	mv	a2,a0
.LVL57:
	addi	a1,a1,%lo(.LC4)
	add	a0,a5,a4
.LVL58:
	call	sscanf
.LVL59:
	.loc 1 157 4
	li	a4,1
	.loc 1 162 9
	li	a5,0
	.loc 1 157 4
	beq	a0,a4,.L54
	.loc 1 158 3 is_stmt 1
	.loc 1 159 3
	.loc 1 159 10 is_stmt 0
	li	a5,-42
.L54:
	.loc 1 163 1
	lw	ra,12(sp)
	.cfi_restore 1
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL60:
.L59:
	.loc 1 158 3 is_stmt 1
	.loc 1 159 3
	.loc 1 159 10 is_stmt 0
	li	a5,-42
	.loc 1 163 1
	mv	a0,a5
.LVL61:
	ret
	.cfi_endproc
.LFE11:
	.size	parseFloatValue, .-parseFloatValue
	.section	.rodata.parseDoubleValue.str1.4,"aMS",@progbits,1
	.align	2
.LC5:
	.string	"%lf"
	.section	.text.parseDoubleValue,"ax",@progbits
	.align	1
	.globl	parseDoubleValue
	.type	parseDoubleValue, @function
parseDoubleValue:
.LFB12:
	.loc 1 165 83 is_stmt 1
	.cfi_startproc
.LVL62:
	.loc 1 166 2
	.loc 1 166 4 is_stmt 0
	lw	a3,0(a2)
	li	a4,4
	bne	a3,a4,.L68
	.loc 1 165 83
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 171 10
	lw	a4,4(a2)
	mv	a5,a1
	.loc 1 171 2 is_stmt 1
	.loc 1 171 10 is_stmt 0
	lui	a1,%hi(.LC5)
.LVL63:
	mv	a2,a0
.LVL64:
	addi	a1,a1,%lo(.LC5)
	add	a0,a5,a4
.LVL65:
	call	sscanf
.LVL66:
	.loc 1 171 4
	li	a4,1
	.loc 1 176 9
	li	a5,0
	.loc 1 171 4
	beq	a0,a4,.L63
	.loc 1 172 3 is_stmt 1
	.loc 1 173 3
	.loc 1 173 10 is_stmt 0
	li	a5,-42
.L63:
	.loc 1 177 1
	lw	ra,12(sp)
	.cfi_restore 1
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL67:
.L68:
	.loc 1 172 3 is_stmt 1
	.loc 1 173 3
	.loc 1 173 10 is_stmt 0
	li	a5,-42
	.loc 1 177 1
	mv	a0,a5
.LVL68:
	ret
	.cfi_endproc
.LFE12:
	.size	parseDoubleValue, .-parseDoubleValue
	.section	.rodata.parseBooleanValue.str1.4,"aMS",@progbits,1
	.align	2
.LC6:
	.string	"true"
	.align	2
.LC7:
	.string	"false"
	.section	.text.parseBooleanValue,"ax",@progbits
	.align	1
	.globl	parseBooleanValue
	.type	parseBooleanValue, @function
parseBooleanValue:
.LFB13:
	.loc 1 179 81 is_stmt 1
	.cfi_startproc
.LVL69:
	.loc 1 180 2
	.loc 1 180 4 is_stmt 0
	lw	a4,0(a2)
	li	a5,4
	beq	a4,a5,.L73
	.loc 1 182 10
	li	a0,-42
.LVL70:
	.loc 1 193 1
	ret
.LVL71:
.L76:
	.cfi_def_cfa_offset 16
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 182 10
	li	a0,-42
.L72:
	.loc 1 193 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL72:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL73:
	lw	s2,0(sp)
	.cfi_restore 18
.LVL74:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL75:
.L73:
	.loc 1 179 81
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	s2,0(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	mv	s1,a0
	.loc 1 184 5
	lw	a0,4(a2)
.LVL76:
	mv	s2,a1
	lui	a1,%hi(.LC6)
.LVL77:
	mv	s0,a2
	.loc 1 184 2 is_stmt 1
	.loc 1 184 5 is_stmt 0
	addi	a1,a1,%lo(.LC6)
	li	a2,4
.LVL78:
	add	a0,s2,a0
	call	strncmp
.LVL79:
	.loc 1 184 4
	bne	a0,zero,.L75
	.loc 1 185 3 is_stmt 1
	.loc 1 185 6 is_stmt 0
	li	a5,1
	sb	a5,0(s1)
	j	.L72
.L75:
	.loc 1 186 9 is_stmt 1
	.loc 1 186 12 is_stmt 0
	lw	a0,4(s0)
	lui	a1,%hi(.LC7)
	li	a2,5
	addi	a1,a1,%lo(.LC7)
	add	a0,s2,a0
	call	strncmp
.LVL80:
	.loc 1 186 11
	bne	a0,zero,.L76
	.loc 1 187 3 is_stmt 1
	.loc 1 187 6 is_stmt 0
	sb	zero,0(s1)
	j	.L72
	.cfi_endproc
.LFE13:
	.size	parseBooleanValue, .-parseBooleanValue
	.section	.text.parseStringValue,"ax",@progbits
	.align	1
	.globl	parseStringValue
	.type	parseStringValue, @function
parseStringValue:
.LFB14:
	.loc 1 195 98 is_stmt 1
	.cfi_startproc
.LVL81:
	.loc 1 197 2
	.loc 1 195 98 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.loc 1 197 51
	lw	a6,4(a3)
	.loc 1 197 44
	lw	s1,8(a3)
	.loc 1 199 4
	lw	a3,0(a3)
.LVL82:
	li	a5,3
	.loc 1 197 44
	sub	s1,s1,a6
.LVL83:
	.loc 1 199 2 is_stmt 1
	.loc 1 199 4 is_stmt 0
	bne	a3,a5,.L82
	.loc 1 204 2 is_stmt 1
	.loc 1 204 18 is_stmt 0
	addi	a3,s1,1
	.loc 1 206 10
	li	a5,-45
	.loc 1 204 5
	bgtu	a3,a1,.L80
	mv	a4,a2
	.loc 1 209 2 is_stmt 1
	mv	s0,a0
	mv	a2,s1
.LVL84:
	add	a1,a4,a6
.LVL85:
	call	strncpy
.LVL86:
	.loc 1 210 2
	.loc 1 210 20 is_stmt 0
	add	s0,s0,s1
.LVL87:
	sb	zero,0(s0)
	.loc 1 212 2 is_stmt 1
	.loc 1 212 9 is_stmt 0
	li	a5,0
.L80:
	.loc 1 213 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
.LVL88:
	mv	a0,a5
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL89:
.L82:
	.cfi_restore_state
	.loc 1 201 10
	li	a5,-42
	j	.L80
	.cfi_endproc
.LFE14:
	.size	parseStringValue, .-parseStringValue
	.section	.text.findToken,"ax",@progbits
	.align	1
	.globl	findToken
	.type	findToken, @function
findToken:
.LFB15:
	.loc 1 215 81 is_stmt 1
	.cfi_startproc
.LVL90:
	.loc 1 216 2
	.loc 1 217 2
	.loc 1 219 2
	.loc 1 219 4 is_stmt 0
	lw	a4,0(a2)
	li	a5,1
	beq	a4,a5,.L86
	.loc 1 221 9
	li	a0,0
.LVL91:
	.loc 1 242 1
	ret
.LVL92:
.L86:
	.loc 1 215 81
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s1,20(sp)
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.loc 1 224 4
	lw	a5,12(a2)
	mv	s1,a2
	.loc 1 224 2 is_stmt 1
	.loc 1 224 4 is_stmt 0
	beq	a5,zero,.L88
.LVL93:
	mv	s3,a0
	mv	s4,a1
	.loc 1 228 2 is_stmt 1
	.loc 1 228 9 is_stmt 0
	addi	s0,a2,16
.LVL94:
	.loc 1 230 2 is_stmt 1
	.loc 1 230 9 is_stmt 0
	li	s2,0
.LVL95:
.L89:
	.loc 1 230 14 is_stmt 1 discriminator 1
	.loc 1 230 2 is_stmt 0 discriminator 1
	lw	a5,12(s1)
	bgt	a5,s2,.L93
.LVL96:
.L88:
	.loc 1 221 9
	li	a0,0
.L85:
	.loc 1 242 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
.LVL97:
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL98:
.L93:
	.cfi_restore_state
.LBB2:
	.loc 1 231 3 is_stmt 1
	.loc 1 231 12 is_stmt 0
	mv	a2,s3
	mv	a1,s0
	mv	a0,s4
	call	jsoneq
.LVL99:
	.loc 1 231 6
	bne	a0,zero,.L90
	.loc 1 232 4 is_stmt 1
	.loc 1 232 18 is_stmt 0
	addi	a0,s0,16
	j	.L85
.L90:
	.loc 1 235 3 is_stmt 1
	.loc 1 235 7 is_stmt 0
	lw	a5,24(s0)
.LVL100:
	.loc 1 236 3 is_stmt 1
	.loc 1 236 10 is_stmt 0
	addi	s0,s0,32
.LVL101:
	.loc 1 237 3 is_stmt 1
.L91:
	.loc 1 237 9
	lw	a4,4(s0)
	blt	a4,a5,.L92
.LBE2:
	.loc 1 230 31 discriminator 2
	.loc 1 230 32 is_stmt 0 discriminator 2
	addi	s2,s2,1
.LVL102:
	j	.L89
.L92:
.LBB3:
	.loc 1 238 4 is_stmt 1
	.loc 1 238 10 is_stmt 0
	addi	s0,s0,16
.LVL103:
	j	.L91
.LBE3:
	.cfi_endproc
.LFE15:
	.size	findToken, .-findToken
	.text
.Letext0:
	.file 2 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/include/aws_iot_error.h"
	.file 4 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 5 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/external_libs/jsmn/jsmn.h"
	.file 6 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 7 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x89d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF114
	.byte	0xc
	.4byte	.LASF115
	.4byte	.LASF116
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF0
	.byte	0x2
	.byte	0x22
	.byte	0x15
	.4byte	0x31
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.byte	0x2
	.4byte	.LASF1
	.byte	0x2
	.byte	0x25
	.byte	0x13
	.4byte	0x44
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x2
	.4byte	.LASF4
	.byte	0x2
	.byte	0x28
	.byte	0x12
	.4byte	0x57
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.byte	0x2
	.4byte	.LASF7
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x71
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.byte	0x2
	.4byte	.LASF9
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x84
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF10
	.byte	0x2
	.4byte	.LASF11
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x97
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF13
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.byte	0x5
	.byte	0x5
	.byte	0x4
	.4byte	0xa5
	.byte	0x3
	.byte	0x28
	.byte	0xe
	.4byte	0x224
	.byte	0x6
	.4byte	.LASF15
	.byte	0x6
	.byte	0x6
	.4byte	.LASF16
	.byte	0x5
	.byte	0x6
	.4byte	.LASF17
	.byte	0x4
	.byte	0x6
	.4byte	.LASF18
	.byte	0x3
	.byte	0x6
	.4byte	.LASF19
	.byte	0x2
	.byte	0x6
	.4byte	.LASF20
	.byte	0x1
	.byte	0x6
	.4byte	.LASF21
	.byte	0
	.byte	0x7
	.4byte	.LASF22
	.byte	0x7f
	.byte	0x7
	.4byte	.LASF23
	.byte	0x7e
	.byte	0x7
	.4byte	.LASF24
	.byte	0x7d
	.byte	0x7
	.4byte	.LASF25
	.byte	0x7c
	.byte	0x7
	.4byte	.LASF26
	.byte	0x7b
	.byte	0x7
	.4byte	.LASF27
	.byte	0x7a
	.byte	0x7
	.4byte	.LASF28
	.byte	0x79
	.byte	0x7
	.4byte	.LASF29
	.byte	0x78
	.byte	0x7
	.4byte	.LASF30
	.byte	0x77
	.byte	0x7
	.4byte	.LASF31
	.byte	0x76
	.byte	0x7
	.4byte	.LASF32
	.byte	0x75
	.byte	0x7
	.4byte	.LASF33
	.byte	0x74
	.byte	0x7
	.4byte	.LASF34
	.byte	0x73
	.byte	0x7
	.4byte	.LASF35
	.byte	0x72
	.byte	0x7
	.4byte	.LASF36
	.byte	0x71
	.byte	0x7
	.4byte	.LASF37
	.byte	0x70
	.byte	0x7
	.4byte	.LASF38
	.byte	0x6f
	.byte	0x7
	.4byte	.LASF39
	.byte	0x6e
	.byte	0x7
	.4byte	.LASF40
	.byte	0x6d
	.byte	0x7
	.4byte	.LASF41
	.byte	0x6c
	.byte	0x7
	.4byte	.LASF42
	.byte	0x6b
	.byte	0x7
	.4byte	.LASF43
	.byte	0x6a
	.byte	0x7
	.4byte	.LASF44
	.byte	0x69
	.byte	0x7
	.4byte	.LASF45
	.byte	0x68
	.byte	0x7
	.4byte	.LASF46
	.byte	0x67
	.byte	0x7
	.4byte	.LASF47
	.byte	0x66
	.byte	0x7
	.4byte	.LASF48
	.byte	0x65
	.byte	0x7
	.4byte	.LASF49
	.byte	0x64
	.byte	0x7
	.4byte	.LASF50
	.byte	0x63
	.byte	0x7
	.4byte	.LASF51
	.byte	0x62
	.byte	0x7
	.4byte	.LASF52
	.byte	0x61
	.byte	0x7
	.4byte	.LASF53
	.byte	0x60
	.byte	0x7
	.4byte	.LASF54
	.byte	0x5f
	.byte	0x7
	.4byte	.LASF55
	.byte	0x5e
	.byte	0x7
	.4byte	.LASF56
	.byte	0x5d
	.byte	0x7
	.4byte	.LASF57
	.byte	0x5c
	.byte	0x7
	.4byte	.LASF58
	.byte	0x5b
	.byte	0x7
	.4byte	.LASF59
	.byte	0x5a
	.byte	0x7
	.4byte	.LASF60
	.byte	0x59
	.byte	0x7
	.4byte	.LASF61
	.byte	0x58
	.byte	0x7
	.4byte	.LASF62
	.byte	0x57
	.byte	0x7
	.4byte	.LASF63
	.byte	0x56
	.byte	0x7
	.4byte	.LASF64
	.byte	0x55
	.byte	0x7
	.4byte	.LASF65
	.byte	0x54
	.byte	0x7
	.4byte	.LASF66
	.byte	0x53
	.byte	0x7
	.4byte	.LASF67
	.byte	0x52
	.byte	0x7
	.4byte	.LASF68
	.byte	0x51
	.byte	0x7
	.4byte	.LASF69
	.byte	0x50
	.byte	0x7
	.4byte	.LASF70
	.byte	0x4f
	.byte	0x7
	.4byte	.LASF71
	.byte	0x4e
	.byte	0x7
	.4byte	.LASF72
	.byte	0x4d
	.byte	0x7
	.4byte	.LASF73
	.byte	0x4c
	.byte	0
	.byte	0x2
	.4byte	.LASF74
	.byte	0x3
	.byte	0xa0
	.byte	0x3
	.4byte	0xb3
	.byte	0x2
	.4byte	.LASF75
	.byte	0x4
	.byte	0xd1
	.byte	0x16
	.4byte	0xac
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0xac
	.byte	0x5
	.byte	0x2f
	.byte	0xe
	.4byte	0x269
	.byte	0x6
	.4byte	.LASF76
	.byte	0
	.byte	0x6
	.4byte	.LASF77
	.byte	0x1
	.byte	0x6
	.4byte	.LASF78
	.byte	0x2
	.byte	0x6
	.4byte	.LASF79
	.byte	0x3
	.byte	0x6
	.4byte	.LASF80
	.byte	0x4
	.byte	0
	.byte	0x2
	.4byte	.LASF81
	.byte	0x5
	.byte	0x35
	.byte	0x3
	.4byte	0x23c
	.byte	0x8
	.byte	0x10
	.byte	0x5
	.byte	0x46
	.byte	0x9
	.4byte	0x2b3
	.byte	0x9
	.4byte	.LASF82
	.byte	0x5
	.byte	0x47
	.byte	0xd
	.4byte	0x269
	.byte	0
	.byte	0x9
	.4byte	.LASF83
	.byte	0x5
	.byte	0x48
	.byte	0x6
	.4byte	0xa5
	.byte	0x4
	.byte	0xa
	.string	"end"
	.byte	0x5
	.byte	0x49
	.byte	0x6
	.4byte	0xa5
	.byte	0x8
	.byte	0x9
	.4byte	.LASF84
	.byte	0x5
	.byte	0x4a
	.byte	0x6
	.4byte	0xa5
	.byte	0xc
	.byte	0
	.byte	0x2
	.4byte	.LASF85
	.byte	0x5
	.byte	0x4e
	.byte	0x3
	.4byte	0x275
	.byte	0xb
	.byte	0x4
	.4byte	0x2c5
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF86
	.byte	0xc
	.4byte	0x2c5
	.byte	0xb
	.byte	0x4
	.4byte	0x2cc
	.byte	0xd
	.4byte	.LASF91
	.byte	0x1
	.byte	0xd7
	.byte	0xc
	.4byte	0x370
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x370
	.byte	0xe
	.string	"key"
	.byte	0x1
	.byte	0xd7
	.byte	0x22
	.4byte	0x2d1
	.4byte	.LLST35
	.byte	0xf
	.4byte	.LASF87
	.byte	0x1
	.byte	0xd7
	.byte	0x33
	.4byte	0x2d1
	.4byte	.LLST36
	.byte	0xf
	.4byte	.LASF88
	.byte	0x1
	.byte	0xd7
	.byte	0x4a
	.4byte	0x370
	.4byte	.LLST37
	.byte	0x10
	.4byte	.LASF89
	.byte	0x1
	.byte	0xd8
	.byte	0xd
	.4byte	0x370
	.4byte	.LLST38
	.byte	0x11
	.string	"i"
	.byte	0x1
	.byte	0xd9
	.byte	0x6
	.4byte	0xa5
	.4byte	.LLST39
	.byte	0x12
	.4byte	.Ldebug_ranges0+0
	.byte	0x13
	.4byte	.LASF90
	.byte	0x1
	.byte	0xeb
	.byte	0x7
	.4byte	0xa5
	.byte	0x1
	.byte	0x5f
	.byte	0x14
	.4byte	.LVL99
	.4byte	0x801
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x4
	.4byte	0x2b3
	.byte	0xd
	.4byte	.LASF92
	.byte	0x1
	.byte	0xc3
	.byte	0xd
	.4byte	0x224
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x3f7
	.byte	0xe
	.string	"buf"
	.byte	0x1
	.byte	0xc3
	.byte	0x24
	.4byte	0x2bf
	.4byte	.LLST30
	.byte	0xf
	.4byte	.LASF93
	.byte	0x1
	.byte	0xc3
	.byte	0x30
	.4byte	0x230
	.4byte	.LLST31
	.byte	0xf
	.4byte	.LASF87
	.byte	0x1
	.byte	0xc3
	.byte	0x44
	.4byte	0x2d1
	.4byte	.LLST32
	.byte	0xf
	.4byte	.LASF88
	.byte	0x1
	.byte	0xc3
	.byte	0x5b
	.4byte	0x370
	.4byte	.LLST33
	.byte	0x10
	.4byte	.LASF94
	.byte	0x1
	.byte	0xc5
	.byte	0x9
	.4byte	0x230
	.4byte	.LLST34
	.byte	0x14
	.4byte	.LVL86
	.4byte	0x870
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF95
	.byte	0x1
	.byte	0xb3
	.byte	0xd
	.4byte	0x224
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x474
	.byte	0xe
	.string	"b"
	.byte	0x1
	.byte	0xb3
	.byte	0x24
	.4byte	0x474
	.4byte	.LLST27
	.byte	0xf
	.4byte	.LASF87
	.byte	0x1
	.byte	0xb3
	.byte	0x33
	.4byte	0x2d1
	.4byte	.LLST28
	.byte	0xf
	.4byte	.LASF88
	.byte	0x1
	.byte	0xb3
	.byte	0x4a
	.4byte	0x370
	.4byte	.LLST29
	.byte	0x16
	.4byte	.LVL79
	.4byte	0x87c
	.4byte	0x45b
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0x14
	.4byte	.LVL80
	.4byte	0x87c
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x4
	.4byte	0x47a
	.byte	0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF96
	.byte	0xd
	.4byte	.LASF97
	.byte	0x1
	.byte	0xa5
	.byte	0xd
	.4byte	0x224
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x4e4
	.byte	0xe
	.string	"d"
	.byte	0x1
	.byte	0xa5
	.byte	0x26
	.4byte	0x4e4
	.4byte	.LLST24
	.byte	0xf
	.4byte	.LASF87
	.byte	0x1
	.byte	0xa5
	.byte	0x35
	.4byte	0x2d1
	.4byte	.LLST25
	.byte	0xf
	.4byte	.LASF88
	.byte	0x1
	.byte	0xa5
	.byte	0x4c
	.4byte	0x370
	.4byte	.LLST26
	.byte	0x14
	.4byte	.LVL66
	.4byte	0x888
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x4
	.4byte	0x4ea
	.byte	0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF98
	.byte	0xd
	.4byte	.LASF99
	.byte	0x1
	.byte	0x97
	.byte	0xd
	.4byte	0x224
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x554
	.byte	0xe
	.string	"f"
	.byte	0x1
	.byte	0x97
	.byte	0x24
	.4byte	0x554
	.4byte	.LLST21
	.byte	0xf
	.4byte	.LASF87
	.byte	0x1
	.byte	0x97
	.byte	0x33
	.4byte	0x2d1
	.4byte	.LLST22
	.byte	0xf
	.4byte	.LASF88
	.byte	0x1
	.byte	0x97
	.byte	0x4a
	.4byte	0x370
	.4byte	.LLST23
	.byte	0x14
	.4byte	.LVL59
	.4byte	0x888
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x4
	.4byte	0x55a
	.byte	0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF100
	.byte	0xd
	.4byte	.LASF101
	.byte	0x1
	.byte	0x83
	.byte	0xd
	.4byte	0x224
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x5d2
	.byte	0xe
	.string	"i"
	.byte	0x1
	.byte	0x83
	.byte	0x28
	.4byte	0x5d2
	.4byte	.LLST18
	.byte	0xf
	.4byte	.LASF87
	.byte	0x1
	.byte	0x83
	.byte	0x37
	.4byte	0x2d1
	.4byte	.LLST19
	.byte	0xf
	.4byte	.LASF88
	.byte	0x1
	.byte	0x83
	.byte	0x4e
	.4byte	0x370
	.4byte	.LLST20
	.byte	0x13
	.4byte	.LASF102
	.byte	0x1
	.byte	0x89
	.byte	0xa
	.4byte	0x4b
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x14
	.4byte	.LVL54
	.4byte	0x888
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x4
	.4byte	0x25
	.byte	0xd
	.4byte	.LASF103
	.byte	0x1
	.byte	0x6f
	.byte	0xd
	.4byte	0x224
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x649
	.byte	0xe
	.string	"i"
	.byte	0x1
	.byte	0x6f
	.byte	0x2a
	.4byte	0x649
	.4byte	.LLST15
	.byte	0xf
	.4byte	.LASF87
	.byte	0x1
	.byte	0x6f
	.byte	0x39
	.4byte	0x2d1
	.4byte	.LLST16
	.byte	0xf
	.4byte	.LASF88
	.byte	0x1
	.byte	0x6f
	.byte	0x50
	.4byte	0x370
	.4byte	.LLST17
	.byte	0x13
	.4byte	.LASF102
	.byte	0x1
	.byte	0x75
	.byte	0xa
	.4byte	0x4b
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x14
	.4byte	.LVL44
	.4byte	0x888
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x4
	.4byte	0x38
	.byte	0xd
	.4byte	.LASF104
	.byte	0x1
	.byte	0x61
	.byte	0xd
	.4byte	0x224
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x6b2
	.byte	0xe
	.string	"i"
	.byte	0x1
	.byte	0x61
	.byte	0x2a
	.4byte	0x6b2
	.4byte	.LLST12
	.byte	0xf
	.4byte	.LASF87
	.byte	0x1
	.byte	0x61
	.byte	0x39
	.4byte	0x2d1
	.4byte	.LLST13
	.byte	0xf
	.4byte	.LASF88
	.byte	0x1
	.byte	0x61
	.byte	0x50
	.4byte	0x370
	.4byte	.LLST14
	.byte	0x14
	.4byte	.LVL32
	.4byte	0x888
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x4
	.4byte	0x4b
	.byte	0xd
	.4byte	.LASF105
	.byte	0x1
	.byte	0x4d
	.byte	0xd
	.4byte	0x224
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x729
	.byte	0xe
	.string	"i"
	.byte	0x1
	.byte	0x4d
	.byte	0x31
	.4byte	0x729
	.4byte	.LLST9
	.byte	0xf
	.4byte	.LASF87
	.byte	0x1
	.byte	0x4d
	.byte	0x40
	.4byte	0x2d1
	.4byte	.LLST10
	.byte	0xf
	.4byte	.LASF88
	.byte	0x1
	.byte	0x4d
	.byte	0x57
	.4byte	0x370
	.4byte	.LLST11
	.byte	0x13
	.4byte	.LASF102
	.byte	0x1
	.byte	0x53
	.byte	0xb
	.4byte	0x8b
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x14
	.4byte	.LVL27
	.4byte	0x888
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x4
	.4byte	0x65
	.byte	0xd
	.4byte	.LASF106
	.byte	0x1
	.byte	0x3f
	.byte	0xd
	.4byte	0x224
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x792
	.byte	0xe
	.string	"i"
	.byte	0x1
	.byte	0x3f
	.byte	0x33
	.4byte	0x792
	.4byte	.LLST6
	.byte	0xf
	.4byte	.LASF87
	.byte	0x1
	.byte	0x3f
	.byte	0x42
	.4byte	0x2d1
	.4byte	.LLST7
	.byte	0xf
	.4byte	.LASF88
	.byte	0x1
	.byte	0x3f
	.byte	0x59
	.4byte	0x370
	.4byte	.LLST8
	.byte	0x14
	.4byte	.LVL17
	.4byte	0x888
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x4
	.4byte	0x78
	.byte	0xd
	.4byte	.LASF107
	.byte	0x1
	.byte	0x31
	.byte	0xd
	.4byte	0x224
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x7fb
	.byte	0xe
	.string	"i"
	.byte	0x1
	.byte	0x31
	.byte	0x33
	.4byte	0x7fb
	.4byte	.LLST3
	.byte	0xf
	.4byte	.LASF87
	.byte	0x1
	.byte	0x31
	.byte	0x42
	.4byte	0x2d1
	.4byte	.LLST4
	.byte	0xf
	.4byte	.LASF88
	.byte	0x1
	.byte	0x31
	.byte	0x59
	.4byte	0x370
	.4byte	.LLST5
	.byte	0x14
	.4byte	.LVL11
	.4byte	0x888
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x4
	.4byte	0x8b
	.byte	0xd
	.4byte	.LASF108
	.byte	0x1
	.byte	0x26
	.byte	0x8
	.4byte	0x25
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x870
	.byte	0xf
	.4byte	.LASF109
	.byte	0x1
	.byte	0x26
	.byte	0x1b
	.4byte	0x2d1
	.4byte	.LLST0
	.byte	0xe
	.string	"tok"
	.byte	0x1
	.byte	0x26
	.byte	0x2c
	.4byte	0x370
	.4byte	.LLST1
	.byte	0xe
	.string	"s"
	.byte	0x1
	.byte	0x26
	.byte	0x3d
	.4byte	0x2d1
	.4byte	.LLST2
	.byte	0x16
	.4byte	.LVL5
	.4byte	0x894
	.4byte	0x85e
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0x14
	.4byte	.LVL6
	.4byte	0x87c
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LASF110
	.4byte	.LASF110
	.byte	0x6
	.byte	0x2c
	.byte	0x7
	.byte	0x17
	.4byte	.LASF111
	.4byte	.LASF111
	.byte	0x6
	.byte	0x2b
	.byte	0x5
	.byte	0x17
	.4byte	.LASF112
	.4byte	.LASF112
	.byte	0x7
	.byte	0xcc
	.byte	0x5
	.byte	0x17
	.4byte	.LASF113
	.4byte	.LASF113
	.byte	0x6
	.byte	0x29
	.byte	0x8
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
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xd
	.byte	0
	.byte	0
	.byte	0x8
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x26
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x12
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x16
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
.LLST35:
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL96
	.4byte	.LVL98
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL98
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL90
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL96
	.4byte	.LVL98
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL98
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL90
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL93
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL98
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL90
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL94
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL98
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL98
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL81
	.4byte	.LVL86-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL86-1
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL87
	.4byte	.LVL89
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL81
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL85
	.4byte	.LVL89
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL81
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL84
	.4byte	.LVL86-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL86-1
	.4byte	.LVL89
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL82
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL83
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL89
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL76
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL71
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL77
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL72
	.4byte	.LVL75
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL78
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL62
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL65
	.4byte	.LVL66-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL66-1
	.4byte	.LVL67
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL68
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL63
	.4byte	.LVL66-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL66-1
	.4byte	.LVL67
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL64
	.4byte	.LVL67
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL55
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL58
	.4byte	.LVL59-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL59-1
	.4byte	.LVL60
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL61
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL56
	.4byte	.LVL59-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL59-1
	.4byte	.LVL60
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL57
	.4byte	.LVL60
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL52
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL53
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL40
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL42
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL43
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL31
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL32-1
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL29
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL32-1
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL25
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL26
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL17-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL13
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL11-1
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL7
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
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
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
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL5-1
	.4byte	.LFE4
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x74
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
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
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	0
	.4byte	0
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
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
.LASF49:
	.string	"MQTT_REQUEST_TIMEOUT_ERROR"
.LASF75:
	.string	"size_t"
.LASF20:
	.string	"MQTT_CONNACK_CONNECTION_ACCEPTED"
.LASF70:
	.string	"MUTEX_DESTROY_ERROR"
.LASF82:
	.string	"type"
.LASF110:
	.string	"strncpy"
.LASF13:
	.string	"long long unsigned int"
.LASF27:
	.string	"NETWORK_SSL_CONNECT_TIMEOUT_ERROR"
.LASF34:
	.string	"NETWORK_DISCONNECTED_ERROR"
.LASF1:
	.string	"int16_t"
.LASF17:
	.string	"NETWORK_ATTEMPTING_RECONNECT"
.LASF6:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF101:
	.string	"parseInteger8Value"
.LASF99:
	.string	"parseFloatValue"
.LASF59:
	.string	"MQTT_CONNACK_IDENTIFIER_REJECTED_ERROR"
.LASF5:
	.string	"long int"
.LASF15:
	.string	"NETWORK_PHYSICAL_LAYER_CONNECTED"
.LASF52:
	.string	"MQTT_RX_MESSAGE_PACKET_TYPE_INVALID_ERROR"
.LASF60:
	.string	"MQTT_CONNACK_SERVER_UNAVAILABLE_ERROR"
.LASF33:
	.string	"NETWORK_SSL_READ_ERROR"
.LASF9:
	.string	"uint16_t"
.LASF23:
	.string	"NULL_VALUE_ERROR"
.LASF98:
	.string	"double"
.LASF81:
	.string	"jsmntype_t"
.LASF29:
	.string	"NETWORK_SSL_INIT_ERROR"
.LASF32:
	.string	"NETWORK_SSL_READ_TIMEOUT_ERROR"
.LASF95:
	.string	"parseBooleanValue"
.LASF37:
	.string	"NETWORK_MBEDTLS_ERR_CTR_DRBG_ENTROPY_SOURCE_FAILED"
.LASF28:
	.string	"NETWORK_SSL_WRITE_ERROR"
.LASF91:
	.string	"findToken"
.LASF14:
	.string	"unsigned int"
.LASF115:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/src/aws_iot_json_utils.c"
.LASF113:
	.string	"strlen"
.LASF19:
	.string	"MQTT_NOTHING_TO_READ"
.LASF12:
	.string	"long unsigned int"
.LASF67:
	.string	"MUTEX_INIT_ERROR"
.LASF92:
	.string	"parseStringValue"
.LASF90:
	.string	"propertyEnd"
.LASF94:
	.string	"stringLength"
.LASF105:
	.string	"parseUnsignedInteger8Value"
.LASF62:
	.string	"MQTT_CONNACK_NOT_AUTHORIZED_ERROR"
.LASF84:
	.string	"size"
.LASF10:
	.string	"short unsigned int"
.LASF22:
	.string	"FAILURE"
.LASF68:
	.string	"MUTEX_LOCK_ERROR"
.LASF97:
	.string	"parseDoubleValue"
.LASF46:
	.string	"NETWORK_SSL_NOTHING_TO_READ"
.LASF36:
	.string	"NETWORK_ALREADY_CONNECTED_ERROR"
.LASF40:
	.string	"NETWORK_X509_ROOT_CRT_PARSE_ERROR"
.LASF114:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF69:
	.string	"MUTEX_UNLOCK_ERROR"
.LASF45:
	.string	"NETWORK_ERR_NET_CONNECT_FAILED"
.LASF85:
	.string	"jsmntok_t"
.LASF106:
	.string	"parseUnsignedInteger16Value"
.LASF87:
	.string	"jsonString"
.LASF58:
	.string	"MQTT_CONNACK_UNACCEPTABLE_PROTOCOL_VERSION_ERROR"
.LASF76:
	.string	"JSMN_UNDEFINED"
.LASF93:
	.string	"bufLen"
.LASF42:
	.string	"NETWORK_PK_PRIVATE_KEY_PARSE_ERROR"
.LASF66:
	.string	"SHADOW_JSON_ERROR"
.LASF103:
	.string	"parseInteger16Value"
.LASF25:
	.string	"SSL_CONNECTION_ERROR"
.LASF112:
	.string	"sscanf"
.LASF71:
	.string	"MAX_SIZE_ERROR"
.LASF64:
	.string	"SHADOW_WAIT_FOR_PUBLISH"
.LASF116:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/build_out/aws-iot"
.LASF44:
	.string	"NETWORK_ERR_NET_UNKNOWN_HOST"
.LASF56:
	.string	"MQTT_DECODE_REMAINING_LENGTH_ERROR"
.LASF47:
	.string	"MQTT_CONNECTION_ERROR"
.LASF16:
	.string	"NETWORK_MANUALLY_DISCONNECTED"
.LASF26:
	.string	"TCP_SETUP_ERROR"
.LASF100:
	.string	"float"
.LASF88:
	.string	"token"
.LASF102:
	.string	"i_word"
.LASF35:
	.string	"NETWORK_RECONNECT_TIMED_OUT_ERROR"
.LASF96:
	.string	"_Bool"
.LASF4:
	.string	"int32_t"
.LASF8:
	.string	"unsigned char"
.LASF111:
	.string	"strncmp"
.LASF3:
	.string	"short int"
.LASF43:
	.string	"NETWORK_ERR_NET_SOCKET_FAILED"
.LASF108:
	.string	"jsoneq"
.LASF63:
	.string	"JSON_PARSE_ERROR"
.LASF107:
	.string	"parseUnsignedInteger32Value"
.LASF55:
	.string	"MQTT_MAX_SUBSCRIPTIONS_REACHED_ERROR"
.LASF38:
	.string	"NETWORK_SSL_UNKNOWN_ERROR"
.LASF11:
	.string	"uint32_t"
.LASF18:
	.string	"NETWORK_RECONNECTED"
.LASF104:
	.string	"parseInteger32Value"
.LASF51:
	.string	"MQTT_CLIENT_NOT_IDLE_ERROR"
.LASF72:
	.string	"LIMIT_EXCEEDED_ERROR"
.LASF86:
	.string	"char"
.LASF39:
	.string	"NETWORK_PHYSICAL_LAYER_DISCONNECTED"
.LASF30:
	.string	"NETWORK_SSL_CERT_ERROR"
.LASF80:
	.string	"JSMN_PRIMITIVE"
.LASF78:
	.string	"JSMN_ARRAY"
.LASF50:
	.string	"MQTT_UNEXPECTED_CLIENT_STATE_ERROR"
.LASF74:
	.string	"IoT_Error_t"
.LASF41:
	.string	"NETWORK_X509_DEVICE_CRT_PARSE_ERROR"
.LASF31:
	.string	"NETWORK_SSL_WRITE_TIMEOUT_ERROR"
.LASF65:
	.string	"SHADOW_JSON_BUFFER_TRUNCATED"
.LASF109:
	.string	"json"
.LASF24:
	.string	"TCP_CONNECTION_ERROR"
.LASF0:
	.string	"int8_t"
.LASF79:
	.string	"JSMN_STRING"
.LASF7:
	.string	"uint8_t"
.LASF21:
	.string	"SUCCESS"
.LASF54:
	.string	"MQTT_TX_BUFFER_TOO_SHORT_ERROR"
.LASF53:
	.string	"MQTT_RX_BUFFER_TOO_SHORT_ERROR"
.LASF77:
	.string	"JSMN_OBJECT"
.LASF57:
	.string	"MQTT_CONNACK_UNKNOWN_ERROR"
.LASF83:
	.string	"start"
.LASF73:
	.string	"INVALID_TOPIC_TYPE_ERROR"
.LASF61:
	.string	"MQTT_CONNACK_BAD_USERDATA_ERROR"
.LASF89:
	.string	"result"
.LASF48:
	.string	"MQTT_CONNECT_TIMEOUT_ERROR"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
