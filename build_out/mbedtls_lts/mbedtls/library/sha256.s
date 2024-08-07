	.file	"sha256.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.mbedtls_sha256_init,"ax",@progbits
	.align	1
	.globl	mbedtls_sha256_init
	.type	mbedtls_sha256_init, @function
mbedtls_sha256_init:
.LFB2:
	.file 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/security/mbedtls_lts/mbedtls/library/sha256.c"
	.loc 1 54 1
	.cfi_startproc
.LVL0:
	.loc 1 55 5
	.loc 1 55 10
	.loc 1 55 17
	.loc 1 57 5
	li	a2,108
	li	a1,0
	tail	memset
.LVL1:
	.cfi_endproc
.LFE2:
	.size	mbedtls_sha256_init, .-mbedtls_sha256_init
	.section	.text.mbedtls_sha256_free,"ax",@progbits
	.align	1
	.globl	mbedtls_sha256_free
	.type	mbedtls_sha256_free, @function
mbedtls_sha256_free:
.LFB3:
	.loc 1 61 1
	.cfi_startproc
.LVL2:
	.loc 1 62 5
	.loc 1 62 7 is_stmt 0
	beq	a0,zero,.L2
	.loc 1 65 5 is_stmt 1
	li	a1,108
	tail	mbedtls_platform_zeroize
.LVL3:
.L2:
	.loc 1 66 1 is_stmt 0
	ret
	.cfi_endproc
.LFE3:
	.size	mbedtls_sha256_free, .-mbedtls_sha256_free
	.section	.text.mbedtls_sha256_clone,"ax",@progbits
	.align	1
	.globl	mbedtls_sha256_clone
	.type	mbedtls_sha256_clone, @function
mbedtls_sha256_clone:
.LFB4:
	.loc 1 70 1 is_stmt 1
	.cfi_startproc
.LVL4:
	.loc 1 71 5
	.loc 1 71 10
	.loc 1 71 17
	.loc 1 72 5
	.loc 1 72 10
	.loc 1 72 17
	.loc 1 74 5
	.loc 1 70 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 74 10
	li	a2,108
	.loc 1 70 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 74 10
	call	memcpy
.LVL5:
	.loc 1 75 1
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	mbedtls_sha256_clone, .-mbedtls_sha256_clone
	.section	.text.mbedtls_sha256_starts_ret,"ax",@progbits
	.align	1
	.globl	mbedtls_sha256_starts_ret
	.type	mbedtls_sha256_starts_ret, @function
mbedtls_sha256_starts_ret:
.LFB5:
	.loc 1 81 1 is_stmt 1
	.cfi_startproc
.LVL6:
	.loc 1 82 5
	.loc 1 82 10
	.loc 1 82 17
	.loc 1 83 5
	.loc 1 83 10
	.loc 1 83 17
	.loc 1 85 5
	.loc 1 85 19 is_stmt 0
	sw	zero,0(a0)
	.loc 1 86 5 is_stmt 1
	.loc 1 86 19 is_stmt 0
	sw	zero,4(a0)
	.loc 1 88 5 is_stmt 1
	.loc 1 88 7 is_stmt 0
	bne	a1,zero,.L7
	.loc 1 91 9 is_stmt 1
	.loc 1 91 23 is_stmt 0
	li	a5,1779032064
	addi	a5,a5,1639
	sw	a5,8(a0)
	.loc 1 92 9 is_stmt 1
	.loc 1 92 23 is_stmt 0
	li	a5,-1150832640
	addi	a5,a5,-379
	sw	a5,12(a0)
	.loc 1 93 9 is_stmt 1
	.loc 1 93 23 is_stmt 0
	li	a5,1013903360
	addi	a5,a5,882
	sw	a5,16(a0)
	.loc 1 94 9 is_stmt 1
	.loc 1 94 23 is_stmt 0
	li	a5,-1521487872
	addi	a5,a5,1338
	sw	a5,20(a0)
	.loc 1 95 9 is_stmt 1
	.loc 1 95 23 is_stmt 0
	li	a5,1359892480
	addi	a5,a5,639
	sw	a5,24(a0)
	.loc 1 96 9 is_stmt 1
	.loc 1 96 23 is_stmt 0
	li	a5,-1694142464
	addi	a5,a5,-1908
	sw	a5,28(a0)
	.loc 1 97 9 is_stmt 1
	.loc 1 97 23 is_stmt 0
	li	a5,528736256
	addi	a5,a5,-1621
	sw	a5,32(a0)
	.loc 1 98 9 is_stmt 1
	.loc 1 98 23 is_stmt 0
	li	a5,1541459968
	addi	a5,a5,-743
.L9:
	.loc 1 110 23
	sw	a5,36(a0)
	.loc 1 113 5 is_stmt 1
	.loc 1 113 16 is_stmt 0
	sw	a1,104(a0)
	.loc 1 115 5 is_stmt 1
	.loc 1 116 1 is_stmt 0
	li	a0,0
.LVL7:
	ret
.LVL8:
.L7:
	.loc 1 103 9 is_stmt 1
	.loc 1 103 23 is_stmt 0
	li	a5,-1056595968
	addi	a5,a5,-296
	sw	a5,8(a0)
	.loc 1 104 9 is_stmt 1
	.loc 1 104 23 is_stmt 0
	li	a5,914149376
	addi	a5,a5,1287
	sw	a5,12(a0)
	.loc 1 105 9 is_stmt 1
	.loc 1 105 23 is_stmt 0
	li	a5,812703744
	addi	a5,a5,-745
	sw	a5,16(a0)
	.loc 1 106 9 is_stmt 1
	.loc 1 106 23 is_stmt 0
	li	a5,-150052864
	addi	a5,a5,-1735
	sw	a5,20(a0)
	.loc 1 107 9 is_stmt 1
	.loc 1 107 23 is_stmt 0
	li	a5,-4190208
	addi	a5,a5,-1231
	sw	a5,24(a0)
	.loc 1 108 9 is_stmt 1
	.loc 1 108 23 is_stmt 0
	li	a5,1750601728
	addi	a5,a5,1297
	sw	a5,28(a0)
	.loc 1 109 9 is_stmt 1
	.loc 1 109 23 is_stmt 0
	li	a5,1694076928
	addi	a5,a5,-89
	sw	a5,32(a0)
	.loc 1 110 9 is_stmt 1
	.loc 1 110 23 is_stmt 0
	li	a5,-1090891776
	addi	a5,a5,-92
	j	.L9
	.cfi_endproc
.LFE5:
	.size	mbedtls_sha256_starts_ret, .-mbedtls_sha256_starts_ret
	.section	.text.mbedtls_sha256_starts,"ax",@progbits
	.align	1
	.globl	mbedtls_sha256_starts
	.type	mbedtls_sha256_starts, @function
mbedtls_sha256_starts:
.LFB6:
	.loc 1 121 1 is_stmt 1
	.cfi_startproc
.LVL9:
	.loc 1 122 5
	tail	mbedtls_sha256_starts_ret
.LVL10:
	.cfi_endproc
.LFE6:
	.size	mbedtls_sha256_starts, .-mbedtls_sha256_starts
	.section	.text.mbedtls_internal_sha256_process,"ax",@progbits
	.align	1
	.globl	mbedtls_internal_sha256_process
	.type	mbedtls_internal_sha256_process, @function
mbedtls_internal_sha256_process:
.LFB7:
	.loc 1 175 1
	.cfi_startproc
.LVL11:
	.loc 1 176 5
	.loc 1 182 5
	.loc 1 184 5
	.loc 1 184 10
	.loc 1 184 17
	.loc 1 185 5
	.loc 1 185 10
	.loc 1 185 17
	.loc 1 187 5
	.loc 1 187 17
	.loc 1 175 1 is_stmt 0
	addi	sp,sp,-352
	.cfi_def_cfa_offset 352
	sw	s0,344(sp)
	sw	s3,332(sp)
	.cfi_offset 8, -8
	.cfi_offset 19, -20
	addi	s0,sp,8
	addi	s3,a0,8
	sw	s2,336(sp)
	sw	ra,348(sp)
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	addi	s2,a0,40
	sw	s1,340(sp)
	sw	s4,328(sp)
	sw	s5,324(sp)
	sw	s6,320(sp)
	sw	s7,316(sp)
	sw	s8,312(sp)
	.cfi_offset 9, -12
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.loc 1 175 1
	mv	a4,s0
	mv	a5,s3
	mv	a0,s0
.LVL12:
.L12:
	.loc 1 188 9 is_stmt 1 discriminator 3
	.loc 1 188 20 is_stmt 0 discriminator 3
	lw	a3,0(a5)
	.loc 1 187 5 discriminator 3
	addi	a5,a5,4
	addi	a4,a4,4
	.loc 1 188 20 discriminator 3
	sw	a3,260(a4)
	.loc 1 187 24 is_stmt 1 discriminator 3
	.loc 1 187 17 discriminator 3
	.loc 1 187 5 is_stmt 0 discriminator 3
	bne	s2,a5,.L12
	addi	a2,a1,64
	.loc 1 187 5
	mv	a4,s0
.LVL13:
.L13:
	.loc 1 209 9 is_stmt 1 discriminator 3
	.loc 1 209 26 is_stmt 0 discriminator 3
	lbu	a5,0(a1)
	.loc 1 209 70 discriminator 3
	lbu	a3,1(a1)
	.loc 1 208 5 discriminator 3
	addi	a1,a1,4
	.loc 1 209 58 discriminator 3
	slli	a5,a5,24
	.loc 1 209 105 discriminator 3
	slli	a3,a3,16
	.loc 1 209 159 discriminator 3
	or	a5,a5,a3
	.loc 1 209 163 discriminator 3
	lbu	a3,-1(a1)
	.loc 1 208 5 discriminator 3
	addi	a4,a4,4
	.loc 1 209 159 discriminator 3
	or	a5,a5,a3
	.loc 1 209 117 discriminator 3
	lbu	a3,-2(a1)
	.loc 1 209 152 discriminator 3
	slli	a3,a3,8
	.loc 1 209 159 discriminator 3
	or	a5,a5,a3
	.loc 1 209 20 discriminator 3
	sw	a5,4(a4)
	.loc 1 208 25 is_stmt 1 discriminator 3
	.loc 1 208 17 discriminator 3
	.loc 1 208 5 is_stmt 0 discriminator 3
	bne	a2,a1,.L13
	lw	a1,300(sp)
	lw	a6,288(sp)
	lw	a7,296(sp)
	lw	a2,292(sp)
.LVL14:
	lw	t1,272(sp)
	lw	a3,276(sp)
	lw	a4,280(sp)
	lw	a5,284(sp)
	lui	t4,%hi(.LANCHOR0)
	addi	s1,t4,%lo(.LANCHOR0)
	addi	t6,s0,64
	.loc 1 208 5
	mv	t5,s0
	addi	t4,t4,%lo(.LANCHOR0)
