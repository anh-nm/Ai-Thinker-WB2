	.file	"base64.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.mbedtls_base64_encode,"ax",@progbits
	.align	1
	.globl	mbedtls_base64_encode
	.type	mbedtls_base64_encode, @function
mbedtls_base64_encode:
.LFB31:
	.file 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/security/mbedtls_lts/mbedtls/library/base64.c"
	.loc 1 46 1
	.cfi_startproc
.LVL0:
	.loc 1 47 5
	.loc 1 48 5
	.loc 1 49 5
	.loc 1 51 5
	.loc 1 46 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s5,20(sp)
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s6,16(sp)
	sw	s7,12(sp)
	sw	s8,8(sp)
	sw	s9,4(sp)
	.cfi_offset 21, -28
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.loc 1 46 1
	mv	s5,a2
	.loc 1 51 7
	bne	a4,zero,.L2
	.loc 1 53 9 is_stmt 1
	.loc 1 53 15 is_stmt 0
	sw	zero,0(a2)
	.loc 1 54 9 is_stmt 1
.LVL1:
.L15:
	.loc 1 108 5
	.loc 1 108 11 is_stmt 0
	li	a0,0
	j	.L1
.LVL2:
.L2:
	mv	s2,a4
	.loc 1 57 5 is_stmt 1
	.loc 1 57 14 is_stmt 0
	li	s9,3
	.loc 1 57 27
	remu	a5,s2,s9
	mv	s1,a3
	.loc 1 59 7
	li	a3,1073741824
.LVL3:
	.loc 1 57 14
	divu	a4,a4,s9
.LVL4:
	.loc 1 57 31
	snez	a5,a5
	.loc 1 57 7
	add	a5,a5,a4
.LVL5:
	.loc 1 59 5 is_stmt 1
	.loc 1 59 7 is_stmt 0
	bltu	a5,a3,.L4
	.loc 1 61 9 is_stmt 1
	.loc 1 61 15 is_stmt 0
	li	a5,-1
.LVL6:
.L5:
	.loc 1 69 9 is_stmt 1
	.loc 1 69 15 is_stmt 0
	sw	a5,0(s5)
	.loc 1 70 9 is_stmt 1
	.loc 1 70 15 is_stmt 0
	li	a0,-42
.LVL7:
.L1:
	.loc 1 109 1
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s4,24(sp)
	.cfi_restore 20
	lw	s5,20(sp)
	.cfi_restore 21
.LVL8:
	lw	s6,16(sp)
	.cfi_restore 22
	lw	s7,12(sp)
	.cfi_restore 23
	lw	s8,8(sp)
	.cfi_restore 24
	lw	s9,4(sp)
	.cfi_restore 25
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL9:
.L4:
	.cfi_restore_state
	.loc 1 65 5 is_stmt 1
	.loc 1 67 5
	.loc 1 65 7 is_stmt 0
	slli	a5,a5,2
.LVL10:
	.loc 1 67 20
	addi	a5,a5,1
.LVL11:
	.loc 1 67 7
	bgtu	a5,a1,.L5
	mv	s4,a0
	.loc 1 67 26 discriminator 1
	beq	a0,zero,.L5
	.loc 1 73 5 is_stmt 1
	.loc 1 73 7 is_stmt 0
	mul	s9,a4,s9
.LVL12:
	.loc 1 75 5 is_stmt 1
	mv	s0,a0
	.loc 1 75 12 is_stmt 0
	li	s3,0
.LVL13:
.L7:
	.loc 1 75 26 is_stmt 1 discriminator 1
	.loc 1 75 5 is_stmt 0 discriminator 1
	bltu	s3,s9,.L8
	.loc 1 89 5 is_stmt 1
	.loc 1 89 7 is_stmt 0
	bgeu	s3,s2,.L9
	.loc 1 91 9 is_stmt 1
.LVL14:
	.loc 1 92 20 is_stmt 0
	addi	s3,s3,1
.LVL15:
	.loc 1 91 12
	lbu	s6,0(s1)
.LVL16:
	.loc 1 92 9 is_stmt 1
	.loc 1 92 44 is_stmt 0
	li	s7,0
	bgeu	s3,s2,.L10
.LVL17:
	.loc 1 92 44 discriminator 1
	lbu	s7,1(s1)
