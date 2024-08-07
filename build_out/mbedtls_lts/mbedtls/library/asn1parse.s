	.file	"asn1parse.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.asn1_get_sequence_of_cb,"ax",@progbits
	.align	1
	.type	asn1_get_sequence_of_cb, @function
asn1_get_sequence_of_cb:
.LFB16:
	.file 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/security/mbedtls_lts/mbedtls/library/asn1parse.c"
	.loc 1 339 1
	.cfi_startproc
.LVL0:
	.loc 1 340 5
	.loc 1 342 5
	.loc 1 339 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 342 28
	lw	s0,4(a0)
.LVL1:
	.loc 1 345 5 is_stmt 1
	.loc 1 339 1 is_stmt 0
	mv	s1,a0
	mv	s2,a1
	.loc 1 345 7
	lw	a5,8(s0)
	.loc 1 339 1
	mv	s4,a2
	mv	s3,a3
	.loc 1 345 7
	beq	a5,zero,.L2
	.loc 1 347 9 is_stmt 1
	.loc 1 348 13 is_stmt 0
	li	a1,16
.LVL2:
	li	a0,1
.LVL3:
	call	mbedtls_calloc
.LVL4:
	mv	a5,a0
	.loc 1 347 19
	sw	a0,12(s0)
	.loc 1 350 9 is_stmt 1
	.loc 1 351 19 is_stmt 0
	li	a0,-106
	.loc 1 350 11
	beq	a5,zero,.L1
	mv	s0,a5
.LVL5:
.L2:
	.loc 1 356 5 is_stmt 1
	.loc 1 356 16 is_stmt 0
	sw	s4,8(s0)
	.loc 1 357 5 is_stmt 1
	.loc 1 357 18 is_stmt 0
	sw	s3,4(s0)
	.loc 1 358 5 is_stmt 1
	.loc 1 358 18 is_stmt 0
	sw	s2,0(s0)
	.loc 1 360 5 is_stmt 1
	.loc 1 360 17 is_stmt 0
	sw	s0,4(s1)
	.loc 1 361 5 is_stmt 1
	.loc 1 361 11 is_stmt 0
	li	a0,0
.L1:
	.loc 1 362 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL6:
	lw	s1,20(sp)
	.cfi_restore 9
.LVL7:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL8:
	lw	s3,12(sp)
	.cfi_restore 19
.LVL9:
	lw	s4,8(sp)
	.cfi_restore 20
.LVL10:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE16:
	.size	asn1_get_sequence_of_cb, .-asn1_get_sequence_of_cb
	.section	.text.mbedtls_asn1_get_len,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_get_len
	.type	mbedtls_asn1_get_len, @function
mbedtls_asn1_get_len:
.LFB5:
	.loc 1 48 1 is_stmt 1
	.cfi_startproc
.LVL11:
	.loc 1 49 5
	.loc 1 49 17 is_stmt 0
	lw	a5,0(a0)
	.loc 1 49 15
	sub	a3,a1,a5
	.loc 1 49 7
	ble	a3,zero,.L10
	.loc 1 52 5 is_stmt 1
	.loc 1 52 11 is_stmt 0
	lbu	a6,0(a5)
	.loc 1 52 7
	slli	a4,a6,24
	srai	a4,a4,24
	blt	a4,zero,.L11
	.loc 1 53 9 is_stmt 1
	.loc 1 53 21 is_stmt 0
	addi	a4,a5,1
	sw	a4,0(a0)
	.loc 1 53 16
	lbu	a5,0(a5)
	sw	a5,0(a2)
.L12:
	.loc 1 97 5 is_stmt 1
	.loc 1 97 31 is_stmt 0
	lw	a5,0(a0)
	.loc 1 100 11
	li	a0,0
.LVL12:
	.loc 1 97 31
	sub	a1,a1,a5
.LVL13:
	.loc 1 97 7
	lw	a5,0(a2)
	bleu	a5,a1,.L9
.L10:
	.loc 1 98 9 is_stmt 1
	.loc 1 98 15 is_stmt 0
	li	a0,-96
.L9:
	.loc 1 101 1
	ret
.LVL14:
.L11:
	.loc 1 56 9 is_stmt 1
	andi	a4,a6,127
	li	a7,3
	beq	a4,a7,.L13
	andi	a6,a6,124
	bne	a6,zero,.L14
	li	a6,1
	beq	a4,a6,.L15
	li	a6,2
	beq	a4,a6,.L16
.L21:
	li	a0,-100
.LVL15:
	ret
.LVL16:
.L14:
	li	a6,4
	bne	a4,a6,.L21
	.loc 1 84 13
	.loc 1 84 15 is_stmt 0
	ble	a3,a4,.L10
	.loc 1 87 13 is_stmt 1
	.loc 1 87 22 is_stmt 0
	lbu	a4,1(a5)
	.loc 1 87 50
	lbu	a3,2(a5)
	.loc 1 87 38
	slli	a4,a4,24
	.loc 1 87 66
	slli	a3,a3,16
	.loc 1 87 46
	or	a4,a4,a3
	.loc 1 88 51
	lbu	a3,4(a5)
	.loc 1 88 22
	lbu	a5,3(a5)
	.loc 1 88 45
	or	a4,a4,a3
	.loc 1 88 38
	slli	a5,a5,8
	.loc 1 88 45
	or	a5,a4,a5
	.loc 1 87 18
	sw	a5,0(a2)
	.loc 1 89 13 is_stmt 1
	.loc 1 89 18 is_stmt 0
	lw	a5,0(a0)
	addi	a5,a5,5
	j	.L20
.L15:
	.loc 1 59 13 is_stmt 1
	.loc 1 59 15 is_stmt 0
	beq	a3,a4,.L10
	.loc 1 62 13 is_stmt 1
	.loc 1 62 24 is_stmt 0
	lbu	a5,1(a5)
	sw	a5,0(a2)
	.loc 1 63 13 is_stmt 1
	.loc 1 63 18 is_stmt 0
	lw	a5,0(a0)
	addi	a5,a5,2
.L20:
	.loc 1 89 18
	sw	a5,0(a0)
	.loc 1 90 13 is_stmt 1
	j	.L12
.L16:
	.loc 1 67 13
	.loc 1 67 15 is_stmt 0
	ble	a3,a4,.L10
	.loc 1 70 13 is_stmt 1
	.loc 1 70 18 is_stmt 0
	lbu	a4,1(a5)
	lbu	a5,2(a5)
	slli	a5,a5,8
	or	a5,a5,a4
	slli	a4,a5,8
	srli	a5,a5,8
	or	a5,a4,a5
	slli	a5,a5,16
	srli	a5,a5,16
	sw	a5,0(a2)
	.loc 1 71 13 is_stmt 1
	.loc 1 71 18 is_stmt 0
	lw	a5,0(a0)
	addi	a5,a5,3
	j	.L20
.L13:
	.loc 1 75 13 is_stmt 1
	.loc 1 75 15 is_stmt 0
	ble	a3,a4,.L10
	.loc 1 78 13 is_stmt 1
	.loc 1 78 22 is_stmt 0
	lbu	a4,1(a5)
	.loc 1 79 22
	lbu	a3,2(a5)
	.loc 1 79 51
	lbu	a5,3(a5)
	.loc 1 78 38
	slli	a4,a4,16
	.loc 1 79 38
	slli	a3,a3,8
	.loc 1 78 46
	or	a4,a4,a3
	.loc 1 79 45
	or	a5,a4,a5
	.loc 1 78 18
	sw	a5,0(a2)
	.loc 1 80 13 is_stmt 1
	.loc 1 80 18 is_stmt 0
	lw	a5,0(a0)
	addi	a5,a5,4
	j	.L20
	.cfi_endproc
.LFE5:
	.size	mbedtls_asn1_get_len, .-mbedtls_asn1_get_len
	.section	.text.mbedtls_asn1_get_tag,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_get_tag
	.type	mbedtls_asn1_get_tag, @function
mbedtls_asn1_get_tag:
.LFB6:
	.loc 1 106 1 is_stmt 1
	.cfi_startproc
.LVL17:
	.loc 1 107 5
	.loc 1 107 17 is_stmt 0
	lw	a5,0(a0)
	.loc 1 107 15
	sub	a6,a1,a5
	.loc 1 107 7
	ble	a6,zero,.L24
	.loc 1 110 5 is_stmt 1
	.loc 1 110 9 is_stmt 0
	lbu	a6,0(a5)
	.loc 1 110 7
	bne	a6,a3,.L25
	.loc 1 113 5 is_stmt 1
	.loc 1 113 9 is_stmt 0
	addi	a5,a5,1
	sw	a5,0(a0)
	.loc 1 115 5 is_stmt 1
	.loc 1 115 13 is_stmt 0
	tail	mbedtls_asn1_get_len
.LVL18:
.L24:
	.loc 1 108 15
	li	a0,-96
.LVL19:
	ret
.LVL20:
.L25:
	.loc 1 111 15
	li	a0,-98
.LVL21:
	.loc 1 116 1
	ret
	.cfi_endproc
