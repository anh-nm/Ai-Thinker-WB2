	.file	"ecp_curves.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.add32,"ax",@progbits
	.align	1
	.type	add32, @function
add32:
.LFB9:
	.file 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/security/mbedtls_lts/mbedtls/library/ecp_curves.c"
	.loc 1 976 1
	.cfi_startproc
.LVL0:
	.loc 1 977 5
	.loc 1 977 10 is_stmt 0
	lw	a4,0(a0)
	add	a5,a1,a4
	sw	a5,0(a0)
	.loc 1 978 5 is_stmt 1
	.loc 1 978 22 is_stmt 0
	sltu	a5,a5,a1
	.loc 1 978 12
	lbu	a1,0(a2)
.LVL1:
	add	a5,a5,a1
	sb	a5,0(a2)
	.loc 1 979 1
	ret
	.cfi_endproc
.LFE9:
	.size	add32, .-add32
	.section	.text.sub32,"ax",@progbits
	.align	1
	.type	sub32, @function
sub32:
.LFB10:
	.loc 1 982 1 is_stmt 1
	.cfi_startproc
.LVL2:
	.loc 1 983 5
	.loc 1 983 22 is_stmt 0
	lw	a5,0(a0)
	sltu	a4,a5,a1
	.loc 1 983 12
	lbu	a5,0(a2)
	sub	a5,a5,a4
	sb	a5,0(a2)
	.loc 1 984 5 is_stmt 1
	.loc 1 984 10 is_stmt 0
	lw	a5,0(a0)
	sub	a1,a5,a1
.LVL3:
	sw	a1,0(a0)
	.loc 1 985 1
	ret
	.cfi_endproc
.LFE10:
	.size	sub32, .-sub32
	.section	.text.ecp_mod_p256,"ax",@progbits
	.align	1
	.type	ecp_mod_p256, @function
ecp_mod_p256:
.LFB12:
	.loc 1 1081 1 is_stmt 1
	.cfi_startproc
.LVL4:
	.loc 1 1082 5
	.loc 1 1082 24
	.loc 1 1081 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 1082 107
	li	a1,17
	.loc 1 1081 1
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.loc 1 1081 1
	mv	s0,a0
	.loc 1 1082 36
	sb	zero,11(sp)
	.loc 1 1082 47 is_stmt 1
	.loc 1 1082 61
.LVL5:
	.loc 1 1082 89
	.loc 1 1082 94
	.loc 1 1082 107 is_stmt 0
	call	mbedtls_mpi_grow
.LVL6:
	mv	s1,a0
.LVL7:
	.loc 1 1082 96
	bne	a0,zero,.L3
	.loc 1 1082 213 is_stmt 1 discriminator 2
	.loc 1 1082 220 discriminator 2
	.loc 1 1082 227 is_stmt 0 discriminator 2
	lw	a5,8(s0)
	.loc 1 1084 5 discriminator 2
	addi	a2,sp,11
	addi	a0,sp,12
	.loc 1 1082 230 discriminator 2
	lw	a4,0(a5)
	.loc 1 1084 5 discriminator 2
	lw	a1,32(a5)
	.loc 1 1082 224 discriminator 2
	sw	a4,12(sp)
	.loc 1 1082 234 is_stmt 1 discriminator 2
	.loc 1 1082 235 discriminator 2
	.loc 1 1084 5 discriminator 2
	call	add32
.LVL8:
	.loc 1 1084 32 discriminator 2
	.loc 1 1084 34 discriminator 2
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,36(a5)
	call	add32
.LVL9:
	.loc 1 1084 61 discriminator 2
	.loc 1 1085 5 discriminator 2
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,44(a5)
	call	sub32
.LVL10:
	.loc 1 1085 33 discriminator 2
	.loc 1 1085 35 discriminator 2
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,48(a5)
	call	sub32
.LVL11:
	.loc 1 1085 63 discriminator 2
	.loc 1 1085 65 discriminator 2
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,52(a5)
	call	sub32
.LVL12:
	.loc 1 1085 93 discriminator 2
	.loc 1 1085 95 discriminator 2
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,56(a5)
	call	sub32
.LVL13:
	.loc 1 1085 123 discriminator 2
	.loc 1 1085 125 discriminator 2
	.loc 1 1085 126 is_stmt 0 discriminator 2
	lw	a5,8(s0)
	.loc 1 1085 133 discriminator 2
	lw	a4,12(sp)
	.loc 1 1085 190 discriminator 2
	addi	a2,sp,11
	.loc 1 1085 133 discriminator 2
	sw	a4,0(a5)
	.loc 1 1085 139 is_stmt 1 discriminator 2
	.loc 1 1085 141 discriminator 2
.LVL14:
	.loc 1 1085 146 discriminator 2
	.loc 1 1085 156 is_stmt 0 discriminator 2
	lw	a5,8(s0)
	.loc 1 1085 165 discriminator 2
	lb	a1,11(sp)
	.loc 1 1085 172 discriminator 2
	sb	zero,11(sp)
	.loc 1 1085 150 discriminator 2
	lw	a5,4(a5)
	sw	a5,12(sp)
	.loc 1 1085 160 is_stmt 1 discriminator 2
	.loc 1 1085 162 discriminator 2
.LVL15:
	.loc 1 1085 170 discriminator 2
	.loc 1 1085 177 discriminator 2
	.loc 1 1085 179 is_stmt 0 discriminator 2
	bge	a1,zero,.L6
	.loc 1 1085 190 is_stmt 1 discriminator 1
	neg	a1,a1
.LVL16:
	addi	a0,sp,12
	call	sub32
.LVL17:
.L7:
	.loc 1 1085 241 discriminator 4
	.loc 1 1087 5 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,36(a5)
	call	add32
.LVL18:
	.loc 1 1087 32 discriminator 4
	.loc 1 1087 34 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,40(a5)
	call	add32
.LVL19:
	.loc 1 1087 62 discriminator 4
	.loc 1 1088 5 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,48(a5)
	call	sub32
.LVL20:
	.loc 1 1088 33 discriminator 4
	.loc 1 1088 35 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,52(a5)
	call	sub32
.LVL21:
	.loc 1 1088 63 discriminator 4
	.loc 1 1088 65 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,56(a5)
	call	sub32
.LVL22:
	.loc 1 1088 93 discriminator 4
	.loc 1 1088 95 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,60(a5)
	call	sub32
.LVL23:
	.loc 1 1088 123 discriminator 4
	.loc 1 1088 125 discriminator 4
	.loc 1 1088 126 is_stmt 0 discriminator 4
	lw	a5,8(s0)
	.loc 1 1088 133 discriminator 4
	lw	a4,12(sp)
	.loc 1 1088 165 discriminator 4
	lb	a1,11(sp)
	.loc 1 1088 172 discriminator 4
	sb	zero,11(sp)
	.loc 1 1088 133 discriminator 4
	sw	a4,4(a5)
	.loc 1 1088 139 is_stmt 1 discriminator 4
	.loc 1 1088 141 discriminator 4
.LVL24:
	.loc 1 1088 146 discriminator 4
	.loc 1 1088 156 is_stmt 0 discriminator 4
	lw	a5,8(s0)
	.loc 1 1088 190 discriminator 4
	addi	a2,sp,11
	.loc 1 1088 150 discriminator 4
	lw	a5,8(a5)
	sw	a5,12(sp)
	.loc 1 1088 160 is_stmt 1 discriminator 4
	.loc 1 1088 162 discriminator 4
.LVL25:
	.loc 1 1088 170 discriminator 4
	.loc 1 1088 177 discriminator 4
	.loc 1 1088 179 is_stmt 0 discriminator 4
	bge	a1,zero,.L8
	.loc 1 1088 190 is_stmt 1 discriminator 1
	neg	a1,a1
.LVL26:
	addi	a0,sp,12
	call	sub32
.LVL27:
.L9:
	.loc 1 1088 241 discriminator 4
	.loc 1 1090 5 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,40(a5)
	call	add32
.LVL28:
	.loc 1 1090 33 discriminator 4
	.loc 1 1090 35 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,44(a5)
	call	add32
.LVL29:
	.loc 1 1090 63 discriminator 4
	.loc 1 1091 5 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,52(a5)
	call	sub32
.LVL30:
	.loc 1 1091 33 discriminator 4
	.loc 1 1091 35 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,56(a5)
	call	sub32
.LVL31:
	.loc 1 1091 63 discriminator 4
	.loc 1 1091 65 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,60(a5)
	call	sub32
.LVL32:
	.loc 1 1091 93 discriminator 4
	.loc 1 1091 95 discriminator 4
	.loc 1 1091 96 is_stmt 0 discriminator 4
	lw	a5,8(s0)
	.loc 1 1091 103 discriminator 4
	lw	a4,12(sp)
	.loc 1 1091 135 discriminator 4
	lb	a1,11(sp)
	.loc 1 1091 142 discriminator 4
	sb	zero,11(sp)
	.loc 1 1091 103 discriminator 4
	sw	a4,8(a5)
	.loc 1 1091 109 is_stmt 1 discriminator 4
	.loc 1 1091 111 discriminator 4