.L14:
	.loc 1 213 9 is_stmt 1 discriminator 3
	.loc 1 213 14 discriminator 3
	.loc 1 213 82 is_stmt 0 discriminator 3
	slli	t0,a6,26
	srli	t3,a6,6
	.loc 1 213 155 discriminator 3
	slli	t2,a6,21
	.loc 1 213 82 discriminator 3
	or	t3,t3,t0
	.loc 1 213 155 discriminator 3
	srli	t0,a6,11
	or	t0,t0,t2
	.loc 1 213 114 discriminator 3
	xor	t3,t3,t0
	.loc 1 213 229 discriminator 3
	srli	t2,a6,25
	slli	t0,a6,7
	or	t0,t0,t2
	.loc 1 213 188 discriminator 3
	xor	t3,t3,t0
	.loc 1 213 348 discriminator 3
	lw	t2,8(t5)
	lw	t0,0(t4)
	.loc 1 211 5 discriminator 3
	addi	t5,t5,32
	addi	t4,t4,32
	.loc 1 213 348 discriminator 3
	add	t0,t0,t2
	add	t3,t3,t0
	.loc 1 213 317 discriminator 3
	xor	t0,a7,a2
	.loc 1 213 299 discriminator 3
	and	t0,t0,a6
	.loc 1 213 281 discriminator 3
	xor	t0,t0,a7
	.loc 1 213 348 discriminator 3
	add	t3,t3,t0
	add	a1,t3,a1
	.loc 1 213 366 is_stmt 1 discriminator 3
	.loc 1 213 694 discriminator 3
	.loc 1 213 419 is_stmt 0 discriminator 3
	slli	t0,t1,30
	srli	t3,t1,2
	.loc 1 213 492 discriminator 3
	slli	t2,t1,19
	.loc 1 213 419 discriminator 3
	or	t3,t3,t0
	.loc 1 213 492 discriminator 3
	srli	t0,t1,13
	or	t0,t0,t2
	.loc 1 213 451 discriminator 3
	xor	t3,t3,t0
	.loc 1 213 566 discriminator 3
	srli	t2,t1,22
	slli	t0,t1,10
	or	t0,t0,t2
	.loc 1 213 525 discriminator 3
	xor	t3,t3,t0
	.loc 1 213 673 discriminator 3
	or	t0,t1,a3
	.loc 1 213 619 discriminator 3
	and	t2,t1,a3
	.loc 1 213 655 discriminator 3
	and	t0,t0,a4
	.loc 1 213 637 discriminator 3
	or	t0,t0,t2
	.loc 1 213 600 discriminator 3
	add	t3,t3,t0
	.loc 1 213 707 discriminator 3
	add	a5,a1,a5
	.loc 1 213 723 is_stmt 1 discriminator 3
	.loc 1 215 348 is_stmt 0 discriminator 3
	lw	t0,-20(t5)
	.loc 1 213 750 discriminator 3
	add	a1,t3,a1
	.loc 1 213 772 is_stmt 1 discriminator 3
	.loc 1 215 9 discriminator 3
	.loc 1 215 14 discriminator 3
	.loc 1 215 348 is_stmt 0 discriminator 3
	lw	t3,-28(t4)
	.loc 1 215 155 discriminator 3
	slli	t2,a5,21
	.loc 1 215 348 discriminator 3
	add	t3,t3,t0
	add	a7,t3,a7
	.loc 1 215 317 discriminator 3
	xor	t3,a6,a2
	.loc 1 215 299 discriminator 3
	and	t3,t3,a5
	.loc 1 215 281 discriminator 3
	xor	t3,t3,a2
	.loc 1 215 348 discriminator 3
	add	a7,a7,t3
	.loc 1 215 82 discriminator 3
	srli	t0,a5,6
	slli	t3,a5,26
	or	t0,t0,t3
	.loc 1 215 155 discriminator 3
	srli	t3,a5,11
	or	t3,t3,t2
	.loc 1 215 114 discriminator 3
	xor	t0,t0,t3
	.loc 1 215 229 discriminator 3
	srli	t2,a5,25
	slli	t3,a5,7
	or	t3,t3,t2
	.loc 1 215 188 discriminator 3
	xor	t3,t0,t3
	.loc 1 215 348 discriminator 3
	add	t3,a7,t3
	.loc 1 215 366 is_stmt 1 discriminator 3
	.loc 1 215 694 discriminator 3
	.loc 1 215 419 is_stmt 0 discriminator 3
	slli	t0,a1,30
	srli	a7,a1,2
	.loc 1 215 492 discriminator 3
	slli	t2,a1,19
	.loc 1 215 419 discriminator 3
	or	a7,a7,t0
	.loc 1 215 492 discriminator 3
	srli	t0,a1,13
	or	t0,t0,t2
	.loc 1 215 451 discriminator 3
	xor	a7,a7,t0
	.loc 1 215 566 discriminator 3
	srli	t2,a1,22
	slli	t0,a1,10
	or	t0,t0,t2
	.loc 1 215 525 discriminator 3
	xor	a7,a7,t0
	.loc 1 215 673 discriminator 3
	or	t0,a1,t1
	.loc 1 215 619 discriminator 3
	and	t2,a1,t1
	.loc 1 215 655 discriminator 3
	and	t0,t0,a3
	.loc 1 215 637 discriminator 3
	or	t0,t0,t2
	.loc 1 215 600 discriminator 3
	add	a7,a7,t0
	.loc 1 215 750 discriminator 3
	add	a7,a7,t3
	.loc 1 215 707 discriminator 3
	add	a4,t3,a4
	.loc 1 215 723 is_stmt 1 discriminator 3
	.loc 1 215 772 discriminator 3
	.loc 1 217 9 discriminator 3
	.loc 1 217 14 discriminator 3
	.loc 1 217 348 is_stmt 0 discriminator 3
	lw	t0,-16(t5)
	lw	t3,-24(t4)
	.loc 1 217 155 discriminator 3
	slli	t2,a4,21
	.loc 1 217 348 discriminator 3
	add	t3,t3,t0
	add	a2,t3,a2
	.loc 1 217 317 discriminator 3
	xor	t3,a5,a6
	.loc 1 217 299 discriminator 3
	and	t3,t3,a4
	.loc 1 217 281 discriminator 3
	xor	t3,t3,a6
	.loc 1 217 348 discriminator 3
	add	a2,a2,t3
	.loc 1 217 82 discriminator 3
	srli	t0,a4,6
	slli	t3,a4,26
	or	t0,t0,t3
	.loc 1 217 155 discriminator 3
	srli	t3,a4,11
	or	t3,t3,t2
	.loc 1 217 114 discriminator 3
	xor	t0,t0,t3
	.loc 1 217 229 discriminator 3
	srli	t2,a4,25
	slli	t3,a4,7
	or	t3,t3,t2
	.loc 1 217 188 discriminator 3
	xor	t3,t0,t3
	.loc 1 217 348 discriminator 3
	add	t3,a2,t3
	.loc 1 217 366 is_stmt 1 discriminator 3
	.loc 1 217 694 discriminator 3
	.loc 1 217 419 is_stmt 0 discriminator 3
	slli	t0,a7,30
	srli	a2,a7,2
	.loc 1 217 492 discriminator 3
	slli	t2,a7,19
	.loc 1 217 419 discriminator 3
	or	a2,a2,t0
	.loc 1 217 492 discriminator 3
	srli	t0,a7,13
	or	t0,t0,t2
	.loc 1 217 451 discriminator 3
	xor	a2,a2,t0
	.loc 1 217 566 discriminator 3
	srli	t2,a7,22
	slli	t0,a7,10
	or	t0,t0,t2
	.loc 1 217 525 discriminator 3
	xor	a2,a2,t0
	.loc 1 217 673 discriminator 3
	or	t0,a1,a7
	.loc 1 217 619 discriminator 3
	and	t2,a1,a7
	.loc 1 217 655 discriminator 3
	and	t0,t0,t1
	.loc 1 217 637 discriminator 3
	or	t0,t0,t2
	.loc 1 217 600 discriminator 3
	add	a2,a2,t0
	.loc 1 217 750 discriminator 3
	add	a2,a2,t3
	.loc 1 217 707 discriminator 3
	add	a3,t3,a3
	.loc 1 217 723 is_stmt 1 discriminator 3
	.loc 1 217 772 discriminator 3
	.loc 1 219 9 discriminator 3
	.loc 1 219 14 discriminator 3
	.loc 1 219 348 is_stmt 0 discriminator 3
	lw	t0,-12(t5)
	lw	t3,-20(t4)
	.loc 1 219 155 discriminator 3
	slli	t2,a3,21
	.loc 1 219 348 discriminator 3
	add	t3,t3,t0
	add	a6,t3,a6
	.loc 1 219 317 discriminator 3
	xor	t3,a5,a4
	.loc 1 219 299 discriminator 3
	and	t3,t3,a3
	.loc 1 219 281 discriminator 3
	xor	t3,t3,a5
	.loc 1 219 348 discriminator 3
	add	a6,a6,t3
	.loc 1 219 82 discriminator 3
	srli	t0,a3,6
	slli	t3,a3,26
	or	t0,t0,t3
	.loc 1 219 155 discriminator 3
	srli	t3,a3,11
	or	t3,t3,t2
	.loc 1 219 114 discriminator 3
	xor	t0,t0,t3
	.loc 1 219 229 discriminator 3
	srli	t2,a3,25
	slli	t3,a3,7
	or	t3,t3,t2
	.loc 1 219 188 discriminator 3
	xor	t3,t0,t3
	.loc 1 219 348 discriminator 3
	add	t3,a6,t3
	.loc 1 219 366 is_stmt 1 discriminator 3
	.loc 1 219 694 discriminator 3
	.loc 1 219 419 is_stmt 0 discriminator 3
	slli	t0,a2,30
	srli	a6,a2,2
	.loc 1 219 492 discriminator 3
	slli	t2,a2,19
	.loc 1 219 419 discriminator 3
	or	a6,a6,t0
	.loc 1 219 492 discriminator 3
	srli	t0,a2,13
	or	t0,t0,t2
	.loc 1 219 451 discriminator 3
	xor	a6,a6,t0
	.loc 1 219 566 discriminator 3
	srli	t2,a2,22
	slli	t0,a2,10
	or	t0,t0,t2
	.loc 1 219 525 discriminator 3
	xor	a6,a6,t0
	.loc 1 219 673 discriminator 3
	or	t0,a7,a2
	.loc 1 219 619 discriminator 3
	and	t2,a7,a2
	.loc 1 219 655 discriminator 3
	and	t0,t0,a1
	.loc 1 219 637 discriminator 3
	or	t0,t0,t2
	.loc 1 219 600 discriminator 3
	add	a6,a6,t0
	.loc 1 219 750 discriminator 3
	add	a6,a6,t3
	.loc 1 219 707 discriminator 3
	add	t1,t3,t1
	.loc 1 219 723 is_stmt 1 discriminator 3
	.loc 1 219 772 discriminator 3
	.loc 1 221 9 discriminator 3
	.loc 1 221 14 discriminator 3
	.loc 1 221 348 is_stmt 0 discriminator 3
	lw	t0,-8(t5)
	lw	t3,-16(t4)
	.loc 1 221 155 discriminator 3
	slli	t2,t1,21
	.loc 1 221 348 discriminator 3
	add	t3,t3,t0
	add	a5,t3,a5
	.loc 1 221 317 discriminator 3
	xor	t3,a4,a3
	.loc 1 221 299 discriminator 3
	and	t3,t3,t1
	.loc 1 221 281 discriminator 3
	xor	t3,t3,a4
	.loc 1 221 348 discriminator 3
	add	a5,a5,t3
	.loc 1 221 82 discriminator 3
	srli	t0,t1,6
	slli	t3,t1,26
	or	t0,t0,t3
	.loc 1 221 155 discriminator 3
	srli	t3,t1,11
	or	t3,t3,t2
	.loc 1 221 114 discriminator 3
	xor	t0,t0,t3
	.loc 1 221 229 discriminator 3
	srli	t2,t1,25
	slli	t3,t1,7
	or	t3,t3,t2
	.loc 1 221 188 discriminator 3
	xor	t3,t0,t3
	.loc 1 221 348 discriminator 3
	add	t3,a5,t3
	.loc 1 221 366 is_stmt 1 discriminator 3
	.loc 1 221 694 discriminator 3
	.loc 1 221 419 is_stmt 0 discriminator 3
	slli	t0,a6,30
	srli	a5,a6,2
	.loc 1 221 492 discriminator 3
	slli	t2,a6,19
	.loc 1 221 419 discriminator 3
	or	a5,a5,t0
	.loc 1 221 492 discriminator 3
	srli	t0,a6,13
	or	t0,t0,t2
	.loc 1 221 451 discriminator 3
	xor	a5,a5,t0
	.loc 1 221 566 discriminator 3
	srli	t2,a6,22
	slli	t0,a6,10
	or	t0,t0,t2
	.loc 1 221 525 discriminator 3
	xor	a5,a5,t0
	.loc 1 221 673 discriminator 3
	or	t0,a2,a6
	.loc 1 221 619 discriminator 3
	and	t2,a2,a6
	.loc 1 221 655 discriminator 3
	and	t0,t0,a7
	.loc 1 221 637 discriminator 3
	or	t0,t0,t2
	.loc 1 221 600 discriminator 3
	add	a5,a5,t0
	.loc 1 221 750 discriminator 3
	add	a5,a5,t3
	.loc 1 221 707 discriminator 3
	add	a1,a1,t3
	.loc 1 221 723 is_stmt 1 discriminator 3
	.loc 1 221 772 discriminator 3
	.loc 1 223 9 discriminator 3
	.loc 1 223 14 discriminator 3
	.loc 1 223 348 is_stmt 0 discriminator 3
	lw	t0,-4(t5)
	lw	t3,-12(t4)
	.loc 1 223 155 discriminator 3
	slli	t2,a1,21
	.loc 1 223 348 discriminator 3
	add	t3,t3,t0
	add	a4,t3,a4
	.loc 1 223 317 discriminator 3
	xor	t3,a3,t1
	.loc 1 223 299 discriminator 3
	and	t3,t3,a1
	.loc 1 223 281 discriminator 3
	xor	t3,t3,a3
	.loc 1 223 348 discriminator 3
	add	a4,a4,t3
	.loc 1 223 82 discriminator 3
	srli	t0,a1,6
	slli	t3,a1,26
	or	t0,t0,t3
	.loc 1 223 155 discriminator 3
	srli	t3,a1,11
	or	t3,t3,t2
	.loc 1 223 114 discriminator 3
	xor	t0,t0,t3
	.loc 1 223 229 discriminator 3
	srli	t2,a1,25
	slli	t3,a1,7
	or	t3,t3,t2
	.loc 1 223 188 discriminator 3
	xor	t3,t0,t3
	.loc 1 223 348 discriminator 3
	add	t3,a4,t3
	.loc 1 223 366 is_stmt 1 discriminator 3
	.loc 1 223 694 discriminator 3
	.loc 1 223 419 is_stmt 0 discriminator 3
	slli	t0,a5,30
	srli	a4,a5,2
	or	a4,a4,t0
	.loc 1 223 492 discriminator 3
	slli	t2,a5,19
	srli	t0,a5,13
	or	t0,t0,t2
	.loc 1 223 451 discriminator 3
	xor	a4,a4,t0
	.loc 1 223 566 discriminator 3
	srli	t2,a5,22
	slli	t0,a5,10
	or	t0,t0,t2
	.loc 1 223 525 discriminator 3
	xor	a4,a4,t0
	.loc 1 223 673 discriminator 3
	or	t0,a6,a5
	.loc 1 223 619 discriminator 3
	and	t2,a6,a5
	.loc 1 223 655 discriminator 3
	and	t0,t0,a2
	.loc 1 223 637 discriminator 3
	or	t0,t0,t2
	.loc 1 223 600 discriminator 3
	add	a4,a4,t0
	.loc 1 223 750 discriminator 3
	add	a4,a4,t3
	.loc 1 223 707 discriminator 3
	add	a7,a7,t3
	.loc 1 223 723 is_stmt 1 discriminator 3
	.loc 1 223 772 discriminator 3
	.loc 1 225 9 discriminator 3
	.loc 1 225 14 discriminator 3
	.loc 1 225 348 is_stmt 0 discriminator 3
	lw	t0,0(t5)
	lw	t3,-8(t4)
	.loc 1 225 155 discriminator 3
	slli	t2,a7,21
	.loc 1 225 348 discriminator 3
	add	t3,t3,t0
	add	a3,t3,a3
	.loc 1 225 317 discriminator 3
	xor	t3,t1,a1
	.loc 1 225 299 discriminator 3
	and	t3,t3,a7
	.loc 1 225 281 discriminator 3
	xor	t3,t3,t1
	.loc 1 225 348 discriminator 3
	add	a3,a3,t3
	.loc 1 225 82 discriminator 3
	srli	t0,a7,6
	slli	t3,a7,26
	or	t0,t0,t3
	.loc 1 225 155 discriminator 3
	srli	t3,a7,11
	or	t3,t3,t2
	.loc 1 225 114 discriminator 3
	xor	t0,t0,t3
	.loc 1 225 229 discriminator 3
	srli	t2,a7,25
	slli	t3,a7,7
	or	t3,t3,t2
	.loc 1 225 188 discriminator 3
	xor	t3,t0,t3
	.loc 1 225 348 discriminator 3
	add	t3,a3,t3
	.loc 1 225 366 is_stmt 1 discriminator 3
	.loc 1 225 694 discriminator 3
	.loc 1 225 419 is_stmt 0 discriminator 3
	slli	t0,a4,30
	srli	a3,a4,2
	or	a3,a3,t0
	.loc 1 225 492 discriminator 3
	slli	t2,a4,19
	srli	t0,a4,13
	or	t0,t0,t2
	.loc 1 225 451 discriminator 3
	xor	a3,a3,t0
	.loc 1 225 566 discriminator 3
	srli	t2,a4,22
	slli	t0,a4,10
	or	t0,t0,t2
	.loc 1 225 525 discriminator 3
	xor	a3,a3,t0
	.loc 1 225 673 discriminator 3
	or	t0,a5,a4
	.loc 1 225 655 discriminator 3
	and	t0,t0,a6
	.loc 1 225 619 discriminator 3
	and	t2,a5,a4
	.loc 1 225 637 discriminator 3
	or	t0,t0,t2
	.loc 1 225 600 discriminator 3
	add	a3,a3,t0
	.loc 1 225 750 discriminator 3
	add	a3,a3,t3
	.loc 1 225 707 discriminator 3
	add	a2,a2,t3
	.loc 1 225 723 is_stmt 1 discriminator 3
	.loc 1 225 772 discriminator 3
	.loc 1 227 9 discriminator 3
	.loc 1 227 14 discriminator 3
	.loc 1 227 348 is_stmt 0 discriminator 3
	lw	t0,4(t5)
	lw	t3,-4(t4)
	.loc 1 227 155 discriminator 3
	slli	t2,a2,21
	.loc 1 227 348 discriminator 3
	add	t3,t3,t0
	add	t1,t3,t1
	.loc 1 227 317 discriminator 3
	xor	t3,a1,a7
	.loc 1 227 299 discriminator 3
	and	t3,t3,a2
	.loc 1 227 281 discriminator 3
	xor	t3,t3,a1
	.loc 1 227 348 discriminator 3
	add	t1,t1,t3
	.loc 1 227 82 discriminator 3
	srli	t0,a2,6
	slli	t3,a2,26
	or	t0,t0,t3
	.loc 1 227 155 discriminator 3
	srli	t3,a2,11
	or	t3,t3,t2
	.loc 1 227 114 discriminator 3
	xor	t0,t0,t3
	.loc 1 227 229 discriminator 3
	srli	t2,a2,25
	slli	t3,a2,7
	or	t3,t3,t2
	.loc 1 227 188 discriminator 3
	xor	t0,t0,t3
	.loc 1 227 348 discriminator 3
	add	t3,t1,t0
	.loc 1 227 366 is_stmt 1 discriminator 3
	.loc 1 227 419 is_stmt 0 discriminator 3
	slli	t1,a3,30
	srli	t0,a3,2
	or	t0,t0,t1
	.loc 1 227 492 discriminator 3
	slli	t2,a3,19
	srli	t1,a3,13
	or	t1,t1,t2
	.loc 1 227 451 discriminator 3
	xor	t0,t0,t1
	.loc 1 227 566 discriminator 3
	srli	t2,a3,22
	slli	t1,a3,10
	or	t1,t1,t2
	.loc 1 227 525 discriminator 3
	xor	t0,t0,t1
	.loc 1 227 673 discriminator 3
	or	t1,a4,a3
	.loc 1 227 655 discriminator 3
	and	t1,t1,a5
	.loc 1 227 619 discriminator 3
	and	t2,a4,a3
	.loc 1 227 637 discriminator 3
	or	t1,t1,t2
	.loc 1 227 600 discriminator 3
	add	t0,t0,t1
	.loc 1 227 694 is_stmt 1 discriminator 3
	.loc 1 227 707 is_stmt 0 discriminator 3
	add	a6,a6,t3
	.loc 1 227 723 is_stmt 1 discriminator 3
	.loc 1 227 750 is_stmt 0 discriminator 3
	add	t1,t3,t0
	.loc 1 227 772 is_stmt 1 discriminator 3
	.loc 1 211 25 discriminator 3
	.loc 1 211 17 discriminator 3
	.loc 1 211 5 is_stmt 0 discriminator 3
	bne	t6,t5,.L14
	sw	t3,8(sp)
	sw	a1,300(sp)
	sw	a6,288(sp)
	sw	a7,296(sp)
	sw	a2,292(sp)
	sw	t1,272(sp)
	sw	a3,276(sp)
	sw	a4,280(sp)
	sw	a5,284(sp)
	sw	t0,12(sp)
	addi	s4,s0,192
	.loc 1 211 5
	mv	t3,s0