.LFE6:
	.size	mbedtls_asn1_get_tag, .-mbedtls_asn1_get_tag
	.section	.text.asn1_get_tagged_int,"ax",@progbits
	.align	1
	.type	asn1_get_tagged_int, @function
asn1_get_tagged_int:
.LFB8:
	.loc 1 140 1 is_stmt 1
	.cfi_startproc
.LVL22:
	.loc 1 141 5
	.loc 1 142 5
	.loc 1 144 5
	.loc 1 140 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s1,20(sp)
	.cfi_offset 9, -12
	mv	s1,a3
	.loc 1 144 17
	mv	a3,a2
.LVL23:
	addi	a2,sp,12
.LVL24:
	.loc 1 140 1
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 140 1
	mv	s0,a0
	.loc 1 144 17
	call	mbedtls_asn1_get_tag
.LVL25:
	.loc 1 144 7
	bne	a0,zero,.L26
	.loc 1 151 5 is_stmt 1
	.loc 1 151 7 is_stmt 0
	lw	a5,12(sp)
	bne	a5,zero,.L28
.L29:
	.loc 1 152 15
	li	a0,-100
.LVL26:
.L26:
	.loc 1 179 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL27:
	lw	s1,20(sp)
	.cfi_restore 9
.LVL28:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL29:
.L28:
	.cfi_restore_state
	.loc 1 154 5 is_stmt 1
	.loc 1 154 11 is_stmt 0
	lw	a5,0(s0)
	.loc 1 154 7
	lb	a5,0(a5)
	blt	a5,zero,.L29
.L30:
	.loc 1 158 10 is_stmt 1
	.loc 1 158 16 is_stmt 0
	lw	a5,12(sp)
	.loc 1 158 10
	beq	a5,zero,.L31
	.loc 1 158 24 discriminator 1
	lw	a3,0(s0)
	.loc 1 158 23 discriminator 1
	lbu	a4,0(a3)
	.loc 1 158 20 discriminator 1
	beq	a4,zero,.L32
	.loc 1 166 5 is_stmt 1
	.loc 1 166 7 is_stmt 0
	li	a3,4
	bgtu	a5,a3,.L29
	.loc 1 168 5 is_stmt 1
	.loc 1 168 7 is_stmt 0
	bne	a5,a3,.L31
	.loc 1 168 30 discriminator 1
	slli	a4,a4,24
	srai	a4,a4,24
	blt	a4,zero,.L29
.L31:
	.loc 1 171 5 is_stmt 1
	.loc 1 171 10 is_stmt 0
	sw	zero,0(s1)
	.loc 1 172 5 is_stmt 1
.L33:
	.loc 1 172 10
	.loc 1 172 15 is_stmt 0
	lw	a5,12(sp)
	addi	a4,a5,-1
	sw	a4,12(sp)
	.loc 1 172 10
	beq	a5,zero,.L26
	.loc 1 174 9 is_stmt 1
	.loc 1 174 32 is_stmt 0
	lw	a4,0(s0)
	.loc 1 174 23
	lw	a5,0(s1)
	.loc 1 174 32
	lbu	a4,0(a4)
	.loc 1 174 23
	slli	a5,a5,8
	.loc 1 174 30
	or	a5,a5,a4
	.loc 1 174 14
	sw	a5,0(s1)
	.loc 1 175 9 is_stmt 1
	.loc 1 175 13 is_stmt 0
	lw	a5,0(s0)
	addi	a5,a5,1
	sw	a5,0(s0)
	j	.L33
.L32:
	.loc 1 160 9 is_stmt 1
	addi	a3,a3,1
	.loc 1 161 9 is_stmt 0
	addi	a5,a5,-1
	.loc 1 160 9
	sw	a3,0(s0)
	.loc 1 161 9 is_stmt 1
	sw	a5,12(sp)
	j	.L30
	.cfi_endproc
.LFE8:
	.size	asn1_get_tagged_int, .-asn1_get_tagged_int
	.section	.text.mbedtls_asn1_get_bool,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_get_bool
	.type	mbedtls_asn1_get_bool, @function
mbedtls_asn1_get_bool:
.LFB7:
	.loc 1 121 1
	.cfi_startproc
.LVL30:
	.loc 1 122 5
	.loc 1 123 5
	.loc 1 125 5
	.loc 1 121 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s1,20(sp)
	.loc 1 125 17
	li	a3,1
	.cfi_offset 9, -12
	.loc 1 121 1
	mv	s1,a2
	.loc 1 125 17
	addi	a2,sp,12
.LVL31:
	.loc 1 121 1
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 121 1
	mv	s0,a0
	.loc 1 125 17
	call	mbedtls_asn1_get_tag
.LVL32:
	.loc 1 125 7
	bne	a0,zero,.L39
	.loc 1 128 5 is_stmt 1
	.loc 1 128 7 is_stmt 0
	lw	a4,12(sp)
	li	a5,1
	bne	a4,a5,.L41
	.loc 1 131 5 is_stmt 1
	.loc 1 131 14 is_stmt 0
	lw	a5,0(s0)
	.loc 1 131 29
	lbu	a5,0(a5)
	snez	a5,a5
	.loc 1 131 10
	sw	a5,0(s1)
	.loc 1 132 5 is_stmt 1
	.loc 1 132 9 is_stmt 0
	lw	a5,0(s0)
	addi	a5,a5,1
	sw	a5,0(s0)
	.loc 1 134 5 is_stmt 1
.LVL33:
.L39:
	.loc 1 135 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL34:
	lw	s1,20(sp)
	.cfi_restore 9
.LVL35:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL36:
.L41:
	.cfi_restore_state
	.loc 1 129 15
	li	a0,-100
.LVL37:
	j	.L39
	.cfi_endproc
.LFE7:
	.size	mbedtls_asn1_get_bool, .-mbedtls_asn1_get_bool
	.section	.text.mbedtls_asn1_get_int,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_get_int
	.type	mbedtls_asn1_get_int, @function
mbedtls_asn1_get_int:
.LFB9:
	.loc 1 184 1 is_stmt 1
	.cfi_startproc
.LVL38:
	.loc 1 185 5
	.loc 1 184 1 is_stmt 0
	mv	a3,a2
	.loc 1 185 13
	li	a2,2
.LVL39:
	tail	asn1_get_tagged_int
.LVL40:
	.cfi_endproc
.LFE9:
	.size	mbedtls_asn1_get_int, .-mbedtls_asn1_get_int
	.section	.text.mbedtls_asn1_get_enum,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_get_enum
	.type	mbedtls_asn1_get_enum, @function
mbedtls_asn1_get_enum:
.LFB10:
	.loc 1 191 1 is_stmt 1
	.cfi_startproc
.LVL41:
	.loc 1 192 5
	.loc 1 191 1 is_stmt 0
	mv	a3,a2
	.loc 1 192 13
	li	a2,10
.LVL42:
	tail	asn1_get_tagged_int
.LVL43:
	.cfi_endproc
.LFE10:
	.size	mbedtls_asn1_get_enum, .-mbedtls_asn1_get_enum
	.section	.text.mbedtls_asn1_get_mpi,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_get_mpi
	.type	mbedtls_asn1_get_mpi, @function
mbedtls_asn1_get_mpi:
.LFB11:
	.loc 1 199 1 is_stmt 1
	.cfi_startproc
.LVL44:
	.loc 1 200 5
	.loc 1 201 5
	.loc 1 203 5
	.loc 1 199 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s1,20(sp)
	.loc 1 203 17
	li	a3,2
	.cfi_offset 9, -12
	.loc 1 199 1
	mv	s1,a2
	.loc 1 203 17
	addi	a2,sp,12
.LVL45:
	.loc 1 199 1
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 199 1
	mv	s0,a0
	.loc 1 203 17
	call	mbedtls_asn1_get_tag
.LVL46:
	.loc 1 203 7
	bne	a0,zero,.L45
	.loc 1 206 5 is_stmt 1
	.loc 1 206 11 is_stmt 0
	lw	a2,12(sp)
	lw	a1,0(s0)
	mv	a0,s1
.LVL47:
	call	mbedtls_mpi_read_binary
.LVL48:
	.loc 1 208 5 is_stmt 1
	.loc 1 208 8 is_stmt 0
	lw	a5,0(s0)
	lw	a4,12(sp)
	add	a5,a5,a4
	sw	a5,0(s0)
	.loc 1 210 5 is_stmt 1
.L45:
	.loc 1 211 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL49:
	lw	s1,20(sp)
	.cfi_restore 9
.LVL50:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	mbedtls_asn1_get_mpi, .-mbedtls_asn1_get_mpi
	.section	.text.mbedtls_asn1_get_bitstring,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_get_bitstring
	.type	mbedtls_asn1_get_bitstring, @function
mbedtls_asn1_get_bitstring:
.LFB12:
	.loc 1 216 1 is_stmt 1
	.cfi_startproc