.LVL33:
	.loc 1 1091 116 discriminator 4
	.loc 1 1091 126 is_stmt 0 discriminator 4
	lw	a5,8(s0)
	.loc 1 1091 160 discriminator 4
	addi	a2,sp,11
	.loc 1 1091 120 discriminator 4
	lw	a5,12(a5)
	sw	a5,12(sp)
	.loc 1 1091 130 is_stmt 1 discriminator 4
	.loc 1 1091 132 discriminator 4
.LVL34:
	.loc 1 1091 140 discriminator 4
	.loc 1 1091 147 discriminator 4
	.loc 1 1091 149 is_stmt 0 discriminator 4
	bge	a1,zero,.L10
	.loc 1 1091 160 is_stmt 1 discriminator 1
	neg	a1,a1
.LVL35:
	addi	a0,sp,12
	call	sub32
.LVL36:
.L11:
	.loc 1 1091 211 discriminator 4
	.loc 1 1093 5 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,44(a5)
	call	add32
.LVL37:
	.loc 1 1093 33 discriminator 4
	.loc 1 1093 35 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,44(a5)
	call	add32
.LVL38:
	.loc 1 1093 63 discriminator 4
	.loc 1 1093 65 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,48(a5)
	call	add32
.LVL39:
	.loc 1 1093 93 discriminator 4
	.loc 1 1093 95 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,48(a5)
	call	add32
.LVL40:
	.loc 1 1093 123 discriminator 4
	.loc 1 1093 125 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,52(a5)
	call	add32
.LVL41:
	.loc 1 1093 153 discriminator 4
	.loc 1 1094 5 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,60(a5)
	call	sub32
.LVL42:
	.loc 1 1094 33 discriminator 4
	.loc 1 1094 35 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,32(a5)
	call	sub32
.LVL43:
	.loc 1 1094 62 discriminator 4
	.loc 1 1094 64 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,36(a5)
	call	sub32
.LVL44:
	.loc 1 1094 91 discriminator 4
	.loc 1 1094 93 discriminator 4
	.loc 1 1094 94 is_stmt 0 discriminator 4
	lw	a5,8(s0)
	.loc 1 1094 101 discriminator 4
	lw	a4,12(sp)
	.loc 1 1094 133 discriminator 4
	lb	a1,11(sp)
	.loc 1 1094 140 discriminator 4
	sb	zero,11(sp)
	.loc 1 1094 101 discriminator 4
	sw	a4,12(a5)
	.loc 1 1094 107 is_stmt 1 discriminator 4
	.loc 1 1094 109 discriminator 4
.LVL45:
	.loc 1 1094 114 discriminator 4
	.loc 1 1094 124 is_stmt 0 discriminator 4
	lw	a5,8(s0)
	.loc 1 1094 158 discriminator 4
	addi	a2,sp,11
	.loc 1 1094 118 discriminator 4
	lw	a5,16(a5)
	sw	a5,12(sp)
	.loc 1 1094 128 is_stmt 1 discriminator 4
	.loc 1 1094 130 discriminator 4
.LVL46:
	.loc 1 1094 138 discriminator 4
	.loc 1 1094 145 discriminator 4
	.loc 1 1094 147 is_stmt 0 discriminator 4
	bge	a1,zero,.L12
	.loc 1 1094 158 is_stmt 1 discriminator 1
	neg	a1,a1
.LVL47:
	addi	a0,sp,12
	call	sub32
.LVL48:
.L13:
	.loc 1 1094 209 discriminator 4
	.loc 1 1096 5 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,48(a5)
	call	add32
.LVL49:
	.loc 1 1096 33 discriminator 4
	.loc 1 1096 35 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,48(a5)
	call	add32
.LVL50:
	.loc 1 1096 63 discriminator 4
	.loc 1 1096 65 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,52(a5)
	call	add32
.LVL51:
	.loc 1 1096 93 discriminator 4
	.loc 1 1096 95 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,52(a5)
	call	add32
.LVL52:
	.loc 1 1096 123 discriminator 4
	.loc 1 1096 125 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,56(a5)
	call	add32
.LVL53:
	.loc 1 1096 153 discriminator 4
	.loc 1 1097 5 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,36(a5)
	call	sub32
.LVL54:
	.loc 1 1097 32 discriminator 4
	.loc 1 1097 34 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,40(a5)
	call	sub32
.LVL55:
	.loc 1 1097 62 discriminator 4
	.loc 1 1097 64 discriminator 4
	.loc 1 1097 65 is_stmt 0 discriminator 4
	lw	a5,8(s0)
	.loc 1 1097 72 discriminator 4
	lw	a4,12(sp)
	.loc 1 1097 104 discriminator 4
	lb	a1,11(sp)
	.loc 1 1097 111 discriminator 4
	sb	zero,11(sp)
	.loc 1 1097 72 discriminator 4
	sw	a4,16(a5)
	.loc 1 1097 78 is_stmt 1 discriminator 4
	.loc 1 1097 80 discriminator 4
.LVL56:
	.loc 1 1097 85 discriminator 4
	.loc 1 1097 95 is_stmt 0 discriminator 4
	lw	a5,8(s0)
	.loc 1 1097 129 discriminator 4
	addi	a2,sp,11
	.loc 1 1097 89 discriminator 4
	lw	a5,20(a5)
	sw	a5,12(sp)
	.loc 1 1097 99 is_stmt 1 discriminator 4
	.loc 1 1097 101 discriminator 4
.LVL57:
	.loc 1 1097 109 discriminator 4
	.loc 1 1097 116 discriminator 4
	.loc 1 1097 118 is_stmt 0 discriminator 4
	bge	a1,zero,.L14
	.loc 1 1097 129 is_stmt 1 discriminator 1
	neg	a1,a1
.LVL58:
	addi	a0,sp,12
	call	sub32
.LVL59:
.L15:
	.loc 1 1097 180 discriminator 4
	.loc 1 1099 5 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,52(a5)
	call	add32
.LVL60:
	.loc 1 1099 33 discriminator 4
	.loc 1 1099 35 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,52(a5)
	call	add32
.LVL61:
	.loc 1 1099 63 discriminator 4
	.loc 1 1099 65 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,56(a5)
	call	add32
.LVL62:
	.loc 1 1099 93 discriminator 4
	.loc 1 1099 95 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,56(a5)
	call	add32
.LVL63:
	.loc 1 1099 123 discriminator 4
	.loc 1 1099 125 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,60(a5)
	call	add32
.LVL64:
	.loc 1 1099 153 discriminator 4
	.loc 1 1100 5 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,40(a5)
	call	sub32
.LVL65:
	.loc 1 1100 33 discriminator 4
	.loc 1 1100 35 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,44(a5)
	call	sub32
.LVL66:
	.loc 1 1100 63 discriminator 4
	.loc 1 1100 65 discriminator 4
	.loc 1 1100 66 is_stmt 0 discriminator 4
	lw	a5,8(s0)
	.loc 1 1100 73 discriminator 4
	lw	a4,12(sp)
	.loc 1 1100 105 discriminator 4
	lb	a1,11(sp)
	.loc 1 1100 112 discriminator 4
	sb	zero,11(sp)
	.loc 1 1100 73 discriminator 4
	sw	a4,20(a5)
	.loc 1 1100 79 is_stmt 1 discriminator 4
	.loc 1 1100 81 discriminator 4
.LVL67:
	.loc 1 1100 86 discriminator 4
	.loc 1 1100 96 is_stmt 0 discriminator 4
	lw	a5,8(s0)
	.loc 1 1100 130 discriminator 4
	addi	a2,sp,11
	.loc 1 1100 90 discriminator 4
	lw	a5,24(a5)
	sw	a5,12(sp)
	.loc 1 1100 100 is_stmt 1 discriminator 4
	.loc 1 1100 102 discriminator 4
.LVL68:
	.loc 1 1100 110 discriminator 4
	.loc 1 1100 117 discriminator 4
	.loc 1 1100 119 is_stmt 0 discriminator 4
	bge	a1,zero,.L16
	.loc 1 1100 130 is_stmt 1 discriminator 1
	neg	a1,a1
.LVL69:
	addi	a0,sp,12
	call	sub32
.LVL70:
.L17:
	.loc 1 1100 181 discriminator 4
	.loc 1 1102 5 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,56(a5)
	call	add32
.LVL71:
	.loc 1 1102 33 discriminator 4
	.loc 1 1102 35 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,56(a5)
	call	add32
.LVL72:
	.loc 1 1102 63 discriminator 4
	.loc 1 1102 65 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,60(a5)
	call	add32
.LVL73:
	.loc 1 1102 93 discriminator 4
	.loc 1 1102 95 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,60(a5)
	call	add32