.L15:
	.loc 1 233 9 is_stmt 1 discriminator 3
	.loc 1 233 14 discriminator 3
	.loc 1 233 380 is_stmt 0 discriminator 3
	lw	s5,64(t3)
	.loc 1 233 631 discriminator 3
	lw	t5,12(t3)
	.loc 1 235 380 discriminator 3
	lw	s6,68(t3)
	.loc 1 233 416 discriminator 3
	srli	t6,s5,17
	slli	t4,s5,15
	.loc 1 233 506 discriminator 3
	srli	t0,s5,19
	.loc 1 233 416 discriminator 3
	or	t4,t4,t6
	.loc 1 233 506 discriminator 3
	slli	t6,s5,13
	or	t6,t6,t0
	.loc 1 233 457 discriminator 3
	xor	t4,t4,t6
	.loc 1 233 586 discriminator 3
	srli	t6,s5,10
	.loc 1 233 849 discriminator 3
	lw	t0,8(t3)
	.loc 1 233 547 discriminator 3
	xor	t4,t4,t6
	.loc 1 233 849 discriminator 3
	lw	t6,44(t3)
	.loc 1 233 758 discriminator 3
	srli	t2,t5,18
	.loc 1 235 416 discriminator 3
	slli	ra,s6,15
	.loc 1 233 849 discriminator 3
	add	t6,t6,t0
	add	t4,t4,t6
	.loc 1 233 667 discriminator 3
	slli	t0,t5,25
	srli	t6,t5,7
	or	t6,t6,t0
	.loc 1 233 758 discriminator 3
	slli	t0,t5,14
	or	t0,t0,t2
	.loc 1 233 708 discriminator 3
	xor	t6,t6,t0
	.loc 1 233 840 discriminator 3
	srli	t0,t5,3
	.loc 1 233 800 discriminator 3
	xor	t6,t6,t0
	.loc 1 233 849 discriminator 3
	add	t4,t4,t6
	.loc 1 233 82 discriminator 3
	slli	t0,a6,26
	srli	t6,a6,6
	.loc 1 233 155 discriminator 3
	slli	t2,a6,21
	.loc 1 233 82 discriminator 3
	or	t6,t6,t0
	.loc 1 233 155 discriminator 3
	srli	t0,a6,11
	or	t0,t0,t2
	.loc 1 233 114 discriminator 3
	xor	t6,t6,t0
	.loc 1 233 229 discriminator 3
	srli	t2,a6,25
	slli	t0,a6,7
	or	t0,t0,t2
	.loc 1 233 188 discriminator 3
	xor	t6,t6,t0
	.loc 1 233 317 discriminator 3
	xor	t0,a7,a2
	.loc 1 233 299 discriminator 3
	and	t0,t0,a6
	.loc 1 233 281 discriminator 3
	xor	t0,t0,a7
	add	t6,t6,t0
	lw	t0,64(s1)
	.loc 1 233 1001 discriminator 3
	slli	t2,t1,19
	.loc 1 237 631 discriminator 3
	lw	s7,20(t3)
	add	t6,t6,t0
	add	t6,t6,t4
	.loc 1 233 348 discriminator 3
	add	a1,a1,t6
	.loc 1 233 875 is_stmt 1 discriminator 3
	.loc 1 233 1203 discriminator 3
	.loc 1 233 928 is_stmt 0 discriminator 3
	slli	t0,t1,30
	srli	t6,t1,2
	or	t6,t6,t0
	.loc 1 233 1001 discriminator 3
	srli	t0,t1,13
	or	t0,t0,t2
	.loc 1 233 960 discriminator 3
	xor	t6,t6,t0
	.loc 1 233 1075 discriminator 3
	srli	t2,t1,22
	slli	t0,t1,10
	or	t0,t0,t2
	.loc 1 233 1034 discriminator 3
	xor	t6,t6,t0
	.loc 1 233 1182 discriminator 3
	or	t0,t1,a3
	.loc 1 233 1128 discriminator 3
	and	t2,t1,a3
	.loc 1 233 1164 discriminator 3
	and	t0,t0,a4
	.loc 1 233 1146 discriminator 3
	or	t0,t0,t2
	.loc 1 233 1109 discriminator 3
	add	t6,t6,t0
	.loc 1 235 416 discriminator 3
	srli	t0,s6,17
	.loc 1 235 506 discriminator 3
	srli	t2,s6,19
	.loc 1 235 416 discriminator 3
	or	ra,ra,t0
	.loc 1 235 506 discriminator 3
	slli	t0,s6,13
	or	t0,t0,t2
	.loc 1 235 457 discriminator 3
	xor	ra,ra,t0
	.loc 1 235 586 discriminator 3
	srli	t0,s6,10
	.loc 1 235 547 discriminator 3
	xor	ra,ra,t0
	.loc 1 235 849 discriminator 3
	lw	t0,48(t3)
	.loc 1 233 1216 discriminator 3
	add	a5,a5,a1
	.loc 1 233 1232 is_stmt 1 discriminator 3
	.loc 1 233 1259 is_stmt 0 discriminator 3
	add	a1,t6,a1
	.loc 1 233 1281 is_stmt 1 discriminator 3
	.loc 1 235 9 discriminator 3
	.loc 1 235 14 discriminator 3
	.loc 1 235 631 is_stmt 0 discriminator 3
	lw	t6,16(t3)
	.loc 1 235 849 discriminator 3
	add	t5,t5,t0
	add	ra,ra,t5
	.loc 1 235 667 discriminator 3
	srli	t0,t6,7
	slli	t5,t6,25
	.loc 1 235 758 discriminator 3
	srli	t2,t6,18
	.loc 1 235 667 discriminator 3
	or	t0,t0,t5
	.loc 1 235 758 discriminator 3
	slli	t5,t6,14
	or	t5,t5,t2
	.loc 1 235 708 discriminator 3
	xor	t0,t0,t5
	.loc 1 235 840 discriminator 3
	srli	t5,t6,3
	.loc 1 235 800 discriminator 3
	xor	t0,t0,t5
	.loc 1 235 849 discriminator 3
	add	ra,ra,t0
	lw	t0,68(s1)
	.loc 1 235 317 discriminator 3
	xor	t5,a6,a2
	.loc 1 235 299 discriminator 3
	and	t5,t5,a5
	add	a7,a7,t0
	add	a7,a7,ra
	.loc 1 235 281 discriminator 3
	xor	t5,t5,a2
	.loc 1 235 82 discriminator 3
	slli	t0,a5,26
	add	t5,t5,a7
	srli	a7,a5,6
	.loc 1 235 155 discriminator 3
	slli	t2,a5,21
	.loc 1 235 82 discriminator 3
	or	a7,a7,t0
	.loc 1 235 155 discriminator 3
	srli	t0,a5,11
	or	t0,t0,t2
	.loc 1 235 114 discriminator 3
	xor	a7,a7,t0
	.loc 1 235 229 discriminator 3
	srli	t2,a5,25
	slli	t0,a5,7
	or	t0,t0,t2
	.loc 1 235 188 discriminator 3
	xor	a7,a7,t0
	.loc 1 235 348 discriminator 3
	add	t5,a7,t5
	.loc 1 235 875 is_stmt 1 discriminator 3
	.loc 1 235 1203 discriminator 3
	.loc 1 235 928 is_stmt 0 discriminator 3
	slli	t0,a1,30
	srli	a7,a1,2
	.loc 1 235 1001 discriminator 3
	slli	t2,a1,19
	.loc 1 235 928 discriminator 3
	or	a7,a7,t0
	.loc 1 235 1001 discriminator 3
	srli	t0,a1,13
	or	t0,t0,t2
	.loc 1 235 960 discriminator 3
	xor	a7,a7,t0
	.loc 1 235 1075 discriminator 3
	srli	t2,a1,22
	slli	t0,a1,10
	or	t0,t0,t2
	.loc 1 235 1034 discriminator 3
	xor	a7,a7,t0
	.loc 1 235 1182 discriminator 3
	or	t0,t1,a1
	.loc 1 235 1128 discriminator 3
	and	t2,t1,a1
	.loc 1 235 1164 discriminator 3
	and	t0,t0,a3
	.loc 1 235 1146 discriminator 3
	or	t0,t0,t2
	.loc 1 235 1109 discriminator 3
	add	a7,a7,t0
	.loc 1 235 1259 discriminator 3
	add	a7,a7,t5
	.loc 1 235 1216 discriminator 3
	add	a4,a4,t5
	.loc 1 235 1232 is_stmt 1 discriminator 3
	.loc 1 235 1281 discriminator 3
	.loc 1 237 9 discriminator 3
	.loc 1 237 14 discriminator 3
	.loc 1 237 416 is_stmt 0 discriminator 3
	slli	t2,t4,15
	srli	t5,t4,17
	.loc 1 237 506 discriminator 3
	srli	t0,t4,19
	.loc 1 237 416 discriminator 3
	or	t2,t2,t5
	.loc 1 237 506 discriminator 3
	slli	t5,t4,13
	or	t5,t5,t0
	.loc 1 237 457 discriminator 3
	xor	t2,t2,t5
	.loc 1 237 586 discriminator 3
	srli	t5,t4,10
	.loc 1 237 547 discriminator 3
	xor	t2,t2,t5
	.loc 1 237 849 discriminator 3
	lw	t5,52(t3)
	.loc 1 237 758 discriminator 3
	srli	t0,s7,18
	.loc 1 239 506 discriminator 3
	srli	s8,ra,19
	.loc 1 237 849 discriminator 3
	add	t6,t6,t5
	add	t2,t2,t6
	.loc 1 237 667 discriminator 3
	slli	t5,s7,25
	srli	t6,s7,7
	or	t6,t6,t5
	.loc 1 237 758 discriminator 3
	slli	t5,s7,14
	or	t5,t5,t0
	.loc 1 237 708 discriminator 3
	xor	t6,t6,t5
	.loc 1 237 840 discriminator 3
	srli	t5,s7,3
	.loc 1 237 800 discriminator 3
	xor	t6,t6,t5
	.loc 1 237 849 discriminator 3
	add	t2,t2,t6
	lw	t6,72(s1)
	.loc 1 237 317 discriminator 3
	xor	t5,a6,a5
	.loc 1 237 299 discriminator 3
	and	t5,t5,a4
	add	a2,a2,t6
	add	a2,a2,t2
	.loc 1 237 281 discriminator 3
	xor	t5,t5,a6
	.loc 1 237 82 discriminator 3
	slli	t6,a4,26
	add	t5,t5,a2
	srli	a2,a4,6
	.loc 1 237 155 discriminator 3
	slli	t0,a4,21
	.loc 1 237 82 discriminator 3
	or	a2,a2,t6
	.loc 1 237 155 discriminator 3
	srli	t6,a4,11
	or	t6,t6,t0
	.loc 1 237 114 discriminator 3
	xor	a2,a2,t6
	.loc 1 237 229 discriminator 3
	srli	t0,a4,25
	slli	t6,a4,7
	or	t6,t6,t0
	.loc 1 237 188 discriminator 3
	xor	a2,a2,t6
	.loc 1 237 348 discriminator 3
	add	t5,a2,t5
	.loc 1 237 875 is_stmt 1 discriminator 3
	.loc 1 237 1203 discriminator 3
	.loc 1 237 928 is_stmt 0 discriminator 3
	slli	t6,a7,30
	srli	a2,a7,2
	.loc 1 237 1001 discriminator 3
	slli	t0,a7,19
	.loc 1 237 928 discriminator 3
	or	a2,a2,t6
	.loc 1 237 1001 discriminator 3
	srli	t6,a7,13
	or	t6,t6,t0
	.loc 1 237 960 discriminator 3
	xor	a2,a2,t6
	.loc 1 237 1075 discriminator 3
	srli	t0,a7,22
	slli	t6,a7,10
	or	t6,t6,t0
	.loc 1 237 1034 discriminator 3
	xor	a2,a2,t6
	.loc 1 237 1182 discriminator 3
	or	t6,a1,a7
	.loc 1 237 1128 discriminator 3
	and	t0,a1,a7
	.loc 1 237 1164 discriminator 3
	and	t6,t6,t1
	.loc 1 237 1146 discriminator 3
	or	t6,t6,t0
	.loc 1 237 1109 discriminator 3
	add	a2,a2,t6
	.loc 1 239 416 discriminator 3
	slli	t0,ra,15
	srli	t6,ra,17
	or	t0,t0,t6
	.loc 1 239 506 discriminator 3
	slli	t6,ra,13
	or	t6,t6,s8
	.loc 1 239 457 discriminator 3
	xor	t0,t0,t6
	.loc 1 235 366 discriminator 3
	sw	ra,76(t3)
	.loc 1 239 586 discriminator 3
	srli	ra,ra,10
	.loc 1 239 547 discriminator 3
	xor	ra,t0,ra
	.loc 1 239 849 discriminator 3
	lw	t0,56(t3)
	.loc 1 237 1259 discriminator 3
	add	a2,a2,t5
	.loc 1 237 1216 discriminator 3
	add	a3,a3,t5
	.loc 1 237 1232 is_stmt 1 discriminator 3
	.loc 1 237 1281 discriminator 3
	.loc 1 239 9 discriminator 3
	.loc 1 239 14 discriminator 3
	.loc 1 239 631 is_stmt 0 discriminator 3
	lw	t5,24(t3)
	.loc 1 239 849 discriminator 3
	add	s7,s7,t0
	add	t0,ra,s7
	.loc 1 239 667 discriminator 3
	srli	t6,t5,7
	slli	ra,t5,25
	.loc 1 239 758 discriminator 3
	srli	s7,t5,18
	.loc 1 239 667 discriminator 3
	or	t6,t6,ra
	.loc 1 239 758 discriminator 3
	slli	ra,t5,14
	or	ra,ra,s7
	.loc 1 239 708 discriminator 3
	xor	t6,t6,ra
	.loc 1 239 840 discriminator 3
	srli	ra,t5,3
	.loc 1 239 800 discriminator 3
	xor	t6,t6,ra
	lw	ra,76(s1)
	.loc 1 239 849 discriminator 3
	add	t0,t0,t6
	.loc 1 239 317 discriminator 3
	xor	t6,a5,a4
	.loc 1 239 299 discriminator 3
	and	t6,t6,a3
	add	a6,a6,ra
	add	a6,a6,t0
	.loc 1 239 281 discriminator 3
	xor	t6,t6,a5
	.loc 1 239 82 discriminator 3
	slli	ra,a3,26
	add	t6,t6,a6
	srli	a6,a3,6
	.loc 1 239 155 discriminator 3
	slli	s7,a3,21
	.loc 1 239 82 discriminator 3
	or	a6,a6,ra
	.loc 1 239 155 discriminator 3
	srli	ra,a3,11
	or	ra,ra,s7
	.loc 1 239 114 discriminator 3
	xor	a6,a6,ra
	.loc 1 239 229 discriminator 3
	srli	s7,a3,25
	slli	ra,a3,7
	or	ra,ra,s7
	.loc 1 239 188 discriminator 3
	xor	a6,a6,ra
	.loc 1 239 348 discriminator 3
	add	t6,a6,t6
	.loc 1 239 875 is_stmt 1 discriminator 3
	.loc 1 239 1203 discriminator 3
	.loc 1 239 928 is_stmt 0 discriminator 3
	slli	ra,a2,30
	srli	a6,a2,2
	.loc 1 239 1001 discriminator 3
	slli	s7,a2,19
	.loc 1 239 928 discriminator 3
	or	a6,a6,ra
	.loc 1 239 1001 discriminator 3
	srli	ra,a2,13
	or	ra,ra,s7
	.loc 1 239 960 discriminator 3
	xor	a6,a6,ra
	.loc 1 239 1075 discriminator 3
	srli	s7,a2,22
	slli	ra,a2,10
	or	ra,ra,s7
	.loc 1 239 1034 discriminator 3
	xor	a6,a6,ra
	.loc 1 239 1182 discriminator 3
	or	ra,a7,a2
	.loc 1 239 1128 discriminator 3
	and	s7,a7,a2
	.loc 1 239 1164 discriminator 3
	and	ra,ra,a1
	.loc 1 239 1146 discriminator 3
	or	ra,ra,s7
	.loc 1 239 1109 discriminator 3
	add	a6,a6,ra
	.loc 1 239 1259 discriminator 3
	add	a6,a6,t6
	.loc 1 239 1216 discriminator 3
	add	t1,t1,t6
	.loc 1 239 1232 is_stmt 1 discriminator 3
	.loc 1 239 1281 discriminator 3
	.loc 1 241 9 discriminator 3
	.loc 1 241 14 discriminator 3
	.loc 1 241 416 is_stmt 0 discriminator 3
	srli	ra,t2,17
	slli	t6,t2,15
	.loc 1 241 506 discriminator 3
	srli	s8,t2,19
	.loc 1 241 416 discriminator 3
	or	t6,t6,ra
	.loc 1 241 506 discriminator 3
	slli	ra,t2,13
	or	ra,ra,s8
	.loc 1 241 457 discriminator 3
	xor	t6,t6,ra
	.loc 1 237 366 discriminator 3
	sw	t2,80(t3)
	.loc 1 241 586 discriminator 3
	srli	t2,t2,10
	.loc 1 241 547 discriminator 3
	xor	t2,t6,t2
	.loc 1 241 849 discriminator 3
	lw	t6,60(t3)
	.loc 1 241 631 discriminator 3
	lw	s7,28(t3)
	.loc 1 243 506 discriminator 3
	srli	s8,t0,19
	.loc 1 241 849 discriminator 3
	add	t5,t5,t6
	add	t6,t2,t5
	.loc 1 241 667 discriminator 3
	slli	t2,s7,25
	srli	t5,s7,7
	.loc 1 241 758 discriminator 3
	srli	ra,s7,18
	.loc 1 241 667 discriminator 3
	or	t5,t5,t2
	.loc 1 241 758 discriminator 3
	slli	t2,s7,14
	or	t2,t2,ra
	.loc 1 241 708 discriminator 3
	xor	t5,t5,t2
	.loc 1 241 840 discriminator 3
	srli	t2,s7,3
	.loc 1 241 800 discriminator 3
	xor	t5,t5,t2
	lw	t2,80(s1)
	.loc 1 241 849 discriminator 3
	add	t6,t6,t5
	.loc 1 241 317 discriminator 3
	xor	t5,a4,a3
	add	t2,t6,t2
	.loc 1 241 299 discriminator 3
	and	t5,t5,t1
	add	a5,t2,a5
	.loc 1 241 281 discriminator 3
	xor	t5,t5,a4
	.loc 1 241 82 discriminator 3
	slli	t2,t1,26
	add	t5,t5,a5
	srli	a5,t1,6
	.loc 1 241 155 discriminator 3
	slli	ra,t1,21
	.loc 1 241 82 discriminator 3
	or	a5,a5,t2
	.loc 1 241 155 discriminator 3
	srli	t2,t1,11
	or	t2,t2,ra
	.loc 1 241 114 discriminator 3
	xor	a5,a5,t2
	.loc 1 241 229 discriminator 3
	srli	ra,t1,25
	slli	t2,t1,7
	or	t2,t2,ra
	.loc 1 241 188 discriminator 3
	xor	a5,a5,t2
	.loc 1 241 348 discriminator 3
	add	t5,a5,t5
	.loc 1 241 875 is_stmt 1 discriminator 3
	.loc 1 241 1203 discriminator 3
	.loc 1 241 928 is_stmt 0 discriminator 3
	slli	t2,a6,30
	srli	a5,a6,2
	.loc 1 241 1001 discriminator 3
	slli	ra,a6,19
	.loc 1 241 928 discriminator 3
	or	a5,a5,t2
	.loc 1 241 1001 discriminator 3
	srli	t2,a6,13
	or	t2,t2,ra
	.loc 1 241 960 discriminator 3
	xor	a5,a5,t2
	.loc 1 241 1075 discriminator 3
	srli	ra,a6,22
	slli	t2,a6,10
	or	t2,t2,ra
	.loc 1 241 1034 discriminator 3
	xor	a5,a5,t2
	.loc 1 241 1182 discriminator 3
	or	t2,a2,a6
	.loc 1 241 1128 discriminator 3
	and	ra,a2,a6
	.loc 1 241 1164 discriminator 3
	and	t2,t2,a7
	.loc 1 241 1146 discriminator 3
	or	t2,t2,ra
	.loc 1 241 1109 discriminator 3
	add	a5,a5,t2
	.loc 1 241 1259 discriminator 3
	add	a5,a5,t5
	.loc 1 241 1216 discriminator 3
	add	a1,a1,t5
	.loc 1 241 1232 is_stmt 1 discriminator 3
	.loc 1 241 1281 discriminator 3
	.loc 1 243 9 discriminator 3
	.loc 1 243 14 discriminator 3
	.loc 1 243 416 is_stmt 0 discriminator 3
	srli	t2,t0,17
	slli	t5,t0,15
	.loc 1 243 631 discriminator 3
	lw	ra,32(t3)
	.loc 1 243 416 discriminator 3
	or	t5,t5,t2
	.loc 1 243 506 discriminator 3
	slli	t2,t0,13
	or	t2,t2,s8
	.loc 1 239 366 discriminator 3
	sw	t0,84(t3)
	.loc 1 243 457 discriminator 3
	xor	t5,t5,t2
	.loc 1 243 586 discriminator 3
	srli	t0,t0,10
	.loc 1 243 849 discriminator 3
	add	s5,s5,s7
	.loc 1 243 667 discriminator 3
	slli	t2,ra,25
	.loc 1 243 547 discriminator 3
	xor	t5,t5,t0
	.loc 1 243 667 discriminator 3
	srli	t0,ra,7
	.loc 1 243 849 discriminator 3
	add	t5,t5,s5
	.loc 1 243 667 discriminator 3
	or	t0,t0,t2
	.loc 1 243 758 discriminator 3
	srli	s5,ra,18
	slli	t2,ra,14
	or	t2,t2,s5
	.loc 1 243 708 discriminator 3
	xor	t0,t0,t2
	.loc 1 243 840 discriminator 3
	srli	t2,ra,3
	.loc 1 243 800 discriminator 3
	xor	t0,t0,t2
	.loc 1 243 849 discriminator 3
	add	t5,t5,t0
	.loc 1 243 317 discriminator 3
	xor	t0,a3,t1
	.loc 1 243 299 discriminator 3
	and	t0,t0,a1
	.loc 1 243 281 discriminator 3
	xor	t2,t0,a3
	lw	t0,84(s1)
	.loc 1 243 155 discriminator 3
	slli	s5,a1,21
	.loc 1 245 506 discriminator 3
	srli	s7,t6,19
	add	t0,t5,t0
	add	a4,t0,a4
	add	t0,t2,a4
	.loc 1 243 82 discriminator 3
	slli	t2,a1,26
	srli	a4,a1,6
	or	a4,a4,t2
	.loc 1 243 155 discriminator 3
	srli	t2,a1,11
	or	t2,t2,s5
	.loc 1 243 114 discriminator 3
	xor	a4,a4,t2
	.loc 1 243 229 discriminator 3
	srli	s5,a1,25
	slli	t2,a1,7
	or	t2,t2,s5
	.loc 1 243 188 discriminator 3
	xor	a4,a4,t2
	.loc 1 243 348 discriminator 3
	add	t0,a4,t0
	.loc 1 243 875 is_stmt 1 discriminator 3
	.loc 1 243 1203 discriminator 3
	.loc 1 243 928 is_stmt 0 discriminator 3
	slli	t2,a5,30
	srli	a4,a5,2
	or	a4,a4,t2
	.loc 1 243 1001 discriminator 3
	slli	s5,a5,19
	srli	t2,a5,13
	or	t2,t2,s5
	.loc 1 243 960 discriminator 3
	xor	a4,a4,t2
	.loc 1 243 1075 discriminator 3
	srli	s5,a5,22
	slli	t2,a5,10
	or	t2,t2,s5
	.loc 1 243 1034 discriminator 3
	xor	a4,a4,t2
	.loc 1 243 1182 discriminator 3
	or	t2,a6,a5
	.loc 1 243 1128 discriminator 3
	and	s5,a6,a5
	.loc 1 243 1164 discriminator 3
	and	t2,t2,a2
	.loc 1 243 1146 discriminator 3
	or	t2,t2,s5
	.loc 1 243 1109 discriminator 3
	add	a4,a4,t2
	.loc 1 245 416 discriminator 3
	srli	s5,t6,17
	slli	t2,t6,15
	or	t2,t2,s5
	.loc 1 245 506 discriminator 3
	slli	s5,t6,13
	.loc 1 243 1259 discriminator 3
	add	a4,a4,t0
	.loc 1 243 1216 discriminator 3
	add	a7,a7,t0
	.loc 1 243 1232 is_stmt 1 discriminator 3
	.loc 1 243 1281 discriminator 3
	.loc 1 245 9 discriminator 3
	.loc 1 245 14 discriminator 3
	.loc 1 245 506 is_stmt 0 discriminator 3
	or	s5,s5,s7
	.loc 1 245 631 discriminator 3
	lw	t0,36(t3)
	.loc 1 245 457 discriminator 3
	xor	t2,t2,s5
	.loc 1 241 366 discriminator 3
	sw	t6,88(t3)
	.loc 1 245 586 discriminator 3
	srli	t6,t6,10
	.loc 1 245 547 discriminator 3
	xor	t6,t2,t6
	.loc 1 245 849 discriminator 3
	add	s6,s6,ra
	.loc 1 245 667 discriminator 3
	slli	t2,t0,25
	.loc 1 245 849 discriminator 3
	add	s6,t6,s6
	.loc 1 245 667 discriminator 3
	srli	t6,t0,7
	.loc 1 245 758 discriminator 3
	srli	ra,t0,18
	.loc 1 245 667 discriminator 3
	or	t6,t6,t2
	.loc 1 245 758 discriminator 3
	slli	t2,t0,14
	or	t2,t2,ra
	.loc 1 245 708 discriminator 3
	xor	t6,t6,t2
	.loc 1 245 840 discriminator 3
	srli	t2,t0,3
	.loc 1 245 800 discriminator 3
	xor	t6,t6,t2
	.loc 1 245 849 discriminator 3
	add	s6,s6,t6
	.loc 1 245 317 discriminator 3
	xor	t6,t1,a1
	.loc 1 245 299 discriminator 3
	and	t6,t6,a7
	.loc 1 245 281 discriminator 3
	xor	t2,t6,t1
	lw	t6,88(s1)
	.loc 1 245 155 discriminator 3
	slli	ra,a7,21
	.loc 1 247 506 discriminator 3
	srli	s5,t5,19
	add	t6,s6,t6
	add	a3,t6,a3
	add	t6,t2,a3
	.loc 1 245 82 discriminator 3
	slli	t2,a7,26
	srli	a3,a7,6
	or	a3,a3,t2
	.loc 1 245 155 discriminator 3
	srli	t2,a7,11
	or	t2,t2,ra
	.loc 1 245 114 discriminator 3
	xor	a3,a3,t2
	.loc 1 245 229 discriminator 3
	srli	ra,a7,25
	slli	t2,a7,7
	or	t2,t2,ra
	.loc 1 245 188 discriminator 3
	xor	a3,a3,t2
	.loc 1 245 348 discriminator 3
	add	t6,a3,t6
	.loc 1 245 875 is_stmt 1 discriminator 3
	.loc 1 245 1203 discriminator 3
	.loc 1 245 928 is_stmt 0 discriminator 3
	slli	t2,a4,30
	srli	a3,a4,2
	or	a3,a3,t2
	.loc 1 245 1001 discriminator 3
	slli	ra,a4,19
	srli	t2,a4,13
	or	t2,t2,ra
	.loc 1 245 960 discriminator 3
	xor	a3,a3,t2
	.loc 1 245 1075 discriminator 3
	srli	ra,a4,22
	slli	t2,a4,10
	or	t2,t2,ra
	.loc 1 245 1034 discriminator 3
	xor	a3,a3,t2
	.loc 1 245 1182 discriminator 3
	or	t2,a5,a4
	.loc 1 245 1164 discriminator 3
	and	t2,t2,a6
	.loc 1 245 1128 discriminator 3
	and	ra,a5,a4
	.loc 1 245 1146 discriminator 3
	or	t2,t2,ra
	.loc 1 245 1109 discriminator 3
	add	a3,a3,t2
	.loc 1 245 1259 discriminator 3
	add	a3,a3,t6
	.loc 1 245 1216 discriminator 3
	add	a2,a2,t6
	.loc 1 245 1232 is_stmt 1 discriminator 3
	.loc 1 245 1281 discriminator 3
	.loc 1 247 9 discriminator 3
	.loc 1 247 14 discriminator 3
	.loc 1 247 416 is_stmt 0 discriminator 3
	srli	ra,t5,17
	slli	t6,t5,15
	or	t6,t6,ra
	.loc 1 247 506 discriminator 3
	slli	ra,t5,13
	.loc 1 247 631 discriminator 3
	lw	t2,40(t3)
	.loc 1 247 506 discriminator 3
	or	ra,ra,s5
	.loc 1 243 366 discriminator 3
	sw	t5,92(t3)
	.loc 1 247 457 discriminator 3
	xor	t6,t6,ra
	.loc 1 247 586 discriminator 3
	srli	t5,t5,10
	.loc 1 247 547 discriminator 3
	xor	t5,t6,t5
	.loc 1 233 366 discriminator 3
	sw	t4,72(t3)
	.loc 1 247 849 discriminator 3
	add	t4,t4,t0
	.loc 1 247 667 discriminator 3
	slli	t6,t2,25
	.loc 1 247 849 discriminator 3
	add	t4,t5,t4
	.loc 1 247 667 discriminator 3
	srli	t5,t2,7
	or	t5,t5,t6
	.loc 1 247 758 discriminator 3
	srli	t0,t2,18
	slli	t6,t2,14
	or	t6,t6,t0
	.loc 1 247 708 discriminator 3
	xor	t5,t5,t6
	.loc 1 247 840 discriminator 3
	srli	t2,t2,3
	lw	t6,92(s1)
	.loc 1 247 800 discriminator 3
	xor	t5,t5,t2
	.loc 1 247 849 discriminator 3
	add	t4,t4,t5
	.loc 1 247 317 discriminator 3
	xor	t5,a1,a7
	add	t6,t4,t6
	.loc 1 247 299 discriminator 3
	and	t5,t5,a2
	.loc 1 247 281 discriminator 3
	xor	t5,t5,a1
	add	t1,t6,t1
	add	t1,t5,t1
	.loc 1 247 366 discriminator 3
	sw	t4,100(t3)
	.loc 1 247 82 discriminator 3
	slli	t5,a2,26
	srli	t4,a2,6
	or	t4,t4,t5
	.loc 1 247 155 discriminator 3
	slli	t6,a2,21
	srli	t5,a2,11
	or	t5,t5,t6
	.loc 1 247 114 discriminator 3
	xor	t4,t4,t5
	.loc 1 247 229 discriminator 3
	srli	t6,a2,25
	slli	t5,a2,7
	or	t5,t5,t6
	.loc 1 247 188 discriminator 3
	xor	t4,t4,t5
	.loc 1 247 348 discriminator 3
	add	t4,t4,t1
	.loc 1 247 875 is_stmt 1 discriminator 3
	.loc 1 247 928 is_stmt 0 discriminator 3
	srli	t5,a3,2
	slli	t1,a3,30
	or	t5,t5,t1
	.loc 1 247 1001 discriminator 3
	slli	t6,a3,19
	srli	t1,a3,13
	or	t1,t1,t6
	.loc 1 247 960 discriminator 3
	xor	t5,t5,t1
	.loc 1 247 1075 discriminator 3
	srli	t6,a3,22
	slli	t1,a3,10
	or	t1,t1,t6
	.loc 1 247 1034 discriminator 3
	xor	t5,t5,t1
	.loc 1 247 1182 discriminator 3
	or	t1,a4,a3
	.loc 1 247 1164 discriminator 3
	and	t1,t1,a5
	.loc 1 247 1128 discriminator 3
	and	t6,a4,a3
	.loc 1 247 1146 discriminator 3
	or	t1,t1,t6
	.loc 1 245 366 discriminator 3
	sw	s6,96(t3)
	.loc 1 247 1109 discriminator 3
	add	t5,t5,t1
	.loc 1 247 1203 is_stmt 1 discriminator 3
	.loc 1 231 5 is_stmt 0 discriminator 3
	addi	t3,t3,32
	.loc 1 247 1216 discriminator 3
	add	a6,a6,t4
	.loc 1 247 1232 is_stmt 1 discriminator 3
	.loc 1 247 1259 is_stmt 0 discriminator 3
	add	t1,t4,t5
	.loc 1 247 1281 is_stmt 1 discriminator 3
	.loc 1 231 26 discriminator 3
	.loc 1 231 18 discriminator 3
	.loc 1 231 5 is_stmt 0 discriminator 3
	addi	s1,s1,32
	bne	s4,t3,.L15
	sw	a1,300(sp)
	sw	a6,288(sp)
	sw	a7,296(sp)
	sw	a2,292(sp)
	sw	t1,272(sp)
	sw	a3,276(sp)
	sw	a4,280(sp)
	sw	a5,284(sp)
	sw	t4,8(sp)
	sw	t5,12(sp)