.LVL18:
.L10:
	.loc 1 94 9 is_stmt 1 discriminator 4
	.loc 1 94 16 is_stmt 0 discriminator 4
	srli	a0,s6,2
	call	mbedtls_ct_base64_enc_char
.LVL19:
	.loc 1 95 59 discriminator 4
	slli	s6,s6,4
.LVL20:
	.loc 1 94 14 discriminator 4
	sb	a0,0(s0)
	.loc 1 95 9 is_stmt 1 discriminator 4
.LVL21:
	.loc 1 95 59 is_stmt 0 discriminator 4
	andi	s6,s6,48
	.loc 1 95 73 discriminator 4
	srai	a0,s7,4
	.loc 1 95 16 discriminator 4
	add	a0,s6,a0
	call	mbedtls_ct_base64_enc_char
.LVL22:
	.loc 1 95 14 discriminator 4
	sb	a0,1(s0)
	.loc 1 98 9 is_stmt 1 discriminator 4
	.loc 1 98 11 is_stmt 0 discriminator 4
	bgeu	s3,s2,.L11
	.loc 1 99 14 is_stmt 1
.LVL23:
	.loc 1 99 63 is_stmt 0
	slli	a0,s7,2
	.loc 1 99 21
	andi	a0,a0,60
	call	mbedtls_ct_base64_enc_char
.LVL24:
	.loc 1 99 19
	sb	a0,2(s0)
.LVL25:
.L12:
	.loc 1 102 9 is_stmt 1
	.loc 1 102 14 is_stmt 0
	li	a5,61
	sb	a5,3(s0)
	.loc 1 102 11
	addi	s0,s0,4
.LVL26:
.L9:
	.loc 1 105 5 is_stmt 1
	.loc 1 105 15 is_stmt 0
	sub	s4,s0,s4
.LVL27:
	.loc 1 105 11
	sw	s4,0(s5)
	.loc 1 106 5 is_stmt 1
	.loc 1 106 8 is_stmt 0
	sb	zero,0(s0)
	j	.L15
.LVL28:
.L8:
	.loc 1 77 9 is_stmt 1 discriminator 3
	.loc 1 77 12 is_stmt 0 discriminator 3
	lbu	s7,0(s1)
.LVL29:
	.loc 1 78 9 is_stmt 1 discriminator 3
	.loc 1 78 12 is_stmt 0 discriminator 3
	lbu	s6,1(s1)
.LVL30:
	.loc 1 79 9 is_stmt 1 discriminator 3
	addi	s0,s0,4
.LVL31:
	.loc 1 81 16 is_stmt 0 discriminator 3
	srli	a0,s7,2
	.loc 1 79 14 discriminator 3
	lbu	s8,2(s1)
	.loc 1 82 59 discriminator 3
	slli	s7,s7,4
.LVL32:
	.loc 1 81 16 discriminator 3
	call	mbedtls_ct_base64_enc_char
.LVL33:
	.loc 1 81 14 discriminator 3
	sb	a0,-4(s0)
	.loc 1 82 59 discriminator 3
	andi	s7,s7,48
	.loc 1 82 73 discriminator 3
	srai	a0,s6,4
	.loc 1 82 16 discriminator 3
	add	a0,s7,a0
	call	mbedtls_ct_base64_enc_char
.LVL34:
	.loc 1 84 60 discriminator 3
	slli	s6,s6,2
.LVL35:
	.loc 1 82 14 discriminator 3
	sb	a0,-3(s0)
	.loc 1 84 60 discriminator 3
	andi	s6,s6,60
	.loc 1 84 74 discriminator 3
	srai	a0,s8,6
	.loc 1 84 16 discriminator 3
	add	a0,s6,a0
	call	mbedtls_ct_base64_enc_char
.LVL36:
	.loc 1 84 14 discriminator 3
	sb	a0,-2(s0)
	.loc 1 86 16 discriminator 3
	andi	a0,s8,63
	call	mbedtls_ct_base64_enc_char
.LVL37:
	addi	s1,s1,3
.LVL38:
	.loc 1 81 9 is_stmt 1 discriminator 3
	.loc 1 82 9 discriminator 3
	.loc 1 84 9 discriminator 3
	.loc 1 86 9 discriminator 3
	.loc 1 86 14 is_stmt 0 discriminator 3
	sb	a0,-1(s0)
	.loc 1 75 33 is_stmt 1 discriminator 3
	.loc 1 75 35 is_stmt 0 discriminator 3
	addi	s3,s3,3
