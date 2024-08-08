	.file	"jsmn.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.jsmn_parse,"ax",@progbits
	.align	1
	.globl	jsmn_parse
	.type	jsmn_parse, @function
jsmn_parse:
.LFB4:
	.file 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/external_libs/jsmn/jsmn.c"
	.loc 1 182 47
	.cfi_startproc
.LVL0:
	.loc 1 183 2
	.loc 1 184 2
	.loc 1 185 2
	.loc 1 186 2
	.loc 1 182 47 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s1,40(sp)
	sw	s4,28(sp)
	sw	s5,24(sp)
	sw	s6,20(sp)
	sw	s0,44(sp)
	sw	s2,36(sp)
	sw	s3,32(sp)
	sw	s7,16(sp)
	sw	s8,12(sp)
	sw	s9,8(sp)
	sw	s10,4(sp)
	sw	s11,0(sp)
	.cfi_offset 9, -8
	.cfi_offset 20, -20
	.cfi_offset 21, -24
	.cfi_offset 22, -28
	.cfi_offset 8, -4
	.cfi_offset 18, -12
	.cfi_offset 19, -16
	.cfi_offset 23, -32
	.cfi_offset 24, -36
	.cfi_offset 25, -40
	.cfi_offset 26, -44
	.cfi_offset 27, -48
	.loc 1 182 47
	mv	a5,a0
	.loc 1 186 6
	lw	a0,4(a0)
.LVL1:
	.loc 1 188 2 is_stmt 1
	li	t5,67112960
	li	t6,21233664
	li	t0,8388608
.LBB25:
	.loc 1 193 3 is_stmt 0
	li	t4,58
.LBB26:
.LBB27:
	.loc 1 73 3
	li	s1,93
	li	t1,1
	addi	t5,t5,1
	.loc 1 82 6
	li	s4,94
	addi	t6,t6,1089
.LBE27:
.LBE26:
.LBB37:
.LBB38:
.LBB39:
.LBB40:
	.loc 1 157 9
	li	s5,9
	.loc 1 157 61
	li	s6,5
	addi	t0,t0,19
.L2:
.LBE40:
.LBE39:
.LBE38:
.LBE37:
.LBE25:
	.loc 1 188 9 is_stmt 1 discriminator 1
	.loc 1 188 15 is_stmt 0 discriminator 1
	lw	a6,0(a5)
	.loc 1 188 2 discriminator 1
	bgeu	a6,a2,.L49
	.loc 1 188 32 discriminator 2
	add	a7,a1,a6
	lbu	a7,0(a7)
	.loc 1 188 27 discriminator 2
	bne	a7,zero,.L50
.L49:
	.loc 1 323 2 is_stmt 1
	.loc 1 323 5 is_stmt 0
	beq	a3,zero,.L1
	.loc 1 324 3 is_stmt 1
	.loc 1 324 18 is_stmt 0
	lw	a5,4(a5)
.LVL2:
	.loc 1 324 28
	addi	a4,a5,-1
.LVL3:
	slli	a5,a5,4
	add	a3,a3,a5
.LVL4:
	.loc 1 326 7
	li	a5,-1
.LVL5:
.L51:
	.loc 1 324 33 is_stmt 1 discriminator 1
	.loc 1 324 3 is_stmt 0 discriminator 1
	bge	a4,zero,.L53