.L16:
	.loc 1 253 9 is_stmt 1 discriminator 3
	.loc 1 253 23 is_stmt 0 discriminator 3
	lw	a5,0(s3)
	lw	a4,264(s0)
	.loc 1 252 5 discriminator 3
	addi	s3,s3,4
	addi	s0,s0,4
	.loc 1 253 23 discriminator 3
	add	a5,a5,a4
	sw	a5,-4(s3)
	.loc 1 252 24 is_stmt 1 discriminator 3
	.loc 1 252 17 discriminator 3
	.loc 1 252 5 is_stmt 0 discriminator 3
	bne	s2,s3,.L16
	.loc 1 256 5 is_stmt 1
	li	a1,296
	call	mbedtls_platform_zeroize
.LVL15:
	.loc 1 258 5
	.loc 1 259 1 is_stmt 0
	lw	ra,348(sp)
	.cfi_restore 1
	lw	s0,344(sp)
	.cfi_restore 8
	lw	s1,340(sp)
	.cfi_restore 9
	lw	s2,336(sp)
	.cfi_restore 18
.LVL16:
	lw	s3,332(sp)
	.cfi_restore 19
	lw	s4,328(sp)
	.cfi_restore 20
	lw	s5,324(sp)
	.cfi_restore 21
	lw	s6,320(sp)
	.cfi_restore 22
	lw	s7,316(sp)
	.cfi_restore 23
	lw	s8,312(sp)
	.cfi_restore 24
	li	a0,0
	addi	sp,sp,352
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	mbedtls_internal_sha256_process, .-mbedtls_internal_sha256_process
	.section	.text.mbedtls_sha256_process,"ax",@progbits
	.align	1
	.globl	mbedtls_sha256_process
	.type	mbedtls_sha256_process, @function