.LVL74:
	.loc 1 1102 123 discriminator 4
	.loc 1 1102 125 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,56(a5)
	call	add32
.LVL75:
	.loc 1 1102 153 discriminator 4
	.loc 1 1102 155 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,52(a5)
	call	add32
.LVL76:
	.loc 1 1102 183 discriminator 4
	.loc 1 1103 5 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,32(a5)
	call	sub32
.LVL77:
	.loc 1 1103 32 discriminator 4
	.loc 1 1103 34 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,36(a5)
	call	sub32
.LVL78:
	.loc 1 1103 61 discriminator 4
	.loc 1 1103 63 discriminator 4
	.loc 1 1103 64 is_stmt 0 discriminator 4
	lw	a5,8(s0)
	.loc 1 1103 71 discriminator 4
	lw	a4,12(sp)
	.loc 1 1103 103 discriminator 4
	lb	a1,11(sp)
	.loc 1 1103 110 discriminator 4
	sb	zero,11(sp)
	.loc 1 1103 71 discriminator 4
	sw	a4,24(a5)
	.loc 1 1103 77 is_stmt 1 discriminator 4
	.loc 1 1103 79 discriminator 4
.LVL79:
	.loc 1 1103 84 discriminator 4
	.loc 1 1103 94 is_stmt 0 discriminator 4
	lw	a5,8(s0)
	.loc 1 1103 128 discriminator 4
	addi	a2,sp,11
	.loc 1 1103 88 discriminator 4
	lw	a5,28(a5)
	sw	a5,12(sp)
	.loc 1 1103 98 is_stmt 1 discriminator 4
	.loc 1 1103 100 discriminator 4
.LVL80:
	.loc 1 1103 108 discriminator 4
	.loc 1 1103 115 discriminator 4
	.loc 1 1103 117 is_stmt 0 discriminator 4
	bge	a1,zero,.L18
	.loc 1 1103 128 is_stmt 1 discriminator 1
	neg	a1,a1
.LVL81:
	addi	a0,sp,12
	call	sub32
.LVL82:
.L19:
	.loc 1 1103 179 discriminator 4
	.loc 1 1105 5 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,60(a5)
	call	add32
.LVL83:
	.loc 1 1105 33 discriminator 4
	.loc 1 1105 35 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,60(a5)
	call	add32
.LVL84:
	.loc 1 1105 63 discriminator 4
	.loc 1 1105 65 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,60(a5)
	call	add32
.LVL85:
	.loc 1 1105 93 discriminator 4
	.loc 1 1105 95 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,32(a5)
	call	add32
.LVL86:
	.loc 1 1105 122 discriminator 4
	.loc 1 1106 5 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,40(a5)
	call	sub32
.LVL87:
	.loc 1 1106 33 discriminator 4
	.loc 1 1106 35 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,44(a5)
	call	sub32
.LVL88:
	.loc 1 1106 63 discriminator 4
	.loc 1 1106 65 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,48(a5)
	call	sub32
.LVL89:
	.loc 1 1106 93 discriminator 4
	.loc 1 1106 95 discriminator 4
	lw	a5,8(s0)
	addi	a2,sp,11
	addi	a0,sp,12
	lw	a1,52(a5)
	call	sub32
.LVL90:
	.loc 1 1106 123 discriminator 4
	.loc 1 1106 125 discriminator 4
	.loc 1 1106 126 is_stmt 0 discriminator 4
	lw	a5,8(s0)
	.loc 1 1106 133 discriminator 4
	lw	a4,12(sp)
	sw	a4,28(a5)
	.loc 1 1106 139 is_stmt 1 discriminator 4
	.loc 1 1106 141 discriminator 4
.LVL91:
	.loc 1 1106 146 discriminator 4
	.loc 1 1106 167 discriminator 4
	.loc 1 1106 162 is_stmt 0 discriminator 4
	lbu	a5,11(sp)
	.loc 1 1106 168 discriminator 4
	lw	a4,8(s0)
	.loc 1 1106 162 discriminator 4
	slli	a3,a5,24
	srai	a3,a3,24
	bge	a3,zero,.L20
	li	a5,0
.L20:
	slli	a5,a5,24
	srai	a5,a5,24
	sw	a5,32(a4)
	.loc 1 1106 181 is_stmt 1 discriminator 4
	.loc 1 1106 183 discriminator 4
	.loc 1 1106 187 is_stmt 0 discriminator 4
	sw	zero,12(sp)
	.loc 1 1106 192 is_stmt 1 discriminator 4
	.loc 1 1106 142 is_stmt 0 discriminator 4
	li	a5,8
.LVL92:
.L21:
	.loc 1 1106 228 is_stmt 1 discriminator 1
	.loc 1 1106 197 discriminator 1
	lw	a4,4(s0)
	addi	a5,a5,1
.LVL93:
	bgtu	a4,a5,.L22
	.loc 1 1106 232 discriminator 4
	.loc 1 1106 238 is_stmt 0 discriminator 4
	lb	a2,11(sp)
	.loc 1 1106 234 discriminator 4
	bge	a2,zero,.L3
	li	a5,0
.LVL94:
.LBB32:
.LBB33:
	.loc 1 1032 5
	li	a1,36
.L24:
	.loc 1 1034 9 is_stmt 1
	.loc 1 1034 46 is_stmt 0
	lw	a4,8(s0)
	add	a4,a4,a5
	.loc 1 1034 40
	lw	a3,0(a4)
	.loc 1 1032 5
	addi	a5,a5,4
	.loc 1 1034 40
	not	a3,a3
	.loc 1 1034 17
	sw	a3,0(a4)
	.loc 1 1032 61 is_stmt 1
	.loc 1 1032 17
	.loc 1 1032 5 is_stmt 0
	bne	a5,a1,.L24
	li	a5,0
	.loc 1 1040 27
	li	a1,36
.L26:
	.loc 1 1038 5 is_stmt 1
	.loc 1 1039 9
	.loc 1 1039 15 is_stmt 0
	lw	a4,8(s0)
	add	a4,a4,a5
	.loc 1 1039 9
	lw	a3,0(a4)
	addi	a3,a3,1
	sw	a3,0(a4)
	.loc 1 1040 10 is_stmt 1
	.loc 1 1040 13 is_stmt 0
	lw	a4,8(s0)
	.loc 1 1040 16
	add	a3,a4,a5
	.loc 1 1040 5
	lw	a3,0(a3)
	bne	a3,zero,.L25
	.loc 1 1040 27
	addi	a5,a5,4
	bne	a5,a1,.L26
.L25:
	.loc 1 1043 5 is_stmt 1
	.loc 1 1043 10 is_stmt 0
	li	a5,-1
	sw	a5,0(s0)
	.loc 1 1047 5 is_stmt 1
.LVL95:
	.loc 1 1052 5
	.loc 1 1052 48 is_stmt 0
	lw	a5,32(a4)
	sub	a5,a5,a2
	sw	a5,32(a4)
.LBE33:
.LBE32:
	.loc 1 1106 283 is_stmt 1
	.loc 1 1109 5
.L5:
.LVL96:
.L3:
	.loc 1 1110 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL97:
	mv	a0,s1
	lw	s1,20(sp)
	.cfi_restore 9
.LVL98:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL99:
.L6:
	.cfi_restore_state
	.loc 1 1085 219 is_stmt 1 discriminator 2
	addi	a0,sp,12
	call	add32
.LVL100:
	j	.L7
.LVL101:
.L8:
	.loc 1 1088 219 discriminator 2
	addi	a0,sp,12
	call	add32
.LVL102:
	j	.L9
.LVL103:
.L10:
	.loc 1 1091 189 discriminator 2
	addi	a0,sp,12
	call	add32
.LVL104:
	j	.L11
.LVL105:
.L12:
	.loc 1 1094 187 discriminator 2
	addi	a0,sp,12
	call	add32
.LVL106:
	j	.L13
.LVL107:
.L14:
	.loc 1 1097 158 discriminator 2
	addi	a0,sp,12
	call	add32
.LVL108:
	j	.L15
.LVL109:
.L16:
	.loc 1 1100 159 discriminator 2
	addi	a0,sp,12
	call	add32
.LVL110:
	j	.L17
.LVL111:
.L18:
	.loc 1 1103 157 discriminator 2
	addi	a0,sp,12
	call	add32
.LVL112:
	j	.L19
.LVL113:
.L22:
	.loc 1 1106 214 discriminator 3
	.loc 1 1106 222 is_stmt 0 discriminator 3
	lw	a4,8(s0)
	slli	a3,a5,2
	add	a4,a4,a3
	lw	a3,12(sp)
	sw	a3,0(a4)
	j	.L21
	.cfi_endproc
.LFE12:
	.size	ecp_mod_p256, .-ecp_mod_p256
	.section	.text.mbedtls_ecp_group_load,"ax",@progbits
	.align	1
	.globl	mbedtls_ecp_group_load
	.type	mbedtls_ecp_group_load, @function