.LVL6:
.L1:
	.loc 1 333 1
	lw	s0,44(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	s1,40(sp)
	.cfi_restore 9
	lw	s2,36(sp)
	.cfi_restore 18
	lw	s3,32(sp)
	.cfi_restore 19
	lw	s4,28(sp)
	.cfi_restore 20
	lw	s5,24(sp)
	.cfi_restore 21
	lw	s6,20(sp)
	.cfi_restore 22
	lw	s7,16(sp)
	.cfi_restore 23
	lw	s8,12(sp)
	.cfi_restore 24
	lw	s9,8(sp)
	.cfi_restore 25
	lw	s10,4(sp)
	.cfi_restore 26
	lw	s11,0(sp)
	.cfi_restore 27
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL7:
.L50:
	.cfi_restore_state
.LBB74:
	.loc 1 189 3 is_stmt 1
	.loc 1 190 3
	.loc 1 192 3
	.loc 1 193 3
	beq	a7,t4,.L3
	bgtu	a7,t4,.L4
	li	t3,34
	beq	a7,t3,.L5
	bgtu	a7,t3,.L6
	addi	a7,a7,-9
.LVL8:
	andi	a7,a7,0xff
	li	t3,23
	bgtu	a7,t3,.L7
	sll	a7,t1,a7
	and	a7,a7,t0
	beq	a7,zero,.L7
.L8:
.LBE74:
	.loc 1 188 55
	.loc 1 188 66 is_stmt 0
	lw	a6,0(a5)
	addi	a6,a6,1
	sw	a6,0(a5)
	j	.L2
.LVL9:
.L6:
.LBB75:
	.loc 1 193 3
	li	t3,44
	beq	a7,t3,.L9
.LVL10:
.L7:
.LBB62:
.LBB32:
	.loc 1 73 3
	li	s0,10
	li	s2,13
	li	s3,8
	j	.L44
.LVL11:
.L4:
.LBE32:
.LBE62:
	.loc 1 193 3
	li	t3,123
	beq	a7,t3,.L10
	bgtu	a7,t3,.L11
	li	t3,91
	beq	a7,t3,.L10
	bne	a7,s1,.L7
	.loc 1 213 5 is_stmt 1
	.loc 1 215 36 is_stmt 0
	li	s0,2
	.loc 1 213 8
	beq	a3,zero,.L8
	j	.L54
.L11:
	.loc 1 193 3
	li	t3,125
	bne	a7,t3,.L7
	.loc 1 213 5 is_stmt 1
	.loc 1 215 36 is_stmt 0
	li	s0,1
	.loc 1 213 8
	beq	a3,zero,.L8
.L54:
.LVL12:
	.loc 1 239 5 is_stmt 1 discriminator 4
	.loc 1 239 30 is_stmt 0 discriminator 4
	lw	a7,4(a5)
.LVL13:
	.loc 1 241 9 discriminator 4
	li	t2,-1
	.loc 1 239 30 discriminator 4
	addi	a7,a7,-1
.LVL14:
	slli	t3,a7,4
	add	t3,a3,t3
.L17:
	.loc 1 239 35 is_stmt 1 discriminator 1
	.loc 1 239 5 is_stmt 0 discriminator 1
	bge	a7,zero,.L20
	.loc 1 251 5 is_stmt 1
	.loc 1 251 8 is_stmt 0
	li	a6,-1
	bne	a7,a6,.L8
.LVL15:
.L58:
	.loc 1 243 15
	li	a0,-2
.LVL16:
	j	.L1
.LVL17:
.L10:
	.loc 1 195 5 is_stmt 1
	.loc 1 195 10 is_stmt 0
	addi	a0,a0,1
.LVL18:
	.loc 1 196 5 is_stmt 1
	.loc 1 196 8 is_stmt 0
	beq	a3,zero,.L8
	.loc 1 199 5 is_stmt 1
.LVL19:
.LBB63:
.LBB64:
	.loc 1 38 2
	.loc 1 39 2
	.loc 1 39 12 is_stmt 0
	lw	a6,4(a5)
	.loc 1 39 5
	bleu	a4,a6,.L55
	.loc 1 42 2 is_stmt 1
	.loc 1 42 31 is_stmt 0
	addi	t3,a6,1
	.loc 1 42 15
	slli	a6,a6,4
	.loc 1 42 31
	sw	t3,4(a5)
	.loc 1 42 6
	add	a6,a3,a6
.LVL20:
	.loc 1 43 2 is_stmt 1
	.loc 1 43 24 is_stmt 0
	li	t2,-1
	sw	t2,8(a6)
	.loc 1 43 13
	sw	t2,4(a6)
	.loc 1 44 2 is_stmt 1
	.loc 1 44 12 is_stmt 0
	sw	zero,12(a6)
	.loc 1 48 2 is_stmt 1
.LVL21:
.LBE64:
.LBE63:
	.loc 1 200 5
	.loc 1 202 5
	.loc 1 202 15 is_stmt 0
	lw	t3,8(a5)
	.loc 1 202 8
	beq	t3,t2,.L15
	.loc 1 203 6 is_stmt 1
	.loc 1 203 12 is_stmt 0
	slli	t3,t3,4
	add	t3,a3,t3
	.loc 1 203 35
	lw	t2,12(t3)
	addi	t2,t2,1
	sw	t2,12(t3)
.L15:
	.loc 1 208 5 is_stmt 1
	.loc 1 208 43 is_stmt 0
	li	t2,123
	li	t3,1
	beq	a7,t2,.L16
	li	t3,2
.L16:
	.loc 1 208 17 discriminator 4
	sw	t3,0(a6)
	.loc 1 209 5 is_stmt 1 discriminator 4
	.loc 1 209 18 is_stmt 0 discriminator 4
	lw	a7,0(a5)
.LVL22:
	sw	a7,4(a6)
	.loc 1 210 5 is_stmt 1 discriminator 4
.LVL23:
.L3:
	.loc 1 271 5
	.loc 1 271 40 is_stmt 0
	lw	a6,4(a5)
	addi	a6,a6,-1
	.loc 1 271 22
	sw	a6,8(a5)
	.loc 1 272 5 is_stmt 1
	j	.L8
.LVL24:
.L20:
	.loc 1 240 6
	.loc 1 241 6
	.loc 1 241 9 is_stmt 0
	lw	s2,4(t3)
	beq	s2,t2,.L18
	.loc 1 241 29 discriminator 1
	lw	s2,8(t3)
	bne	s2,t2,.L18
	.loc 1 242 7 is_stmt 1
	.loc 1 242 10 is_stmt 0
	lw	s2,0(t3)
	bne	s2,s0,.L58
	.loc 1 245 7 is_stmt 1
	.loc 1 246 32 is_stmt 0
	addi	a6,a6,1
	.loc 1 245 24
	sw	t2,8(a5)
	.loc 1 246 7 is_stmt 1
	.loc 1 246 18 is_stmt 0
	sw	a6,8(t3)
	.loc 1 247 7 is_stmt 1
	.loc 1 251 5
	slli	a6,a7,4
	add	a6,a3,a6
	.loc 1 252 12
	.loc 1 254 9 is_stmt 0
	li	t3,-1
.LVL25:
.L19:
	.loc 1 253 6 is_stmt 1
	.loc 1 254 6
	.loc 1 254 9 is_stmt 0
	lw	t2,4(a6)
	beq	t2,t3,.L21
	.loc 1 254 29 discriminator 1
	lw	t2,8(a6)
	bne	t2,t3,.L21
.LVL26:
.L90:
	.loc 1 283 9 is_stmt 1
	.loc 1 283 26 is_stmt 0
	sw	a7,8(a5)
	.loc 1 284 9 is_stmt 1
	j	.L8
.LVL27:
.L18:
	.loc 1 239 43 discriminator 2
	.loc 1 239 44 is_stmt 0 discriminator 2
	addi	a7,a7,-1
.LVL28:
	addi	t3,t3,-16
.LVL29:
	j	.L17
.LVL30:
.L21:
	.loc 1 252 20 is_stmt 1
	.loc 1 252 21 is_stmt 0
	addi	a7,a7,-1
.LVL31:
	addi	a6,a6,-16
.LVL32:
	.loc 1 252 12 is_stmt 1
	.loc 1 252 5 is_stmt 0
	bne	a7,t3,.L19
	j	.L8
.LVL33:
.L5:
	.loc 1 262 5 is_stmt 1
.LBB65:
.LBB57:
	.loc 1 116 2
	.loc 1 118 2
	.loc 1 120 2
	.loc 1 120 13 is_stmt 0
	addi	s2,a6,1
	sw	s2,0(a5)
	.loc 1 123 2 is_stmt 1
.LBB51:
	.loc 1 127 6 is_stmt 0
	li	s3,34
	.loc 1 144 6
	li	s7,92
.LBB41:
	.loc 1 147 4
	li	s8,117
	li	s9,91
	li	s10,33554432
	li	s11,47
.LVL34:
.L22:
.LBE41:
.LBE51:
	.loc 1 123 9 is_stmt 1
	.loc 1 123 15 is_stmt 0
	lw	t3,0(a5)
	.loc 1 123 2
	bleu	a2,t3,.L33
	.loc 1 123 32
	add	a7,a1,t3
	lbu	a7,0(a7)
	.loc 1 123 27
	bne	a7,zero,.L34
.L33:
	.loc 1 174 2 is_stmt 1
	.loc 1 174 14 is_stmt 0
	sw	a6,0(a5)
	.loc 1 175 2 is_stmt 1
.LVL35:
.LBE57:
.LBE65:
	.loc 1 263 5
.L59:
.LBE75:
	.loc 1 327 12 is_stmt 0
	li	a0,-3
.LVL36:
	j	.L1
.LVL37:
.L34:
.LBB76:
.LBB66:
.LBB58:
.LBB52:
	.loc 1 124 3 is_stmt 1
	.loc 1 127 3
	.loc 1 127 6 is_stmt 0
	bne	a7,s3,.L23
	.loc 1 128 4 is_stmt 1
	.loc 1 128 7 is_stmt 0
	beq	a3,zero,.L47
	.loc 1 131 4 is_stmt 1
.LVL38:
.LBB42:
.LBB43:
	.loc 1 38 2
	.loc 1 39 2
	.loc 1 39 12 is_stmt 0
	lw	a7,4(a5)
.LVL39:
	.loc 1 39 5
	bgtu	a4,a7,.L25
.LVL40:
.L92:
.LBE43:
.LBE42:
.LBE52:
.LBE58:
.LBE66:
.LBB67:
.LBB33:
	.loc 1 99 2 is_stmt 1
	.loc 1 100 3
	.loc 1 100 15 is_stmt 0
	sw	a6,0(a5)
	.loc 1 101 3 is_stmt 1
.LVL41:
.LBE33:
.LBE67:
	.loc 1 309 5
.L55:
	.loc 1 201 13 is_stmt 0
	li	a0,-1
.LVL42:
	j	.L1
.LVL43:
.L25:
.LBB68:
.LBB59:
.LBB53:
.LBB45:
.LBB44:
	.loc 1 42 2 is_stmt 1
	.loc 1 42 31 is_stmt 0
	addi	a6,a7,1
.LVL44:
	sw	a6,4(a5)
	.loc 1 42 15
	slli	a6,a7,4
	.loc 1 42 6
	add	a6,a3,a6
.LVL45:
	.loc 1 43 2 is_stmt 1
	.loc 1 43 24 is_stmt 0
	li	a7,-1
	sw	a7,8(a6)
	.loc 1 43 13
	sw	a7,4(a6)
	.loc 1 44 2 is_stmt 1
	.loc 1 44 12 is_stmt 0
	sw	zero,12(a6)
	.loc 1 48 2 is_stmt 1
.LVL46:
.LBE44:
.LBE45:
	.loc 1 132 4
	.loc 1 136 4
	lw	a7,0(a5)
.LVL47:
.LBB46:
.LBB47:
	.loc 1 56 2
	.loc 1 56 14 is_stmt 0
	li	t3,3
	sw	t3,0(a6)
	.loc 1 57 2 is_stmt 1
	.loc 1 57 15 is_stmt 0
	sw	s2,4(a6)
	.loc 1 58 2 is_stmt 1
	.loc 1 58 13 is_stmt 0
	sw	a7,8(a6)
	.loc 1 59 2 is_stmt 1
.LVL48:
.LBE47:
.LBE46:
	.loc 1 140 4
.LBE53:
.LBE59:
.LBE68:
	.loc 1 263 5
.L47:
	.loc 1 310 5
	.loc 1 311 15 is_stmt 0
	lw	a6,8(a5)
	.loc 1 311 8
	li	a7,-1
	.loc 1 310 10
	addi	a0,a0,1
.LVL49:
	.loc 1 311 5 is_stmt 1
	.loc 1 311 8 is_stmt 0
	beq	a6,a7,.L8
	.loc 1 311 32 discriminator 1
	beq	a3,zero,.L8
	.loc 1 312 6 is_stmt 1
	.loc 1 312 12 is_stmt 0
	slli	a6,a6,4
	add	a6,a3,a6
	.loc 1 312 35
	lw	a7,12(a6)
	addi	a7,a7,1
	sw	a7,12(a6)
	j	.L8
.LVL50:
.L23:
.LBB69:
.LBB60:
.LBB54:
	.loc 1 144 3 is_stmt 1
	.loc 1 144 6 is_stmt 0
	bne	a7,s7,.L26
	.loc 1 144 32
	addi	a7,t3,1
.LVL51:
	.loc 1 144 17
	bgeu	a7,a2,.L26
.LBB48:
	.loc 1 145 4 is_stmt 1
	.loc 1 146 4
	.loc 1 146 15 is_stmt 0
	sw	a7,0(a5)
	.loc 1 147 4 is_stmt 1
	.loc 1 147 14 is_stmt 0
	add	a7,a1,a7
	lbu	a7,0(a7)
	.loc 1 147 4
	bgtu	a7,s8,.L95
	bgtu	a7,s9,.L28
	beq	a7,s3,.L26
	bne	a7,s11,.L95
.L26:
.LBE48:
.LBE54:
	.loc 1 123 55 is_stmt 1
	.loc 1 123 66 is_stmt 0
	lw	a7,0(a5)
	addi	a7,a7,1
	sw	a7,0(a5)
	j	.L22
.L28:
	addi	a7,a7,-92
	sll	a7,t1,a7
	and	t2,a7,t6
	bne	t2,zero,.L26
	and	a7,a7,s10
	beq	a7,zero,.L95
.LBB55:
.LBB49:
	.loc 1 154 6 is_stmt 1
	.loc 1 154 17 is_stmt 0
	addi	t3,t3,2
	sw	t3,0(a5)
	.loc 1 155 6 is_stmt 1
.LVL52:
	.loc 1 155 17
	.loc 1 154 17 is_stmt 0
	li	t2,4
.LVL53:
.L29:
	.loc 1 155 32
	lw	t3,0(a5)
	.loc 1 155 23
	bleu	a2,t3,.L31
	.loc 1 155 49
	add	a7,a1,t3
	lbu	a7,0(a7)
	.loc 1 155 44
	beq	a7,zero,.L31
	.loc 1 157 7 is_stmt 1
	.loc 1 157 35 is_stmt 0
	addi	s0,a7,-48
	.loc 1 157 9
	andi	s0,s0,0xff
	bleu	s0,s5,.L30
	.loc 1 157 61
	andi	a7,a7,-33
	addi	a7,a7,-65
	andi	a7,a7,0xff
	bleu	a7,s6,.L30
.LVL54:
.L95:
.LBE49:
.LBE55:
.LBE60:
.LBE69:
.LBB70:
.LBB34:
	.loc 1 83 4 is_stmt 1
	.loc 1 83 16 is_stmt 0
	sw	a6,0(a5)
	.loc 1 84 4 is_stmt 1
.LVL55:
.LBE34:
.LBE70:
	.loc 1 309 5
	j	.L58
.LVL56:
.L30:
.LBB71:
.LBB61:
.LBB56:
.LBB50:
	.loc 1 163 7
	.loc 1 163 18 is_stmt 0
	addi	t3,t3,1
	sw	t3,0(a5)
	.loc 1 155 72 is_stmt 1
.LVL57:
	.loc 1 155 17
	.loc 1 155 6 is_stmt 0
	addi	t2,t2,-1
.LVL58:
	bne	t2,zero,.L29
.LVL59:
.L31:
	.loc 1 165 6 is_stmt 1
	.loc 1 165 17 is_stmt 0
	lw	a7,0(a5)
	addi	a7,a7,-1
	sw	a7,0(a5)
	.loc 1 166 6 is_stmt 1
	j	.L26
.LVL60:
.L9:
.LBE50:
.LBE56:
.LBE61:
.LBE71:
	.loc 1 274 5
	.loc 1 274 8 is_stmt 0
	beq	a3,zero,.L8
	.loc 1 274 32 discriminator 1
	lw	a6,8(a5)
	.loc 1 274 23 discriminator 1
	li	a7,-1
.LVL61:
	beq	a6,a7,.L8
	.loc 1 275 31 discriminator 2
	slli	a6,a6,4
	add	a6,a3,a6
	.loc 1 275 51 discriminator 2
	lw	a6,0(a6)
	addi	a6,a6,-1
	bleu	a6,t1,.L8
	.loc 1 280 6 is_stmt 1
	.loc 1 280 21 is_stmt 0
	lw	a6,4(a5)
	.loc 1 282 11
	li	t2,-1
	.loc 1 280 31
	addi	a7,a6,-1
.LVL62:
	slli	a6,a6,4
	add	a6,a3,a6
.L35:
	.loc 1 280 36 is_stmt 1 discriminator 1
	.loc 1 280 6 is_stmt 0 discriminator 1
	blt	a7,zero,.L8
	.loc 1 281 7 is_stmt 1
	.loc 1 281 40 is_stmt 0
	lw	t3,-16(a6)
	addi	t3,t3,-1
	.loc 1 281 10
	bgtu	t3,t1,.L36
	.loc 1 282 8 is_stmt 1
	.loc 1 282 11 is_stmt 0
	lw	t3,-12(a6)
	beq	t3,t2,.L36
	.loc 1 282 34 discriminator 1
	lw	t3,-8(a6)
	beq	t3,t2,.L90
.L36:
	.loc 1 280 44 is_stmt 1 discriminator 2
	.loc 1 280 45 is_stmt 0 discriminator 2
	addi	a7,a7,-1
.LVL63:
	addi	a6,a6,-16
	j	.L35
.LVL64:
.L39:
	addi	t2,a7,-32
	sll	t2,t1,t2
	and	t2,t2,t5
	bne	t2,zero,.L41
.L42:
.LBB72:
.LBB35:
	.loc 1 82 3 is_stmt 1
	.loc 1 82 28 is_stmt 0
	addi	a7,a7,-32
	.loc 1 82 6
	andi	a7,a7,0xff
	bgtu	a7,s4,.L95
	.loc 1 72 55 is_stmt 1
	.loc 1 72 66 is_stmt 0
	addi	t3,t3,1
	sw	t3,0(a5)
.L44:
	.loc 1 72 9 is_stmt 1
	.loc 1 72 15 is_stmt 0
	lw	t3,0(a5)
	.loc 1 72 2
	bleu	a2,t3,.L41
	.loc 1 72 32
	add	a7,a1,t3
	lbu	a7,0(a7)
	.loc 1 72 27
	beq	a7,zero,.L41
	.loc 1 73 3 is_stmt 1
	bgtu	a7,t4,.L38
	li	t2,31
	bgtu	a7,t2,.L39
	bgtu	a7,s0,.L40
	bleu	a7,s3,.L42
.L41:
	.loc 1 94 2
	.loc 1 94 5 is_stmt 0
	bne	a3,zero,.L46
	.loc 1 95 3 is_stmt 1
	.loc 1 95 14 is_stmt 0
	addi	t3,t3,-1
	sw	t3,0(a5)
	.loc 1 96 3 is_stmt 1
.LVL65:
.LBE35:
.LBE72:
	.loc 1 309 5
	j	.L47
.LVL66:
.L40:
.LBB73:
.LBB36:
	.loc 1 73 3 is_stmt 0
	bne	a7,s2,.L42
	j	.L41
.L38:
	andi	t2,a7,223
	bne	t2,s1,.L42
	j	.L41
.L46:
	.loc 1 98 2 is_stmt 1
.LVL67:
.LBB28:
.LBB29:
	.loc 1 38 2
	.loc 1 39 2
	.loc 1 39 12 is_stmt 0
	lw	a7,4(a5)
	.loc 1 39 5
	bleu	a4,a7,.L92
	.loc 1 42 2 is_stmt 1
	.loc 1 42 31 is_stmt 0
	addi	t3,a7,1
	.loc 1 42 15
	slli	a7,a7,4
	.loc 1 42 31
	sw	t3,4(a5)
	.loc 1 42 6
	add	a7,a3,a7
.LVL68:
	.loc 1 43 2 is_stmt 1
	.loc 1 43 24 is_stmt 0
	li	t3,-1
	sw	t3,8(a7)
	.loc 1 43 13
	sw	t3,4(a7)
	.loc 1 44 2 is_stmt 1
	.loc 1 44 12 is_stmt 0
	sw	zero,12(a7)
	.loc 1 48 2 is_stmt 1
.LVL69:
.LBE29:
.LBE28:
	.loc 1 99 2
	.loc 1 103 2
	lw	t3,0(a5)
.LVL70:
.LBB30:
.LBB31:
	.loc 1 56 2
	.loc 1 56 14 is_stmt 0
	li	t2,4
	sw	t2,0(a7)
	.loc 1 57 2 is_stmt 1
	.loc 1 57 15 is_stmt 0
	sw	a6,4(a7)
	.loc 1 58 2 is_stmt 1
	.loc 1 58 13 is_stmt 0
	sw	t3,8(a7)
	.loc 1 59 2 is_stmt 1
.LVL71:
.LBE31:
.LBE30:
	.loc 1 107 2
	.loc 1 107 13 is_stmt 0
	lw	a6,0(a5)
	addi	a6,a6,-1
	sw	a6,0(a5)
	.loc 1 108 2 is_stmt 1
.LVL72:
.LBE36:
.LBE73:
	.loc 1 309 5
	j	.L47
.LVL73:
.L53:
.LBE76:
	.loc 1 326 4
	.loc 1 326 7 is_stmt 0
	lw	a2,-12(a3)
	beq	a2,a5,.L52
	.loc 1 326 30 discriminator 1
	lw	a2,-8(a3)
	beq	a2,a5,.L59
.L52:
	.loc 1 324 41 is_stmt 1 discriminator 2
	.loc 1 324 42 is_stmt 0 discriminator 2
	addi	a4,a4,-1
.LVL74:
	addi	a3,a3,-16
	j	.L51
	.cfi_endproc
.LFE4:
	.size	jsmn_parse, .-jsmn_parse
	.section	.text.jsmn_init,"ax",@progbits
	.align	1
	.globl	jsmn_init
	.type	jsmn_init, @function
jsmn_init:
.LFB5:
	.loc 1 339 37 is_stmt 1
	.cfi_startproc
.LVL75:
	.loc 1 340 2
	.loc 1 342 19 is_stmt 0
	li	a5,-1
	.loc 1 340 14
	sw	zero,0(a0)
	.loc 1 341 2 is_stmt 1
	.loc 1 341 18 is_stmt 0
	sw	zero,4(a0)
	.loc 1 342 2 is_stmt 1
	.loc 1 342 19 is_stmt 0
	sw	a5,8(a0)
	.loc 1 343 1
	ret
	.cfi_endproc
.LFE5:
	.size	jsmn_init, .-jsmn_init
	.text
.Letext0:
	.file 2 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 3 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/external_libs/jsmn/jsmn.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x578
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF28
	.byte	0xc
	.4byte	.LASF29
	.4byte	.LASF30
	.4byte	.Ldebug_ranges0+0x120
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0xd1
	.byte	0x16
	.4byte	0x38
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x38
	.byte	0x3
	.byte	0x2f
	.byte	0xe
	.4byte	0x6c
	.byte	0x6
	.4byte	.LASF1
	.byte	0
	.byte	0x6
	.4byte	.LASF2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF3
	.byte	0x2
	.byte	0x6
	.4byte	.LASF4
	.byte	0x3
	.byte	0x6
	.4byte	.LASF5
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x35
	.byte	0x3
	.4byte	0x3f
	.byte	0x7
	.4byte	.LASF31
	.byte	0x5
	.byte	0x4
	.4byte	0x25
	.byte	0x3
	.byte	0x37
	.byte	0x6
	.4byte	0x9d
	.byte	0x8
	.4byte	.LASF8
	.byte	0x7f
	.byte	0x8
	.4byte	.LASF9
	.byte	0x7e
	.byte	0x8
	.4byte	.LASF10
	.byte	0x7d
	.byte	0
	.byte	0x9
	.byte	0x10
	.byte	0x3
	.byte	0x46
	.byte	0x9
	.4byte	0xdb
	.byte	0xa
	.4byte	.LASF11
	.byte	0x3
	.byte	0x47
	.byte	0xd
	.4byte	0x6c
	.byte	0
	.byte	0xa
	.4byte	.LASF12
	.byte	0x3
	.byte	0x48
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.byte	0xb
	.string	"end"
	.byte	0x3
	.byte	0x49
	.byte	0x6
	.4byte	0x25
	.byte	0x8
	.byte	0xa
	.4byte	.LASF13
	.byte	0x3
	.byte	0x4a
	.byte	0x6
	.4byte	0x25
	.byte	0xc
	.byte	0
	.byte	0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x4e
	.byte	0x3
	.4byte	0x9d
	.byte	0x9
	.byte	0xc
	.byte	0x3
	.byte	0x54
	.byte	0x9
	.4byte	0x118
	.byte	0xb
	.string	"pos"
	.byte	0x3
	.byte	0x55
	.byte	0xf
	.4byte	0x38
	.byte	0
	.byte	0xa
	.4byte	.LASF15
	.byte	0x3
	.byte	0x56
	.byte	0xf
	.4byte	0x38
	.byte	0x4
	.byte	0xa
	.4byte	.LASF16
	.byte	0x3
	.byte	0x57
	.byte	0x6
	.4byte	0x25
	.byte	0x8
	.byte	0
	.byte	0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0x58
	.byte	0x3
	.4byte	0xe7
	.byte	0xc
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x153
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x14b
	.byte	0xd
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x153
	.byte	0x1d
	.4byte	0x14b
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0xe
	.byte	0x4
	.4byte	0x118
	.byte	0xf
	.4byte	.LASF33
	.byte	0x1
	.byte	0xb5
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x3fd
	.byte	0x10
	.4byte	.LASF18
	.byte	0x1
	.byte	0xb5
	.byte	0x1d
	.4byte	0x14b
	.4byte	.LLST0
	.byte	0x11
	.string	"js"
	.byte	0x1
	.byte	0xb5
	.byte	0x31
	.4byte	0x3fd
	.byte	0x1
	.byte	0x5b
	.byte	0x12
	.string	"len"
	.byte	0x1
	.byte	0xb5
	.byte	0x3c
	.4byte	0x2c
	.4byte	.LLST1
	.byte	0x10
	.4byte	.LASF19
	.byte	0x1
	.byte	0xb6
	.byte	0xe
	.4byte	0x40f
	.4byte	.LLST2
	.byte	0x10
	.4byte	.LASF20
	.byte	0x1
	.byte	0xb6
	.byte	0x23
	.4byte	0x38
	.4byte	.LLST3
	.byte	0x13
	.string	"r"
	.byte	0x1
	.byte	0xb7
	.byte	0x6
	.4byte	0x25
	.4byte	.LLST4
	.byte	0x13
	.string	"i"
	.byte	0x1
	.byte	0xb8
	.byte	0x6
	.4byte	0x25
	.4byte	.LLST5
	.byte	0x14
	.4byte	.LASF21
	.byte	0x1
	.byte	0xb9
	.byte	0xd
	.4byte	0x40f
	.4byte	.LLST6
	.byte	0x14
	.4byte	.LASF22
	.byte	0x1
	.byte	0xba
	.byte	0x6
	.4byte	0x25
	.4byte	.LLST7
	.byte	0x15
	.4byte	.Ldebug_ranges0+0
	.byte	0x13
	.string	"c"
	.byte	0x1
	.byte	0xbd
	.byte	0x8
	.4byte	0x403
	.4byte	.LLST8
	.byte	0x14
	.4byte	.LASF11
	.byte	0x1
	.byte	0xbe
	.byte	0xe
	.4byte	0x6c
	.4byte	.LLST9
	.byte	0x16
	.4byte	0x492
	.4byte	.LBB26
	.4byte	.Ldebug_ranges0+0x28
	.byte	0x1
	.2byte	0x134
	.byte	0x9
	.4byte	0x2cd
	.byte	0x17
	.4byte	0x4d2
	.byte	0x17
	.4byte	0x4c6
	.byte	0x17
	.4byte	0x4ba
	.byte	0x17
	.4byte	0x4af
	.byte	0x17
	.4byte	0x4a3
	.byte	0x15
	.4byte	.Ldebug_ranges0+0x28
	.byte	0x18
	.4byte	0x4de
	.4byte	.LLST10
	.byte	0x19
	.4byte	0x4ea
	.byte	0x1a
	.4byte	0x4f6
	.4byte	.L41
	.byte	0x1b
	.4byte	0x53d
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.byte	0x1
	.byte	0x62
	.byte	0xa
	.4byte	0x29a
	.byte	0x1c
	.4byte	0x562
	.4byte	.LLST11
	.byte	0x1c
	.4byte	0x556
	.4byte	.LLST12
	.byte	0x1c
	.4byte	0x54a
	.4byte	.LLST13
	.byte	0x18
	.4byte	0x56e
	.4byte	.LLST14
	.byte	0
	.byte	0x1d
	.4byte	0x4ff
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.byte	0x1
	.byte	0x67
	.byte	0x2
	.byte	0x1c
	.4byte	0x530
	.4byte	.LLST15
	.byte	0x17
	.4byte	0x524
	.byte	0x1c
	.4byte	0x518
	.4byte	.LLST16
	.byte	0x1c
	.4byte	0x50c
	.4byte	.LLST17
	.byte	0
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	0x415
	.4byte	.LBB37
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x1
	.2byte	0x106
	.byte	0x9
	.4byte	0x3c6
	.byte	0x1c
	.4byte	0x455
	.4byte	.LLST18
	.byte	0x1c
	.4byte	0x449
	.4byte	.LLST19
	.byte	0x1c
	.4byte	0x43d
	.4byte	.LLST20
	.byte	0x1c
	.4byte	0x432
	.4byte	.LLST21
	.byte	0x1c
	.4byte	0x426
	.4byte	.LLST22
	.byte	0x15
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x18
	.4byte	0x461
	.4byte	.LLST23
	.byte	0x18
	.4byte	0x46d
	.4byte	.LLST24
	.byte	0x1e
	.4byte	0x479
	.4byte	.Ldebug_ranges0+0x98
	.byte	0x18
	.4byte	0x47a
	.4byte	.LLST25
	.byte	0x1f
	.4byte	0x484
	.4byte	.Ldebug_ranges0+0xd8
	.4byte	0x34f
	.byte	0x18
	.4byte	0x485
	.4byte	.LLST26
	.byte	0
	.byte	0x20
	.4byte	0x53d
	.4byte	.LBB42
	.4byte	.Ldebug_ranges0+0x108
	.byte	0x1
	.byte	0x83
	.byte	0xc
	.4byte	0x38e
	.byte	0x1c
	.4byte	0x562
	.4byte	.LLST27
	.byte	0x1c
	.4byte	0x556
	.4byte	.LLST28
	.byte	0x1c
	.4byte	0x54a
	.4byte	.LLST29
	.byte	0x15
	.4byte	.Ldebug_ranges0+0x108
	.byte	0x18
	.4byte	0x56e
	.4byte	.LLST30
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	0x4ff
	.4byte	.LBB46
	.4byte	.LBE46-.LBB46
	.byte	0x1
	.byte	0x88
	.byte	0x4
	.byte	0x1c
	.4byte	0x530
	.4byte	.LLST31
	.byte	0x1c
	.4byte	0x524
	.4byte	.LLST32
	.byte	0x1c
	.4byte	0x518
	.4byte	.LLST33
	.byte	0x1c
	.4byte	0x50c
	.4byte	.LLST34
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	0x53d
	.4byte	.LBB63
	.4byte	.LBE63-.LBB63
	.byte	0x1
	.byte	0xc7
	.byte	0xd
	.byte	0x1c
	.4byte	0x562
	.4byte	.LLST35
	.byte	0x1c
	.4byte	0x556
	.4byte	.LLST36
	.byte	0x1c
	.4byte	0x54a
	.4byte	.LLST37
	.byte	0x18
	.4byte	0x56e
	.4byte	.LLST38
	.byte	0
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x4
	.4byte	0x40a
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF23
	.byte	0x21
	.4byte	0x403
	.byte	0xe
	.byte	0x4
	.4byte	0xdb
	.byte	0x22
	.4byte	.LASF24
	.byte	0x1
	.byte	0x72
	.byte	0xc
	.4byte	0x25
	.byte	0x1
	.4byte	0x492
	.byte	0x23
	.4byte	.LASF18
	.byte	0x1
	.byte	0x72
	.byte	0x2b
	.4byte	0x14b
	.byte	0x24
	.string	"js"
	.byte	0x1
	.byte	0x72
	.byte	0x3f
	.4byte	0x3fd
	.byte	0x24
	.string	"len"
	.byte	0x1
	.byte	0x73
	.byte	0xa
	.4byte	0x2c
	.byte	0x23
	.4byte	.LASF19
	.byte	0x1
	.byte	0x73
	.byte	0x1a
	.4byte	0x40f
	.byte	0x23
	.4byte	.LASF20
	.byte	0x1
	.byte	0x73
	.byte	0x29
	.4byte	0x2c
	.byte	0x25
	.4byte	.LASF21
	.byte	0x1
	.byte	0x74
	.byte	0xd
	.4byte	0x40f
	.byte	0x25
	.4byte	.LASF12
	.byte	0x1
	.byte	0x76
	.byte	0x6
	.4byte	0x25
	.byte	0x26
	.byte	0x27
	.string	"c"
	.byte	0x1
	.byte	0x7c
	.byte	0x8
	.4byte	0x403
	.byte	0x26
	.byte	0x27
	.string	"i"
	.byte	0x1
	.byte	0x91
	.byte	0x8
	.4byte	0x25
	.byte	0
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LASF25
	.byte	0x1
	.byte	0x41
	.byte	0xc
	.4byte	0x25
	.byte	0x1
	.4byte	0x4ff
	.byte	0x23
	.4byte	.LASF18
	.byte	0x1
	.byte	0x41
	.byte	0x2e
	.4byte	0x14b
	.byte	0x24
	.string	"js"
	.byte	0x1
	.byte	0x41
	.byte	0x42
	.4byte	0x3fd
	.byte	0x24
	.string	"len"
	.byte	0x1
	.byte	0x42
	.byte	0xa
	.4byte	0x2c
	.byte	0x23
	.4byte	.LASF19
	.byte	0x1
	.byte	0x42
	.byte	0x1a
	.4byte	0x40f
	.byte	0x23
	.4byte	.LASF20
	.byte	0x1
	.byte	0x42
	.byte	0x29
	.4byte	0x2c
	.byte	0x25
	.4byte	.LASF21
	.byte	0x1
	.byte	0x43
	.byte	0xd
	.4byte	0x40f
	.byte	0x25
	.4byte	.LASF12
	.byte	0x1
	.byte	0x44
	.byte	0x6
	.4byte	0x25
	.byte	0x28
	.4byte	.LASF34
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0
	.byte	0x29
	.4byte	.LASF26
	.byte	0x1
	.byte	0x36
	.byte	0xd
	.byte	0x1
	.4byte	0x53d
	.byte	0x23
	.4byte	.LASF21
	.byte	0x1
	.byte	0x36
	.byte	0x28
	.4byte	0x40f
	.byte	0x23
	.4byte	.LASF11
	.byte	0x1
	.byte	0x36
	.byte	0x3a
	.4byte	0x6c
	.byte	0x23
	.4byte	.LASF12
	.byte	0x1
	.byte	0x37
	.byte	0x21
	.4byte	0x25
	.byte	0x24
	.string	"end"
	.byte	0x1
	.byte	0x37
	.byte	0x2c
	.4byte	0x25
	.byte	0
	.byte	0x2a
	.4byte	.LASF27
	.byte	0x1
	.byte	0x24
	.byte	0x13
	.4byte	0x40f
	.byte	0x1
	.byte	0x23
	.4byte	.LASF18
	.byte	0x1
	.byte	0x24
	.byte	0x31
	.4byte	0x14b
	.byte	0x23
	.4byte	.LASF19
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.4byte	0x40f
	.byte	0x23
	.4byte	.LASF20
	.byte	0x1
	.byte	0x25
	.byte	0x1d
	.4byte	0x2c
	.byte	0x27
	.string	"tok"
	.byte	0x1
	.byte	0x26
	.byte	0xd
	.4byte	0x40f
	.byte	0
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
	.byte	0x8
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xd
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xa
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
	.byte	0xb
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
	.byte	0xd
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
	.byte	0xe
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x15
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x16
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
	.byte	0x17
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0xa
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x1b
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
	.byte	0x1e
	.byte	0xb
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1f
	.byte	0xb
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x20
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
	.byte	0x21
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x22
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
	.byte	0x23
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
	.byte	0x24
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
	.byte	0
	.byte	0
	.byte	0x26
	.byte	0xb
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x27
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
	.byte	0x28
	.byte	0xa
	.byte	0
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
	.byte	0x29
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
	.byte	0x2a
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL2
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL73
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL73
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL73
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL73
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x3
	.byte	0x9
	.byte	0xfe
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL24
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL73
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x3
	.byte	0x8c
	.byte	0x10
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x3
	.byte	0x80
	.byte	0x10
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL1
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL43
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL17
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x61
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL27
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x61
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x61
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x61
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL37
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL43
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL50
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL56
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL37
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL43
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL50
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL56
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL37
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL43
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL50
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL56
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL37
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL43
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL50
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL56
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL37
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL43
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL50
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL56
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL37
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL44
	.4byte	.LVL48
	.2byte	0x3
	.byte	0x82
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL56
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x61
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x5
	.byte	0x34
	.byte	0x77
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x5
	.byte	0x34
	.byte	0x77
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x5
	.byte	0x35
	.byte	0x77
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x5
	.byte	0x34
	.byte	0x77
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL43
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL43
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL43
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x61
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x60
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	.LBB74
	.4byte	.LBE74
	.4byte	.LBB75
	.4byte	.LBE75
	.4byte	.LBB76
	.4byte	.LBE76
	.4byte	0
	.4byte	0
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	.LBB62
	.4byte	.LBE62
	.4byte	.LBB67
	.4byte	.LBE67
	.4byte	.LBB70
	.4byte	.LBE70
	.4byte	.LBB72
	.4byte	.LBE72
	.4byte	.LBB73
	.4byte	.LBE73
	.4byte	0
	.4byte	0
	.4byte	.LBB37
	.4byte	.LBE37
	.4byte	.LBB65
	.4byte	.LBE65
	.4byte	.LBB66
	.4byte	.LBE66
	.4byte	.LBB68
	.4byte	.LBE68
	.4byte	.LBB69
	.4byte	.LBE69
	.4byte	.LBB71
	.4byte	.LBE71
	.4byte	0
	.4byte	0
	.4byte	.LBB39
	.4byte	.LBE39
	.4byte	.LBB51
	.4byte	.LBE51
	.4byte	.LBB52
	.4byte	.LBE52
	.4byte	.LBB53
	.4byte	.LBE53
	.4byte	.LBB54
	.4byte	.LBE54
	.4byte	.LBB55
	.4byte	.LBE55
	.4byte	.LBB56
	.4byte	.LBE56
	.4byte	0
	.4byte	0
	.4byte	.LBB40
	.4byte	.LBE40
	.4byte	.LBB41
	.4byte	.LBE41
	.4byte	.LBB48
	.4byte	.LBE48
	.4byte	.LBB49
	.4byte	.LBE49
	.4byte	.LBB50
	.4byte	.LBE50
	.4byte	0
	.4byte	0
	.4byte	.LBB42
	.4byte	.LBE42
	.4byte	.LBB45
	.4byte	.LBE45
	.4byte	0
	.4byte	0
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF6:
	.string	"size_t"
.LASF19:
	.string	"tokens"
.LASF16:
	.string	"toksuper"
.LASF22:
	.string	"count"
.LASF2:
	.string	"JSMN_OBJECT"
.LASF12:
	.string	"start"
.LASF15:
	.string	"toknext"
.LASF27:
	.string	"jsmn_alloc_token"
.LASF33:
	.string	"jsmn_parse"
.LASF13:
	.string	"size"
.LASF1:
	.string	"JSMN_UNDEFINED"
.LASF25:
	.string	"jsmn_parse_primitive"
.LASF3:
	.string	"JSMN_ARRAY"
.LASF14:
	.string	"jsmntok_t"
.LASF29:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/aws-iot/aws-iot-device-sdk-embedded-C/external_libs/jsmn/jsmn.c"
.LASF32:
	.string	"jsmn_init"
.LASF18:
	.string	"parser"
.LASF30:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/build_out/aws-iot"
.LASF9:
	.string	"JSMN_ERROR_INVAL"
.LASF0:
	.string	"unsigned int"
.LASF7:
	.string	"jsmntype_t"
.LASF4:
	.string	"JSMN_STRING"
.LASF20:
	.string	"num_tokens"
.LASF34:
	.string	"found"
.LASF28:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF26:
	.string	"jsmn_fill_token"
.LASF11:
	.string	"type"
.LASF17:
	.string	"jsmn_parser"
.LASF31:
	.string	"jsmnerr"
.LASF21:
	.string	"token"
.LASF23:
	.string	"char"
.LASF24:
	.string	"jsmn_parse_string"
.LASF8:
	.string	"JSMN_ERROR_NOMEM"
.LASF10:
	.string	"JSMN_ERROR_PART"
.LASF5:
	.string	"JSMN_PRIMITIVE"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