mbedtls_sha256_process:
.LFB8:
	.loc 1 264 1 is_stmt 1
	.cfi_startproc
.LVL17:
	.loc 1 265 5
	tail	mbedtls_internal_sha256_process
.LVL18:
	.cfi_endproc
.LFE8:
	.size	mbedtls_sha256_process, .-mbedtls_sha256_process
	.section	.text.mbedtls_sha256_update_ret,"ax",@progbits
	.align	1
	.globl	mbedtls_sha256_update_ret
	.type	mbedtls_sha256_update_ret, @function
mbedtls_sha256_update_ret:
.LFB9:
	.loc 1 276 1
	.cfi_startproc
.LVL19:
	.loc 1 277 5
	.loc 1 278 5
	.loc 1 279 5
	.loc 1 281 5
	.loc 1 281 10
	.loc 1 281 17
	.loc 1 282 5
	.loc 1 282 10
	.loc 1 282 17
	.loc 1 284 5
	.loc 1 284 7 is_stmt 0
	bne	a2,zero,.L25
	.loc 1 285 15
	li	a0,0
.LVL20:
	.loc 1 321 1
	ret
.LVL21:
.L25:
	.loc 1 276 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	ra,28(sp)
	sw	s4,8(sp)
	sw	s5,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.cfi_offset 20, -24
	.cfi_offset 21, -28