mbedtls_ecp_group_load:
.LFB8:
	.loc 1 754 1 is_stmt 1
	.cfi_startproc
.LVL114:
	.loc 1 755 5
	.loc 1 755 10
	.loc 1 755 17
	.loc 1 756 5
	.loc 1 754 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.loc 1 754 1
	mv	s0,a0
	mv	s1,a1
	.loc 1 756 5
	call	mbedtls_ecp_group_free
.LVL115:
	.loc 1 758 5 is_stmt 1
	mv	a0,s0
	call	mbedtls_ecp_group_init
.LVL116:
	.loc 1 760 5
	.loc 1 762 5 is_stmt 0
	li	a5,3
	.loc 1 760 13
	sw	s1,0(s0)
	.loc 1 762 5 is_stmt 1
	bne	s1,a5,.L31
	.loc 1 778 13
.LBB50:
.LBB51:
.LBB52:
.LBB53:
	.loc 1 547 10 is_stmt 0
	lui	a4,%hi(.LANCHOR0)
	addi	a4,a4,%lo(.LANCHOR0)
.LBE53:
.LBE52:
.LBE51:
.LBE50:
	.loc 1 778 23
	lui	a5,%hi(ecp_mod_p256)
	addi	a5,a5,%lo(ecp_mod_p256)
.LBB112:
.LBB110:
.LBB59:
.LBB54:
	.loc 1 547 10
	sw	a4,12(s0)
.LBE54:
.LBE59:
.LBB60:
.LBB61:
	lui	a4,%hi(.LANCHOR1)
.LBE61:
.LBE60:
.LBE110:
.LBE112:
	.loc 1 778 23
	sw	a5,100(s0)
	.loc 1 778 38 is_stmt 1
	.loc 1 779 13
.LVL117:
.LBB113:
.LBB111:
	.loc 1 572 5
.LBB65:
.LBB55:
	.loc 1 545 5
.LBE55:
.LBE65:
.LBB66:
.LBB62:
	.loc 1 547 10 is_stmt 0
	addi	a4,a4,%lo(.LANCHOR1)
.LBE62:
.LBE66:
.LBB67:
.LBB56:
	.loc 1 546 10
	li	a5,8
	sw	a5,8(s0)
.LBE56:
.LBE67:
.LBB68:
.LBB63:
	sw	a5,32(s0)
	.loc 1 547 10
	sw	a4,36(s0)
.LBE63:
.LBE68:
.LBB69:
.LBB70:
	.loc 1 546 10
	sw	a5,80(s0)
.LBE70:
.LBE69:
.LBB75:
.LBB76:
	sw	a5,44(s0)
.LBE76:
.LBE75:
.LBB81:
.LBB82:
	sw	a5,56(s0)
.LBE82:
.LBE81:
.LBB87:
.LBB71:
	.loc 1 547 10
	lui	a4,%hi(.LANCHOR2)
.LBE71:
.LBE87:
.LBB88:
.LBB83:
	lui	a5,%hi(.LANCHOR4)
.LBE83:
.LBE88:
.LBB89:
.LBB72:
	addi	a4,a4,%lo(.LANCHOR2)
.LBE72:
.LBE89:
.LBB90:
.LBB84:
	addi	a5,a5,%lo(.LANCHOR4)
.LBE84:
.LBE90:
.LBB91:
.LBB73:
	sw	a4,84(s0)
.LBE73:
.LBE91:
.LBB92:
.LBB85:
	sw	a5,60(s0)
.LBE85:
.LBE92:
.LBB93:
.LBB77:
	lui	a4,%hi(.LANCHOR3)
.LBE77:
.LBE93:
.LBB94:
.LBB95:
	.loc 1 558 10
	lui	a5,%hi(.LANCHOR5)
.LBE95:
.LBE94:
.LBB99:
.LBB57:
	.loc 1 545 10
	li	s1,1
.LVL118:
.LBE57:
.LBE99:
.LBB100:
.LBB78:
	.loc 1 547 10
	addi	a4,a4,%lo(.LANCHOR3)
.LBE78:
.LBE100:
.LBB101:
.LBB96:
	.loc 1 558 10
	addi	a5,a5,%lo(.LANCHOR5)
.LBE96:
.LBE101:
.LBB102:
.LBB79:
	.loc 1 547 10
	sw	a4,48(s0)
.LBE79:
.LBE102:
.LBB103:
.LBB97:
	.loc 1 558 10
	sw	a5,72(s0)
.LBE97:
.LBE103:
.LBB104:
.LBB58:
	.loc 1 545 10
	sw	s1,4(s0)
	.loc 1 546 5 is_stmt 1
	.loc 1 547 5
.LVL119:
.LBE58:
.LBE104:
	.loc 1 573 5
	.loc 1 575 5
.LBB105:
.LBB64:
	.loc 1 545 5
	.loc 1 545 10 is_stmt 0
	sw	s1,28(s0)
	.loc 1 546 5 is_stmt 1
	.loc 1 547 5
.LVL120:
.LBE64:
.LBE105:
	.loc 1 576 5
.LBB106:
.LBB74:
	.loc 1 545 5
	.loc 1 545 10 is_stmt 0
	sw	s1,76(s0)
	.loc 1 546 5 is_stmt 1
	.loc 1 547 5
.LVL121:
.LBE74:
.LBE106:
	.loc 1 578 5
.LBB107:
.LBB80:
	.loc 1 545 5
	.loc 1 545 10 is_stmt 0
	sw	s1,40(s0)
	.loc 1 546 5 is_stmt 1
	.loc 1 547 5
.LVL122:
.LBE80:
.LBE107:
	.loc 1 579 5
.LBB108:
.LBB86:
	.loc 1 545 5
	.loc 1 545 10 is_stmt 0
	sw	s1,52(s0)
	.loc 1 546 5 is_stmt 1
	.loc 1 547 5
.LVL123:
.LBE86:
.LBE108:
	.loc 1 580 5
.LBB109:
.LBB98:
	.loc 1 555 5
	.loc 1 556 5
	.loc 1 556 10 is_stmt 0
	sw	s1,64(s0)
	.loc 1 557 5 is_stmt 1
	.loc 1 557 10 is_stmt 0
	sw	s1,68(s0)
	.loc 1 558 5 is_stmt 1
.LVL124:
.LBE98:
.LBE109:
	.loc 1 582 5
	.loc 1 582 18 is_stmt 0
	addi	a0,s0,4
	call	mbedtls_mpi_bitlen
.LVL125:
	.loc 1 582 16
	sw	a0,88(s0)
	.loc 1 583 5 is_stmt 1
	.loc 1 583 18 is_stmt 0
	addi	a0,s0,76
	call	mbedtls_mpi_bitlen
.LVL126:
	.loc 1 583 16
	sw	a0,92(s0)
	.loc 1 585 5 is_stmt 1
	.loc 1 585 12 is_stmt 0
	sw	s1,96(s0)
	.loc 1 587 5 is_stmt 1
.LVL127:
.LBE111:
.LBE113:
	.loc 1 779 21 is_stmt 0
	li	a0,0
.L30:
	.loc 1 843 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL128:
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL129:
.L31:
	.cfi_restore_state
	.loc 1 840 13 is_stmt 1
	.loc 1 841 19 is_stmt 0
	li	a0,-20480
	.loc 1 840 21
	sw	zero,0(s0)
	.loc 1 841 13 is_stmt 1
	.loc 1 841 19 is_stmt 0
	addi	a0,a0,384
	j	.L30
	.cfi_endproc
.LFE8:
	.size	mbedtls_ecp_group_load, .-mbedtls_ecp_group_load
	.section	.rodata.secp256r1_b,"a"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	secp256r1_b, @object
	.size	secp256r1_b, 32
secp256r1_b:
	.word	668098635
	.word	1003371582
	.word	-866930442
	.word	1696401072
	.word	1989707452
	.word	-1276396203
	.word	-1439001625
	.word	1522939352
	.section	.rodata.secp256r1_gx,"a"
	.align	2
	.set	.LANCHOR3,. + 0
	.type	secp256r1_gx, @object
	.size	secp256r1_gx, 32
secp256r1_gx:
	.word	-661077354
	.word	-190760635
	.word	770388896
	.word	1996717441
	.word	1671708914
	.word	-121837851
	.word	-517193145
	.word	1796723186
	.section	.rodata.secp256r1_gy,"a"
	.align	2
	.set	.LANCHOR4,. + 0
	.type	secp256r1_gy, @object
	.size	secp256r1_gy, 32
secp256r1_gy:
	.word	935285237
	.word	-877248408
	.word	1798397646
	.word	734933847
	.word	2081398294
	.word	-1897403574
	.word	-31817829
	.word	1340293858
	.section	.rodata.secp256r1_n,"a"
	.align	2
	.set	.LANCHOR2,. + 0
	.type	secp256r1_n, @object
	.size	secp256r1_n, 32