.LVL39:
	j	.L7
.LVL40:
.L11:
	.loc 1 100 14 is_stmt 1
	.loc 1 100 19 is_stmt 0
	li	a5,61
	sb	a5,2(s0)
	j	.L12
	.cfi_endproc
.LFE31:
	.size	mbedtls_base64_encode, .-mbedtls_base64_encode
	.section	.text.mbedtls_base64_decode,"ax",@progbits
	.align	1
	.globl	mbedtls_base64_decode
	.type	mbedtls_base64_decode, @function
mbedtls_base64_decode:
.LFB32:
	.loc 1 116 1 is_stmt 1
	.cfi_startproc
.LVL41:
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	s3,44(sp)
	sw	s4,40(sp)
	sw	s5,36(sp)
	sw	s6,32(sp)
	sw	s7,28(sp)
	sw	s8,24(sp)
	sw	s9,20(sp)
	sw	s10,16(sp)
	sw	s11,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.cfi_offset 27, -52
	mv	s6,a2
	mv	s4,a3
	.loc 1 117 5
	.loc 1 118 5
	.loc 1 119 5
	.loc 1 120 5
.LVL42:
	.loc 1 121 5
	.loc 1 122 5
	.loc 1 123 5
	.loc 1 126 5
	.loc 1 116 1 is_stmt 0
	sw	ra,60(sp)
	.cfi_offset 1, -4
	.loc 1 116 1
	mv	s5,a0
	mv	s7,a1
	mv	s2,a4
	.loc 1 121 14
	li	s0,0
	.loc 1 126 16
	li	s1,0
	.loc 1 126 12
	li	s3,0
	.loc 1 130 25
	li	s9,32
	.loc 1 133 28
	li	s10,1
	.loc 1 154 11
	li	s11,61
	.loc 1 156 15
	li	a3,2
.LVL43:
	.loc 1 144 11
	li	s8,10
	.loc 1 140 31
	li	a2,13
.LVL44:
.L17:
	.loc 1 126 21 is_stmt 1 discriminator 1
	.loc 1 126 5 is_stmt 0 discriminator 1
	bltu	s3,s2,.L39
	mv	s2,s3
.LVL45:
	j	.L18
.LVL46:
.L19:
	.loc 1 132 13 is_stmt 1
	addi	s3,s3,1
.LVL47:
	.loc 1 133 13
	.loc 1 130 14
	.loc 1 133 28 is_stmt 0
	li	a5,1
	.loc 1 130 14
	bne	s2,s3,.L28
.LVL48:
.L18:
	.loc 1 169 5 is_stmt 1
	.loc 1 169 7 is_stmt 0
	bne	s1,zero,.L29
	.loc 1 171 9 is_stmt 1
	.loc 1 171 15 is_stmt 0
	sw	zero,0(s6)
	.loc 1 172 9 is_stmt 1
.LVL49:
.L48:
	.loc 1 211 5
	.loc 1 211 11 is_stmt 0
	li	a0,0
	j	.L16
.LVL50:
.L39:
	.loc 1 129 24
	li	a5,0
.L28:
.LVL51:
	.loc 1 130 31 discriminator 1
	add	a4,s4,s3
	.loc 1 130 25 discriminator 1
	lbu	a0,0(a4)
	beq	a0,s9,.L19
	.loc 1 137 9 is_stmt 1
	.loc 1 137 11 is_stmt 0
	beq	s2,s3,.L18
	.loc 1 140 9 is_stmt 1
	.loc 1 140 20 is_stmt 0
	sub	a1,s2,s3
	.loc 1 140 11
	beq	a1,s10,.L20
	.loc 1 140 31 discriminator 1
	bne	a0,a2,.L20
	.loc 1 141 28
	lbu	a4,1(a4)
	bne	a4,s8,.L22
.LVL52:
.L21:
	.loc 1 126 31 is_stmt 1 discriminator 2
	.loc 1 126 32 is_stmt 0 discriminator 2
	addi	s3,s3,1
.LVL53:
	j	.L17
.LVL54:
.L20:
	.loc 1 144 9 is_stmt 1
	.loc 1 144 11 is_stmt 0
	beq	a0,s8,.L21
.L22:
	.loc 1 148 9 is_stmt 1
	.loc 1 148 11 is_stmt 0
	beq	a5,zero,.L23