.LVL51:
	.loc 1 217 5
	.loc 1 220 5
	.loc 1 216 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 220 17
	li	a3,3
	.loc 1 216 1
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	s2,0(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.loc 1 216 1
	mv	s1,a0
	mv	s2,a1
	mv	s0,a2
	.loc 1 220 17
	call	mbedtls_asn1_get_tag
.LVL52:
	.loc 1 220 7
	bne	a0,zero,.L48
	.loc 1 224 5 is_stmt 1
	.loc 1 224 11 is_stmt 0
	lw	a5,0(s0)
	.loc 1 224 7
	beq	a5,zero,.L50
	.loc 1 226 5 is_stmt 1
	.loc 1 226 13 is_stmt 0
	addi	a5,a5,-1
	sw	a5,0(s0)
	.loc 1 229 5 is_stmt 1
	.loc 1 229 23 is_stmt 0
	lw	a5,0(s1)
	.loc 1 230 7
	li	a4,7
	.loc 1 229 23
	lbu	a5,0(a5)
	.loc 1 229 21
	sb	a5,4(s0)
	.loc 1 230 5 is_stmt 1
	.loc 1 230 7 is_stmt 0
	bgtu	a5,a4,.L51
	.loc 1 232 5 is_stmt 1
	.loc 1 232 9 is_stmt 0
	lw	a5,0(s1)
	addi	a5,a5,1
	sw	a5,0(s1)
	.loc 1 235 5 is_stmt 1
	.loc 1 236 8 is_stmt 0
	lw	a4,0(s0)
	.loc 1 235 11
	sw	a5,8(s0)
	.loc 1 236 5 is_stmt 1
	.loc 1 236 8 is_stmt 0
	add	a5,a5,a4
	sw	a5,0(s1)
	.loc 1 238 5 is_stmt 1
	.loc 1 238 7 is_stmt 0
	beq	a5,s2,.L48
	.loc 1 239 15
	li	a0,-102
.LVL53:
.L48:
	.loc 1 242 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL54:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL55:
	lw	s2,0(sp)
	.cfi_restore 18
.LVL56:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL57:
.L50:
	.cfi_restore_state
	.loc 1 225 15
	li	a0,-96
.LVL58:
	j	.L48
.LVL59:
.L51:
	.loc 1 231 15
	li	a0,-100
.LVL60:
	j	.L48
	.cfi_endproc
.LFE12:
	.size	mbedtls_asn1_get_bitstring, .-mbedtls_asn1_get_bitstring
	.section	.text.mbedtls_asn1_traverse_sequence_of,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_traverse_sequence_of
	.type	mbedtls_asn1_traverse_sequence_of, @function
mbedtls_asn1_traverse_sequence_of:
.LFB13:
	.loc 1 256 1 is_stmt 1
	.cfi_startproc
.LVL61:
	.loc 1 257 5
	.loc 1 258 5
	.loc 1 261 5
	.loc 1 256 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s4,40(sp)
	sw	s5,36(sp)
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	mv	s4,a2
	mv	s5,a3
	.loc 1 261 17
	addi	a2,sp,12
.LVL62:
	li	a3,48
.LVL63:
	.loc 1 256 1
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	s3,44(sp)
	sw	s6,32(sp)
	sw	s7,28(sp)
	sw	s8,24(sp)
	sw	ra,60(sp)
	sw	s9,20(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 1, -4
	.cfi_offset 25, -44
	.loc 1 256 1
	mv	s0,a0
	mv	s2,a1
	mv	s6,a4
	mv	s7,a5
	mv	s3,a6
	mv	s8,a7
	.loc 1 261 17
	call	mbedtls_asn1_get_tag
.LVL64:
	mv	s1,a0
.LVL65:
	.loc 1 261 7
	bne	a0,zero,.L53
	.loc 1 267 5 is_stmt 1
	.loc 1 267 12 is_stmt 0
	lw	a5,0(s0)
	lw	a4,12(sp)
	add	a5,a5,a4
	.loc 1 267 7
	beq	s2,a5,.L55
	.loc 1 268 15
	li	s1,-102
.LVL66:
	j	.L53
.L58:
.LBB2:
	.loc 1 272 9 is_stmt 1
	.loc 1 272 40 is_stmt 0
	addi	a4,a5,1
	sw	a4,0(s0)
	.loc 1 272 29
	lbu	s9,0(a5)
.LVL67:
	.loc 1 274 9 is_stmt 1
	.loc 1 274 11 is_stmt 0
	and	a5,s9,s4
	bne	a5,s5,.L60
	.loc 1 277 9 is_stmt 1
	.loc 1 277 21 is_stmt 0
	addi	a2,sp,12
	mv	a1,s2
	mv	a0,s0
.LVL68:
	call	mbedtls_asn1_get_len
.LVL69:
	.loc 1 277 11
	bne	a0,zero,.L62
	.loc 1 280 9 is_stmt 1
	.loc 1 280 11 is_stmt 0
	and	a5,s9,s6
	beq	a5,s7,.L56
.L57:
	.loc 1 290 9 is_stmt 1
	.loc 1 290 12 is_stmt 0
	lw	a5,0(s0)
	lw	a4,12(sp)
	add	a5,a5,a4
	sw	a5,0(s0)
.LVL70:
.L55:
.LBE2:
	.loc 1 270 10 is_stmt 1
	.loc 1 270 12 is_stmt 0
	lw	a5,0(s0)
	.loc 1 270 10
	bltu	a5,s2,.L58
.L53:
	.loc 1 294 1
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
.LVL71:
	lw	s2,48(sp)
	.cfi_restore 18
.LVL72:
	lw	s3,44(sp)
	.cfi_restore 19
.LVL73:
	lw	s4,40(sp)
	.cfi_restore 20
	lw	s5,36(sp)
	.cfi_restore 21
	lw	s6,32(sp)
	.cfi_restore 22
	lw	s7,28(sp)
	.cfi_restore 23
	lw	s8,24(sp)
	.cfi_restore 24
.LVL74:
	lw	s9,20(sp)
	.cfi_restore 25
	mv	a0,s1
.LVL75:
	lw	s1,52(sp)
	.cfi_restore 9
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL76:
.L56:
	.cfi_restore_state
.LBB3:
	.loc 1 282 13 is_stmt 1
	.loc 1 282 15 is_stmt 0
	beq	s3,zero,.L57
	.loc 1 284 17 is_stmt 1
	.loc 1 284 23 is_stmt 0
	lw	a3,12(sp)
	lw	a2,0(s0)
	mv	a1,s9
	mv	a0,s8
.LVL77:
	jalr	s3
.LVL78:
	.loc 1 285 17 is_stmt 1
	.loc 1 285 19 is_stmt 0
	beq	a0,zero,.L57
.L62:
	mv	s1,a0
	j	.L53
.L60:
	.loc 1 275 19
	li	s1,-98
	j	.L53
.LBE3:
	.cfi_endproc
.LFE13:
	.size	mbedtls_asn1_traverse_sequence_of, .-mbedtls_asn1_traverse_sequence_of
	.section	.text.mbedtls_asn1_get_bitstring_null,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_get_bitstring_null
	.type	mbedtls_asn1_get_bitstring_null, @function
mbedtls_asn1_get_bitstring_null:
.LFB14:
	.loc 1 301 1 is_stmt 1
	.cfi_startproc
.LVL79:
	.loc 1 302 5
	.loc 1 304 5
	.loc 1 301 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 304 17
	li	a3,3
	.loc 1 301 1
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.loc 1 301 1
	mv	s0,a0
	mv	s1,a2
	.loc 1 304 17
	call	mbedtls_asn1_get_tag
.LVL80:
	.loc 1 304 7
	bne	a0,zero,.L67
	.loc 1 307 5 is_stmt 1
	.loc 1 307 9 is_stmt 0
	lw	a5,0(s1)
	.loc 1 307 7
	bne	a5,zero,.L69
.L70:
	.loc 1 308 15
	li	a0,-104
.LVL81:
.L67:
	.loc 1 316 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL82:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL83:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL84:
.L69:
	.cfi_restore_state
	.loc 1 309 5 is_stmt 1
	addi	a5,a5,-1
	sw	a5,0(s1)
	.loc 1 311 5
	.loc 1 311 10 is_stmt 0
	lw	a5,0(s0)
	.loc 1 311 7
	lbu	a4,0(a5)
	bne	a4,zero,.L70
	.loc 1 313 5 is_stmt 1
	addi	a5,a5,1
	sw	a5,0(s0)
	.loc 1 315 5
	.loc 1 315 11 is_stmt 0
	j	.L67
	.cfi_endproc
.LFE14:
	.size	mbedtls_asn1_get_bitstring_null, .-mbedtls_asn1_get_bitstring_null
	.section	.text.mbedtls_asn1_sequence_free,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_sequence_free
	.type	mbedtls_asn1_sequence_free, @function
mbedtls_asn1_sequence_free:
.LFB15:
	.loc 1 319 1 is_stmt 1
	.cfi_startproc
.LVL85:
	.loc 1 320 5
	.loc 1 320 10
	bne	a0,zero,.L77
	ret
.L77:
	.loc 1 319 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
.L74:
.LBB4:
	.loc 1 322 9 is_stmt 1
	.loc 1 323 9 is_stmt 0
	li	a1,16
	.loc 1 322 32
	lw	s0,12(a0)
.LVL86:
	.loc 1 323 9 is_stmt 1
	sw	a0,12(sp)
	call	mbedtls_platform_zeroize
.LVL87:
	.loc 1 324 9
	lw	a0,12(sp)
	call	mbedtls_free
.LVL88:
	.loc 1 325 9
	.loc 1 325 13 is_stmt 0
	mv	a0,s0
.LBE4:
	.loc 1 320 10 is_stmt 1
	bne	s0,zero,.L74
	.loc 1 327 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL89:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE15:
	.size	mbedtls_asn1_sequence_free, .-mbedtls_asn1_sequence_free
	.section	.text.mbedtls_asn1_get_sequence_of,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_get_sequence_of
	.type	mbedtls_asn1_get_sequence_of, @function
mbedtls_asn1_get_sequence_of:
.LFB17:
	.loc 1 371 1 is_stmt 1
	.cfi_startproc
.LVL90:
	.loc 1 372 5
	.loc 1 371 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s1,20(sp)
	sw	s2,16(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	mv	s1,a0
	mv	s2,a1
	.loc 1 372 35
	sw	a2,12(sp)
	.loc 1 373 5 is_stmt 1
	.loc 1 371 1 is_stmt 0
	mv	a0,a2
.LVL91:
	.loc 1 373 5
	li	a1,0
.LVL92:
	li	a2,16
.LVL93:
	.loc 1 371 1
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 372 35
	sw	a3,8(sp)
	.loc 1 371 1
	mv	s0,a3
	.loc 1 373 5
	call	memset
.LVL94:
	.loc 1 374 5 is_stmt 1
	.loc 1 374 13 is_stmt 0
	lui	a6,%hi(asn1_get_sequence_of_cb)
	addi	a7,sp,8
	andi	a3,s0,0xff
	mv	a1,s2
	mv	a0,s1
	addi	a6,a6,%lo(asn1_get_sequence_of_cb)
	li	a5,0
	li	a4,0
	li	a2,255
	call	mbedtls_asn1_traverse_sequence_of
.LVL95:
	.loc 1 377 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL96:
	lw	s1,20(sp)
	.cfi_restore 9
.LVL97:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL98:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE17:
	.size	mbedtls_asn1_get_sequence_of, .-mbedtls_asn1_get_sequence_of
	.section	.text.mbedtls_asn1_get_alg,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_get_alg
	.type	mbedtls_asn1_get_alg, @function
mbedtls_asn1_get_alg:
.LFB18:
	.loc 1 382 1 is_stmt 1
	.cfi_startproc
.LVL99:
	.loc 1 383 5
	.loc 1 384 5
	.loc 1 386 5
	.loc 1 382 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s2,32(sp)
	sw	s4,24(sp)
	.cfi_offset 18, -16
	.cfi_offset 20, -24
	mv	s2,a3
	mv	s4,a2
	.loc 1 386 17
	li	a3,48
.LVL100:
	addi	a2,sp,12
.LVL101:
	.loc 1 382 1
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s3,28(sp)
	sw	ra,44(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.loc 1 382 1
	mv	s1,a0
	mv	s3,a1
	.loc 1 386 17
	call	mbedtls_asn1_get_tag
.LVL102:
	mv	s0,a0
.LVL103:
	.loc 1 386 7
	bne	a0,zero,.L80
	.loc 1 390 5 is_stmt 1
	.loc 1 390 17 is_stmt 0
	lw	a5,0(s1)
	.loc 1 391 15
	li	s0,-96
.LVL104:
	.loc 1 390 15
	sub	s3,s3,a5
.LVL105:
	.loc 1 390 7
	ble	s3,zero,.L80
	.loc 1 393 5 is_stmt 1
	.loc 1 393 16 is_stmt 0
	lbu	a5,0(a5)
	.loc 1 394 9
	lw	a1,12(sp)
	.loc 1 396 17
	li	a3,6
	.loc 1 393 16
	sw	a5,0(s4)
	.loc 1 394 5 is_stmt 1
	.loc 1 394 9 is_stmt 0
	lw	s3,0(s1)
	.loc 1 396 17
	addi	a2,s4,4
	mv	a0,s1
.LVL106:
	.loc 1 394 9
	add	s3,s3,a1
.LVL107:
	.loc 1 396 5 is_stmt 1
	.loc 1 396 17 is_stmt 0
	mv	a1,s3
	call	mbedtls_asn1_get_tag
.LVL108:
	mv	s0,a0
.LVL109:
	.loc 1 396 7
	bne	a0,zero,.L80
	.loc 1 399 5 is_stmt 1
	.loc 1 399 14 is_stmt 0
	lw	a5,0(s1)
	.loc 1 400 8
	lw	a4,4(s4)
	.loc 1 399 12
	sw	a5,8(s4)
	.loc 1 400 5 is_stmt 1
	.loc 1 400 8 is_stmt 0
	add	a5,a5,a4
	sw	a5,0(s1)
	.loc 1 402 5 is_stmt 1
	.loc 1 402 7 is_stmt 0
	bne	a5,s3,.L82
	.loc 1 404 9 is_stmt 1
	li	a1,12
	mv	a0,s2
	call	mbedtls_platform_zeroize
.LVL110:
	.loc 1 405 9
.L80:
	.loc 1 421 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
.LVL111:
	lw	s2,32(sp)
	.cfi_restore 18
.LVL112:
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s4,24(sp)
	.cfi_restore 20
.LVL113:
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL114:
.L82:
	.cfi_restore_state
	.loc 1 408 5 is_stmt 1
	.loc 1 408 19 is_stmt 0
	lbu	a5,0(a5)
	.loc 1 411 17
	addi	a2,s2,4
	mv	a1,s3
	.loc 1 408 19
	sw	a5,0(s2)
	.loc 1 409 5 is_stmt 1
	.loc 1 409 9 is_stmt 0
	lw	a5,0(s1)
	.loc 1 411 17
	mv	a0,s1
	.loc 1 409 9
	addi	a5,a5,1
	sw	a5,0(s1)
	.loc 1 411 5 is_stmt 1
	.loc 1 411 17 is_stmt 0
	call	mbedtls_asn1_get_len
.LVL115:
	mv	s0,a0
.LVL116:
	.loc 1 411 7
	bne	a0,zero,.L80
	.loc 1 414 5 is_stmt 1
	.loc 1 414 17 is_stmt 0
	lw	a5,0(s1)
	.loc 1 415 8
	lw	a4,4(s2)
	.loc 1 414 15
	sw	a5,8(s2)
	.loc 1 415 5 is_stmt 1
	.loc 1 415 8 is_stmt 0
	add	a5,a5,a4
	sw	a5,0(s1)
	.loc 1 417 5 is_stmt 1
	.loc 1 417 7 is_stmt 0
	beq	a5,s3,.L80
	.loc 1 418 15
	li	s0,-102
.LVL117:
	j	.L80
	.cfi_endproc
.LFE18:
	.size	mbedtls_asn1_get_alg, .-mbedtls_asn1_get_alg
	.section	.text.mbedtls_asn1_get_alg_null,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_get_alg_null
	.type	mbedtls_asn1_get_alg_null, @function
mbedtls_asn1_get_alg_null:
.LFB19:
	.loc 1 426 1 is_stmt 1
	.cfi_startproc
.LVL118:
	.loc 1 427 5
	.loc 1 428 5
	.loc 1 430 5
	.loc 1 426 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	mv	s0,a0
	mv	s1,a1
	mv	s2,a2
	.loc 1 430 5
	li	a1,0
.LVL119:
	li	a2,12
.LVL120:
	addi	a0,sp,4
.LVL121:
	.loc 1 426 1
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 430 5
	call	memset
.LVL122:
	.loc 1 432 5 is_stmt 1
	.loc 1 432 17 is_stmt 0
	addi	a3,sp,4
	mv	a2,s2
	mv	a1,s1
	mv	a0,s0
	call	mbedtls_asn1_get_alg
.LVL123:
	.loc 1 432 7
	bne	a0,zero,.L85
	.loc 1 435 5 is_stmt 1
	.loc 1 435 17 is_stmt 0
	lw	a5,4(sp)
	.loc 1 435 7
	li	a4,5
	beq	a5,a4,.L87
	.loc 1 435 30 discriminator 1
	bne	a5,zero,.L89
.L87:
	.loc 1 435 51 discriminator 3
	lw	a5,8(sp)
	beq	a5,zero,.L85
.L89:
	.loc 1 436 15
	li	a0,-104
.LVL124:
.L85:
	.loc 1 439 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL125:
	lw	s1,20(sp)
	.cfi_restore 9
.LVL126:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL127:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE19:
	.size	mbedtls_asn1_get_alg_null, .-mbedtls_asn1_get_alg_null
	.section	.text.mbedtls_asn1_free_named_data,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_free_named_data
	.type	mbedtls_asn1_free_named_data, @function
mbedtls_asn1_free_named_data:
.LFB20:
	.loc 1 442 1 is_stmt 1
	.cfi_startproc
.LVL128:
	.loc 1 443 5
	.loc 1 443 7 is_stmt 0
	beq	a0,zero,.L91
	.loc 1 442 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	mv	s0,a0
.LVL129:
.LBB7:
.LBB8:
	.loc 1 446 5 is_stmt 1
	lw	a0,8(a0)
.LVL130:
	call	mbedtls_free
.LVL131:
	.loc 1 447 5
	lw	a0,20(s0)
	call	mbedtls_free
.LVL132:
	.loc 1 449 5
	mv	a0,s0
.LBE8:
.LBE7:
	.loc 1 450 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
.LVL133:
	lw	ra,12(sp)
	.cfi_restore 1
.LBB11:
.LBB9:
	.loc 1 449 5
	li	a1,32
.LBE9:
.LBE11:
	.loc 1 450 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LBB12:
.LBB10:
	.loc 1 449 5
	tail	mbedtls_platform_zeroize
.LVL134:
.L91:
	ret
.LBE10:
.LBE12:
	.cfi_endproc
.LFE20:
	.size	mbedtls_asn1_free_named_data, .-mbedtls_asn1_free_named_data
	.section	.text.mbedtls_asn1_free_named_data_list,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_free_named_data_list
	.type	mbedtls_asn1_free_named_data_list, @function
mbedtls_asn1_free_named_data_list:
.LFB21:
	.loc 1 453 1 is_stmt 1
	.cfi_startproc
.LVL135:
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	mv	s0,a0
	.loc 1 454 5
	.loc 1 456 5
.LVL136:
.L97:
	.loc 1 456 10
	.loc 1 456 18 is_stmt 0
	lw	a0,0(s0)
.LVL137:
	.loc 1 456 10
	bne	a0,zero,.L98
	.loc 1 462 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL138:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL139:
.L98:
	.cfi_restore_state
	.loc 1 458 9 is_stmt 1
	.loc 1 458 20 is_stmt 0
	lw	a5,24(a0)
	.loc 1 459 9
	sw	a0,12(sp)
	.loc 1 458 15
	sw	a5,0(s0)
	.loc 1 459 9 is_stmt 1
	call	mbedtls_asn1_free_named_data
.LVL140:
	.loc 1 460 9
	lw	a0,12(sp)
	call	mbedtls_free
.LVL141:
	j	.L97
	.cfi_endproc
.LFE21:
	.size	mbedtls_asn1_free_named_data_list, .-mbedtls_asn1_free_named_data_list
	.section	.text.mbedtls_asn1_find_named_data,"ax",@progbits
	.align	1
	.globl	mbedtls_asn1_find_named_data
	.type	mbedtls_asn1_find_named_data, @function
mbedtls_asn1_find_named_data:
.LFB22:
	.loc 1 466 1
	.cfi_startproc
.LVL142:
	.loc 1 467 5
	.loc 1 466 1 is_stmt 0
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
	.loc 1 466 1
	mv	s2,a1
	mv	s1,a2
	.loc 1 467 10
	mv	s0,a0
.LVL143:
.L101:
	.loc 1 467 10 is_stmt 1
	beq	s0,zero,.L100
	.loc 1 469 9
	.loc 1 469 11 is_stmt 0
	lw	a5,4(s0)
	beq	a5,s1,.L102
.L104:
	.loc 1 475 9 is_stmt 1
	.loc 1 475 14 is_stmt 0
	lw	s0,24(s0)
.LVL144:
	j	.L101
.L102:
	.loc 1 470 13 discriminator 1
	lw	a0,8(s0)
	mv	a2,s1
	mv	a1,s2
	call	memcmp
.LVL145:
	.loc 1 469 34 discriminator 1
	bne	a0,zero,.L104
.L100:
	.loc 1 479 1
	lw	ra,12(sp)
	.cfi_restore 1
	mv	a0,s0
	lw	s0,8(sp)
	.cfi_restore 8
.LVL146:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL147:
	lw	s2,0(sp)
	.cfi_restore 18
.LVL148:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE22:
	.size	mbedtls_asn1_find_named_data, .-mbedtls_asn1_find_named_data
	.text
.Letext0:
	.file 2 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 3 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 4 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/security/mbedtls_lts/mbedtls/include/mbedtls/bignum.h"
	.file 5 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/security/mbedtls_lts/mbedtls/include/mbedtls/asn1.h"
	.file 6 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 7 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/security/mbedtls_lts/mbedtls/include/mbedtls/platform.h"
	.file 8 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/security/mbedtls_lts/mbedtls/include/mbedtls/platform_util.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xd13
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF54
	.byte	0xc
	.4byte	.LASF55
	.4byte	.LASF56
	.4byte	.Ldebug_ranges0+0x38
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
	.byte	0x34
	.byte	0x1b
	.4byte	0x4d
	.byte	0x6
	.byte	0x4
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x3
	.4byte	0x90
	.byte	0x7
	.byte	0x4
	.4byte	0x97
	.byte	0x5
	.4byte	.LASF12
	.byte	0x4
	.byte	0xb2
	.byte	0x16
	.4byte	0x7c
	.byte	0x8
	.4byte	.LASF13
	.byte	0xc
	.byte	0x4
	.byte	0xc0
	.byte	0x10
	.4byte	0xdd
	.byte	0x9
	.string	"s"
	.byte	0x4
	.byte	0xc2
	.byte	0x9
	.4byte	0x62
	.byte	0
	.byte	0x9
	.string	"n"
	.byte	0x4
	.byte	0xc3
	.byte	0xc
	.4byte	0x70
	.byte	0x4
	.byte	0x9
	.string	"p"
	.byte	0x4
	.byte	0xc4
	.byte	0x17
	.4byte	0xdd
	.byte	0x8
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xa2
	.byte	0x5
	.4byte	.LASF13
	.byte	0x4
	.byte	0xc6
	.byte	0x1
	.4byte	0xae
	.byte	0x8
	.4byte	.LASF14
	.byte	0xc
	.byte	0x5
	.byte	0x9b
	.byte	0x10
	.4byte	0x122
	.byte	0x9
	.string	"tag"
	.byte	0x5
	.byte	0x9d
	.byte	0x9
	.4byte	0x62
	.byte	0
	.byte	0x9
	.string	"len"
	.byte	0x5
	.byte	0x9e
	.byte	0xc
	.4byte	0x70
	.byte	0x4
	.byte	0x9
	.string	"p"
	.byte	0x5
	.byte	0x9f
	.byte	0x14
	.4byte	0x8a
	.byte	0x8
	.byte	0
	.byte	0x5
	.4byte	.LASF14
	.byte	0x5
	.byte	0xa1
	.byte	0x1
	.4byte	0xef
	.byte	0x8
	.4byte	.LASF15
	.byte	0xc
	.byte	0x5
	.byte	0xa6
	.byte	0x10
	.4byte	0x161
	.byte	0x9
	.string	"len"
	.byte	0x5
	.byte	0xa8
	.byte	0xc
	.4byte	0x70
	.byte	0
	.byte	0xa
	.4byte	.LASF16
	.byte	0x5
	.byte	0xa9
	.byte	0x13
	.4byte	0x2c
	.byte	0x4
	.byte	0x9
	.string	"p"
	.byte	0x5
	.byte	0xaa
	.byte	0x14
	.4byte	0x8a
	.byte	0x8
	.byte	0
	.byte	0x5
	.4byte	.LASF15
	.byte	0x5
	.byte	0xac
	.byte	0x1
	.4byte	0x12e
	.byte	0x8
	.4byte	.LASF17
	.byte	0x10
	.byte	0x5
	.byte	0xb1
	.byte	0x10
	.4byte	0x195
	.byte	0x9
	.string	"buf"
	.byte	0x5
	.byte	0xb3
	.byte	0x16
	.4byte	0x122
	.byte	0
	.byte	0xa
	.4byte	.LASF18
	.byte	0x5
	.byte	0xb4
	.byte	0x23
	.4byte	0x195
	.byte	0xc
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x16d
	.byte	0x5
	.4byte	.LASF17
	.byte	0x5
	.byte	0xb6
	.byte	0x1
	.4byte	0x16d
	.byte	0x8
	.4byte	.LASF19
	.byte	0x20
	.byte	0x5
	.byte	0xbb
	.byte	0x10
	.4byte	0x1e9
	.byte	0x9
	.string	"oid"
	.byte	0x5
	.byte	0xbd
	.byte	0x16
	.4byte	0x122
	.byte	0
	.byte	0x9
	.string	"val"
	.byte	0x5
	.byte	0xbe
	.byte	0x16
	.4byte	0x122
	.byte	0xc
	.byte	0xa
	.4byte	.LASF18
	.byte	0x5
	.byte	0xbf
	.byte	0x25
	.4byte	0x1e9
	.byte	0x18
	.byte	0xa
	.4byte	.LASF20
	.byte	0x5
	.byte	0xc0
	.byte	0x13
	.4byte	0x2c
	.byte	0x1c
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x1a7
	.byte	0x5
	.4byte	.LASF19
	.byte	0x5
	.byte	0xc2
	.byte	0x1
	.4byte	0x1a7
	.byte	0xb
	.byte	0x8
	.byte	0x1
	.2byte	0x149
	.byte	0x9
	.4byte	0x222
	.byte	0xc
	.string	"tag"
	.byte	0x1
	.2byte	0x14b
	.byte	0x9
	.4byte	0x62
	.byte	0
	.byte	0xc
	.string	"cur"
	.byte	0x1
	.2byte	0x14c
	.byte	0x1c
	.4byte	0x222
	.byte	0x4
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x19b
	.byte	0xd
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x14d
	.byte	0x3
	.4byte	0x1fb
	.byte	0xe
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x1d0
	.byte	0x1a
	.4byte	0x29a
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x1
	.byte	0x9c
	.4byte	0x29a
	.byte	0xf
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x1d0
	.byte	0x51
	.4byte	0x29a
	.4byte	.LLST68
	.byte	0x10
	.string	"oid"
	.byte	0x1
	.2byte	0x1d1
	.byte	0x34
	.4byte	0x9c
	.4byte	.LLST69
	.byte	0x10
	.string	"len"
	.byte	0x1
	.2byte	0x1d1
	.byte	0x40
	.4byte	0x70
	.4byte	.LLST70
	.byte	0x11
	.4byte	.LVL145
	.4byte	0xccd
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x1ef
	.byte	0x13
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1c4
	.byte	0x6
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.4byte	0x300
	.byte	0xf
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x1c4
	.byte	0x43
	.4byte	0x300
	.4byte	.LLST66
	.byte	0x14
	.string	"cur"
	.byte	0x1
	.2byte	0x1c6
	.byte	0x1e
	.4byte	0x29a
	.4byte	.LLST67
	.byte	0x15
	.4byte	.LVL140
	.4byte	0x306
	.4byte	0x2ee
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0x11
	.4byte	.LVL141
	.4byte	0xcd9
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x29a
	.byte	0x16
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x1b9
	.byte	0x6
	.byte	0x1
	.4byte	0x322
	.byte	0x17
	.string	"cur"
	.byte	0x1
	.2byte	0x1b9
	.byte	0x3d
	.4byte	0x29a
	.byte	0
	.byte	0xe
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x1a7
	.byte	0x5
	.4byte	0x62
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x1
	.byte	0x9c
	.4byte	0x3d0
	.byte	0x10
	.string	"p"
	.byte	0x1
	.2byte	0x1a7
	.byte	0x30
	.4byte	0x3d0
	.4byte	.LLST60
	.byte	0x10
	.string	"end"
	.byte	0x1
	.2byte	0x1a8
	.byte	0x2d
	.4byte	0x3d6
	.4byte	.LLST61
	.byte	0x10
	.string	"alg"
	.byte	0x1
	.2byte	0x1a9
	.byte	0x2a
	.4byte	0x3dc
	.4byte	.LLST62
	.byte	0x14
	.string	"ret"
	.byte	0x1
	.2byte	0x1ab
	.byte	0x9
	.4byte	0x62
	.4byte	.LLST63
	.byte	0x18
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x1ac
	.byte	0x16
	.4byte	0x122
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x15
	.4byte	.LVL122
	.4byte	0xce5
	.4byte	0x3ad
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x11
	.4byte	.LVL123
	.4byte	0x3e2
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x8a
	.byte	0x7
	.byte	0x4
	.4byte	0x33
	.byte	0x7
	.byte	0x4
	.4byte	0x122
	.byte	0xe
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x17b
	.byte	0x5
	.4byte	0x62
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0x4e1
	.byte	0x10
	.string	"p"
	.byte	0x1
	.2byte	0x17b
	.byte	0x2b
	.4byte	0x3d0
	.4byte	.LLST55
	.byte	0x10
	.string	"end"
	.byte	0x1
	.2byte	0x17c
	.byte	0x28
	.4byte	0x3d6
	.4byte	.LLST56
	.byte	0x10
	.string	"alg"
	.byte	0x1
	.2byte	0x17d
	.byte	0x25
	.4byte	0x3dc
	.4byte	.LLST57
	.byte	0xf
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x17d
	.byte	0x3c
	.4byte	0x3dc
	.4byte	.LLST58
	.byte	0x14
	.string	"ret"
	.byte	0x1
	.2byte	0x17f
	.byte	0x9
	.4byte	0x62
	.4byte	.LLST59
	.byte	0x19
	.string	"len"
	.byte	0x1
	.2byte	0x180
	.byte	0xc
	.4byte	0x70
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x15
	.4byte	.LVL102
	.4byte	0xbad
	.4byte	0x486
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x12
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.byte	0x15
	.4byte	.LVL108
	.4byte	0xbad
	.4byte	0x4ab
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x84
	.byte	0x4
	.byte	0x12
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x36
	.byte	0
	.byte	0x15
	.4byte	.LVL110
	.4byte	0xcf1
	.4byte	0x4c4
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x11
	.4byte	.LVL115
	.4byte	0xc25
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x16f
	.byte	0x5
	.4byte	0x62
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0x5a9
	.byte	0x10
	.string	"p"
	.byte	0x1
	.2byte	0x16f
	.byte	0x33
	.4byte	0x3d0
	.4byte	.LLST51
	.byte	0x10
	.string	"end"
	.byte	0x1
	.2byte	0x170
	.byte	0x30
	.4byte	0x3d6
	.4byte	.LLST52
	.byte	0x10
	.string	"cur"
	.byte	0x1
	.2byte	0x171
	.byte	0x32
	.4byte	0x222
	.4byte	.LLST53
	.byte	0x10
	.string	"tag"
	.byte	0x1
	.2byte	0x172
	.byte	0x1f
	.4byte	0x62
	.4byte	.LLST54
	.byte	0x18
	.4byte	.LASF29
	.byte	0x1
	.2byte	0x174
	.byte	0x23
	.4byte	0x228
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x15
	.4byte	.LVL94
	.4byte	0xce5
	.4byte	0x56d
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x11
	.4byte	.LVL95
	.4byte	0x73a
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0x12
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x30
	.byte	0x12
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x30
	.byte	0x12
	.byte	0x1
	.byte	0x60
	.byte	0x5
	.byte	0x3
	.4byte	asn1_get_sequence_of_cb
	.byte	0x12
	.byte	0x1
	.byte	0x61
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x14f
	.byte	0xc
	.4byte	0x62
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0x63f
	.byte	0x10
	.string	"ctx"
	.byte	0x1
	.2byte	0x14f
	.byte	0x2b
	.4byte	0x88
	.4byte	.LLST0
	.byte	0x10
	.string	"tag"
	.byte	0x1
	.2byte	0x150
	.byte	0x29
	.4byte	0x62
	.4byte	.LLST1
	.byte	0xf
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x151
	.byte	0x34
	.4byte	0x8a
	.4byte	.LLST2
	.byte	0x10
	.string	"len"
	.byte	0x1
	.2byte	0x152
	.byte	0x2c
	.4byte	0x70
	.4byte	.LLST3
	.byte	0x1b
	.4byte	.LASF29
	.byte	0x1
	.2byte	0x154
	.byte	0x24
	.4byte	0x63f
	.4byte	.LLST4
	.byte	0x14
	.string	"cur"
	.byte	0x1
	.2byte	0x156
	.byte	0x1c
	.4byte	0x222
	.4byte	.LLST5
	.byte	0x11
	.4byte	.LVL4
	.4byte	0xcfd
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x228
	.byte	0x13
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x13e
	.byte	0x6
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x6b4
	.byte	0x10
	.string	"seq"
	.byte	0x1
	.2byte	0x13e
	.byte	0x39
	.4byte	0x222
	.4byte	.LLST49
	.byte	0x1c
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1b
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x142
	.byte	0x20
	.4byte	0x222
	.4byte	.LLST50
	.byte	0x15
	.4byte	.LVL87
	.4byte	0xcf1
	.4byte	0x6a1
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0x11
	.4byte	.LVL88
	.4byte	0xcd9
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x12b
	.byte	0x5
	.4byte	0x62
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x734
	.byte	0x10
	.string	"p"
	.byte	0x1
	.2byte	0x12b
	.byte	0x36
	.4byte	0x3d0
	.4byte	.LLST45
	.byte	0x10
	.string	"end"
	.byte	0x1
	.2byte	0x12b
	.byte	0x4e
	.4byte	0x3d6
	.4byte	.LLST46
	.byte	0x10
	.string	"len"
	.byte	0x1
	.2byte	0x12c
	.byte	0x26
	.4byte	0x734
	.4byte	.LLST47
	.byte	0x14
	.string	"ret"
	.byte	0x1
	.2byte	0x12e
	.byte	0x9
	.4byte	0x62
	.4byte	.LLST48
	.byte	0x11
	.4byte	.LVL80
	.4byte	0xbad
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x70
	.byte	0x1d
	.4byte	.LASF34
	.byte	0x1
	.byte	0xf8
	.byte	0x5
	.4byte	0x62
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x862
	.byte	0x1e
	.string	"p"
	.byte	0x1
	.byte	0xf9
	.byte	0x15
	.4byte	0x3d0
	.4byte	.LLST35
	.byte	0x1e
	.string	"end"
	.byte	0x1
	.byte	0xfa
	.byte	0x1a
	.4byte	0x3d6
	.4byte	.LLST36
	.byte	0x1f
	.4byte	.LASF35
	.byte	0x1
	.byte	0xfb
	.byte	0x13
	.4byte	0x2c
	.4byte	.LLST37
	.byte	0x1f
	.4byte	.LASF36
	.byte	0x1
	.byte	0xfb
	.byte	0x30
	.4byte	0x2c
	.4byte	.LLST38
	.byte	0x1f
	.4byte	.LASF37
	.byte	0x1
	.byte	0xfc
	.byte	0x13
	.4byte	0x2c
	.4byte	.LLST39
	.byte	0x1f
	.4byte	.LASF38
	.byte	0x1
	.byte	0xfc
	.byte	0x2f
	.4byte	0x2c
	.4byte	.LLST40
	.byte	0x1e
	.string	"cb"
	.byte	0x1
	.byte	0xfd
	.byte	0xb
	.4byte	0x880
	.4byte	.LLST41
	.byte	0x1e
	.string	"ctx"
	.byte	0x1
	.byte	0xff
	.byte	0xb
	.4byte	0x88
	.4byte	.LLST42
	.byte	0x14
	.string	"ret"
	.byte	0x1
	.2byte	0x101
	.byte	0x9
	.4byte	0x62
	.4byte	.LLST43
	.byte	0x19
	.string	"len"
	.byte	0x1
	.2byte	0x102
	.byte	0xc
	.4byte	0x70
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x20
	.4byte	.Ldebug_ranges0+0
	.4byte	0x83f
	.byte	0x14
	.string	"tag"
	.byte	0x1
	.2byte	0x110
	.byte	0x1d
	.4byte	0x33
	.4byte	.LLST44
	.byte	0x15
	.4byte	.LVL69
	.4byte	0xc25
	.4byte	0x82c
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0
	.byte	0x21
	.4byte	.LVL78
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x88
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x89
	.byte	0
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LVL64
	.4byte	0xbad
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x12
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x8
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	0x62
	.4byte	0x880
	.byte	0x23
	.4byte	0x88
	.byte	0x23
	.4byte	0x62
	.byte	0x23
	.4byte	0x8a
	.byte	0x23
	.4byte	0x70
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x862
	.byte	0x1d
	.4byte	.LASF39
	.byte	0x1
	.byte	0xd6
	.byte	0x5
	.4byte	0x62
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x8ff
	.byte	0x1e
	.string	"p"
	.byte	0x1
	.byte	0xd6
	.byte	0x31
	.4byte	0x3d0
	.4byte	.LLST31
	.byte	0x1e
	.string	"end"
	.byte	0x1
	.byte	0xd6
	.byte	0x49
	.4byte	0x3d6
	.4byte	.LLST32
	.byte	0x1e
	.string	"bs"
	.byte	0x1
	.byte	0xd7
	.byte	0x31
	.4byte	0x8ff
	.4byte	.LLST33
	.byte	0x24
	.string	"ret"
	.byte	0x1
	.byte	0xd9
	.byte	0x9
	.4byte	0x62
	.4byte	.LLST34
	.byte	0x11
	.4byte	.LVL52
	.4byte	0xbad
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x161
	.byte	0x1d
	.4byte	.LASF40
	.byte	0x1
	.byte	0xc4
	.byte	0x5
	.4byte	0x62
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x9a1
	.byte	0x1e
	.string	"p"
	.byte	0x1
	.byte	0xc4
	.byte	0x2b
	.4byte	0x3d0
	.4byte	.LLST27
	.byte	0x1e
	.string	"end"
	.byte	0x1
	.byte	0xc5
	.byte	0x28
	.4byte	0x3d6
	.4byte	.LLST28
	.byte	0x1e
	.string	"X"
	.byte	0x1
	.byte	0xc6
	.byte	0x20
	.4byte	0x9a1
	.4byte	.LLST29
	.byte	0x24
	.string	"ret"
	.byte	0x1
	.byte	0xc8
	.byte	0x9
	.4byte	0x62
	.4byte	.LLST30
	.byte	0x25
	.string	"len"
	.byte	0x1
	.byte	0xc9
	.byte	0xc
	.4byte	0x70
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x15
	.4byte	.LVL46
	.4byte	0xbad
	.4byte	0x990
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x12
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x11
	.4byte	.LVL48
	.4byte	0xd09
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xe3
	.byte	0x1d
	.4byte	.LASF41
	.byte	0x1
	.byte	0xbc
	.byte	0x5
	.4byte	0x62
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0xa14
	.byte	0x1e
	.string	"p"
	.byte	0x1
	.byte	0xbc
	.byte	0x2c
	.4byte	0x3d0
	.4byte	.LLST24
	.byte	0x1e
	.string	"end"
	.byte	0x1
	.byte	0xbd
	.byte	0x31
	.4byte	0x3d6
	.4byte	.LLST25
	.byte	0x1e
	.string	"val"
	.byte	0x1
	.byte	0xbe
	.byte	0x21
	.4byte	0xa14
	.4byte	.LLST26
	.byte	0x26
	.4byte	.LVL43
	.4byte	0xa87
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3a
	.byte	0x12
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x62
	.byte	0x1d
	.4byte	.LASF42
	.byte	0x1
	.byte	0xb5
	.byte	0x5
	.4byte	0x62
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0xa87
	.byte	0x1e
	.string	"p"
	.byte	0x1
	.byte	0xb5
	.byte	0x2b
	.4byte	0x3d0
	.4byte	.LLST21
	.byte	0x1e
	.string	"end"
	.byte	0x1
	.byte	0xb6
	.byte	0x30
	.4byte	0x3d6
	.4byte	.LLST22
	.byte	0x1e
	.string	"val"
	.byte	0x1
	.byte	0xb7
	.byte	0x20
	.4byte	0xa14
	.4byte	.LLST23
	.byte	0x26
	.4byte	.LVL40
	.4byte	0xa87
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x32
	.byte	0x12
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0
	.byte	0x27
	.4byte	.LASF44
	.byte	0x1
	.byte	0x89
	.byte	0xc
	.4byte	0x62
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0xb23
	.byte	0x1e
	.string	"p"
	.byte	0x1
	.byte	0x89
	.byte	0x31
	.4byte	0x3d0
	.4byte	.LLST12
	.byte	0x1e
	.string	"end"
	.byte	0x1
	.byte	0x8a
	.byte	0x36
	.4byte	0x3d6
	.4byte	.LLST13
	.byte	0x1e
	.string	"tag"
	.byte	0x1
	.byte	0x8b
	.byte	0x25
	.4byte	0x62
	.4byte	.LLST14
	.byte	0x1e
	.string	"val"
	.byte	0x1
	.byte	0x8b
	.byte	0x2f
	.4byte	0xa14
	.4byte	.LLST15
	.byte	0x24
	.string	"ret"
	.byte	0x1
	.byte	0x8d
	.byte	0x9
	.4byte	0x62
	.4byte	.LLST16
	.byte	0x25
	.string	"len"
	.byte	0x1
	.byte	0x8e
	.byte	0xc
	.4byte	0x70
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x11
	.4byte	.LVL25
	.4byte	0xbad
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x12
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LASF45
	.byte	0x1
	.byte	0x76
	.byte	0x5
	.4byte	0x62
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0xbad
	.byte	0x1e
	.string	"p"
	.byte	0x1
	.byte	0x76
	.byte	0x2c
	.4byte	0x3d0
	.4byte	.LLST17
	.byte	0x1e
	.string	"end"
	.byte	0x1
	.byte	0x77
	.byte	0x29
	.4byte	0x3d6
	.4byte	.LLST18
	.byte	0x1e
	.string	"val"
	.byte	0x1
	.byte	0x78
	.byte	0x19
	.4byte	0xa14
	.4byte	.LLST19
	.byte	0x24
	.string	"ret"
	.byte	0x1
	.byte	0x7a
	.byte	0x9
	.4byte	0x62
	.4byte	.LLST20
	.byte	0x25
	.string	"len"
	.byte	0x1
	.byte	0x7b
	.byte	0xc
	.4byte	0x70
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x11
	.4byte	.LVL32
	.4byte	0xbad
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x12
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LASF46
	.byte	0x1
	.byte	0x67
	.byte	0x5
	.4byte	0x62
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0xc25
	.byte	0x1e
	.string	"p"
	.byte	0x1
	.byte	0x67
	.byte	0x2b
	.4byte	0x3d0
	.4byte	.LLST8
	.byte	0x1e
	.string	"end"
	.byte	0x1
	.byte	0x68
	.byte	0x28
	.4byte	0x3d6
	.4byte	.LLST9
	.byte	0x1e
	.string	"len"
	.byte	0x1
	.byte	0x69
	.byte	0x1b
	.4byte	0x734
	.4byte	.LLST10
	.byte	0x1e
	.string	"tag"
	.byte	0x1
	.byte	0x69
	.byte	0x24
	.4byte	0x62
	.4byte	.LLST11
	.byte	0x26
	.4byte	.LVL18
	.4byte	0xc25
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LASF47
	.byte	0x1
	.byte	0x2d
	.byte	0x5
	.4byte	0x62
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0xc6c
	.byte	0x1e
	.string	"p"
	.byte	0x1
	.byte	0x2d
	.byte	0x2b
	.4byte	0x3d0
	.4byte	.LLST6
	.byte	0x1e
	.string	"end"
	.byte	0x1
	.byte	0x2e
	.byte	0x28
	.4byte	0x3d6
	.4byte	.LLST7
	.byte	0x28
	.string	"len"
	.byte	0x1
	.byte	0x2f
	.byte	0x1b
	.4byte	0x734
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0x29
	.4byte	0x306
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x1
	.byte	0x9c
	.4byte	0xccd
	.byte	0x2a
	.4byte	0x314
	.4byte	.LLST64
	.byte	0x2b
	.4byte	0x306
	.4byte	.LBB7
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.2byte	0x1b9
	.byte	0x6
	.byte	0x2a
	.4byte	0x314
	.4byte	.LLST65
	.byte	0x2c
	.4byte	.LVL131
	.4byte	0xcd9
	.byte	0x2c
	.4byte	.LVL132
	.4byte	0xcd9
	.byte	0x26
	.4byte	.LVL134
	.4byte	0xcf1
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2d
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0x6
	.byte	0x1e
	.byte	0x5
	.byte	0x2d
	.4byte	.LASF49
	.4byte	.LASF49
	.byte	0x7
	.byte	0x92
	.byte	0xd
	.byte	0x2d
	.4byte	.LASF50
	.4byte	.LASF50
	.byte	0x6
	.byte	0x21
	.byte	0x8
	.byte	0x2d
	.4byte	.LASF51
	.4byte	.LASF51
	.byte	0x8
	.byte	0xf6
	.byte	0x6
	.byte	0x2d
	.4byte	.LASF52
	.4byte	.LASF52
	.byte	0x7
	.byte	0x91
	.byte	0xe
	.byte	0x2e
	.4byte	.LASF53
	.4byte	.LASF53
	.byte	0x4
	.2byte	0x1f5
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
	.byte	0x9
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
	.byte	0xc
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
	.byte	0xd
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
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
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
	.byte	0x15
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
	.byte	0
	.byte	0
	.byte	0x18
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
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x1c
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x1d
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
	.byte	0x1e
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
	.byte	0x1f
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x22
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x23
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0x26
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
	.byte	0x27
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
	.byte	0x28
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
	.byte	0x29
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
	.byte	0x2a
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2b
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
	.byte	0x2c
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2d
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
	.byte	0x2e
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
.LLST68:
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL143
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL146
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL143
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL148
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL143
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL147
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL135
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL136
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL139
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL137
	.4byte	.LVL140-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL140-1
	.4byte	.LFE21
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL118
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL121
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL125
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL119
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL126
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL118
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL120
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL127
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL118
	.4byte	.LVL123
	.2byte	0x3
	.byte	0x9
	.byte	0x92
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL99
	.4byte	.LVL102-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL102-1
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL111
	.4byte	.LVL114
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL99
	.4byte	.LVL102-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL102-1
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL105
	.4byte	.LVL107
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL114
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL101
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL100
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL112
	.4byte	.LVL114
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL99
	.4byte	.LVL103
	.2byte	0x3
	.byte	0x9
	.byte	0x92
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL104
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL114
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL117
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL91
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL97
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL90
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL92
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL98
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL90
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL93
	.4byte	.LVL94-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL94-1
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL90
	.4byte	.LVL94-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL94-1
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL96
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL7
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL8
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL4-1
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL10
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL4-1
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL9
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL7
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL1
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL85
	.4byte	.LVL87-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL87-1
	.4byte	.LVL88
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL89
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL86
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL89
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL79
	.4byte	.LVL80-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL80-1
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL82
	.4byte	.LVL84
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL79
	.4byte	.LVL80-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL80-1
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL79
	.4byte	.LVL80-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL80-1
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x3
	.byte	0x9
	.byte	0x92
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL84
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL61
	.4byte	.LVL64-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL64-1
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL71
	.4byte	.LVL76
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL61
	.4byte	.LVL64-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL64-1
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL72
	.4byte	.LVL76
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL62
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL63
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL61
	.4byte	.LVL64-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL64-1
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL61
	.4byte	.LVL64-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL64-1
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL61
	.4byte	.LVL64-1
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL64-1
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL73
	.4byte	.LVL76
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x60
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL61
	.4byte	.LVL64-1
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL64-1
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL74
	.4byte	.LVL76
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x61
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL66
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL69
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL78
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL67
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL76
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL51
	.4byte	.LVL52-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL52-1
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL51
	.4byte	.LVL52-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL52-1
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL51
	.4byte	.LVL52-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL52-1
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL54
	.4byte	.LVL57
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x3
	.byte	0x9
	.byte	0x92
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL44
	.4byte	.LVL46-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL46-1
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL49
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL44
	.4byte	.LVL46-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL46-1
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL45
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL50
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x3
	.byte	0x9
	.byte	0x92
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL48
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL41
	.4byte	.LVL43-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL43-1
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL41
	.4byte	.LVL43-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL43-1
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL42
	.4byte	.LVL43-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL43-1
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL38
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL40-1
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL38
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL40-1
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL39
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL40-1
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL22
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25-1
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL22
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL25-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL25-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL23
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x3
	.byte	0x9
	.byte	0x92
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL30
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32-1
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL30
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL32-1
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL31
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x3
	.byte	0x9
	.byte	0x92
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL17
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
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL17
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
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL17
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL18-1
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
.LLST11:
	.4byte	.LVL17
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL18-1
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
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
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL128
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL130
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL133
	.4byte	.LVL134-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL134-1
	.4byte	.LVL134
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL134
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL129
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL130
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL133
	.4byte	.LVL134-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL134-1
	.4byte	.LVL134
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xa4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
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
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	0
	.4byte	0
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB7
	.4byte	.LFE7
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF24:
	.string	"mbedtls_asn1_find_named_data"
.LASF2:
	.string	"short int"
.LASF9:
	.string	"size_t"
.LASF29:
	.string	"cb_ctx"
.LASF41:
	.string	"mbedtls_asn1_get_enum"
.LASF23:
	.string	"head"
.LASF19:
	.string	"mbedtls_asn1_named_data"
.LASF0:
	.string	"signed char"
.LASF49:
	.string	"mbedtls_free"
.LASF42:
	.string	"mbedtls_asn1_get_int"
.LASF48:
	.string	"memcmp"
.LASF13:
	.string	"mbedtls_mpi"
.LASF6:
	.string	"long long int"
.LASF21:
	.string	"asn1_get_sequence_of_cb_ctx_t"
.LASF53:
	.string	"mbedtls_mpi_read_binary"
.LASF50:
	.string	"memset"
.LASF25:
	.string	"mbedtls_asn1_get_alg_null"
.LASF4:
	.string	"long int"
.LASF28:
	.string	"mbedtls_asn1_get_sequence_of"
.LASF56:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/build_out/mbedtls_lts"
.LASF26:
	.string	"params"
.LASF55:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/security/mbedtls_lts/mbedtls/library/asn1parse.c"
.LASF1:
	.string	"unsigned char"
.LASF51:
	.string	"mbedtls_platform_zeroize"
.LASF39:
	.string	"mbedtls_asn1_get_bitstring"
.LASF34:
	.string	"mbedtls_asn1_traverse_sequence_of"
.LASF40:
	.string	"mbedtls_asn1_get_mpi"
.LASF7:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint32_t"
.LASF46:
	.string	"mbedtls_asn1_get_tag"
.LASF8:
	.string	"unsigned int"
.LASF52:
	.string	"mbedtls_calloc"
.LASF47:
	.string	"mbedtls_asn1_get_len"
.LASF32:
	.string	"mbedtls_asn1_sequence_free"
.LASF14:
	.string	"mbedtls_asn1_buf"
.LASF30:
	.string	"start"
.LASF3:
	.string	"short unsigned int"
.LASF11:
	.string	"char"
.LASF22:
	.string	"list"
.LASF27:
	.string	"mbedtls_asn1_get_alg"
.LASF45:
	.string	"mbedtls_asn1_get_bool"
.LASF33:
	.string	"mbedtls_asn1_get_bitstring_null"
.LASF5:
	.string	"long unsigned int"
.LASF36:
	.string	"tag_must_val"
.LASF35:
	.string	"tag_must_mask"
.LASF15:
	.string	"mbedtls_asn1_bitstring"
.LASF31:
	.string	"mbedtls_asn1_free_named_data_list"
.LASF12:
	.string	"mbedtls_mpi_uint"
.LASF57:
	.string	"mbedtls_asn1_free_named_data"
.LASF43:
	.string	"asn1_get_sequence_of_cb"
.LASF16:
	.string	"unused_bits"
.LASF37:
	.string	"tag_may_mask"
.LASF17:
	.string	"mbedtls_asn1_sequence"
.LASF38:
	.string	"tag_may_val"
.LASF20:
	.string	"next_merged"
.LASF18:
	.string	"next"
.LASF44:
	.string	"asn1_get_tagged_int"
.LASF54:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