secp256r1_n:
	.word	-60611247
	.word	-205927742
	.word	-1491624316
	.word	-1125713235
	.word	-1
	.word	-1
	.word	0
	.word	-1
	.section	.rodata.secp256r1_p,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	secp256r1_p, @object
	.size	secp256r1_p, 32
secp256r1_p:
	.word	-1
	.word	-1
	.word	-1
	.word	0
	.word	0
	.word	0
	.word	1
	.word	-1
	.section	.sdata.one.0,"aw"
	.align	2
	.set	.LANCHOR5,. + 0
	.type	one.0, @object
	.size	one.0, 4
one.0:
	.word	1
	.text
.Letext0:
	.file 2 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 3 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 4 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/security/mbedtls_lts/mbedtls/include/mbedtls/bignum.h"
	.file 5 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/security/mbedtls_lts/mbedtls/include/mbedtls/ecp.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf31
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF60
	.byte	0xc
	.4byte	.LASF61
	.4byte	.LASF62
	.4byte	.Ldebug_ranges0+0x138
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
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0xd1
	.byte	0x16
	.4byte	0x64
	.byte	0x4
	.4byte	.LASF10
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x48
	.byte	0x5
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x4
	.4byte	.LASF12
	.byte	0x4
	.byte	0xb2
	.byte	0x16
	.4byte	0x77
	.byte	0x6
	.4byte	0x8c
	.byte	0x7
	.4byte	.LASF13
	.byte	0xc
	.byte	0x4
	.byte	0xc0
	.byte	0x10
	.4byte	0xcc
	.byte	0x8
	.string	"s"
	.byte	0x4
	.byte	0xc2
	.byte	0x9
	.4byte	0x5d
	.byte	0
	.byte	0x8
	.string	"n"
	.byte	0x4
	.byte	0xc3
	.byte	0xc
	.4byte	0x6b
	.byte	0x4
	.byte	0x8
	.string	"p"
	.byte	0x4
	.byte	0xc4
	.byte	0x17
	.4byte	0xcc
	.byte	0x8
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x8c
	.byte	0x4
	.4byte	.LASF13
	.byte	0x4
	.byte	0xc6
	.byte	0x1
	.4byte	0x9d
	.byte	0xa
	.byte	0x7
	.byte	0x4
	.4byte	0x64
	.byte	0x5
	.byte	0x79
	.byte	0x1
	.4byte	0x141
	.byte	0xb
	.4byte	.LASF14
	.byte	0
	.byte	0xb
	.4byte	.LASF15
	.byte	0x1
	.byte	0xb
	.4byte	.LASF16
	.byte	0x2
	.byte	0xb
	.4byte	.LASF17
	.byte	0x3
	.byte	0xb
	.4byte	.LASF18
	.byte	0x4
	.byte	0xb
	.4byte	.LASF19
	.byte	0x5
	.byte	0xb
	.4byte	.LASF20
	.byte	0x6
	.byte	0xb
	.4byte	.LASF21
	.byte	0x7
	.byte	0xb
	.4byte	.LASF22
	.byte	0x8
	.byte	0xb
	.4byte	.LASF23
	.byte	0x9
	.byte	0xb
	.4byte	.LASF24
	.byte	0xa
	.byte	0xb
	.4byte	.LASF25
	.byte	0xb
	.byte	0xb
	.4byte	.LASF26
	.byte	0xc
	.byte	0xb
	.4byte	.LASF27
	.byte	0xd
	.byte	0
	.byte	0x4
	.4byte	.LASF28
	.byte	0x5
	.byte	0x88
	.byte	0x3
	.4byte	0xde
	.byte	0x7
	.4byte	.LASF29
	.byte	0x24
	.byte	0x5
	.byte	0xb1
	.byte	0x10
	.4byte	0x17c
	.byte	0x8
	.string	"X"
	.byte	0x5
	.byte	0xb3
	.byte	0x11
	.4byte	0xd2
	.byte	0
	.byte	0x8
	.string	"Y"
	.byte	0x5
	.byte	0xb4
	.byte	0x11
	.4byte	0xd2
	.byte	0xc
	.byte	0x8
	.string	"Z"
	.byte	0x5
	.byte	0xb5
	.byte	0x11
	.4byte	0xd2
	.byte	0x18
	.byte	0
	.byte	0x4
	.4byte	.LASF29
	.byte	0x5
	.byte	0xb7
	.byte	0x1
	.4byte	0x14d
	.byte	0xc
	.4byte	.LASF30
	.byte	0x7c
	.byte	0x5
	.2byte	0x104
	.byte	0x10
	.4byte	0x25a
	.byte	0xd
	.string	"id"
	.byte	0x5
	.2byte	0x106
	.byte	0x1a
	.4byte	0x141
	.byte	0
	.byte	0xd
	.string	"P"
	.byte	0x5
	.2byte	0x107
	.byte	0x11
	.4byte	0xd2
	.byte	0x4
	.byte	0xd
	.string	"A"
	.byte	0x5
	.2byte	0x108
	.byte	0x11
	.4byte	0xd2
	.byte	0x10
	.byte	0xd
	.string	"B"
	.byte	0x5
	.2byte	0x10a
	.byte	0x11
	.4byte	0xd2
	.byte	0x1c
	.byte	0xd
	.string	"G"
	.byte	0x5
	.2byte	0x10c
	.byte	0x17
	.4byte	0x17c
	.byte	0x28
	.byte	0xd
	.string	"N"
	.byte	0x5
	.2byte	0x10d
	.byte	0x11
	.4byte	0xd2
	.byte	0x4c
	.byte	0xe
	.4byte	.LASF31
	.byte	0x5
	.2byte	0x10e
	.byte	0xc
	.4byte	0x6b
	.byte	0x58
	.byte	0xe
	.4byte	.LASF32
	.byte	0x5
	.2byte	0x10f
	.byte	0xc
	.4byte	0x6b
	.byte	0x5c
	.byte	0xd
	.string	"h"
	.byte	0x5
	.2byte	0x112
	.byte	0x12
	.4byte	0x64
	.byte	0x60
	.byte	0xe
	.4byte	.LASF33
	.byte	0x5
	.2byte	0x113
	.byte	0xb
	.4byte	0x26f
	.byte	0x64
	.byte	0xe
	.4byte	.LASF34
	.byte	0x5
	.2byte	0x115
	.byte	0xb
	.4byte	0x28f
	.byte	0x68
	.byte	0xe
	.4byte	.LASF35
	.byte	0x5
	.2byte	0x116
	.byte	0xb
	.4byte	0x28f
	.byte	0x6c
	.byte	0xe
	.4byte	.LASF36
	.byte	0x5
	.2byte	0x117
	.byte	0xb
	.4byte	0x83
	.byte	0x70
	.byte	0xd
	.string	"T"
	.byte	0x5
	.2byte	0x118
	.byte	0x18
	.4byte	0x289
	.byte	0x74
	.byte	0xe
	.4byte	.LASF37
	.byte	0x5
	.2byte	0x119
	.byte	0xc
	.4byte	0x6b
	.byte	0x78
	.byte	0
	.byte	0xf
	.4byte	0x5d
	.4byte	0x269
	.byte	0x10
	.4byte	0x269
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0xd2
	.byte	0x9
	.byte	0x4
	.4byte	0x25a
	.byte	0xf
	.4byte	0x5d
	.4byte	0x289
	.byte	0x10
	.4byte	0x289
	.byte	0x10
	.4byte	0x83
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x17c
	.byte	0x9
	.byte	0x4
	.4byte	0x275
	.byte	0x11
	.4byte	.LASF30
	.byte	0x5
	.2byte	0x11b
	.byte	0x1
	.4byte	0x188
	.byte	0x12
	.4byte	0x98
	.4byte	0x2b2
	.byte	0x13
	.4byte	0x64
	.byte	0x7
	.byte	0
	.byte	0x6
	.4byte	0x2a2
	.byte	0x14
	.4byte	.LASF38
	.byte	0x1
	.byte	0x7f
	.byte	0x1f
	.4byte	0x2b2
	.byte	0x5
	.byte	0x3
	.4byte	secp256r1_p
	.byte	0x14
	.4byte	.LASF39
	.byte	0x1
	.byte	0x85
	.byte	0x1f
	.4byte	0x2b2
	.byte	0x5
	.byte	0x3
	.4byte	secp256r1_b
	.byte	0x14
	.4byte	.LASF40
	.byte	0x1
	.byte	0x8b
	.byte	0x1f
	.4byte	0x2b2
	.byte	0x5
	.byte	0x3
	.4byte	secp256r1_gx
	.byte	0x14
	.4byte	.LASF41
	.byte	0x1
	.byte	0x91
	.byte	0x1f
	.4byte	0x2b2
	.byte	0x5
	.byte	0x3
	.4byte	secp256r1_gy
	.byte	0x14
	.4byte	.LASF42
	.byte	0x1
	.byte	0x97
	.byte	0x1f
	.4byte	0x2b2
	.byte	0x5
	.byte	0x3
	.4byte	secp256r1_n
	.byte	0x15
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x438
	.byte	0xc
	.4byte	0x5d
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0xac6
	.byte	0x16
	.string	"N"
	.byte	0x1
	.2byte	0x438
	.byte	0x27
	.4byte	0x269
	.4byte	.LLST2
	.byte	0x17
	.string	"ret"
	.byte	0x1
	.2byte	0x43a
	.byte	0x9
	.4byte	0x5d
	.4byte	.LLST3
	.byte	0x18
	.string	"c"
	.byte	0x1
	.2byte	0x43a
	.byte	0x24
	.4byte	0x25
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0x17
	.string	"cc"
	.byte	0x1
	.2byte	0x43a
	.byte	0x2b
	.4byte	0x25
	.4byte	.LLST4
	.byte	0x18
	.string	"cur"
	.byte	0x1
	.2byte	0x43a
	.byte	0x38
	.4byte	0x77
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x17
	.string	"i"
	.byte	0x1
	.2byte	0x43a
	.byte	0x44
	.4byte	0x6b
	.4byte	.LLST5
	.byte	0x19
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x43a
	.byte	0x4b
	.4byte	0x6b
	.2byte	0x100
	.byte	0x1a
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x454
	.byte	0x1
	.4byte	.L5
	.byte	0x1b
	.4byte	0xac6
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.byte	0x1
	.2byte	0x452
	.byte	0xf4
	.4byte	0x3d8
	.byte	0x1c
	.4byte	0xaea
	.byte	0x1c
	.4byte	0xadf
	.byte	0x1c
	.4byte	0xad4
	.byte	0x1d
	.4byte	0xaf7
	.byte	0x1e
	.4byte	0xb02
	.4byte	.LLST6
	.byte	0
	.byte	0x1f
	.4byte	.LVL6
	.4byte	0xf01
	.4byte	0x3f1
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x41
	.byte	0
	.byte	0x1f
	.4byte	.LVL8
	.4byte	0xb63
	.4byte	0x40b
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL9
	.4byte	0xb63
	.4byte	0x425
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL10
	.4byte	0xb10
	.4byte	0x43f
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL11
	.4byte	0xb10
	.4byte	0x459
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL12
	.4byte	0xb10
	.4byte	0x473
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL13
	.4byte	0xb10
	.4byte	0x48d
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL17
	.4byte	0xb10
	.4byte	0x4a7
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL18
	.4byte	0xb63
	.4byte	0x4c1
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL19
	.4byte	0xb63
	.4byte	0x4db
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL20
	.4byte	0xb10
	.4byte	0x4f5
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL21
	.4byte	0xb10
	.4byte	0x50f
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL22
	.4byte	0xb10
	.4byte	0x529
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL23
	.4byte	0xb10
	.4byte	0x543
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL27
	.4byte	0xb10
	.4byte	0x55d
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL28
	.4byte	0xb63
	.4byte	0x577
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL29
	.4byte	0xb63
	.4byte	0x591
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL30
	.4byte	0xb10
	.4byte	0x5ab
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL31
	.4byte	0xb10
	.4byte	0x5c5
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL32
	.4byte	0xb10
	.4byte	0x5df
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL36
	.4byte	0xb10
	.4byte	0x5f9
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL37
	.4byte	0xb63
	.4byte	0x613
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL38
	.4byte	0xb63
	.4byte	0x62d
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL39
	.4byte	0xb63
	.4byte	0x647
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL40
	.4byte	0xb63
	.4byte	0x661
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL41
	.4byte	0xb63
	.4byte	0x67b
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL42
	.4byte	0xb10
	.4byte	0x695
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL43
	.4byte	0xb10
	.4byte	0x6af
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL44
	.4byte	0xb10
	.4byte	0x6c9
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL48
	.4byte	0xb10
	.4byte	0x6e3
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL49
	.4byte	0xb63
	.4byte	0x6fd
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL50
	.4byte	0xb63
	.4byte	0x717
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL51
	.4byte	0xb63
	.4byte	0x731
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL52
	.4byte	0xb63
	.4byte	0x74b
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL53
	.4byte	0xb63
	.4byte	0x765
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL54
	.4byte	0xb10
	.4byte	0x77f
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL55
	.4byte	0xb10
	.4byte	0x799
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL59
	.4byte	0xb10
	.4byte	0x7b3
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL60
	.4byte	0xb63
	.4byte	0x7cd
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL61
	.4byte	0xb63
	.4byte	0x7e7
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL62
	.4byte	0xb63
	.4byte	0x801
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL63
	.4byte	0xb63
	.4byte	0x81b
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL64
	.4byte	0xb63
	.4byte	0x835
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL65
	.4byte	0xb10
	.4byte	0x84f
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL66
	.4byte	0xb10
	.4byte	0x869
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL70
	.4byte	0xb10
	.4byte	0x883
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL71
	.4byte	0xb63
	.4byte	0x89d
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL72
	.4byte	0xb63
	.4byte	0x8b7
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL73
	.4byte	0xb63
	.4byte	0x8d1
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL74
	.4byte	0xb63
	.4byte	0x8eb
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL75
	.4byte	0xb63
	.4byte	0x905
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL76
	.4byte	0xb63
	.4byte	0x91f
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL77
	.4byte	0xb10
	.4byte	0x939
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL78
	.4byte	0xb10
	.4byte	0x953
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL82
	.4byte	0xb10
	.4byte	0x96d
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL83
	.4byte	0xb63
	.4byte	0x987
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL84
	.4byte	0xb63
	.4byte	0x9a1
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL85
	.4byte	0xb63
	.4byte	0x9bb
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL86
	.4byte	0xb63
	.4byte	0x9d5
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL87
	.4byte	0xb10
	.4byte	0x9ef
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL88
	.4byte	0xb10
	.4byte	0xa09
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL89
	.4byte	0xb10
	.4byte	0xa23
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL90
	.4byte	0xb10
	.4byte	0xa3d
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6b
	.byte	0
	.byte	0x1f
	.4byte	.LVL100
	.4byte	0xb63
	.4byte	0xa51
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x1f
	.4byte	.LVL102
	.4byte	0xb63
	.4byte	0xa65
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x1f
	.4byte	.LVL104
	.4byte	0xb63
	.4byte	0xa79
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x1f
	.4byte	.LVL106
	.4byte	0xb63
	.4byte	0xa8d
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x1f
	.4byte	.LVL108
	.4byte	0xb63
	.4byte	0xaa1
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x1f
	.4byte	.LVL110
	.4byte	0xb63
	.4byte	0xab5
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x21
	.4byte	.LVL112
	.4byte	0xb63
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x401
	.byte	0x6
	.byte	0x1
	.4byte	0xb10
	.byte	0x23
	.string	"N"
	.byte	0x1
	.2byte	0x401
	.byte	0x2d
	.4byte	0x269
	.byte	0x23
	.string	"c"
	.byte	0x1
	.2byte	0x401
	.byte	0x3c
	.4byte	0x25
	.byte	0x24
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x401
	.byte	0x46
	.4byte	0x6b
	.byte	0x25
	.string	"i"
	.byte	0x1
	.2byte	0x403
	.byte	0xc
	.4byte	0x6b
	.byte	0x25
	.string	"msw"
	.byte	0x1
	.2byte	0x417
	.byte	0x16
	.4byte	0x8c
	.byte	0
	.byte	0x26
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x3d5
	.byte	0x14
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0xb57
	.byte	0x27
	.string	"dst"
	.byte	0x1
	.2byte	0x3d5
	.byte	0x25
	.4byte	0xb57
	.byte	0x1
	.byte	0x5a
	.byte	0x16
	.string	"src"
	.byte	0x1
	.2byte	0x3d5
	.byte	0x33
	.4byte	0x77
	.4byte	.LLST1
	.byte	0x28
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x3d5
	.byte	0x45
	.4byte	0xb5d
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x77
	.byte	0x9
	.byte	0x4
	.4byte	0x25
	.byte	0x26
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x3cf
	.byte	0x14
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0xbaa
	.byte	0x27
	.string	"dst"
	.byte	0x1
	.2byte	0x3cf
	.byte	0x25
	.4byte	0xb57
	.byte	0x1
	.byte	0x5a
	.byte	0x16
	.string	"src"
	.byte	0x1
	.2byte	0x3cf
	.byte	0x33
	.4byte	0x77
	.4byte	.LLST0
	.byte	0x28
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x3cf
	.byte	0x45
	.4byte	0xb5d
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0x29
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x2f1
	.byte	0x5
	.4byte	0x5d
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0xdd4
	.byte	0x16
	.string	"grp"
	.byte	0x1
	.2byte	0x2f1
	.byte	0x30
	.4byte	0xdd4
	.4byte	.LLST7
	.byte	0x16
	.string	"id"
	.byte	0x1
	.2byte	0x2f1
	.byte	0x4a
	.4byte	0x141
	.4byte	.LLST8
	.byte	0x2a
	.4byte	0xdda
	.4byte	.LBB50
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x30b
	.byte	0x15
	.4byte	0xdaf
	.byte	0x2b
	.4byte	0xdf9
	.4byte	.LLST9
	.byte	0x2b
	.4byte	0xe04
	.4byte	.LLST10
	.byte	0x2b
	.4byte	0xe11
	.4byte	.LLST11
	.byte	0x2b
	.4byte	0xe1c
	.4byte	.LLST11
	.byte	0x2b
	.4byte	0xe29
	.4byte	.LLST13
	.byte	0x2b
	.4byte	0xe34
	.4byte	.LLST10
	.byte	0x2b
	.4byte	0xe41
	.4byte	.LLST15
	.byte	0x2b
	.4byte	0xe4d
	.4byte	.LLST10
	.byte	0x2b
	.4byte	0xe5a
	.4byte	.LLST17
	.byte	0x2b
	.4byte	0xe66
	.4byte	.LLST10
	.byte	0x2b
	.4byte	0xe73
	.4byte	.LLST19
	.byte	0x2b
	.4byte	0xe7e
	.4byte	.LLST10
	.byte	0x2b
	.4byte	0xdec
	.4byte	.LLST21
	.byte	0x2a
	.4byte	0xecf
	.4byte	.LBB52
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.2byte	0x23c
	.byte	0x5
	.4byte	0xca1
	.byte	0x2b
	.4byte	0xef3
	.4byte	.LLST22
	.byte	0x2b
	.4byte	0xee8
	.4byte	.LLST23
	.byte	0x2b
	.4byte	0xedd
	.4byte	.LLST24
	.byte	0
	.byte	0x2a
	.4byte	0xecf
	.4byte	.LBB60
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x1
	.2byte	0x23f
	.byte	0x5
	.4byte	0xcd2
	.byte	0x2b
	.4byte	0xef3
	.4byte	.LLST25
	.byte	0x2b
	.4byte	0xee8
	.4byte	.LLST26
	.byte	0x2b
	.4byte	0xedd
	.4byte	.LLST27
	.byte	0
	.byte	0x2a
	.4byte	0xecf
	.4byte	.LBB69
	.4byte	.Ldebug_ranges0+0x80
	.byte	0x1
	.2byte	0x240
	.byte	0x5
	.4byte	0xd03
	.byte	0x2b
	.4byte	0xef3
	.4byte	.LLST28
	.byte	0x2b
	.4byte	0xee8
	.4byte	.LLST29
	.byte	0x2b
	.4byte	0xedd
	.4byte	.LLST30
	.byte	0
	.byte	0x2a
	.4byte	0xecf
	.4byte	.LBB75
	.4byte	.Ldebug_ranges0+0xb0
	.byte	0x1
	.2byte	0x242
	.byte	0x5
	.4byte	0xd34
	.byte	0x2b
	.4byte	0xef3
	.4byte	.LLST31
	.byte	0x2b
	.4byte	0xee8
	.4byte	.LLST32
	.byte	0x2b
	.4byte	0xedd
	.4byte	.LLST33
	.byte	0
	.byte	0x2a
	.4byte	0xecf
	.4byte	.LBB81
	.4byte	.Ldebug_ranges0+0xe0
	.byte	0x1
	.2byte	0x243
	.byte	0x5
	.4byte	0xd65
	.byte	0x2b
	.4byte	0xef3
	.4byte	.LLST34
	.byte	0x2b
	.4byte	0xee8
	.4byte	.LLST35
	.byte	0x2b
	.4byte	0xedd
	.4byte	.LLST36
	.byte	0
	.byte	0x2a
	.4byte	0xe92
	.4byte	.LBB94
	.4byte	.Ldebug_ranges0+0x110
	.byte	0x1
	.2byte	0x244
	.byte	0x5
	.4byte	0xd89
	.byte	0x2b
	.4byte	0xea0
	.4byte	.LLST37
	.byte	0x2c
	.4byte	.Ldebug_ranges0+0x110
	.byte	0
	.byte	0x1f
	.4byte	.LVL125
	.4byte	0xf0d
	.4byte	0xd9d
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0x4
	.byte	0
	.byte	0x21
	.4byte	.LVL126
	.4byte	0xf0d
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x78
	.byte	0xcc,0
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL115
	.4byte	0xf1a
	.4byte	0xdc3
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LVL116
	.4byte	0xf27
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x295
	.byte	0x2d
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x234
	.byte	0xc
	.4byte	0x5d
	.byte	0x1
	.4byte	0xe8c
	.byte	0x23
	.string	"grp"
	.byte	0x1
	.2byte	0x234
	.byte	0x2f
	.4byte	0xdd4
	.byte	0x23
	.string	"p"
	.byte	0x1
	.2byte	0x235
	.byte	0x34
	.4byte	0xe8c
	.byte	0x24
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x235
	.byte	0x3e
	.4byte	0x6b
	.byte	0x23
	.string	"a"
	.byte	0x1
	.2byte	0x236
	.byte	0x34
	.4byte	0xe8c
	.byte	0x24
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x236
	.byte	0x3e
	.4byte	0x6b
	.byte	0x23
	.string	"b"
	.byte	0x1
	.2byte	0x237
	.byte	0x34
	.4byte	0xe8c
	.byte	0x24
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x237
	.byte	0x3e
	.4byte	0x6b
	.byte	0x23
	.string	"gx"
	.byte	0x1
	.2byte	0x238
	.byte	0x34
	.4byte	0xe8c
	.byte	0x24
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x238
	.byte	0x3f
	.4byte	0x6b
	.byte	0x23
	.string	"gy"
	.byte	0x1
	.2byte	0x239
	.byte	0x34
	.4byte	0xe8c
	.byte	0x24
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x239
	.byte	0x3f
	.4byte	0x6b
	.byte	0x23
	.string	"n"
	.byte	0x1
	.2byte	0x23a
	.byte	0x34
	.4byte	0xe8c
	.byte	0x24
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x23a
	.byte	0x3e
	.4byte	0x6b
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x98
	.byte	0x22
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x229
	.byte	0x14
	.byte	0x3
	.4byte	0xebf
	.byte	0x23
	.string	"X"
	.byte	0x1
	.2byte	0x229
	.byte	0x2f
	.4byte	0x269
	.byte	0x18
	.string	"one"
	.byte	0x1
	.2byte	0x22b
	.byte	0x1d
	.4byte	0xebf
	.byte	0x5
	.byte	0x3
	.4byte	one.0
	.byte	0
	.byte	0x12
	.4byte	0x8c
	.4byte	0xecf
	.byte	0x13
	.4byte	0x64
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x21f
	.byte	0x14
	.byte	0x3
	.4byte	0xf01
	.byte	0x23
	.string	"X"
	.byte	0x1
	.2byte	0x21f
	.byte	0x2f
	.4byte	0x269
	.byte	0x23
	.string	"p"
	.byte	0x1
	.2byte	0x21f
	.byte	0x4a
	.4byte	0xe8c
	.byte	0x23
	.string	"len"
	.byte	0x1
	.2byte	0x21f
	.byte	0x54
	.4byte	0x6b
	.byte	0
	.byte	0x2e
	.4byte	.LASF56
	.4byte	.LASF56
	.byte	0x4
	.byte	0xe8
	.byte	0x5
	.byte	0x2f
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0x4
	.2byte	0x188
	.byte	0x8
	.byte	0x2f
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0x5
	.2byte	0x273
	.byte	0x6
	.byte	0x2f
	.4byte	.LASF59
	.4byte	.LASF59
	.byte	0x5
	.2byte	0x25c
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
	.byte	0x9
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
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
	.byte	0x5
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
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x12
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x18
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
	.byte	0x1c
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x1a
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
	.byte	0x5
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
	.byte	0
	.byte	0
	.byte	0x1d
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1e
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
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
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
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
	.byte	0x23
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
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x26
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x29
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
	.byte	0x2a
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
	.byte	0x2b
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2c
	.byte	0xb
	.byte	0
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2d
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6-1
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL97
	.4byte	.LVL99
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x3
	.byte	0x9
	.byte	0x92
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL99
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL16
	.4byte	.LVL17-1
	.2byte	0x4
	.byte	0x7b
	.byte	0
	.byte	0x1f
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL26
	.4byte	.LVL27-1
	.2byte	0x4
	.byte	0x7b
	.byte	0
	.byte	0x1f
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL35
	.4byte	.LVL36-1
	.2byte	0x4
	.byte	0x7b
	.byte	0
	.byte	0x1f
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL47
	.4byte	.LVL48-1
	.2byte	0x4
	.byte	0x7b
	.byte	0
	.byte	0x1f
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL58
	.4byte	.LVL59-1
	.2byte	0x4
	.byte	0x7b
	.byte	0
	.byte	0x1f
	.byte	0x9f
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL69
	.4byte	.LVL70-1
	.2byte	0x4
	.byte	0x7b
	.byte	0
	.byte	0x1f
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL81
	.4byte	.LVL82-1
	.2byte	0x4
	.byte	0x7b
	.byte	0
	.byte	0x1f
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL100-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL101
	.4byte	.LVL102-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL103
	.4byte	.LVL104-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL105
	.4byte	.LVL106-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL107
	.4byte	.LVL108-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL109
	.4byte	.LVL110-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL111
	.4byte	.LVL112-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL5
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL56
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL67
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL79
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL91
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LVL103
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL105
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LVL107
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL109
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL111
	.2byte	0x2
	.byte	0x36
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LVL113
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL113
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x8
	.byte	0x7c
	.byte	0
	.byte	0x48
	.byte	0x24
	.byte	0x48
	.byte	0x26
	.byte	0x1f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL114
	.4byte	.LVL115-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL115-1
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL129
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL114
	.4byte	.LVL115-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL115-1
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL118
	.4byte	.LVL125-1
	.2byte	0x2
	.byte	0x78
	.byte	0
	.4byte	.LVL125-1
	.4byte	.LVL129
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL129
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL117
	.4byte	.LVL127
	.2byte	0x6
	.byte	0x3
	.4byte	secp256r1_p
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL117
	.4byte	.LVL127
	.2byte	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL117
	.4byte	.LVL127
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL117
	.4byte	.LVL127
	.2byte	0x6
	.byte	0x3
	.4byte	secp256r1_b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL117
	.4byte	.LVL127
	.2byte	0x6
	.byte	0x3
	.4byte	secp256r1_gx
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL117
	.4byte	.LVL127
	.2byte	0x6
	.byte	0x3
	.4byte	secp256r1_gy
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL117
	.4byte	.LVL127
	.2byte	0x6
	.byte	0x3
	.4byte	secp256r1_n
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL117
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL117
	.4byte	.LVL119
	.2byte	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL117
	.4byte	.LVL119
	.2byte	0x6
	.byte	0x3
	.4byte	secp256r1_p
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL117
	.4byte	.LVL119
	.2byte	0x3
	.byte	0x78
	.byte	0x4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x6
	.byte	0x3
	.4byte	secp256r1_b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x3
	.byte	0x78
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x6
	.byte	0x3
	.4byte	secp256r1_n
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x4
	.byte	0x78
	.byte	0xcc,0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x6
	.byte	0x3
	.4byte	secp256r1_gx
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x3
	.byte	0x78
	.byte	0x28
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x6
	.byte	0x3
	.4byte	secp256r1_gy
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x3
	.byte	0x78
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x4
	.byte	0x78
	.byte	0xc0,0
	.byte	0x9f
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
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB50
	.4byte	.LBE50
	.4byte	.LBB112
	.4byte	.LBE112
	.4byte	.LBB113
	.4byte	.LBE113
	.4byte	0
	.4byte	0
	.4byte	.LBB52
	.4byte	.LBE52
	.4byte	.LBB59
	.4byte	.LBE59
	.4byte	.LBB65
	.4byte	.LBE65
	.4byte	.LBB67
	.4byte	.LBE67
	.4byte	.LBB99
	.4byte	.LBE99
	.4byte	.LBB104
	.4byte	.LBE104
	.4byte	0
	.4byte	0
	.4byte	.LBB60
	.4byte	.LBE60
	.4byte	.LBB66
	.4byte	.LBE66
	.4byte	.LBB68
	.4byte	.LBE68
	.4byte	.LBB105
	.4byte	.LBE105
	.4byte	0
	.4byte	0
	.4byte	.LBB69
	.4byte	.LBE69
	.4byte	.LBB87
	.4byte	.LBE87
	.4byte	.LBB89
	.4byte	.LBE89
	.4byte	.LBB91
	.4byte	.LBE91
	.4byte	.LBB106
	.4byte	.LBE106
	.4byte	0
	.4byte	0
	.4byte	.LBB75
	.4byte	.LBE75
	.4byte	.LBB93
	.4byte	.LBE93
	.4byte	.LBB100
	.4byte	.LBE100
	.4byte	.LBB102
	.4byte	.LBE102
	.4byte	.LBB107
	.4byte	.LBE107
	.4byte	0
	.4byte	0
	.4byte	.LBB81
	.4byte	.LBE81
	.4byte	.LBB88
	.4byte	.LBE88
	.4byte	.LBB90
	.4byte	.LBE90
	.4byte	.LBB92
	.4byte	.LBE92
	.4byte	.LBB108
	.4byte	.LBE108
	.4byte	0
	.4byte	0
	.4byte	.LBB94
	.4byte	.LBE94
	.4byte	.LBB101
	.4byte	.LBE101
	.4byte	.LBB103
	.4byte	.LBE103
	.4byte	.LBB109
	.4byte	.LBE109
	.4byte	0
	.4byte	0
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF61:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/security/mbedtls_lts/mbedtls/library/ecp_curves.c"
.LASF38:
	.string	"secp256r1_p"