.LBB4:
.LBB5:
	.loc 1 287 22
	lw	a5,0(a0)
	mv	s1,a0
	mv	s2,a1
	.loc 1 287 10
	andi	s3,a5,63
	.loc 1 290 19
	add	a5,a2,a5
	sw	a5,0(a0)
	mv	s0,a2
.LVL22:
	.loc 1 287 5 is_stmt 1
	.loc 1 288 5
	.loc 1 290 5
	.loc 1 291 5
	.loc 1 293 5
	.loc 1 293 7 is_stmt 0
	bleu	a2,a5,.L27
.LVL23:
	.loc 1 294 9 is_stmt 1
	.loc 1 294 22 is_stmt 0
	lw	a5,4(a0)
	addi	a5,a5,1
	sw	a5,4(a0)
.L27:
	.loc 1 296 5 is_stmt 1
	.loc 1 296 7 is_stmt 0
	beq	s3,zero,.L28
	.loc 1 288 10
	li	s4,64
	sub	s4,s4,s3
	.loc 1 296 14
	bltu	s0,s4,.L28
	.loc 1 298 9 is_stmt 1
	.loc 1 298 27 is_stmt 0
	addi	s5,s1,40
	.loc 1 298 9
	mv	a1,s2
.LVL24:
	mv	a2,s4
	add	a0,s5,s3
	call	memcpy
.LVL25:
	.loc 1 300 9 is_stmt 1
	.loc 1 300 21 is_stmt 0
	mv	a1,s5
	mv	a0,s1
	call	mbedtls_internal_sha256_process
.LVL26:
	.loc 1 300 11
	bne	a0,zero,.L24
	.loc 1 303 9 is_stmt 1
.LVL27:
	.loc 1 304 14 is_stmt 0
	add	s0,s0,s3
.LVL28:
	.loc 1 303 15
	add	s2,s2,s4
.LVL29:
	.loc 1 304 9 is_stmt 1
	.loc 1 304 14 is_stmt 0
	addi	s0,s0,-64
.LVL30:
	.loc 1 305 9 is_stmt 1
	.loc 1 305 14 is_stmt 0
	li	s3,0
.LVL31:
.L28:
	add	s2,s2,s0
.LVL32:
	.loc 1 308 10
	li	s4,63
	j	.L29
.LVL33:
.L30:
	.loc 1 310 9 is_stmt 1
	.loc 1 310 21 is_stmt 0
	mv	a0,s1
	call	mbedtls_internal_sha256_process
.LVL34:
	.loc 1 310 11
	bne	a0,zero,.L24
	.loc 1 313 9 is_stmt 1
.LVL35:
	.loc 1 314 9
	.loc 1 314 14 is_stmt 0
	addi	s0,s0,-64
.LVL36:
.L29:
	sub	a1,s2,s0
.LVL37:
	.loc 1 308 10 is_stmt 1
	bgtu	s0,s4,.L30
	.loc 1 317 5
	.loc 1 317 7 is_stmt 0
	beq	s0,zero,.L41
	.loc 1 318 9 is_stmt 1
	.loc 1 318 27 is_stmt 0
	addi	a0,s1,40
	.loc 1 318 9
	mv	a2,s0
	add	a0,a0,s3
	call	memcpy
.LVL38:
.L41:
	.loc 1 320 11
	li	a0,0
.LVL39:
.L24:
.LBE5:
.LBE4:
	.loc 1 321 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
.LVL40:
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
	lw	s5,4(sp)
	.cfi_restore 21
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	mbedtls_sha256_update_ret, .-mbedtls_sha256_update_ret
	.section	.text.mbedtls_sha256_update,"ax",@progbits
	.align	1
	.globl	mbedtls_sha256_update
	.type	mbedtls_sha256_update, @function
mbedtls_sha256_update:
.LFB10:
	.loc 1 327 1 is_stmt 1
	.cfi_startproc
.LVL41:
	.loc 1 328 5
	tail	mbedtls_sha256_update_ret
.LVL42:
	.cfi_endproc
.LFE10:
	.size	mbedtls_sha256_update, .-mbedtls_sha256_update
	.section	.text.mbedtls_sha256_finish_ret,"ax",@progbits
	.align	1
	.globl	mbedtls_sha256_finish_ret
	.type	mbedtls_sha256_finish_ret, @function
mbedtls_sha256_finish_ret:
.LFB11:
	.loc 1 337 1
	.cfi_startproc
.LVL43:
	.loc 1 338 5
	.loc 1 339 5
	.loc 1 340 5
	.loc 1 342 5
	.loc 1 342 10
	.loc 1 342 17
	.loc 1 343 5
	.loc 1 343 10
	.loc 1 343 17
	.loc 1 348 5
	.loc 1 337 1 is_stmt 0
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
	.loc 1 348 10
	lw	a5,0(a0)
	.loc 1 350 25
	li	a3,-128
	.loc 1 355 17
	addi	s2,a0,40
	.loc 1 348 10
	andi	a5,a5,63
.LVL44:
	.loc 1 350 5 is_stmt 1
	.loc 1 350 21 is_stmt 0
	addi	a4,a5,1
.LVL45:
	.loc 1 350 25
	add	a5,a0,a5
	sb	a3,40(a5)
	.loc 1 352 5 is_stmt 1
	.loc 1 352 7 is_stmt 0
	li	a2,56
	.loc 1 337 1
	mv	s0,a0
	mv	s1,a1
	.loc 1 355 9
	add	a0,s2,a4
.LVL46:
	.loc 1 352 7
	bgtu	a4,a2,.L44
	.loc 1 355 9 is_stmt 1
	sub	a2,a2,a4
	li	a1,0
.LVL47:
.L48:
	.loc 1 365 9 is_stmt 0
	call	memset
.LVL48:
	.loc 1 371 5 is_stmt 1
	.loc 1 371 24 is_stmt 0
	lw	a4,0(s0)
	.loc 1 372 28
	lw	a2,4(s0)
	.loc 1 378 17
	mv	a0,s0
	.loc 1 371 28
	srli	a5,a4,29
	.loc 1 372 28
	slli	a2,a2,3
	.loc 1 371 10
	or	a5,a2,a5
.LVL49:
	.loc 1 373 5 is_stmt 1
	.loc 1 375 59 is_stmt 0
	srli	a1,a2,24
	.loc 1 375 134
	srli	a2,a2,16
	.loc 1 375 111
	sb	a2,97(s0)
	.loc 1 375 182
	slli	a2,a5,8
	slli	a5,a5,16
.LVL50:
	srli	a5,a5,16
	srli	a5,a5,8
	.loc 1 373 9
	slli	a3,a4,3
.LVL51:
	.loc 1 375 7 is_stmt 1
	.loc 1 375 182 is_stmt 0
	or	a5,a2,a5
	sh	a5,98(s0)
	.loc 1 376 58
	srli	a5,a3,24
	.loc 1 376 36
	sb	a5,100(s0)
	.loc 1 376 132
	srli	a5,a3,16
	.loc 1 376 180
	slli	a3,a3,16
.LVL52:
	srli	a3,a3,16
	slli	a4,a4,11
.LVL53:
	srli	a3,a3,8
	or	a4,a4,a3
	.loc 1 375 36
	sb	a1,96(s0)
	.loc 1 375 79 is_stmt 1
	.loc 1 375 154
	.loc 1 375 228
	.loc 1 375 294
	.loc 1 376 7
	.loc 1 376 78
	.loc 1 376 110 is_stmt 0
	sb	a5,101(s0)
	.loc 1 376 152 is_stmt 1
	.loc 1 376 225
	.loc 1 376 180 is_stmt 0
	sh	a4,102(s0)
	.loc 1 376 290 is_stmt 1
	.loc 1 378 5
	.loc 1 378 17 is_stmt 0
	mv	a1,s2
	call	mbedtls_internal_sha256_process
.LVL54:
	.loc 1 378 7
	bne	a0,zero,.L43
	.loc 1 384 7 is_stmt 1
	.loc 1 384 62 is_stmt 0
	lbu	a5,11(s0)
	.loc 1 384 30
	sb	a5,0(s1)
	.loc 1 384 82 is_stmt 1
	.loc 1 384 140 is_stmt 0
	lhu	a5,10(s0)
	.loc 1 384 108
	sb	a5,1(s1)
	.loc 1 384 160 is_stmt 1
	.loc 1 384 218 is_stmt 0
	lw	a5,8(s0)
	srli	a5,a5,8
	.loc 1 384 186
	sb	a5,2(s1)
	.loc 1 384 237 is_stmt 1
	.loc 1 384 263 is_stmt 0
	lw	a5,8(s0)
	sb	a5,3(s1)
	.loc 1 384 306 is_stmt 1
	.loc 1 385 7
	.loc 1 385 62 is_stmt 0
	lbu	a5,15(s0)
	.loc 1 385 30
	sb	a5,4(s1)
	.loc 1 385 82 is_stmt 1
	.loc 1 385 140 is_stmt 0
	lhu	a5,14(s0)
	.loc 1 385 108
	sb	a5,5(s1)
	.loc 1 385 160 is_stmt 1
	.loc 1 385 218 is_stmt 0
	lw	a5,12(s0)
	srli	a5,a5,8
	.loc 1 385 186
	sb	a5,6(s1)
	.loc 1 385 237 is_stmt 1
	.loc 1 385 263 is_stmt 0
	lw	a5,12(s0)
	sb	a5,7(s1)
	.loc 1 385 306 is_stmt 1
	.loc 1 386 7
	.loc 1 386 62 is_stmt 0
	lbu	a5,19(s0)
	.loc 1 386 30
	sb	a5,8(s1)
	.loc 1 386 82 is_stmt 1
	.loc 1 386 140 is_stmt 0
	lhu	a5,18(s0)
	.loc 1 386 108
	sb	a5,9(s1)
	.loc 1 386 160 is_stmt 1
	.loc 1 386 218 is_stmt 0
	lw	a5,16(s0)
	srli	a5,a5,8
	.loc 1 386 186
	sb	a5,10(s1)
	.loc 1 386 237 is_stmt 1
	.loc 1 386 263 is_stmt 0
	lw	a5,16(s0)
	sb	a5,11(s1)
	.loc 1 386 306 is_stmt 1
	.loc 1 387 7
	.loc 1 387 63 is_stmt 0
	lbu	a5,23(s0)
	.loc 1 387 31
	sb	a5,12(s1)
	.loc 1 387 83 is_stmt 1
	.loc 1 387 142 is_stmt 0
	lhu	a5,22(s0)
	.loc 1 387 110
	sb	a5,13(s1)
	.loc 1 387 162 is_stmt 1
	.loc 1 387 221 is_stmt 0
	lw	a5,20(s0)
	srli	a5,a5,8
	.loc 1 387 189
	sb	a5,14(s1)
	.loc 1 387 240 is_stmt 1
	.loc 1 387 267 is_stmt 0
	lw	a5,20(s0)
	sb	a5,15(s1)
	.loc 1 387 310 is_stmt 1
	.loc 1 388 7
	.loc 1 388 63 is_stmt 0
	lbu	a5,27(s0)
	.loc 1 388 31
	sb	a5,16(s1)
	.loc 1 388 83 is_stmt 1
	.loc 1 388 142 is_stmt 0
	lhu	a5,26(s0)
	.loc 1 388 110
	sb	a5,17(s1)
	.loc 1 388 162 is_stmt 1
	.loc 1 388 221 is_stmt 0
	lw	a5,24(s0)
	srli	a5,a5,8
	.loc 1 388 189
	sb	a5,18(s1)
	.loc 1 388 240 is_stmt 1
	.loc 1 388 267 is_stmt 0
	lw	a5,24(s0)
	sb	a5,19(s1)
	.loc 1 388 310 is_stmt 1
	.loc 1 389 7
	.loc 1 389 63 is_stmt 0
	lbu	a5,31(s0)
	.loc 1 389 31
	sb	a5,20(s1)
	.loc 1 389 83 is_stmt 1
	.loc 1 389 142 is_stmt 0
	lhu	a5,30(s0)
	.loc 1 389 110
	sb	a5,21(s1)
	.loc 1 389 162 is_stmt 1
	.loc 1 389 221 is_stmt 0
	lw	a5,28(s0)
	srli	a5,a5,8
	.loc 1 389 189
	sb	a5,22(s1)
	.loc 1 389 240 is_stmt 1
	.loc 1 389 267 is_stmt 0
	lw	a5,28(s0)
	sb	a5,23(s1)
	.loc 1 389 310 is_stmt 1
	.loc 1 390 7
	.loc 1 390 63 is_stmt 0
	lbu	a5,35(s0)
	.loc 1 390 31
	sb	a5,24(s1)
	.loc 1 390 83 is_stmt 1
	.loc 1 390 142 is_stmt 0
	lhu	a5,34(s0)
	.loc 1 390 110
	sb	a5,25(s1)
	.loc 1 390 162 is_stmt 1
	.loc 1 390 221 is_stmt 0
	lw	a5,32(s0)
	srli	a5,a5,8
	.loc 1 390 189
	sb	a5,26(s1)
	.loc 1 390 240 is_stmt 1
	.loc 1 390 267 is_stmt 0
	lw	a5,32(s0)
	sb	a5,27(s1)
	.loc 1 390 310 is_stmt 1
	.loc 1 392 5
	.loc 1 392 12 is_stmt 0
	lw	a5,104(s0)
	.loc 1 392 7
	bne	a5,zero,.L43
	.loc 1 393 11 is_stmt 1
	.loc 1 393 67 is_stmt 0
	lbu	a5,39(s0)
	.loc 1 393 35
	sb	a5,28(s1)
	.loc 1 393 87 is_stmt 1
	.loc 1 393 146 is_stmt 0
	lhu	a5,38(s0)
	.loc 1 393 114
	sb	a5,29(s1)
	.loc 1 393 166 is_stmt 1
	.loc 1 393 225 is_stmt 0
	lw	a5,36(s0)
	srli	a5,a5,8
	.loc 1 393 193
	sb	a5,30(s1)
	.loc 1 393 244 is_stmt 1
	.loc 1 393 271 is_stmt 0
	lw	a5,36(s0)
	sb	a5,31(s1)