.LVL55:
.L25:
	.loc 1 149 19
	li	a0,-44
.LVL56:
.L16:
	.loc 1 212 1
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
.LVL57:
	lw	s5,36(sp)
	.cfi_restore 21
.LVL58:
	lw	s6,32(sp)
	.cfi_restore 22
.LVL59:
	lw	s7,28(sp)
	.cfi_restore 23
	lw	s8,24(sp)
	.cfi_restore 24
	lw	s9,20(sp)
	.cfi_restore 25
	lw	s10,16(sp)
	.cfi_restore 26
	lw	s11,12(sp)
	.cfi_restore 27
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL60:
.L23:
	.cfi_restore_state
	.loc 1 151 9 is_stmt 1
	.loc 1 151 11 is_stmt 0
	slli	a5,a0,24
.LVL61:
	srai	a5,a5,24
	blt	a5,zero,.L25
	.loc 1 154 9 is_stmt 1
	.loc 1 154 11 is_stmt 0
	bne	a0,s11,.L26
	.loc 1 156 13 is_stmt 1
	.loc 1 156 15 is_stmt 0
	addi	s0,s0,1
.LVL62:
	bgtu	s0,a3,.L25
.L27:
	.loc 1 166 9 is_stmt 1
	.loc 1 166 10 is_stmt 0
	addi	s1,s1,1
.LVL63:
	j	.L21
.L26:
	.loc 1 161 13 is_stmt 1
	.loc 1 161 15 is_stmt 0
	bne	s0,zero,.L25
	.loc 1 163 13 is_stmt 1
	.loc 1 163 17 is_stmt 0
	call	mbedtls_ct_base64_dec_value
.LVL64:
	.loc 1 163 15
	li	a3,2
	li	a2,13
	bge	a0,zero,.L27
	j	.L25
.LVL65:
.L29:
	.loc 1 179 5 is_stmt 1
	.loc 1 179 42 is_stmt 0
	andi	a5,s1,7
	.loc 1 179 36
	li	a4,6
	mul	a5,a5,a4
	.loc 1 179 19
	srli	s1,s1,3
.LVL66:
	.loc 1 179 13
	mul	s1,s1,a4
	.loc 1 179 50
	addi	a5,a5,7
	.loc 1 179 56
	srli	a5,a5,3
	.loc 1 180 5 is_stmt 1
	sub	s1,s1,s0
	.loc 1 180 7 is_stmt 0
	add	s1,a5,s1
.LVL67:
	.loc 1 182 5 is_stmt 1
	.loc 1 182 7 is_stmt 0
	beq	s5,zero,.L30
	.loc 1 182 20 discriminator 1
	bgtu	s1,s7,.L30
	.loc 1 191 26
	li	s8,4194304
	add	s2,s4,s2
.LVL68:
	.loc 1 182 20
	mv	s0,s5
.LVL69:
	.loc 1 188 12
	li	s7,0
.LVL70:
	.loc 1 120 14
	li	s3,0
	.loc 1 189 12
	li	s1,0
.LVL71:
	.loc 1 191 26
	li	s9,22
	.loc 1 195 11
	li	s10,61
	.loc 1 200 11
	li	s11,4
	.loc 1 204 15
	li	a4,1
	.loc 1 191 26
	addi	s8,s8,9
.LVL72:
.L31:
	.loc 1 189 26 is_stmt 1 discriminator 1
	.loc 1 189 5 is_stmt 0 discriminator 1
	bne	s2,s4,.L38
	.loc 1 209 5 is_stmt 1
	.loc 1 209 15 is_stmt 0
	sub	s0,s0,s5
.LVL73:
	.loc 1 209 11
	sw	s0,0(s6)
	j	.L48
.LVL74:
.L30:
	.loc 1 184 9 is_stmt 1
	.loc 1 184 15 is_stmt 0
	sw	s1,0(s6)
	.loc 1 185 9 is_stmt 1
	.loc 1 185 15 is_stmt 0
	li	a0,-42
	j	.L16
.LVL75:
.L38:
	.loc 1 191 9 is_stmt 1
	.loc 1 191 13 is_stmt 0
	lbu	a0,0(s4)
	.loc 1 191 26
	addi	a5,a0,-10
	andi	a5,a5,0xff
	bgtu	a5,s9,.L32
	.loc 1 191 26 discriminator 1
	srl	a5,s8,a5
	andi	a5,a5,1
	bne	a5,zero,.L33