.LASF66:
	.string	"ecp_group_load"
.LASF18:
	.string	"MBEDTLS_ECP_DP_SECP384R1"
.LASF52:
	.string	"nlen"
.LASF2:
	.string	"short int"
.LASF9:
	.string	"size_t"
.LASF29:
	.string	"mbedtls_ecp_point"
.LASF50:
	.string	"gxlen"
.LASF28:
	.string	"mbedtls_ecp_group_id"
.LASF21:
	.string	"MBEDTLS_ECP_DP_BP384R1"
.LASF16:
	.string	"MBEDTLS_ECP_DP_SECP224R1"
.LASF37:
	.string	"T_size"
.LASF33:
	.string	"modp"
.LASF46:
	.string	"add32"
.LASF65:
	.string	"mbedtls_ecp_group_load"
.LASF32:
	.string	"nbits"
.LASF25:
	.string	"MBEDTLS_ECP_DP_SECP224K1"
.LASF0:
	.string	"signed char"
.LASF13:
	.string	"mbedtls_mpi"
.LASF6:
	.string	"long long int"
.LASF43:
	.string	"bits"
.LASF4:
	.string	"long int"
.LASF36:
	.string	"t_data"
.LASF53:
	.string	"mbedtls_ecp_fix_negative"
.LASF51:
	.string	"gylen"