.L43:
	.loc 1 396 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL55:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL56:
	lw	s2,0(sp)
	.cfi_restore 18
.LVL57:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL58:
.L44:
	.cfi_restore_state
	.loc 1 360 9 is_stmt 1
	li	a2,64
	li	a1,0
	sub	a2,a2,a4
	call	memset
.LVL59:
	.loc 1 362 9
	.loc 1 362 21 is_stmt 0
	mv	a1,s2
	mv	a0,s0
	call	mbedtls_internal_sha256_process
.LVL60:
	.loc 1 362 11
	bne	a0,zero,.L43
	.loc 1 365 9 is_stmt 1
	li	a2,56
	li	a1,0
	mv	a0,s2
.LVL61:
	j	.L48
	.cfi_endproc
.LFE11:
	.size	mbedtls_sha256_finish_ret, .-mbedtls_sha256_finish_ret
	.section	.text.mbedtls_sha256_finish,"ax",@progbits
	.align	1
	.globl	mbedtls_sha256_finish
	.type	mbedtls_sha256_finish, @function
mbedtls_sha256_finish:
.LFB12:
	.loc 1 401 1
	.cfi_startproc
.LVL62:
	.loc 1 402 5
	tail	mbedtls_sha256_finish_ret
.LVL63:
	.cfi_endproc
.LFE12:
	.size	mbedtls_sha256_finish, .-mbedtls_sha256_finish
	.section	.text.mbedtls_sha256_ret,"ax",@progbits
	.align	1
	.globl	mbedtls_sha256_ret
	.type	mbedtls_sha256_ret, @function
mbedtls_sha256_ret:
.LFB13:
	.loc 1 415 1
	.cfi_startproc
.LVL64:
	.loc 1 416 5
	.loc 1 417 5
	.loc 1 419 5
	.loc 1 419 10
	.loc 1 419 17
	.loc 1 420 5
	.loc 1 420 10
	.loc 1 420 17
	.loc 1 421 5
	.loc 1 421 10
	.loc 1 421 17
	.loc 1 423 5
	.loc 1 415 1 is_stmt 0
	addi	sp,sp,-160
	.cfi_def_cfa_offset 160
	sw	s2,144(sp)
	.cfi_offset 18, -16
	mv	s2,a0
	.loc 1 423 5
	addi	a0,sp,20