.L32:
	.loc 1 194 9 is_stmt 1
	.loc 1 194 11 is_stmt 0
	slli	s1,s1,6
.LVL76:
	.loc 1 195 9 is_stmt 1
	.loc 1 195 11 is_stmt 0
	bne	a0,s10,.L34
	.loc 1 196 13 is_stmt 1
	addi	s7,s7,1
.LVL77:
.L35:
	.loc 1 200 9
	.loc 1 200 11 is_stmt 0
	addi	s3,s3,1
.LVL78:
	bne	s3,s11,.L33
	.loc 1 202 13 is_stmt 1
.LVL79:
	.loc 1 203 13
	.loc 1 203 42 is_stmt 0
	srli	a5,s1,16
	.loc 1 203 22
	sb	a5,0(s0)
	.loc 1 204 13 is_stmt 1
	.loc 1 204 15 is_stmt 0
	bleu	s7,a4,.L36
	.loc 1 203 15
	addi	s0,s0,1
.LVL80:
.L47:
	.loc 1 202 32 discriminator 1
	li	s3,0
.LVL81:
.L33:
	.loc 1 189 33 is_stmt 1 discriminator 2
	.loc 1 189 41 is_stmt 0 discriminator 2
	addi	s4,s4,1
.LVL82:
	j	.L31
.L34:
	.loc 1 198 13 is_stmt 1
	.loc 1 198 18 is_stmt 0
	call	mbedtls_ct_base64_dec_value
.LVL83:
	.loc 1 198 15
	or	s1,s1,a0
.LVL84:
	li	a4,1
.LVL85:
	j	.L35
.LVL86:
.L36:
	.loc 1 204 31 is_stmt 1 discriminator 1
	.loc 1 204 60 is_stmt 0 discriminator 1
	srli	a5,s1,8
	.loc 1 204 40 discriminator 1
	sb	a5,1(s0)
	.loc 1 205 13 is_stmt 1 discriminator 1
	.loc 1 205 15 is_stmt 0 discriminator 1
	beq	s7,zero,.L37
	.loc 1 204 33
	addi	s0,s0,2
.LVL87:
	li	s7,1
.LVL88:
	j	.L47
.LVL89:
.L37:
	.loc 1 205 31 is_stmt 1 discriminator 1
	.loc 1 205 40 is_stmt 0 discriminator 1
	sb	s1,2(s0)
	.loc 1 205 33 discriminator 1
	addi	s0,s0,3
.LVL90:
	j	.L47
	.cfi_endproc
.LFE32:
	.size	mbedtls_base64_decode, .-mbedtls_base64_decode
	.text