.LASF56:
	.string	"mbedtls_mpi_grow"
.LASF57:
	.string	"mbedtls_mpi_bitlen"
.LASF1:
	.string	"unsigned char"
.LASF39:
	.string	"secp256r1_b"
.LASF64:
	.string	"cleanup"
.LASF14:
	.string	"MBEDTLS_ECP_DP_NONE"
.LASF62:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/build_out/mbedtls_lts"
.LASF7:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint32_t"
.LASF27:
	.string	"MBEDTLS_ECP_DP_CURVE448"
.LASF8:
	.string	"unsigned int"
.LASF19:
	.string	"MBEDTLS_ECP_DP_SECP521R1"
.LASF47:
	.string	"plen"
.LASF58:
	.string	"mbedtls_ecp_group_free"
.LASF3:
	.string	"short unsigned int"
.LASF44:
	.string	"carry"
.LASF15:
	.string	"MBEDTLS_ECP_DP_SECP192R1"
.LASF11:
	.string	"char"
.LASF41:
	.string	"secp256r1_gy"
.LASF45:
	.string	"sub32"
.LASF54:
	.string	"ecp_mpi_set1"
.LASF35:
	.string	"t_post"
.LASF17:
	.string	"MBEDTLS_ECP_DP_SECP256R1"
.LASF48:
	.string	"alen"
.LASF34:
	.string	"t_pre"
.LASF5:
	.string	"long unsigned int"
.LASF22:
	.string	"MBEDTLS_ECP_DP_BP512R1"
.LASF20:
	.string	"MBEDTLS_ECP_DP_BP256R1"
.LASF55:
	.string	"ecp_mpi_load"
.LASF12:
	.string	"mbedtls_mpi_uint"
.LASF26:
	.string	"MBEDTLS_ECP_DP_SECP256K1"
.LASF23:
	.string	"MBEDTLS_ECP_DP_CURVE25519"
.LASF30:
	.string	"mbedtls_ecp_group"
.LASF42:
	.string	"secp256r1_n"
.LASF59:
	.string	"mbedtls_ecp_group_init"
.LASF49:
	.string	"blen"
.LASF40:
	.string	"secp256r1_gx"
.LASF63:
	.string	"ecp_mod_p256"
.LASF24:
	.string	"MBEDTLS_ECP_DP_SECP192K1"
.LASF31:
	.string	"pbits"
.LASF60:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