.LVL65:
	.loc 1 415 1
	sw	ra,156(sp)
	sw	s0,152(sp)
	sw	s1,148(sp)
	sw	s3,140(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.loc 1 415 1
	mv	s1,a2
	mv	s3,a1
	sw	a3,12(sp)
	.loc 1 423 5
	call	mbedtls_sha256_init
.LVL66:
	.loc 1 425 5 is_stmt 1
	.loc 1 425 17 is_stmt 0
	lw	a1,12(sp)
	addi	a0,sp,20
	call	mbedtls_sha256_starts_ret
.LVL67:
	mv	s0,a0
.LVL68:
	.loc 1 425 7
	bne	a0,zero,.L51
	.loc 1 428 5 is_stmt 1
	.loc 1 428 17 is_stmt 0
	mv	a2,s3
	mv	a1,s2
	addi	a0,sp,20
	call	mbedtls_sha256_update_ret
.LVL69:
	mv	s0,a0
.LVL70:
	.loc 1 428 7
	bne	a0,zero,.L51
	.loc 1 431 5 is_stmt 1
	.loc 1 431 17 is_stmt 0
	mv	a1,s1
	addi	a0,sp,20
	call	mbedtls_sha256_finish_ret
.LVL71:
	mv	s0,a0
.LVL72:
.L51:
	.loc 1 435 5 is_stmt 1
	addi	a0,sp,20
	call	mbedtls_sha256_free
.LVL73:
	.loc 1 437 5
	.loc 1 438 1 is_stmt 0
	lw	ra,156(sp)
	.cfi_restore 1
	mv	a0,s0
	lw	s0,152(sp)
	.cfi_restore 8
.LVL74:
	lw	s1,148(sp)
	.cfi_restore 9
.LVL75:
	lw	s2,144(sp)
	.cfi_restore 18
.LVL76:
	lw	s3,140(sp)
	.cfi_restore 19
.LVL77:
	addi	sp,sp,160
	.cfi_def_cfa_offset 0
.LVL78:
	jr	ra
	.cfi_endproc
.LFE13:
	.size	mbedtls_sha256_ret, .-mbedtls_sha256_ret
	.section	.text.mbedtls_sha256,"ax",@progbits
	.align	1
	.globl	mbedtls_sha256
	.type	mbedtls_sha256, @function
mbedtls_sha256:
.LFB14:
	.loc 1 445 1 is_stmt 1
	.cfi_startproc
.LVL79:
	.loc 1 446 5
	tail	mbedtls_sha256_ret
.LVL80:
	.cfi_endproc
.LFE14:
	.size	mbedtls_sha256, .-mbedtls_sha256
	.section	.rodata.K,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	K, @object
	.size	K, 256
K:
	.word	1116352408
	.word	1899447441
	.word	-1245643825
	.word	-373957723
	.word	961987163
	.word	1508970993
	.word	-1841331548
	.word	-1424204075
	.word	-670586216
	.word	310598401
	.word	607225278
	.word	1426881987
	.word	1925078388
	.word	-2132889090
	.word	-1680079193
	.word	-1046744716
	.word	-459576895
	.word	-272742522
	.word	264347078
	.word	604807628
	.word	770255983
	.word	1249150122
	.word	1555081692
	.word	1996064986
	.word	-1740746414
	.word	-1473132947
	.word	-1341970488
	.word	-1084653625
	.word	-958395405
	.word	-710438585
	.word	113926993
	.word	338241895
	.word	666307205
	.word	773529912
	.word	1294757372
	.word	1396182291
	.word	1695183700
	.word	1986661051
	.word	-2117940946
	.word	-1838011259
	.word	-1564481375
	.word	-1474664885
	.word	-1035236496
	.word	-949202525
	.word	-778901479
	.word	-694614492
	.word	-200395387
	.word	275423344
	.word	430227734
	.word	506948616
	.word	659060556
	.word	883997877
	.word	958139571
	.word	1322822218
	.word	1537002063
	.word	1747873779
	.word	1955562222
	.word	2024104815
	.word	-2067236844
	.word	-1933114872
	.word	-1866530822
	.word	-1538233109
	.word	-1090935817
	.word	-965641998
	.text
.Letext0:
	.file 2 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 3 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 4 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/security/mbedtls_lts/mbedtls/include/mbedtls/sha256.h"
	.file 5 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.file 6 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/security/mbedtls_lts/mbedtls/include/mbedtls/platform_util.h"
	.file 7 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x86a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF44
	.byte	0xc
	.4byte	.LASF45
	.4byte	.LASF46
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
	.byte	0x3
	.4byte	0x88
	.byte	0x6
	.4byte	.LASF16
	.byte	0x6c
	.byte	0x4
	.byte	0x3a
	.byte	0x10
	.4byte	0xdb
	.byte	0x7
	.4byte	.LASF12
	.byte	0x4
	.byte	0x3c
	.byte	0xe
	.4byte	0xdb
	.byte	0
	.byte	0x7
	.4byte	.LASF13
	.byte	0x4
	.byte	0x3d
	.byte	0xe
	.4byte	0xeb
	.byte	0x8
	.byte	0x7
	.4byte	.LASF14
	.byte	0x4
	.byte	0x3e
	.byte	0x13
	.4byte	0xfb
	.byte	0x28
	.byte	0x7
	.4byte	.LASF15
	.byte	0x4
	.byte	0x3f
	.byte	0x9
	.4byte	0x62
	.byte	0x68
	.byte	0
	.byte	0x8
	.4byte	0x88
	.4byte	0xeb
	.byte	0x9
	.4byte	0x69
	.byte	0x1
	.byte	0
	.byte	0x8
	.4byte	0x88
	.4byte	0xfb
	.byte	0x9
	.4byte	0x69
	.byte	0x7
	.byte	0
	.byte	0x8
	.4byte	0x2c
	.4byte	0x10b
	.byte	0x9
	.4byte	0x69
	.byte	0x3f
	.byte	0
	.byte	0x5
	.4byte	.LASF16
	.byte	0x4
	.byte	0x42
	.byte	0x1
	.4byte	0x99
	.byte	0x3
	.4byte	0x10b
	.byte	0xa
	.byte	0x4
	.4byte	0x2c
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.byte	0x8
	.4byte	0x94
	.4byte	0x139
	.byte	0x9
	.4byte	0x69
	.byte	0x3f
	.byte	0
	.byte	0x3
	.4byte	0x129
	.byte	0xb
	.string	"K"
	.byte	0x1
	.byte	0x7f
	.byte	0x17
	.4byte	0x139
	.byte	0x5
	.byte	0x3
	.4byte	K
	.byte	0xc
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x1b9
	.byte	0x6
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x1d0
	.byte	0xd
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x1b9
	.byte	0x2b
	.4byte	0x1d0
	.4byte	.LLST37
	.byte	0xd
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x1ba
	.byte	0x1d
	.4byte	0x70
	.4byte	.LLST38
	.byte	0xd
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x1bb
	.byte	0x24
	.4byte	0x11c
	.4byte	.LLST39
	.byte	0xd
	.4byte	.LASF15
	.byte	0x1
	.2byte	0x1bc
	.byte	0x1a
	.4byte	0x62
	.4byte	.LLST40
	.byte	0xe
	.4byte	.LVL80
	.4byte	0x1d6
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0xf
	.byte	0x1
	.byte	0x5d
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x33
	.byte	0x10
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x19b
	.byte	0x5
	.4byte	0x62
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x2e4
	.byte	0xd
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x19b
	.byte	0x2e
	.4byte	0x1d0
	.4byte	.LLST32
	.byte	0xd
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x19c
	.byte	0x20
	.4byte	0x70
	.4byte	.LLST33
	.byte	0xd
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x19d
	.byte	0x27
	.4byte	0x11c
	.4byte	.LLST34
	.byte	0xd
	.4byte	.LASF15
	.byte	0x1
	.2byte	0x19e
	.byte	0x1d
	.4byte	0x62
	.4byte	.LLST35
	.byte	0x11
	.string	"ret"
	.byte	0x1
	.2byte	0x1a0
	.byte	0x9
	.4byte	0x62
	.4byte	.LLST36
	.byte	0x12
	.string	"ctx"
	.byte	0x1
	.2byte	0x1a1
	.byte	0x1c
	.4byte	0x10b
	.byte	0x3
	.byte	0x91
	.byte	0xf4,0x7e
	.byte	0x13
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x1b2
	.byte	0x1
	.4byte	.L51
	.byte	0x14
	.4byte	.LVL66
	.4byte	0x6fe
	.4byte	0x279
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xf4,0x7e
	.byte	0
	.byte	0x14
	.4byte	.LVL67
	.4byte	0x62c
	.4byte	0x296
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xf4,0x7e
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.byte	0x91
	.byte	0xec,0x7e
	.byte	0x6
	.byte	0
	.byte	0x14
	.4byte	.LVL69
	.4byte	0x474
	.4byte	0x2b7
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xf4,0x7e
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LVL71
	.4byte	0x33c
	.4byte	0x2d2
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xf4,0x7e
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL73
	.4byte	0x6c0
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xf4,0x7e
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x18f
	.byte	0x6
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x336
	.byte	0x16
	.string	"ctx"
	.byte	0x1
	.2byte	0x18f
	.byte	0x35
	.4byte	0x336
	.4byte	.LLST30
	.byte	0xd
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x190
	.byte	0x2b
	.4byte	0x11c
	.4byte	.LLST31
	.byte	0xe
	.4byte	.LVL63
	.4byte	0x33c
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x10b
	.byte	0x10
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x14f
	.byte	0x5
	.4byte	0x62
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x40a
	.byte	0x16
	.string	"ctx"
	.byte	0x1
	.2byte	0x14f
	.byte	0x38
	.4byte	0x336
	.4byte	.LLST24
	.byte	0xd
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x150
	.byte	0x2e
	.4byte	0x11c
	.4byte	.LLST25
	.byte	0x11
	.string	"ret"
	.byte	0x1
	.2byte	0x152
	.byte	0x9
	.4byte	0x62
	.4byte	.LLST26
	.byte	0x17
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x153
	.byte	0xe
	.4byte	0x88
	.4byte	.LLST27
	.byte	0x17
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x154
	.byte	0xe
	.4byte	0x88
	.4byte	.LLST28
	.byte	0x11
	.string	"low"
	.byte	0x1
	.2byte	0x154
	.byte	0x14
	.4byte	0x88
	.4byte	.LLST29
	.byte	0x18
	.4byte	.LVL48
	.4byte	0x83e
	.byte	0x14
	.4byte	.LVL54
	.4byte	0x527
	.4byte	0x3e0
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LVL59
	.4byte	0x83e
	.4byte	0x3f3
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x15
	.4byte	.LVL60
	.4byte	0x527
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x144
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x474
	.byte	0x16
	.string	"ctx"
	.byte	0x1
	.2byte	0x144
	.byte	0x35
	.4byte	0x336
	.4byte	.LLST21
	.byte	0xd
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x145
	.byte	0x32
	.4byte	0x1d0
	.4byte	.LLST22
	.byte	0xd
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x146
	.byte	0x24
	.4byte	0x70
	.4byte	.LLST23
	.byte	0xe
	.4byte	.LVL42
	.4byte	0x474
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x111
	.byte	0x5
	.4byte	0x62
	.byte	0x1
	.4byte	0x4d5
	.byte	0x1a
	.string	"ctx"
	.byte	0x1
	.2byte	0x111
	.byte	0x38
	.4byte	0x336
	.byte	0x1b
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x112
	.byte	0x35
	.4byte	0x1d0
	.byte	0x1b
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x113
	.byte	0x27
	.4byte	0x70
	.byte	0x1c
	.string	"ret"
	.byte	0x1
	.2byte	0x115
	.byte	0x9
	.4byte	0x62
	.byte	0x1d
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x116
	.byte	0xc
	.4byte	0x70
	.byte	0x1d
	.4byte	.LASF29
	.byte	0x1
	.2byte	0x117
	.byte	0xe
	.4byte	0x88
	.byte	0
	.byte	0xc
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x106
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x527
	.byte	0x16
	.string	"ctx"
	.byte	0x1
	.2byte	0x106
	.byte	0x36
	.4byte	0x336
	.4byte	.LLST10
	.byte	0xd
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x107
	.byte	0x32
	.4byte	0x1d0
	.4byte	.LLST11
	.byte	0xe
	.4byte	.LVL18
	.4byte	0x527
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LASF32
	.byte	0x1
	.byte	0xad
	.byte	0x5
	.4byte	0x62
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x5cd
	.byte	0x1f
	.string	"ctx"
	.byte	0x1
	.byte	0xad
	.byte	0x3e
	.4byte	0x336
	.4byte	.LLST7
	.byte	0x20
	.4byte	.LASF31
	.byte	0x1
	.byte	0xae
	.byte	0x35
	.4byte	0x1d0
	.4byte	.LLST8
	.byte	0x21
	.2byte	0x128
	.byte	0x1
	.byte	0xb0
	.byte	0x5
	.4byte	0x59d
	.byte	0x7
	.4byte	.LASF33
	.byte	0x1
	.byte	0xb2
	.byte	0x12
	.4byte	0x88
	.byte	0
	.byte	0x7
	.4byte	.LASF34
	.byte	0x1
	.byte	0xb2
	.byte	0x19
	.4byte	0x88
	.byte	0x4
	.byte	0x22
	.string	"W"
	.byte	0x1
	.byte	0xb2
	.byte	0x20
	.4byte	0x5cd
	.byte	0x8
	.byte	0x23
	.string	"A"
	.byte	0x1
	.byte	0xb3
	.byte	0x12
	.4byte	0xeb
	.2byte	0x108
	.byte	0
	.byte	0x24
	.4byte	.LASF35
	.byte	0x1
	.byte	0xb4
	.byte	0x7
	.4byte	0x561
	.byte	0x3
	.byte	0x91
	.byte	0xa8,0x7d
	.byte	0x25
	.string	"i"
	.byte	0x1
	.byte	0xb6
	.byte	0x12
	.4byte	0x69
	.4byte	.LLST9
	.byte	0x15
	.4byte	.LVL15
	.4byte	0x84a
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xa
	.2byte	0x128
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	0x88
	.4byte	0x5dd
	.byte	0x9
	.4byte	0x69
	.byte	0x3f
	.byte	0
	.byte	0x26
	.4byte	.LASF36
	.byte	0x1
	.byte	0x77
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x62c
	.byte	0x1f
	.string	"ctx"
	.byte	0x1
	.byte	0x77
	.byte	0x35
	.4byte	0x336
	.4byte	.LLST5
	.byte	0x20
	.4byte	.LASF15
	.byte	0x1
	.byte	0x78
	.byte	0x21
	.4byte	0x62
	.4byte	.LLST6
	.byte	0xe
	.4byte	.LVL10
	.4byte	0x62c
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LASF37
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.4byte	0x62
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x665
	.byte	0x1f
	.string	"ctx"
	.byte	0x1
	.byte	0x50
	.byte	0x38
	.4byte	0x336
	.4byte	.LLST4
	.byte	0x27
	.4byte	.LASF15
	.byte	0x1
	.byte	0x50
	.byte	0x41
	.4byte	0x62
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x26
	.4byte	.LASF38
	.byte	0x1
	.byte	0x44
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x6ba
	.byte	0x1f
	.string	"dst"
	.byte	0x1
	.byte	0x44
	.byte	0x34
	.4byte	0x336
	.4byte	.LLST2
	.byte	0x1f
	.string	"src"
	.byte	0x1
	.byte	0x45
	.byte	0x3a
	.4byte	0x6ba
	.4byte	.LLST3
	.byte	0x15
	.4byte	.LVL5
	.4byte	0x856
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x4
	.4byte	0x117
	.byte	0x26
	.4byte	.LASF39
	.byte	0x1
	.byte	0x3c
	.byte	0x6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x6fe
	.byte	0x1f
	.string	"ctx"
	.byte	0x1
	.byte	0x3c
	.byte	0x33
	.4byte	0x336
	.4byte	.LLST1
	.byte	0xe
	.4byte	.LVL3
	.4byte	0x84a
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LASF40
	.byte	0x1
	.byte	0x35
	.byte	0x6
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0x741
	.byte	0x1f
	.string	"ctx"
	.byte	0x1
	.byte	0x35
	.byte	0x33
	.4byte	0x336
	.4byte	.LLST0
	.byte	0xe
	.4byte	.LVL1
	.4byte	0x83e
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	0x474
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x83e
	.byte	0x29
	.4byte	0x486
	.4byte	.LLST12
	.byte	0x29
	.4byte	0x493
	.4byte	.LLST13
	.byte	0x29
	.4byte	0x4a0
	.4byte	.LLST14
	.byte	0x2a
	.4byte	0x4ad
	.byte	0x92,0x7f
	.byte	0x2b
	.4byte	0x4ba
	.byte	0x2b
	.4byte	0x4c7
	.byte	0x2c
	.4byte	0x474
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.2byte	0x111
	.byte	0x5
	.byte	0x29
	.4byte	0x4a0
	.4byte	.LLST15
	.byte	0x29
	.4byte	0x493
	.4byte	.LLST16
	.byte	0x29
	.4byte	0x486
	.4byte	.LLST17
	.byte	0x2d
	.4byte	0x4ad
	.4byte	.LLST18
	.byte	0x2d
	.4byte	0x4ba
	.4byte	.LLST19
	.byte	0x2d
	.4byte	0x4c7
	.4byte	.LLST20
	.byte	0x14
	.4byte	.LVL25
	.4byte	0x861
	.4byte	0x7ea
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x85
	.byte	0
	.byte	0x83
	.byte	0
	.byte	0x22
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LVL26
	.4byte	0x527
	.4byte	0x804
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LVL34
	.4byte	0x527
	.4byte	0x818
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL38
	.4byte	0x861
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x7
	.byte	0x79
	.byte	0
	.byte	0x83
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x28
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x82
	.byte	0
	.byte	0x78
	.byte	0
	.byte	0x1c
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x5
	.byte	0x21
	.byte	0x8
	.byte	0x2e
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x6
	.byte	0xf6
	.byte	0x6
	.byte	0x2f
	.4byte	.LASF43
	.4byte	.LASF49
	.byte	0x7
	.byte	0
	.byte	0x2e
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x5
	.byte	0x1f
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
	.byte	0x7
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
	.byte	0x8
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0xf
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
	.byte	0xa
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0x15
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x18
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0
	.byte	0
	.byte	0x1e
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
	.byte	0x1f
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
	.byte	0x20
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
	.byte	0x21
	.byte	0x13
	.byte	0x1
	.byte	0xb
	.byte	0x5
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
	.byte	0x22
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
	.byte	0x23
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
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x24
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
	.byte	0x17
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
	.byte	0x27
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
	.byte	0x28
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
	.byte	0x29
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2a
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x1c
	.byte	0xd
	.byte	0
	.byte	0
	.byte	0x2b
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2c
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
	.byte	0
	.byte	0
	.byte	0x2d
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x2f
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
.LLST37:
	.4byte	.LVL79
	.4byte	.LVL80-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL80-1
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
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
.LLST39:
	.4byte	.LVL79
	.4byte	.LVL80-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL80-1
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL79
	.4byte	.LVL80-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL80-1
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL65
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL76
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL64
	.4byte	.LVL66-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL66-1
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL77
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL64
	.4byte	.LVL66-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL66-1
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL75
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL64
	.4byte	.LVL66-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL66-1
	.4byte	.LVL78
	.2byte	0x3
	.byte	0x91
	.byte	0xec,0x7e
	.4byte	.LVL78
	.4byte	.LFE13
	.2byte	0x3
	.byte	0x72
	.byte	0xec,0x7e
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL64
	.4byte	.LVL68
	.2byte	0x3
	.byte	0x9
	.byte	0x92
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL74
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL62
	.4byte	.LVL63-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL63-1
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL62
	.4byte	.LVL63-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL63-1
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL43
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL46
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x3
	.byte	0x82
	.byte	0x58
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL43
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL47
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL43
	.4byte	.LVL47
	.2byte	0x3
	.byte	0x9
	.byte	0x92
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL58
	.4byte	.LVL60
	.2byte	0x3
	.byte	0x9
	.byte	0x92
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL58
	.4byte	.LVL59-1
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL50
	.4byte	.LVL53
	.2byte	0xb
	.byte	0x7a
	.byte	0x4
	.byte	0x6
	.byte	0x33
	.byte	0x24
	.byte	0x7e
	.byte	0
	.byte	0x4d
	.byte	0x25
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54-1
	.2byte	0xc
	.byte	0x7a
	.byte	0x4
	.byte	0x6
	.byte	0x33
	.byte	0x24
	.byte	0x7a
	.byte	0
	.byte	0x6
	.byte	0x4d
	.byte	0x25
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x5
	.byte	0x7e
	.byte	0
	.byte	0x33
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54-1
	.2byte	0x6
	.byte	0x7a
	.byte	0
	.byte	0x6
	.byte	0x33
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL41
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL42-1
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL41
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL42-1
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL41
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL42-1
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL17
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL17
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL18-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LVL16
	.2byte	0x3
	.byte	0x82
	.byte	0x58
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x3
	.byte	0x7c
	.byte	0x40
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL10-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5-1
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL5-1
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3-1
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1-1
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
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
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL40
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL19
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL24
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL29
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL19
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL23
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL28
	.4byte	.LFE9
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
	.byte	0x5c
	.4byte	.LVL23
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x3
	.byte	0x78
	.byte	0x40
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x6
	.byte	0x82
	.byte	0
	.byte	0x84
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL33
	.4byte	.LVL34-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL34-1
	.4byte	.LVL35
	.2byte	0x6
	.byte	0x82
	.byte	0
	.byte	0x78
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL38-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL38-1
	.4byte	.LVL39
	.2byte	0x6
	.byte	0x82
	.byte	0
	.byte	0x78
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL22
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL26
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL22
	.4byte	.LVL31
	.2byte	0x6
	.byte	0x8
	.byte	0x40
	.byte	0x83
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL22
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x63
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
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB2
	.4byte	.LFE2
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF38:
	.string	"mbedtls_sha256_clone"
.LASF9:
	.string	"size_t"
.LASF47:
	.string	"exit"
.LASF15:
	.string	"is224"
.LASF13:
	.string	"state"
.LASF36:
	.string	"mbedtls_sha256_starts"
.LASF14:
	.string	"buffer"
.LASF25:
	.string	"used"
.LASF29:
	.string	"left"
.LASF35:
	.string	"local"
.LASF48:
	.string	"mbedtls_sha256_update_ret"
.LASF23:
	.string	"mbedtls_sha256_ret"
.LASF40:
	.string	"mbedtls_sha256_init"
.LASF31:
	.string	"data"
.LASF1:
	.string	"unsigned char"
.LASF22:
	.string	"mbedtls_sha256_finish"
.LASF45:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/security/mbedtls_lts/mbedtls/library/sha256.c"
.LASF28:
	.string	"fill"
.LASF5:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF19:
	.string	"ilen"
.LASF46:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/build_out/mbedtls_lts"
.LASF41:
	.string	"memset"
.LASF37:
	.string	"mbedtls_sha256_starts_ret"
.LASF26:
	.string	"high"
.LASF8:
	.string	"unsigned int"
.LASF21:
	.string	"mbedtls_sha256"
.LASF7:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint8_t"
.LASF49:
	.string	"__builtin_memcpy"
.LASF16:
	.string	"mbedtls_sha256_context"
.LASF33:
	.string	"temp1"
.LASF6:
	.string	"long long int"
.LASF44:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF43:
	.string	"memcpy"
.LASF24:
	.string	"mbedtls_sha256_finish_ret"
.LASF39:
	.string	"mbedtls_sha256_free"
.LASF34:
	.string	"temp2"
.LASF30:
	.string	"mbedtls_sha256_process"
.LASF2:
	.string	"short int"
.LASF20:
	.string	"output"
.LASF27:
	.string	"mbedtls_sha256_update"
.LASF12:
	.string	"total"
.LASF4:
	.string	"long int"
.LASF17:
	.string	"char"
.LASF18:
	.string	"input"
.LASF0:
	.string	"signed char"
.LASF11:
	.string	"uint32_t"
.LASF42:
	.string	"mbedtls_platform_zeroize"
.LASF32:
	.string	"mbedtls_internal_sha256_process"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