.Letext0:
	.file 2 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 3 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 4 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/security/mbedtls_lts/mbedtls/library/constant_time_internal.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2ff
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF23
	.byte	0xc
	.4byte	.LASF24
	.4byte	.LASF25
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.byte	0x3
	.4byte	0x2c
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
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x5
	.4byte	.LASF9
	.byte	0x2
	.byte	0xd1
	.byte	0x16
	.4byte	0x69
	.byte	0x5
	.4byte	.LASF10
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x2c
	.byte	0x5
	.4byte	.LASF11
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x4d
	.byte	0x6
	.byte	0x4
	.4byte	0x2c
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x6
	.byte	0x4
	.4byte	0x70
	.byte	0x6
	.byte	0x4
	.4byte	0x33
	.byte	0x7
	.4byte	.LASF19
	.byte	0x1
	.byte	0x72
	.byte	0x5
	.4byte	0x62
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x1
	.byte	0x9c
	.4byte	0x192
	.byte	0x8
	.string	"dst"
	.byte	0x1
	.byte	0x72
	.byte	0x2b
	.4byte	0x94
	.4byte	.LLST11
	.byte	0x9
	.4byte	.LASF13
	.byte	0x1
	.byte	0x72
	.byte	0x37
	.4byte	0x70
	.4byte	.LLST12
	.byte	0x9
	.4byte	.LASF14
	.byte	0x1
	.byte	0x72
	.byte	0x45
	.4byte	0xa1
	.4byte	.LLST13
	.byte	0x8
	.string	"src"
	.byte	0x1
	.byte	0x73
	.byte	0x29
	.4byte	0xa7
	.4byte	.LLST14
	.byte	0x9
	.4byte	.LASF15
	.byte	0x1
	.byte	0x73
	.byte	0x35
	.4byte	0x70
	.4byte	.LLST15
	.byte	0xa
	.string	"i"
	.byte	0x1
	.byte	0x75
	.byte	0xc
	.4byte	0x70
	.4byte	.LLST16
	.byte	0xa
	.string	"n"
	.byte	0x1
	.byte	0x76
	.byte	0xc
	.4byte	0x70
	.4byte	.LLST17
	.byte	0xa
	.string	"x"
	.byte	0x1
	.byte	0x77
	.byte	0xe
	.4byte	0x88
	.4byte	.LLST18
	.byte	0xb
	.4byte	.LASF16
	.byte	0x1
	.byte	0x78
	.byte	0xe
	.4byte	0x69
	.4byte	.LLST19
	.byte	0xb
	.4byte	.LASF17
	.byte	0x1
	.byte	0x79
	.byte	0xe
	.4byte	0x69
	.4byte	.LLST20
	.byte	0xb
	.4byte	.LASF18
	.byte	0x1
	.byte	0x7a
	.byte	0x9
	.4byte	0x62
	.4byte	.LLST21
	.byte	0xa
	.string	"p"
	.byte	0x1
	.byte	0x7b
	.byte	0x14
	.4byte	0x94
	.4byte	.LLST22
	.byte	0xc
	.4byte	.LVL64
	.4byte	0x2ea
	.byte	0xc
	.4byte	.LVL83
	.4byte	0x2ea
	.byte	0
	.byte	0x7
	.4byte	.LASF20
	.byte	0x1
	.byte	0x2c
	.byte	0x5
	.4byte	0x62
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x1
	.byte	0x9c
	.4byte	0x2ea
	.byte	0x8
	.string	"dst"
	.byte	0x1
	.byte	0x2c
	.byte	0x2b
	.4byte	0x94
	.4byte	.LLST0
	.byte	0x9
	.4byte	.LASF13
	.byte	0x1
	.byte	0x2c
	.byte	0x37
	.4byte	0x70
	.4byte	.LLST1
	.byte	0x9
	.4byte	.LASF14
	.byte	0x1
	.byte	0x2c
	.byte	0x45
	.4byte	0xa1
	.4byte	.LLST2
	.byte	0x8
	.string	"src"
	.byte	0x1
	.byte	0x2d
	.byte	0x29
	.4byte	0xa7
	.4byte	.LLST3
	.byte	0x9
	.4byte	.LASF15
	.byte	0x1
	.byte	0x2d
	.byte	0x35
	.4byte	0x70
	.4byte	.LLST4
	.byte	0xa
	.string	"i"
	.byte	0x1
	.byte	0x2f
	.byte	0xc
	.4byte	0x70
	.4byte	.LLST5
	.byte	0xa
	.string	"n"
	.byte	0x1
	.byte	0x2f
	.byte	0xf
	.4byte	0x70
	.4byte	.LLST6
	.byte	0xa
	.string	"C1"
	.byte	0x1
	.byte	0x30
	.byte	0x9
	.4byte	0x62
	.4byte	.LLST7
	.byte	0xa
	.string	"C2"
	.byte	0x1
	.byte	0x30
	.byte	0xd
	.4byte	0x62
	.4byte	.LLST8
	.byte	0xa
	.string	"C3"
	.byte	0x1
	.byte	0x30
	.byte	0x11
	.4byte	0x62
	.4byte	.LLST9
	.byte	0xa
	.string	"p"
	.byte	0x1
	.byte	0x31
	.byte	0x14
	.4byte	0x94
	.4byte	.LLST10
	.byte	0xd
	.4byte	.LVL19
	.4byte	0x2f6
	.4byte	0x269
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x4
	.byte	0x86
	.byte	0
	.byte	0x32
	.byte	0x25
	.byte	0
	.byte	0xd
	.4byte	.LVL22
	.4byte	0x2f6
	.4byte	0x282
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x7
	.byte	0x87
	.byte	0
	.byte	0x34
	.byte	0x26
	.byte	0x86
	.byte	0
	.byte	0x22
	.byte	0
	.byte	0xd
	.4byte	.LVL24
	.4byte	0x2f6
	.4byte	0x29b
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x7
	.byte	0x87
	.byte	0
	.byte	0x32
	.byte	0x24
	.byte	0x8
	.byte	0x3c
	.byte	0x1a
	.byte	0
	.byte	0xc
	.4byte	.LVL33
	.4byte	0x2f6
	.byte	0xd
	.4byte	.LVL34
	.4byte	0x2f6
	.4byte	0x2bd
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x7
	.byte	0x86
	.byte	0
	.byte	0x34
	.byte	0x26
	.byte	0x87
	.byte	0
	.byte	0x22
	.byte	0
	.byte	0xd
	.4byte	.LVL36
	.4byte	0x2f6
	.4byte	0x2d6
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x7
	.byte	0x88
	.byte	0
	.byte	0x36
	.byte	0x26
	.byte	0x86
	.byte	0
	.byte	0x22
	.byte	0
	.byte	0xf
	.4byte	.LVL37
	.4byte	0x2f6
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x88
	.byte	0
	.byte	0x8
	.byte	0x3f
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LASF21
	.4byte	.LASF21
	.byte	0x4
	.byte	0xc3
	.byte	0xd
	.byte	0x10
	.4byte	.LASF22
	.4byte	.LASF22
	.byte	0x4
	.byte	0xb5
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
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x26
	.byte	0
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
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
	.byte	0x8
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
	.byte	0x9
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
	.byte	0xa
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
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
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
.LLST11:
	.4byte	.LVL41
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL44
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL58
	.4byte	.LVL60
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL41
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL44
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL56
	.4byte	.LVL60
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL70
	.4byte	.LVL74
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL75
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL41
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL44
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL43
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL60
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL41
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL56
	.4byte	.LVL60
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL65
	.4byte	.LFE32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL50
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL60
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL65
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL50
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL60
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL67
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL75
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL85
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL42
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL56
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL72
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL79
	.4byte	.LVL81
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL86
	.4byte	.LFE32
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL50
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL60
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL75
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL81
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL89
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL75
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x3
	.byte	0x78
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x3
	.byte	0x78
	.byte	0x2
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x3
	.byte	0x78
	.byte	0x3
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LFE32
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL13
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL2
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL13
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL9
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x3
	.byte	0x79
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x3
	.byte	0x79
	.byte	0x2
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x3
	.byte	0x79
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL38
	.2byte	0x3
	.byte	0x79
	.byte	0x2
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL15
	.4byte	.LVL26
	.2byte	0x3
	.byte	0x83
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL40
	.4byte	.LFE31
	.2byte	0x3
	.byte	0x83
	.byte	0x7f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x5
	.byte	0x7f
	.byte	0
	.byte	0x32
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x3
	.byte	0x7f
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL16
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL32
	.4byte	.LVL33-1
	.2byte	0x8
	.byte	0x79
	.byte	0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL30
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x6
	.byte	0x88
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x3
	.byte	0x78
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x3
	.byte	0x78
	.byte	0x2
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x3
	.byte	0x78
	.byte	0x3
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x3
	.byte	0x78
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL31
	.4byte	.LVL38
	.2byte	0x3
	.byte	0x78
	.byte	0x7c
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL40
	.4byte	.LFE31
	.2byte	0x3
	.byte	0x78
	.byte	0x3
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
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF9:
	.string	"size_t"
.LASF16:
	.string	"accumulated_digits"
.LASF3:
	.string	"short unsigned int"
.LASF13:
	.string	"dlen"
.LASF7:
	.string	"long long unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF21:
	.string	"mbedtls_ct_base64_dec_value"
.LASF15:
	.string	"slen"
.LASF25:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/build_out/mbedtls_lts"
.LASF5:
	.string	"long unsigned int"
.LASF18:
	.string	"spaces_present"
.LASF20:
	.string	"mbedtls_base64_encode"
.LASF8:
	.string	"unsigned int"
.LASF24:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/security/mbedtls_lts/mbedtls/library/base64.c"
.LASF12:
	.string	"char"
.LASF10:
	.string	"uint8_t"
.LASF22:
	.string	"mbedtls_ct_base64_enc_char"
.LASF6:
	.string	"long long int"
.LASF23:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF14:
	.string	"olen"
.LASF2:
	.string	"short int"
.LASF11:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF17:
	.string	"equals"
.LASF19:
	.string	"mbedtls_base64_decode"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
