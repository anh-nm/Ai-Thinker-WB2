	.file	"bl602_i2c.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.I2C_SendWord,"ax",@progbits
	.align	1
	.globl	I2C_SendWord
	.type	I2C_SendWord, @function
I2C_SendWord:
.LFB8:
	.file 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_i2c.c"
	.loc 1 164 1
	.cfi_startproc
.LVL0:
	.loc 1 165 5
	.loc 1 168 5
	.loc 1 169 5
	.loc 1 169 42 is_stmt 0
	li	a5,1073782784
	sw	a1,904(a5)
	.loc 1 170 1
	ret
	.cfi_endproc
.LFE8:
	.size	I2C_SendWord, .-I2C_SendWord
	.section	.text.I2C_RecieveWord,"ax",@progbits
	.align	1
	.globl	I2C_RecieveWord
	.type	I2C_RecieveWord, @function
I2C_RecieveWord:
.LFB9:
	.loc 1 181 1 is_stmt 1
	.cfi_startproc
.LVL1:
	.loc 1 182 5
	.loc 1 185 5
	.loc 1 186 5
	.loc 1 186 13 is_stmt 0
	li	a5,1073782784
	lw	a0,908(a5)
.LVL2:
	.loc 1 187 1
	ret
	.cfi_endproc
.LFE9:
	.size	I2C_RecieveWord, .-I2C_RecieveWord
	.section	.text.I2C_Enable,"ax",@progbits
	.align	1
	.globl	I2C_Enable
	.type	I2C_Enable, @function
I2C_Enable:
.LFB10:
	.loc 1 198 1 is_stmt 1
	.cfi_startproc
.LVL3:
	.loc 1 199 5
	.loc 1 200 5
	.loc 1 203 5
	.loc 1 205 5
	.loc 1 205 12 is_stmt 0
	li	a5,1073782784
	addi	a3,a5,896
	lw	a4,0(a3)
.LVL4:
	.loc 1 206 5 is_stmt 1
	.loc 1 207 5
	.loc 1 210 12 is_stmt 0
	addi	a5,a5,768
	.loc 1 207 12
	ori	a4,a4,12
.LVL5:
	.loc 1 208 5 is_stmt 1
	.loc 1 208 42 is_stmt 0
	sw	a4,0(a3)
	.loc 1 210 5 is_stmt 1
	.loc 1 210 12 is_stmt 0
	lw	a4,0(a5)
.LVL6:
	.loc 1 211 5 is_stmt 1
	.loc 1 211 12 is_stmt 0
	ori	a4,a4,1
.LVL7:
	.loc 1 213 5 is_stmt 1
	.loc 1 213 41 is_stmt 0
	sw	a4,0(a5)
	.loc 1 214 1
	ret
	.cfi_endproc
.LFE10:
	.size	I2C_Enable, .-I2C_Enable
	.section	.text.I2C_Disable,"ax",@progbits
	.align	1
	.globl	I2C_Disable
	.type	I2C_Disable, @function
I2C_Disable:
.LFB11:
	.loc 1 225 1 is_stmt 1
	.cfi_startproc
.LVL8:
	.loc 1 226 5
	.loc 1 227 5
	.loc 1 230 5
	.loc 1 232 5
	.loc 1 232 12 is_stmt 0
	li	a5,1073782784
	addi	a4,a5,768
	lw	a3,0(a4)
.LVL9:
	.loc 1 233 5 is_stmt 1
	.loc 1 237 12 is_stmt 0
	addi	a5,a5,896
	.loc 1 233 12
	andi	a3,a3,-2
.LVL10:
	.loc 1 234 5 is_stmt 1
	.loc 1 234 41 is_stmt 0
	sw	a3,0(a4)
	.loc 1 237 5 is_stmt 1
	.loc 1 237 12 is_stmt 0
	lw	a3,0(a5)
.LVL11:
	.loc 1 238 5 is_stmt 1
	.loc 1 239 5
	.loc 1 239 12 is_stmt 0
	ori	a3,a3,12
.LVL12:
	.loc 1 240 5 is_stmt 1
	.loc 1 240 42 is_stmt 0
	sw	a3,0(a5)
	.loc 1 243 5 is_stmt 1
	.loc 1 243 12 is_stmt 0
	lw	a5,4(a4)
.LVL13:
	.loc 1 244 5 is_stmt 1
	.loc 1 245 5
	.loc 1 246 5
	.loc 1 246 12 is_stmt 0
	li	a3,1638400
	or	a5,a5,a3
.LVL14:
	.loc 1 247 5 is_stmt 1
	.loc 1 247 41 is_stmt 0
	sw	a5,4(a4)
	.loc 1 248 1
	ret
	.cfi_endproc
.LFE11:
	.size	I2C_Disable, .-I2C_Disable
	.section	.text.I2C_Reset,"ax",@progbits
	.align	1
	.globl	I2C_Reset
	.type	I2C_Reset, @function
I2C_Reset:
.LFB12:
	.loc 1 259 1 is_stmt 1
	.cfi_startproc
.LVL15:
	.loc 1 261 5
	.loc 1 263 5
	.loc 1 259 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 263 5
	li	a0,19
.LVL16:
	.loc 1 259 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 263 5
	call	GLB_AHB_Slave1_Reset
.LVL17:
	.loc 1 264 5 is_stmt 1
	.loc 1 265 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE12:
	.size	I2C_Reset, .-I2C_Reset
	.section	.text.I2C_Init,"ax",@progbits
	.align	1
	.globl	I2C_Init
	.type	I2C_Init, @function
I2C_Init:
.LFB13:
	.loc 1 278 1 is_stmt 1
	.cfi_startproc
.LVL18:
	.loc 1 279 5
	.loc 1 280 5
	.loc 1 283 5
	.loc 1 286 5
	.loc 1 286 12 is_stmt 0
	li	a5,1073782784
	lw	a5,768(a5)
.LVL19:
	.loc 1 287 5 is_stmt 1
	.loc 1 290 16 is_stmt 0
	ori	a4,a5,2
	.loc 1 287 7
	bne	a1,zero,.L9
	.loc 1 288 9 is_stmt 1
	.loc 1 288 16 is_stmt 0
	andi	a4,a5,-3
.LVL20:
.L9:
	.loc 1 292 5 is_stmt 1
	.loc 1 292 25 is_stmt 0
	li	a5,-32768
	addi	a5,a5,255
	and	a5,a4,a5
	.loc 1 292 62
	lbu	a4,0(a2)
.LVL21:
	.loc 1 292 88
	slli	a4,a4,8
	.loc 1 292 12
	or	a4,a4,a5
.LVL22:
	.loc 1 293 5 is_stmt 1
	.loc 1 293 11 is_stmt 0
	lbu	a5,8(a2)
	.loc 1 297 16
	andi	a3,a4,-17
	.loc 1 293 7
	beq	a5,zero,.L11
	.loc 1 294 9 is_stmt 1
.LVL23:
	.loc 1 295 9
	.loc 1 295 93 is_stmt 0
	addi	a5,a5,-1
	.loc 1 295 96
	slli	a5,a5,5
	andi	a4,a4,-97
.LVL24:
	or	a5,a5,a4
	.loc 1 295 16
	ori	a3,a5,16
.LVL25:
.L11:
	.loc 1 299 5 is_stmt 1
	.loc 1 299 25 is_stmt 0
	li	a5,-16711680
	addi	a5,a5,-1
	and	a3,a3,a5
.LVL26:
	.loc 1 299 77
	lhu	a5,16(a2)
	.loc 1 300 41
	li	a4,1073782784
	.loc 1 299 87
	addi	a5,a5,-1
	.loc 1 299 90
	slli	a5,a5,16
	.loc 1 299 12
	or	a5,a5,a3
.LVL27:
	.loc 1 300 5 is_stmt 1
	.loc 1 300 41 is_stmt 0
	sw	a5,768(a4)
	.loc 1 303 5 is_stmt 1
	.loc 1 303 46 is_stmt 0
	lw	a5,12(a2)
.LVL28:
	.loc 1 303 41
	sw	a5,776(a4)
.LVL29:
	.loc 1 308 1
	ret
	.cfi_endproc
.LFE13:
	.size	I2C_Init, .-I2C_Init
	.section	.text.I2C_SetPrd,"ax",@progbits
	.align	1
	.globl	I2C_SetPrd
	.type	I2C_SetPrd, @function
I2C_SetPrd:
.LFB14:
	.loc 1 320 1 is_stmt 1
	.cfi_startproc
.LVL30:
	.loc 1 321 5
	.loc 1 322 5
	.loc 1 325 5
	.loc 1 328 5
	.loc 1 328 12 is_stmt 0
	li	a4,1073782784
	addi	a4,a4,768
	lw	a5,16(a4)
.LVL31:
	.loc 1 329 5 is_stmt 1
	.loc 1 330 25 is_stmt 0
	li	t1,-65536
	addi	t1,t1,255
	.loc 1 329 25
	andi	a5,a5,-256
.LVL32:
	.loc 1 330 5 is_stmt 1
	.loc 1 329 12 is_stmt 0
	or	a5,a5,a1
.LVL33:
	.loc 1 330 79
	slli	a2,a1,8
	.loc 1 330 25
	and	a5,a5,t1
.LVL34:
	.loc 1 331 5 is_stmt 1
	.loc 1 331 25 is_stmt 0
	li	a7,-16711680
	addi	a7,a7,-1
	.loc 1 330 12
	or	a5,a5,a2
.LVL35:
	.loc 1 331 80
	slli	a3,a1,16
	.loc 1 331 25
	and	a5,a5,a7
.LVL36:
	.loc 1 332 5 is_stmt 1
	.loc 1 332 25 is_stmt 0
	li	a6,16777216
	addi	a6,a6,-1
	.loc 1 331 12
	or	a5,a5,a3
.LVL37:
	.loc 1 332 80
	slli	a0,a1,24
.LVL38:
	.loc 1 332 25
	and	a5,a5,a6
.LVL39:
	.loc 1 332 12
	or	a5,a5,a0
.LVL40:
	.loc 1 333 5 is_stmt 1
	.loc 1 333 42 is_stmt 0
	sw	a5,16(a4)
	.loc 1 334 5 is_stmt 1
	.loc 1 334 12 is_stmt 0
	lw	a5,20(a4)
.LVL41:
	.loc 1 335 5 is_stmt 1
	.loc 1 335 25 is_stmt 0
	andi	a5,a5,-256
.LVL42:
	.loc 1 336 5 is_stmt 1
	.loc 1 335 12 is_stmt 0
	or	a5,a1,a5
.LVL43:
	.loc 1 336 25
	and	a5,a5,t1
.LVL44:
	.loc 1 337 5 is_stmt 1
	.loc 1 336 12 is_stmt 0
	or	a5,a2,a5
.LVL45:
	.loc 1 337 25
	and	a5,a5,a7
.LVL46:
	.loc 1 338 5 is_stmt 1
	.loc 1 337 12 is_stmt 0
	or	a5,a3,a5
.LVL47:
	.loc 1 338 25
	and	a5,a5,a6
.LVL48:
	.loc 1 338 12
	or	a5,a0,a5
.LVL49:
	.loc 1 339 5 is_stmt 1
	.loc 1 339 42 is_stmt 0
	sw	a5,20(a4)
	.loc 1 340 5 is_stmt 1
	.loc 1 340 12 is_stmt 0
	lw	a5,24(a4)
.LVL50:
	.loc 1 341 5 is_stmt 1
	.loc 1 341 25 is_stmt 0
	andi	a5,a5,-256
.LVL51:
	.loc 1 342 5 is_stmt 1
	.loc 1 341 12 is_stmt 0
	or	a1,a1,a5
.LVL52:
	.loc 1 342 25
	and	a1,a1,t1
.LVL53:
	.loc 1 343 5 is_stmt 1
	.loc 1 342 12 is_stmt 0
	or	a1,a2,a1
.LVL54:
	.loc 1 343 25
	and	a1,a1,a7
.LVL55:
	.loc 1 344 5 is_stmt 1
	.loc 1 343 12 is_stmt 0
	or	a3,a3,a1
.LVL56:
	.loc 1 344 25
	and	a3,a3,a6
.LVL57:
	.loc 1 344 12
	or	a3,a0,a3
.LVL58:
	.loc 1 345 5 is_stmt 1
	.loc 1 345 42 is_stmt 0
	sw	a3,24(a4)
	.loc 1 346 1
	ret
	.cfi_endproc
.LFE14:
	.size	I2C_SetPrd, .-I2C_SetPrd
	.section	.text.I2C_ClockSet,"ax",@progbits
	.align	1
	.globl	I2C_ClockSet
	.type	I2C_ClockSet, @function
I2C_ClockSet:
.LFB15:
	.loc 1 358 1 is_stmt 1
	.cfi_startproc
.LVL59:
	.loc 1 359 5
	.loc 1 362 5
	.loc 1 364 5
	.loc 1 358 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.loc 1 358 1
	mv	s3,a1
	mv	s0,a0
	.loc 1 364 15
	call	GLB_Get_BCLK_Div
.LVL60:
	.loc 1 365 5 is_stmt 1
	.loc 1 365 7 is_stmt 0
	li	a5,98304
	addi	a5,a5,1695
	.loc 1 367 85
	slli	s1,s3,2
	addi	s2,a0,1
	.loc 1 365 7
	bleu	s3,a5,.L15
	.loc 1 366 9 is_stmt 1
	li	a1,0
	li	a0,1
.LVL61:
	call	GLB_Set_I2C_CLK
.LVL62:
	.loc 1 367 9
	.loc 1 367 29 is_stmt 0
	li	a5,1073803264
	lw	a1,264(a5)
	.loc 1 367 65
	divu	a1,a1,s2
.L20:
	.loc 1 376 9
	mv	a0,s0
	.loc 1 376 85
	divu	a1,a1,s1
	.loc 1 376 9
	addi	a1,a1,-1
	andi	a1,a1,0xff
	call	I2C_SetPrd
.LVL63:
	.loc 1 380 5 is_stmt 1
.LBB12:
.LBB13:
	.loc 1 394 5
	.loc 1 395 5
	.loc 1 398 5
	.loc 1 400 5
	.loc 1 400 12 is_stmt 0
	li	a4,1073782784
	lw	a5,768(a4)
.LVL64:
	.loc 1 401 5 is_stmt 1
	.loc 1 404 9
	.loc 1 404 16 is_stmt 0
	andi	a5,a5,-9
.LVL65:
	.loc 1 406 5 is_stmt 1
	.loc 1 406 41 is_stmt 0
	sw	a5,768(a4)
.LVL66:
.LBE13:
.LBE12:
	.loc 1 381 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL67:
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
.LVL68:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL69:
.L15:
	.cfi_restore_state
	.loc 1 368 11 is_stmt 1
	.loc 1 368 13 is_stmt 0
	li	a5,8192
	addi	a5,a5,-193
	bleu	s3,a5,.L17
	.loc 1 369 9 is_stmt 1
	li	a1,9
	li	a0,1
.LVL70:
	call	GLB_Set_I2C_CLK
.LVL71:
	.loc 1 370 9
	.loc 1 370 30 is_stmt 0
	li	a5,1073803264
	lw	a1,264(a5)
	.loc 1 370 79
	li	a0,10
	.loc 1 370 66
	divu	a1,a1,s2
.L21:
	.loc 1 373 79
	divu	a1,a1,a0
	j	.L20
.LVL72:
.L17:
	.loc 1 371 11 is_stmt 1
	.loc 1 371 13 is_stmt 0
	li	a5,799
	bleu	s3,a5,.L18
	.loc 1 372 9 is_stmt 1
	li	a1,99
	li	a0,1
.LVL73:
	call	GLB_Set_I2C_CLK
.LVL74:
	.loc 1 373 9
	.loc 1 373 30 is_stmt 0
	li	a5,1073803264
	lw	a1,264(a5)
	.loc 1 373 79
	li	a0,100
	.loc 1 373 66
	divu	a1,a1,s2
	j	.L21
.LVL75:
.L18:
	.loc 1 375 9 is_stmt 1
	li	a1,255
	li	a0,1
.LVL76:
	call	GLB_Set_I2C_CLK
.LVL77:
	.loc 1 376 9
	.loc 1 376 30 is_stmt 0
	li	a5,1073803264
	lw	a1,264(a5)
	.loc 1 376 66
	divu	a1,a1,s2
	.loc 1 376 79
	srli	a1,a1,8
	j	.L20
	.cfi_endproc
.LFE15:
	.size	I2C_ClockSet, .-I2C_ClockSet
	.section	.text.I2C_SetSclSync,"ax",@progbits
	.align	1
	.globl	I2C_SetSclSync
	.type	I2C_SetSclSync, @function
I2C_SetSclSync:
.LFB16:
	.loc 1 393 1 is_stmt 1
	.cfi_startproc
.LVL78:
	.loc 1 394 5
	.loc 1 395 5
	.loc 1 398 5
	.loc 1 400 5
	.loc 1 400 12 is_stmt 0
	li	a5,1073782784
	lw	a4,768(a5)
.LVL79:
	.loc 1 401 5 is_stmt 1
	.loc 1 404 16 is_stmt 0
	andi	a5,a4,-9
	.loc 1 401 7
	beq	a1,zero,.L24
	.loc 1 402 9 is_stmt 1
	.loc 1 402 16 is_stmt 0
	ori	a5,a4,8
.LVL80:
.L24:
	.loc 1 406 5 is_stmt 1
	.loc 1 406 41 is_stmt 0
	li	a4,1073782784
	sw	a5,768(a4)
	.loc 1 407 1
	ret
	.cfi_endproc
.LFE16:
	.size	I2C_SetSclSync, .-I2C_SetSclSync
	.section	.text.I2C_IsBusy,"ax",@progbits
	.align	1
	.globl	I2C_IsBusy
	.type	I2C_IsBusy, @function
I2C_IsBusy:
.LFB17:
	.loc 1 418 1 is_stmt 1
	.cfi_startproc
.LVL81:
	.loc 1 419 5
	.loc 1 420 5
	.loc 1 423 5
	.loc 1 425 5
	.loc 1 425 12 is_stmt 0
	li	a5,1073782784
	lw	a0,772(a5)
.LVL82:
	.loc 1 426 5 is_stmt 1
	.loc 1 426 54 is_stmt 0
	not	a0,a0
.LVL83:
	.loc 1 427 1
	andi	a0,a0,1
.LVL84:
	ret
	.cfi_endproc
.LFE17:
	.size	I2C_IsBusy, .-I2C_IsBusy
	.section	.text.I2C_TransferEndStatus,"ax",@progbits
	.align	1
	.globl	I2C_TransferEndStatus
	.type	I2C_TransferEndStatus, @function
I2C_TransferEndStatus:
.LFB18:
	.loc 1 438 1 is_stmt 1
	.cfi_startproc
.LVL85:
	.loc 1 439 5
	.loc 1 440 5
	.loc 1 443 5
	.loc 1 445 5
	.loc 1 445 12 is_stmt 0
	li	a5,1073782784
	lw	a0,772(a5)
.LVL86:
	.loc 1 446 5 is_stmt 1
	.loc 1 447 1 is_stmt 0
	andi	a0,a0,1
.LVL87:
	ret
	.cfi_endproc
.LFE18:
	.size	I2C_TransferEndStatus, .-I2C_TransferEndStatus
	.section	.text.I2C_MasterSendBlocking,"ax",@progbits
	.align	1
	.globl	I2C_MasterSendBlocking
	.type	I2C_MasterSendBlocking, @function
I2C_MasterSendBlocking:
.LFB19:
	.loc 1 459 1 is_stmt 1
	.cfi_startproc
.LVL88:
	.loc 1 460 5
	.loc 1 461 5
	.loc 1 462 5
	.loc 1 463 5
	.loc 1 466 5
	.loc 1 468 5
	.loc 1 459 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.loc 1 459 1
	mv	s0,a1
	mv	s1,a0
	.loc 1 468 5
	call	I2C_Disable
.LVL89:
	.loc 1 469 5 is_stmt 1
	li	a1,0
	mv	a2,s0
	mv	a0,s1
	call	I2C_Init
.LVL90:
	.loc 1 470 5
	mv	a0,s1
	call	I2C_Enable
.LVL91:
	.loc 1 473 5
	.loc 1 462 14 is_stmt 0
	li	a4,0
	.loc 1 473 10
	li	a5,0
	li	a0,319488
	.loc 1 477 24
	li	a1,1073782784
.LVL92:
.L29:
	.loc 1 473 14 is_stmt 1 discriminator 1
	.loc 1 473 19 is_stmt 0 discriminator 1
	lhu	a3,16(s0)
	.loc 1 473 5 discriminator 1
	bltu	a5,a3,.L34
	.loc 1 488 5 is_stmt 1
	.loc 1 488 7 is_stmt 0
	andi	a3,a3,3
	bne	a3,zero,.L42
.LVL93:
.L36:
	li	a5,319488
	addi	a5,a5,512
.LBB14:
.LBB15:
	.loc 1 425 12
	li	a3,1073782784
	j	.L39
.LVL94:
.L34:
.LBE15:
.LBE14:
	.loc 1 474 9 is_stmt 1
	.loc 1 474 27 is_stmt 0
	lw	a3,20(s0)
	.loc 1 474 38
	andi	a2,a5,3
	.loc 1 474 43
	slli	a2,a2,3
	.loc 1 474 27
	add	a3,a3,a5
	lbu	a3,0(a3)
	.loc 1 475 15
	addi	a5,a5,1
.LVL95:
	.loc 1 474 31
	sll	a3,a3,a2
	.loc 1 474 14
	add	a4,a4,a3
.LVL96:
	.loc 1 475 9 is_stmt 1
	.loc 1 475 24 is_stmt 0
	andi	a3,a5,3
	.loc 1 475 11
	bne	a3,zero,.L31
	addi	a2,a0,512
.L30:
.LVL97:
	.loc 1 477 18 is_stmt 1
	.loc 1 477 24 is_stmt 0
	lw	a3,900(a1)
	.loc 1 477 95
	andi	a3,a3,3
	.loc 1 477 18
	beq	a3,zero,.L33
	.loc 1 484 13 is_stmt 1
	.loc 1 484 50 is_stmt 0
	sw	a4,904(a1)
	.loc 1 485 13 is_stmt 1
.LVL98:
	.loc 1 485 18 is_stmt 0
	li	a4,0
.LVL99:
.L31:
	.loc 1 473 31 is_stmt 1 discriminator 2
	.loc 1 473 32 is_stmt 0 discriminator 2
	andi	a5,a5,0xff
.LVL100:
	j	.L29
.LVL101:
.L33:
	.loc 1 478 17 is_stmt 1
	.loc 1 479 17
	.loc 1 479 19 is_stmt 0
	addi	a2,a2,-1
.LVL102:
	bne	a2,zero,.L30
.LVL103:
.L37:
	.loc 1 480 21 is_stmt 1
	mv	a0,s1
	call	I2C_Disable
.LVL104:
	.loc 1 481 21
	.loc 1 481 28 is_stmt 0
	li	s0,2
.L28:
	.loc 1 511 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
.LVL105:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL106:
.L38:
	.cfi_restore_state
	.loc 1 491 13 is_stmt 1
	.loc 1 492 13
	.loc 1 492 15 is_stmt 0
	addi	a5,a5,-1
.LVL107:
	beq	a5,zero,.L37
.LVL108:
.L35:
	.loc 1 490 14 is_stmt 1
	.loc 1 490 20 is_stmt 0
	lw	a3,900(a2)
	.loc 1 490 91
	andi	a3,a3,3
	.loc 1 490 14
	beq	a3,zero,.L38
	.loc 1 497 9 is_stmt 1
	.loc 1 497 46 is_stmt 0
	sw	a4,904(a2)
	j	.L36
.LVL109:
.L42:
	li	a5,319488
.LVL110:
	addi	a5,a5,512
	.loc 1 490 20
	li	a2,1073782784
	j	.L35
.LVL111:
.L40:
	.loc 1 502 9 is_stmt 1
	.loc 1 503 9
	.loc 1 503 11 is_stmt 0
	addi	a5,a5,-1
.LVL112:
	beq	a5,zero,.L37
.LVL113:
.L39:
	.loc 1 501 10 is_stmt 1
.LBB17:
.LBB16:
	.loc 1 419 5
	.loc 1 420 5
	.loc 1 423 5
	.loc 1 425 5
	.loc 1 425 12 is_stmt 0
	lw	s0,772(a3)
.LVL114:
	.loc 1 426 5 is_stmt 1
	not	s0,s0
.LVL115:
	andi	s0,s0,1
.LVL116:
.LBE16:
.LBE17:
	.loc 1 501 10 is_stmt 0
	bne	s0,zero,.L40
.LVL117:
.LBB18:
.LBB19:
	.loc 1 439 5 is_stmt 1
	.loc 1 440 5
	.loc 1 443 5
	.loc 1 445 5
	.loc 1 445 12 is_stmt 0
	lw	a4,772(a3)
.LVL118:
	.loc 1 446 5 is_stmt 1
	.loc 1 446 52 is_stmt 0
	andi	a4,a4,1
.LBE19:
.LBE18:
	.loc 1 501 29
	beq	a4,zero,.L40
	.loc 1 509 5 is_stmt 1
	mv	a0,s1
	call	I2C_Disable
.LVL119:
	.loc 1 510 5
	.loc 1 510 12 is_stmt 0
	j	.L28
	.cfi_endproc
.LFE19:
	.size	I2C_MasterSendBlocking, .-I2C_MasterSendBlocking
	.section	.text.I2C_MasterReceiveBlocking,"ax",@progbits
	.align	1
	.globl	I2C_MasterReceiveBlocking
	.type	I2C_MasterReceiveBlocking, @function
I2C_MasterReceiveBlocking:
.LFB20:
	.loc 1 523 1 is_stmt 1
	.cfi_startproc
.LVL120:
	.loc 1 524 5
	.loc 1 525 5
	.loc 1 526 5
	.loc 1 527 5
	.loc 1 530 5
	.loc 1 532 5
	.loc 1 523 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.loc 1 523 1
	mv	s0,a1
	mv	s1,a0
	.loc 1 532 5
	call	I2C_Disable
.LVL121:
	.loc 1 533 5 is_stmt 1
	li	a1,1
	mv	a2,s0
	mv	a0,s1
	call	I2C_Init
.LVL122:
	.loc 1 534 5
	mv	a0,s1
	call	I2C_Enable
.LVL123:
	.loc 1 537 5
	li	a4,319488
	.loc 1 524 13 is_stmt 0
	li	a5,0
	.loc 1 537 10
	li	a0,3
	addi	a4,a4,512
	.loc 1 539 20
	li	a1,1073782784
.LVL124:
.L55:
	.loc 1 537 10 is_stmt 1
	.loc 1 537 14 is_stmt 0
	lhu	a3,16(s0)
	.loc 1 537 25
	sub	a2,a3,a5
	.loc 1 537 10
	bgt	a2,a0,.L66
	.loc 1 550 5 is_stmt 1
	.loc 1 550 7 is_stmt 0
	bgtu	a3,a5,.L67
.L60:
	li	a5,319488
.LVL125:
	addi	a5,a5,512
.LBB20:
.LBB21:
	.loc 1 425 12
	li	a3,1073782784
	j	.L64
.LVL126:
.L58:
.LBE21:
.LBE20:
	.loc 1 540 13 is_stmt 1
	.loc 1 541 13
	.loc 1 541 15 is_stmt 0
	addi	a2,a2,-1
.LVL127:
	bne	a2,zero,.L56
.LVL128:
.L61:
	.loc 1 542 17 is_stmt 1
	mv	a0,s1
	call	I2C_Disable
.LVL129:
	.loc 1 543 17
	.loc 1 543 24 is_stmt 0
	li	s0,2
.L54:
	.loc 1 578 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
.LVL130:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL131:
.L66:
	.cfi_restore_state
	mv	a2,a4
.L56:
.LVL132:
	.loc 1 539 14 is_stmt 1
	.loc 1 539 20 is_stmt 0
	lw	a3,900(a1)
	.loc 1 539 91
	srli	a3,a3,8
	andi	a3,a3,3
	.loc 1 539 14
	beq	a3,zero,.L58
	.loc 1 546 9 is_stmt 1
	.loc 1 547 29 is_stmt 0
	lw	a2,20(s0)
.LVL133:
	.loc 1 546 14
	lw	a3,908(a1)
.LVL134:
	.loc 1 547 11 is_stmt 1
	.loc 1 547 29 is_stmt 0
	add	a2,a2,a5
	.loc 1 547 31
	sb	a3,0(a2)
	.loc 1 547 53 is_stmt 1
	.loc 1 547 74 is_stmt 0
	lw	a2,20(s0)
	.loc 1 547 95
	srli	a6,a3,8
	.loc 1 547 74
	add	a2,a2,a5
	.loc 1 547 76
	sb	a6,1(a2)
	.loc 1 547 103 is_stmt 1
	.loc 1 547 124 is_stmt 0
	lw	a2,20(s0)
	.loc 1 547 145
	srli	a6,a3,16
	.loc 1 547 196
	srli	a3,a3,24
.LVL135:
	.loc 1 547 124
	add	a2,a2,a5
	.loc 1 547 126
	sb	a6,2(a2)
	.loc 1 547 154 is_stmt 1
	.loc 1 547 175 is_stmt 0
	lw	a2,20(s0)
	add	a2,a2,a5
	.loc 1 548 11
	addi	a5,a5,4
.LVL136:
	.loc 1 547 177
	sb	a3,3(a2)
	.loc 1 547 206 is_stmt 1
	.loc 1 548 9
	.loc 1 548 11 is_stmt 0
	andi	a5,a5,0xff
.LVL137:
	j	.L55
.LVL138:
.L62:
	.loc 1 553 13 is_stmt 1
	.loc 1 554 13
	.loc 1 554 15 is_stmt 0
	addi	a4,a4,-1
.LVL139:
	beq	a4,zero,.L61
.LVL140:
.L59:
	.loc 1 552 14 is_stmt 1
	.loc 1 552 20 is_stmt 0
	lw	a3,900(a2)
	.loc 1 552 91
	srli	a3,a3,8
	andi	a3,a3,3
	.loc 1 552 14
	beq	a3,zero,.L62
	.loc 1 559 9 is_stmt 1
	.loc 1 559 14 is_stmt 0
	lw	a3,908(a2)
.LVL141:
	.loc 1 560 9 is_stmt 1
	.loc 1 560 14
.L63:
	.loc 1 561 13
	.loc 1 561 26 is_stmt 0
	lw	a4,20(s0)
	add	a4,a4,a5
	sb	a3,0(a4)
	.loc 1 562 13 is_stmt 1
	.loc 1 560 14 is_stmt 0
	lhu	a2,16(s0)
	.loc 1 563 15
	addi	a4,a5,1
	andi	a5,a4,0xff
.LVL142:
	.loc 1 562 18
	srli	a3,a3,8
.LVL143:
	.loc 1 563 13 is_stmt 1
	.loc 1 560 14
	bgtu	a2,a5,.L63
	j	.L60
.LVL144:
.L67:
	.loc 1 552 20 is_stmt 0
	li	a2,1073782784
	j	.L59
.LVL145:
.L65:
	.loc 1 569 9 is_stmt 1
	.loc 1 570 9
	.loc 1 570 11 is_stmt 0
	addi	a5,a5,-1
.LVL146:
	beq	a5,zero,.L61
.LVL147:
.L64:
	.loc 1 568 10 is_stmt 1
.LBB23:
.LBB22:
	.loc 1 419 5
	.loc 1 420 5
	.loc 1 423 5
	.loc 1 425 5
	.loc 1 425 12 is_stmt 0
	lw	s0,772(a3)
.LVL148:
	.loc 1 426 5 is_stmt 1
	not	s0,s0
.LVL149:
	andi	s0,s0,1
.LVL150:
.LBE22:
.LBE23:
	.loc 1 568 10 is_stmt 0
	bne	s0,zero,.L65
.LVL151:
.LBB24:
.LBB25:
	.loc 1 439 5 is_stmt 1
	.loc 1 440 5
	.loc 1 443 5
	.loc 1 445 5
	.loc 1 445 12 is_stmt 0
	lw	a4,772(a3)
.LVL152:
	.loc 1 446 5 is_stmt 1
	.loc 1 446 52 is_stmt 0
	andi	a4,a4,1
.LBE25:
.LBE24:
	.loc 1 568 29
	beq	a4,zero,.L65
	.loc 1 576 5 is_stmt 1
	mv	a0,s1
	call	I2C_Disable
.LVL153:
	.loc 1 577 5
	.loc 1 577 12 is_stmt 0
	j	.L54
	.cfi_endproc
.LFE20:
	.size	I2C_MasterReceiveBlocking, .-I2C_MasterReceiveBlocking
	.section	.text.I2C_IntMask,"ax",@progbits
	.align	1
	.globl	I2C_IntMask
	.type	I2C_IntMask, @function
I2C_IntMask:
.LFB21:
	.loc 1 591 1 is_stmt 1
	.cfi_startproc
.LVL154:
	.loc 1 592 5
	.loc 1 593 5
	.loc 1 596 5
	.loc 1 597 5
	.loc 1 598 5
	.loc 1 600 5
	.loc 1 600 12 is_stmt 0
	li	a5,1073782784
	lw	a5,772(a5)
.LVL155:
	.loc 1 601 5 is_stmt 1
	li	a4,6
	bgtu	a1,a4,.L81
	lui	a4,%hi(.L83)
	addi	a4,a4,%lo(.L83)
	slli	a1,a1,2
.LVL156:
	add	a1,a1,a4
	lw	a4,0(a1)
	jr	a4
	.section	.rodata.I2C_IntMask,"a",@progbits
	.align	2
	.align	2
.L83:
	.word	.L89
	.word	.L88
	.word	.L87
	.word	.L86
	.word	.L85
	.word	.L84
	.word	.L82
	.section	.text.I2C_IntMask
.L89:
	.loc 1 604 13
	.loc 1 604 15 is_stmt 0
	bne	a2,zero,.L90
	.loc 1 607 17 is_stmt 1
.LVL157:
	.loc 1 608 17
	andi	a5,a5,-257
.LVL158:
	.loc 1 608 24 is_stmt 0
	li	a4,16777216
.L97:
	.loc 1 718 24
	or	a5,a5,a4
.LVL159:
	j	.L81
.L90:
	.loc 1 613 17 is_stmt 1
	.loc 1 613 24 is_stmt 0
	li	a4,-16777216
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL160:
	.loc 1 614 17 is_stmt 1
	.loc 1 614 24 is_stmt 0
	ori	a5,a5,256
.LVL161:
.L81:
	.loc 1 725 5 is_stmt 1
	.loc 1 725 41 is_stmt 0
	li	a4,1073782784
	sw	a5,772(a4)
	.loc 1 726 1
	ret
.L88:
	.loc 1 618 13 is_stmt 1
	.loc 1 618 15 is_stmt 0
	bne	a2,zero,.L91
	.loc 1 621 17 is_stmt 1
.LVL162:
	.loc 1 622 17
	andi	a5,a5,-513
.LVL163:
	.loc 1 622 24 is_stmt 0
	li	a4,33554432
	j	.L97
.LVL164:
.L91:
	.loc 1 627 17 is_stmt 1
	.loc 1 627 24 is_stmt 0
	li	a4,-33554432
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL165:
	.loc 1 628 17 is_stmt 1
	.loc 1 628 24 is_stmt 0
	ori	a5,a5,512
.LVL166:
	j	.L81
.L87:
	.loc 1 632 13 is_stmt 1
	.loc 1 632 15 is_stmt 0
	bne	a2,zero,.L92
	.loc 1 635 17 is_stmt 1
.LVL167:
	.loc 1 636 17
	andi	a5,a5,-1025
.LVL168:
	.loc 1 636 24 is_stmt 0
	li	a4,67108864
	j	.L97
.LVL169:
.L92:
	.loc 1 641 17 is_stmt 1
	.loc 1 641 24 is_stmt 0
	li	a4,-67108864
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL170:
	.loc 1 642 17 is_stmt 1
	.loc 1 642 24 is_stmt 0
	ori	a5,a5,1024
.LVL171:
	j	.L81
.L86:
	.loc 1 646 13 is_stmt 1
	.loc 1 646 15 is_stmt 0
	bne	a2,zero,.L93
	.loc 1 649 17 is_stmt 1
.LVL172:
	.loc 1 650 17
	li	a4,-4096
	addi	a4,a4,2047
	and	a5,a5,a4
.LVL173:
	.loc 1 650 24 is_stmt 0
	li	a4,134217728
	j	.L97
.LVL174:
.L93:
	.loc 1 655 17 is_stmt 1
	.loc 1 655 24 is_stmt 0
	li	a4,-134217728
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL175:
	.loc 1 656 17 is_stmt 1
	.loc 1 656 24 is_stmt 0
	li	a4,4096
	addi	a4,a4,-2048
	j	.L97
.L85:
	.loc 1 660 13 is_stmt 1
	.loc 1 660 15 is_stmt 0
	bne	a2,zero,.L94
	.loc 1 663 17 is_stmt 1
.LVL176:
	.loc 1 664 17
	li	a4,-4096
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL177:
	.loc 1 664 24 is_stmt 0
	li	a4,268435456
	j	.L97
.LVL178:
.L94:
	.loc 1 669 17 is_stmt 1
	.loc 1 669 24 is_stmt 0
	li	a4,-268435456
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL179:
	.loc 1 670 17 is_stmt 1
	.loc 1 670 24 is_stmt 0
	li	a4,4096
	j	.L97
.L84:
	.loc 1 674 13 is_stmt 1
	.loc 1 674 15 is_stmt 0
	bne	a2,zero,.L95
	.loc 1 677 17 is_stmt 1
.LVL180:
	.loc 1 678 17
	li	a4,-8192
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL181:
	.loc 1 678 24 is_stmt 0
	li	a4,536870912
	j	.L97
.LVL182:
.L95:
	.loc 1 683 17 is_stmt 1
	.loc 1 683 24 is_stmt 0
	li	a4,-536870912
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL183:
	.loc 1 684 17 is_stmt 1
	.loc 1 684 24 is_stmt 0
	li	a4,8192
	j	.L97
.L82:
	.loc 1 688 13 is_stmt 1
	.loc 1 688 15 is_stmt 0
	bne	a2,zero,.L96
	.loc 1 691 17 is_stmt 1
.LVL184:
	.loc 1 692 17
	.loc 1 693 17
	.loc 1 694 17
	.loc 1 695 17
	.loc 1 696 17
	.loc 1 697 17
	.loc 1 698 17
	.loc 1 699 17
	.loc 1 700 17
	.loc 1 701 17
	.loc 1 702 17
	li	a4,-16384
	addi	a4,a4,255
	and	a5,a5,a4
.LVL185:
	.loc 1 702 24 is_stmt 0
	li	a4,1056964608
	j	.L97
.LVL186:
.L96:
	.loc 1 707 17 is_stmt 1
	.loc 1 708 17
	.loc 1 709 17
	.loc 1 710 17
	.loc 1 711 17
	.loc 1 712 17
	.loc 1 712 24 is_stmt 0
	li	a4,-1056964608
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL187:
	.loc 1 713 17 is_stmt 1
	.loc 1 714 17
	.loc 1 715 17
	.loc 1 716 17
	.loc 1 717 17
	.loc 1 718 17
	.loc 1 718 24 is_stmt 0
	li	a4,16384
	addi	a4,a4,-256
	j	.L97
	.cfi_endproc
.LFE21:
	.size	I2C_IntMask, .-I2C_IntMask
	.globl	i2cIntCbfArra
	.section	.bss.i2cIntCbfArra,"aw",@nobits
	.align	2
	.type	i2cIntCbfArra, @object
	.size	i2cIntCbfArra, 24
i2cIntCbfArra:
	.zero	24
	.text
.Letext0:
	.file 2 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/bl602.h"
	.file 4 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_common.h"
	.file 5 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_i2c.h"
	.file 6 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xa96
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF99
	.byte	0xc
	.4byte	.LASF100
	.4byte	.LASF101
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF25
	.byte	0x3
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x3
	.byte	0xd3
	.byte	0xe
	.4byte	0xd1
	.byte	0x4
	.4byte	.LASF0
	.byte	0
	.byte	0x4
	.4byte	.LASF1
	.byte	0x1
	.byte	0x4
	.4byte	.LASF2
	.byte	0x2
	.byte	0x4
	.4byte	.LASF3
	.byte	0x3
	.byte	0x4
	.4byte	.LASF4
	.byte	0x4
	.byte	0x4
	.4byte	.LASF5
	.byte	0x5
	.byte	0x4
	.4byte	.LASF6
	.byte	0x6
	.byte	0x4
	.4byte	.LASF7
	.byte	0x7
	.byte	0x4
	.4byte	.LASF8
	.byte	0x8
	.byte	0x4
	.4byte	.LASF9
	.byte	0x9
	.byte	0x4
	.4byte	.LASF10
	.byte	0xa
	.byte	0x4
	.4byte	.LASF11
	.byte	0xb
	.byte	0x4
	.4byte	.LASF12
	.byte	0xc
	.byte	0x4
	.4byte	.LASF13
	.byte	0xd
	.byte	0x4
	.4byte	.LASF14
	.byte	0xe
	.byte	0x4
	.4byte	.LASF15
	.byte	0xf
	.byte	0x4
	.4byte	.LASF16
	.byte	0x10
	.byte	0x4
	.4byte	.LASF17
	.byte	0x11
	.byte	0x4
	.4byte	.LASF18
	.byte	0x12
	.byte	0x4
	.4byte	.LASF19
	.byte	0x13
	.byte	0x4
	.4byte	.LASF20
	.byte	0x14
	.byte	0x4
	.4byte	.LASF21
	.byte	0x15
	.byte	0x4
	.4byte	.LASF22
	.byte	0x16
	.byte	0x4
	.4byte	.LASF23
	.byte	0x17
	.byte	0x4
	.4byte	.LASF24
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF26
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF27
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF28
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF29
	.byte	0x5
	.4byte	.LASF31
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0xf9
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF30
	.byte	0x5
	.4byte	.LASF32
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x10c
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF33
	.byte	0x5
	.4byte	.LASF34
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x11f
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF35
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF36
	.byte	0x6
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x7
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF37
	.byte	0x3
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0x17
	.byte	0x1
	.4byte	0x15d
	.byte	0x4
	.4byte	.LASF38
	.byte	0
	.byte	0x4
	.4byte	.LASF39
	.byte	0x1
	.byte	0x4
	.4byte	.LASF40
	.byte	0x2
	.byte	0
	.byte	0x5
	.4byte	.LASF41
	.byte	0x4
	.byte	0x1b
	.byte	0x2
	.4byte	0x13c
	.byte	0x3
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0x21
	.byte	0x1
	.4byte	0x184
	.byte	0x4
	.4byte	.LASF42
	.byte	0
	.byte	0x4
	.4byte	.LASF43
	.byte	0x1
	.byte	0
	.byte	0x5
	.4byte	.LASF44
	.byte	0x4
	.byte	0x24
	.byte	0x2
	.4byte	0x169
	.byte	0x3
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0x2a
	.byte	0x1
	.4byte	0x1ab
	.byte	0x4
	.4byte	.LASF45
	.byte	0
	.byte	0x8
	.string	"SET"
	.byte	0x1
	.byte	0
	.byte	0x5
	.4byte	.LASF46
	.byte	0x4
	.byte	0x2d
	.byte	0x2
	.4byte	0x190
	.byte	0x3
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0x33
	.byte	0x1
	.4byte	0x1d2
	.byte	0x4
	.4byte	.LASF47
	.byte	0
	.byte	0x4
	.4byte	.LASF48
	.byte	0x1
	.byte	0
	.byte	0x5
	.4byte	.LASF49
	.byte	0x4
	.byte	0x36
	.byte	0x2
	.4byte	0x1b7
	.byte	0x5
	.4byte	.LASF50
	.byte	0x4
	.byte	0x7c
	.byte	0xf
	.4byte	0x134
	.byte	0x3
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.byte	0x39
	.byte	0xe
	.4byte	0x205
	.byte	0x4
	.4byte	.LASF51
	.byte	0
	.byte	0x4
	.4byte	.LASF52
	.byte	0x1
	.byte	0
	.byte	0x5
	.4byte	.LASF53
	.byte	0x5
	.byte	0x3c
	.byte	0x2
	.4byte	0x1ea
	.byte	0x3
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.byte	0x41
	.byte	0xe
	.4byte	0x22c
	.byte	0x4
	.4byte	.LASF54
	.byte	0
	.byte	0x4
	.4byte	.LASF55
	.byte	0x1
	.byte	0
	.byte	0x5
	.4byte	.LASF56
	.byte	0x5
	.byte	0x44
	.byte	0x2
	.4byte	0x211
	.byte	0x3
	.byte	0x7
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.byte	0x49
	.byte	0xe
	.4byte	0x271
	.byte	0x4
	.4byte	.LASF57
	.byte	0
	.byte	0x4
	.4byte	.LASF58
	.byte	0x1
	.byte	0x4
	.4byte	.LASF59
	.byte	0x2
	.byte	0x4
	.4byte	.LASF60
	.byte	0x3
	.byte	0x4
	.4byte	.LASF61
	.byte	0x4
	.byte	0x4
	.4byte	.LASF62
	.byte	0x5
	.byte	0x4
	.4byte	.LASF63
	.byte	0x6
	.byte	0
	.byte	0x5
	.4byte	.LASF64
	.byte	0x5
	.byte	0x51
	.byte	0x2
	.4byte	0x238
	.byte	0x9
	.byte	0x18
	.byte	0x5
	.byte	0x74
	.byte	0x9
	.4byte	0x2d5
	.byte	0xa
	.4byte	.LASF65
	.byte	0x5
	.byte	0x75
	.byte	0xd
	.4byte	0xed
	.byte	0
	.byte	0xa
	.4byte	.LASF66
	.byte	0x5
	.byte	0x76
	.byte	0x11
	.4byte	0x184
	.byte	0x4
	.byte	0xa
	.4byte	.LASF67
	.byte	0x5
	.byte	0x77
	.byte	0xd
	.4byte	0xed
	.byte	0x8
	.byte	0xa
	.4byte	.LASF68
	.byte	0x5
	.byte	0x78
	.byte	0xe
	.4byte	0x113
	.byte	0xc
	.byte	0xa
	.4byte	.LASF69
	.byte	0x5
	.byte	0x79
	.byte	0xe
	.4byte	0x100
	.byte	0x10
	.byte	0xa
	.4byte	.LASF70
	.byte	0x5
	.byte	0x7a
	.byte	0xe
	.4byte	0x2d5
	.byte	0x14
	.byte	0
	.byte	0xb
	.byte	0x4
	.4byte	0xed
	.byte	0x5
	.4byte	.LASF71
	.byte	0x5
	.byte	0x7b
	.byte	0x2
	.4byte	0x27d
	.byte	0xc
	.4byte	0x2fd
	.4byte	0x2fd
	.byte	0xd
	.4byte	0x25
	.byte	0
	.byte	0xd
	.4byte	0x25
	.byte	0x5
	.byte	0
	.byte	0xb
	.byte	0x4
	.4byte	0x1de
	.byte	0xe
	.4byte	.LASF102
	.byte	0x1
	.byte	0x47
	.byte	0x14
	.4byte	0x2e7
	.byte	0x5
	.byte	0x3
	.4byte	i2cIntCbfArra
	.byte	0xf
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x24e
	.byte	0x6
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.4byte	0x37e
	.byte	0x10
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x24e
	.byte	0x1e
	.4byte	0x205
	.byte	0x1
	.byte	0x5a
	.byte	0x11
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x24e
	.byte	0x32
	.4byte	0x271
	.4byte	.LLST36
	.byte	0x10
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x24e
	.byte	0x48
	.4byte	0x1d2
	.byte	0x1
	.byte	0x5c
	.byte	0x12
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x250
	.byte	0xe
	.4byte	0x113
	.4byte	.LLST37
	.byte	0x13
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x251
	.byte	0xe
	.4byte	0x113
	.4byte	0x4000a300
	.byte	0
	.byte	0x14
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x20a
	.byte	0xd
	.4byte	0x15d
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x1
	.byte	0x9c
	.4byte	0x4cd
	.byte	0x11
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x20a
	.byte	0x33
	.4byte	0x205
	.4byte	.LLST28
	.byte	0x15
	.string	"cfg"
	.byte	0x1
	.2byte	0x20a
	.byte	0x4c
	.4byte	0x4cd
	.4byte	.LLST29
	.byte	0x16
	.string	"i"
	.byte	0x1
	.2byte	0x20c
	.byte	0xd
	.4byte	0xed
	.4byte	.LLST30
	.byte	0x12
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x20d
	.byte	0xe
	.4byte	0x113
	.4byte	.LLST31
	.byte	0x12
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x20e
	.byte	0xe
	.4byte	0x113
	.4byte	.LLST32
	.byte	0x13
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x20f
	.byte	0xe
	.4byte	0x113
	.4byte	0x4000a300
	.byte	0x17
	.4byte	0x65c
	.4byte	.LBB20
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.2byte	0x238
	.byte	0xb
	.4byte	0x434
	.byte	0x18
	.4byte	0x66e
	.4byte	.LLST33
	.byte	0x19
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1a
	.4byte	0x67b
	.4byte	.LLST34
	.byte	0x1b
	.4byte	0x688
	.4byte	0x4000a300
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	0x622
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.byte	0x1
	.2byte	0x238
	.byte	0x21
	.4byte	0x461
	.byte	0x18
	.4byte	0x634
	.4byte	.LLST35
	.byte	0x1d
	.4byte	0x641
	.byte	0x1b
	.4byte	0x64e
	.4byte	0x4000a300
	.byte	0
	.byte	0x1e
	.4byte	.LVL121
	.4byte	0x8d8
	.4byte	0x475
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL122
	.4byte	0x835
	.4byte	0x494
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x1f
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL123
	.4byte	0x91d
	.4byte	0x4a8
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL129
	.4byte	0x8d8
	.4byte	0x4bc
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x20
	.4byte	.LVL153
	.4byte	0x8d8
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x4
	.4byte	0x2db
	.byte	0x14
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x1ca
	.byte	0xd
	.4byte	0x15d
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x1
	.byte	0x9c
	.4byte	0x622
	.byte	0x11
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x1ca
	.byte	0x30
	.4byte	0x205
	.4byte	.LLST20
	.byte	0x15
	.string	"cfg"
	.byte	0x1
	.2byte	0x1ca
	.byte	0x49
	.4byte	0x4cd
	.4byte	.LLST21
	.byte	0x16
	.string	"i"
	.byte	0x1
	.2byte	0x1cc
	.byte	0xd
	.4byte	0xed
	.4byte	.LLST22
	.byte	0x12
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x1cd
	.byte	0xe
	.4byte	0x113
	.4byte	.LLST23
	.byte	0x12
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x1ce
	.byte	0xe
	.4byte	0x113
	.4byte	.LLST24
	.byte	0x13
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x1cf
	.byte	0xe
	.4byte	0x113
	.4byte	0x4000a300
	.byte	0x17
	.4byte	0x65c
	.4byte	.LBB14
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x1f5
	.byte	0xb
	.4byte	0x589
	.byte	0x18
	.4byte	0x66e
	.4byte	.LLST25
	.byte	0x19
	.4byte	.Ldebug_ranges0+0
	.byte	0x1a
	.4byte	0x67b
	.4byte	.LLST26
	.byte	0x1b
	.4byte	0x688
	.4byte	0x4000a300
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	0x622
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.byte	0x1
	.2byte	0x1f5
	.byte	0x21
	.4byte	0x5b6
	.byte	0x18
	.4byte	0x634
	.4byte	.LLST27
	.byte	0x1d
	.4byte	0x641
	.byte	0x1b
	.4byte	0x64e
	.4byte	0x4000a300
	.byte	0
	.byte	0x1e
	.4byte	.LVL89
	.4byte	0x8d8
	.4byte	0x5ca
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL90
	.4byte	0x835
	.4byte	0x5e9
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x1f
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL91
	.4byte	0x91d
	.4byte	0x5fd
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL104
	.4byte	0x8d8
	.4byte	0x611
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x20
	.4byte	.LVL119
	.4byte	0x8d8
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x1b5
	.byte	0xd
	.4byte	0x1ab
	.byte	0x1
	.4byte	0x65c
	.byte	0x22
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x1b5
	.byte	0x2f
	.4byte	0x205
	.byte	0x23
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x1b7
	.byte	0xe
	.4byte	0x113
	.byte	0x23
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x1b8
	.byte	0xe
	.4byte	0x113
	.byte	0
	.byte	0x21
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x1a1
	.byte	0xd
	.4byte	0x1ab
	.byte	0x1
	.4byte	0x696
	.byte	0x22
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x1a1
	.byte	0x24
	.4byte	0x205
	.byte	0x23
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x1a3
	.byte	0xe
	.4byte	0x113
	.byte	0x23
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x1a4
	.byte	0xe
	.4byte	0x113
	.byte	0
	.byte	0x24
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x188
	.byte	0x6
	.byte	0x1
	.4byte	0x6d9
	.byte	0x22
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x188
	.byte	0x21
	.4byte	0x205
	.byte	0x22
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x188
	.byte	0x30
	.4byte	0xed
	.byte	0x23
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x18a
	.byte	0xe
	.4byte	0x113
	.byte	0x23
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x18b
	.byte	0xe
	.4byte	0x113
	.byte	0
	.byte	0xf
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x165
	.byte	0x6
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x7d9
	.byte	0x11
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x165
	.byte	0x1f
	.4byte	0x205
	.4byte	.LLST8
	.byte	0x15
	.string	"clk"
	.byte	0x1
	.2byte	0x165
	.byte	0x2f
	.4byte	0x113
	.4byte	.LLST9
	.byte	0x12
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x167
	.byte	0xd
	.4byte	0xed
	.4byte	.LLST10
	.byte	0x1c
	.4byte	0x696
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x1
	.2byte	0x17c
	.byte	0x5
	.4byte	0x75d
	.byte	0x18
	.4byte	0x6b1
	.4byte	.LLST11
	.byte	0x18
	.4byte	0x6a4
	.4byte	.LLST12
	.byte	0x1a
	.4byte	0x6be
	.4byte	.LLST13
	.byte	0x1a
	.4byte	0x6cb
	.4byte	.LLST14
	.byte	0
	.byte	0x25
	.4byte	.LVL60
	.4byte	0xa72
	.byte	0x1e
	.4byte	.LVL62
	.4byte	0xa7f
	.4byte	0x77e
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1e
	.4byte	.LVL63
	.4byte	0x7d9
	.4byte	0x792
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL71
	.4byte	0xa7f
	.4byte	0x7aa
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x39
	.byte	0
	.byte	0x1e
	.4byte	.LVL74
	.4byte	0xa7f
	.4byte	0x7c3
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x63
	.byte	0
	.byte	0x20
	.4byte	.LVL77
	.4byte	0xa7f
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x13f
	.byte	0x6
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x835
	.byte	0x11
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x13f
	.byte	0x1d
	.4byte	0x205
	.4byte	.LLST5
	.byte	0x11
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x13f
	.byte	0x2c
	.4byte	0xed
	.4byte	.LLST6
	.byte	0x12
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x141
	.byte	0xe
	.4byte	0x113
	.4byte	.LLST7
	.byte	0x13
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x142
	.byte	0xe
	.4byte	0x113
	.4byte	0x4000a300
	.byte	0
	.byte	0xf
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x115
	.byte	0x6
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x89c
	.byte	0x10
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x115
	.byte	0x1b
	.4byte	0x205
	.byte	0x1
	.byte	0x5a
	.byte	0x10
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x115
	.byte	0x35
	.4byte	0x22c
	.byte	0x1
	.byte	0x5b
	.byte	0x26
	.string	"cfg"
	.byte	0x1
	.2byte	0x115
	.byte	0x4f
	.4byte	0x4cd
	.byte	0x1
	.byte	0x5c
	.byte	0x12
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x117
	.byte	0xe
	.4byte	0x113
	.4byte	.LLST4
	.byte	0x13
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x118
	.byte	0xe
	.4byte	0x113
	.4byte	0x4000a300
	.byte	0
	.byte	0x14
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x102
	.byte	0xd
	.4byte	0x15d
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x8d8
	.byte	0x11
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x102
	.byte	0x23
	.4byte	0x205
	.4byte	.LLST3
	.byte	0x20
	.4byte	.LVL17
	.4byte	0xa8c
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x43
	.byte	0
	.byte	0
	.byte	0x27
	.4byte	.LASF92
	.byte	0x1
	.byte	0xe0
	.byte	0x6
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x91d
	.byte	0x28
	.4byte	.LASF72
	.byte	0x1
	.byte	0xe0
	.byte	0x1e
	.4byte	0x205
	.byte	0x1
	.byte	0x5a
	.byte	0x29
	.4byte	.LASF75
	.byte	0x1
	.byte	0xe2
	.byte	0xe
	.4byte	0x113
	.4byte	.LLST2
	.byte	0x2a
	.4byte	.LASF76
	.byte	0x1
	.byte	0xe3
	.byte	0xe
	.4byte	0x113
	.4byte	0x4000a300
	.byte	0
	.byte	0x27
	.4byte	.LASF93
	.byte	0x1
	.byte	0xc5
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x962
	.byte	0x28
	.4byte	.LASF72
	.byte	0x1
	.byte	0xc5
	.byte	0x1d
	.4byte	0x205
	.byte	0x1
	.byte	0x5a
	.byte	0x29
	.4byte	.LASF75
	.byte	0x1
	.byte	0xc7
	.byte	0xe
	.4byte	0x113
	.4byte	.LLST1
	.byte	0x2a
	.4byte	.LASF76
	.byte	0x1
	.byte	0xc8
	.byte	0xe
	.4byte	0x113
	.4byte	0x4000a300
	.byte	0
	.byte	0x2b
	.4byte	.LASF94
	.byte	0x1
	.byte	0xb4
	.byte	0xa
	.4byte	0x113
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x99d
	.byte	0x2c
	.4byte	.LASF72
	.byte	0x1
	.byte	0xb4
	.byte	0x26
	.4byte	0x205
	.4byte	.LLST0
	.byte	0x2a
	.4byte	.LASF76
	.byte	0x1
	.byte	0xb6
	.byte	0xe
	.4byte	0x113
	.4byte	0x4000a300
	.byte	0
	.byte	0x27
	.4byte	.LASF95
	.byte	0x1
	.byte	0xa3
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x9e0
	.byte	0x28
	.4byte	.LASF72
	.byte	0x1
	.byte	0xa3
	.byte	0x1f
	.4byte	0x205
	.byte	0x1
	.byte	0x5a
	.byte	0x28
	.4byte	.LASF70
	.byte	0x1
	.byte	0xa3
	.byte	0x2f
	.4byte	0x113
	.byte	0x1
	.byte	0x5b
	.byte	0x2a
	.4byte	.LASF76
	.byte	0x1
	.byte	0xa5
	.byte	0xe
	.4byte	0x113
	.4byte	0x4000a300
	.byte	0
	.byte	0x2d
	.4byte	0x696
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0xa14
	.byte	0x2e
	.4byte	0x6a4
	.byte	0x1
	.byte	0x5a
	.byte	0x2e
	.4byte	0x6b1
	.byte	0x1
	.byte	0x5b
	.byte	0x1a
	.4byte	0x6be
	.4byte	.LLST15
	.byte	0x1b
	.4byte	0x6cb
	.4byte	0x4000a300
	.byte	0
	.byte	0x2d
	.4byte	0x65c
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0xa43
	.byte	0x18
	.4byte	0x66e
	.4byte	.LLST16
	.byte	0x1a
	.4byte	0x67b
	.4byte	.LLST17
	.byte	0x1b
	.4byte	0x688
	.4byte	0x4000a300
	.byte	0
	.byte	0x2d
	.4byte	0x622
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0xa72
	.byte	0x18
	.4byte	0x634
	.4byte	.LLST18
	.byte	0x1a
	.4byte	0x641
	.4byte	.LLST19
	.byte	0x1b
	.4byte	0x64e
	.4byte	0x4000a300
	.byte	0
	.byte	0x2f
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x22c
	.byte	0x9
	.byte	0x2f
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x239
	.byte	0xd
	.byte	0x2f
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x240
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
	.byte	0x4
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
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
	.byte	0x7
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x1c
	.byte	0xb
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
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
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
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
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x6
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
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x5
	.byte	0x57
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x1c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x1c
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
	.byte	0x1d
	.byte	0x34
	.byte	0
	.byte	0x31
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1f
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x21
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
	.byte	0x22
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
	.byte	0x23
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
	.byte	0x24
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
	.byte	0x25
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x26
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
	.byte	0x27
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
	.byte	0x28
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
	.byte	0x29
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
	.byte	0x2a
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
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x2b
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
	.byte	0x2c
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
	.byte	0x2d
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
	.byte	0x2e
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
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
.LLST36:
	.4byte	.LVL154
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL156
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL155
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL157
	.4byte	.LVL158
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0x40
	.byte	0x44
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL159
	.4byte	.LVL162
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL162
	.4byte	.LVL163
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0x40
	.byte	0x45
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL164
	.4byte	.LVL167
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL167
	.4byte	.LVL168
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0x40
	.byte	0x46
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL169
	.4byte	.LVL172
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL172
	.4byte	.LVL173
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0x40
	.byte	0x47
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL174
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL176
	.4byte	.LVL177
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0x40
	.byte	0x48
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL178
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL180
	.4byte	.LVL181
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0x40
	.byte	0x49
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL182
	.4byte	.LVL184
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL184
	.4byte	.LVL185
	.2byte	0xc
	.byte	0x7f
	.byte	0
	.byte	0xb
	.2byte	0xe0ff
	.byte	0x1a
	.byte	0x8
	.byte	0xfc
	.byte	0x46
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL186
	.4byte	.LVL187
	.2byte	0xa
	.byte	0x7f
	.byte	0
	.byte	0x11
	.byte	0xff,0xff,0xff,0x87,0x7e
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL187
	.4byte	.LFE21
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0xa
	.2byte	0x1f00
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL120
	.4byte	.LVL121-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL121-1
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL131
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL120
	.4byte	.LVL121-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL121-1
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL128
	.4byte	.LVL131
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL131
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL145
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL120
	.4byte	.LVL124
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL126
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL131
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL137
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL143
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL120
	.4byte	.LVL124
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x3
	.byte	0x7c
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL132
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x3
	.byte	0x7e
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL139
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0x3
	.byte	0x7f
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL146
	.4byte	.LVL153-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL120
	.4byte	.LVL124
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL134
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL141
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL147
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL148
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL149
	.4byte	.LVL150
	.2byte	0x4
	.byte	0x78
	.byte	0
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL151
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL88
	.4byte	.LVL89-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL89-1
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL88
	.4byte	.LVL89-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL89-1
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL103
	.4byte	.LVL106
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL111
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL88
	.4byte	.LVL92
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x3
	.byte	0x7c
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x3
	.byte	0x7f
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x3
	.byte	0x7f
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL112
	.4byte	.LVL119-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL88
	.4byte	.LVL92
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL106
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL113
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x4
	.byte	0x78
	.byte	0
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL59
	.4byte	.LVL60-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL60-1
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL59
	.4byte	.LVL60-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL60-1
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL63
	.4byte	.LVL66
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL63
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL63
	.4byte	.LVL69
	.2byte	0x6
	.byte	0xc
	.4byte	0x4000a300
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL30
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL38
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL30
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL52
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x7b
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x7c
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x6
	.byte	0x7b
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x6
	.byte	0x7c
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x6
	.byte	0x7d
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x6
	.byte	0x7b
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x6
	.byte	0x7c
	.byte	0
	.byte	0x7b
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x6
	.byte	0x7d
	.byte	0
	.byte	0x7b
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL58
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x5
	.byte	0x7e
	.byte	0
	.byte	0x40
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x3
	.byte	0x7e
	.byte	0x80,0x6
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x5
	.byte	0x7d
	.byte	0
	.byte	0x34
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0x42
	.byte	0x3f
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x5
	.byte	0x7e
	.byte	0
	.byte	0x34
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL80
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL82
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x4
	.byte	0x7a
	.byte	0
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL86
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x84
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	0
	.4byte	0
	.4byte	.LBB20
	.4byte	.LBE20
	.4byte	.LBB23
	.4byte	.LBE23
	.4byte	0
	.4byte	0
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF15:
	.string	"BL_AHB_SLAVE1_RSVD0F"
.LASF82:
	.string	"I2C_IsBusy"
.LASF65:
	.string	"slaveAddr"
.LASF93:
	.string	"I2C_Enable"
.LASF55:
	.string	"I2C_READ"
.LASF78:
	.string	"temp"
.LASF22:
	.string	"BL_AHB_SLAVE1_IRR"
.LASF3:
	.string	"BL_AHB_SLAVE1_SEC_DBG"
.LASF81:
	.string	"I2C_TransferEndStatus"
.LASF79:
	.string	"I2C_MasterReceiveBlocking"
.LASF24:
	.string	"BL_AHB_SLAVE1_MAX"
.LASF54:
	.string	"I2C_WRITE"
.LASF88:
	.string	"phase"
.LASF29:
	.string	"long long int"
.LASF76:
	.string	"I2Cx"
.LASF91:
	.string	"I2C_Reset"
.LASF52:
	.string	"I2C_ID_MAX"
.LASF90:
	.string	"direct"
.LASF6:
	.string	"BL_AHB_SLAVE1_TZ2"
.LASF13:
	.string	"BL_AHB_SLAVE1_SDU"
.LASF56:
	.string	"I2C_Direction_Type"
.LASF69:
	.string	"dataSize"
.LASF83:
	.string	"enable"
.LASF14:
	.string	"BL_AHB_SLAVE1_PDS_HBN_AON_HBNRAM"
.LASF97:
	.string	"GLB_Set_I2C_CLK"
.LASF103:
	.string	"I2C_SetSclSync"
.LASF67:
	.string	"subAddrSize"
.LASF12:
	.string	"BL_AHB_SLAVE1_DMA"
.LASF74:
	.string	"intMask"
.LASF42:
	.string	"DISABLE"
.LASF27:
	.string	"short int"
.LASF102:
	.string	"i2cIntCbfArra"
.LASF25:
	.string	"unsigned int"
.LASF38:
	.string	"SUCCESS"
.LASF100:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Src/bl602_i2c.c"
.LASF60:
	.string	"I2C_NACK_RECV_INT"
.LASF96:
	.string	"GLB_Get_BCLK_Div"
.LASF37:
	.string	"char"
.LASF40:
	.string	"TIMEOUT"
.LASF28:
	.string	"long int"
.LASF18:
	.string	"BL_AHB_SLAVE1_SPI"
.LASF41:
	.string	"BL_Err_Type"
.LASF87:
	.string	"I2C_SetPrd"
.LASF4:
	.string	"BL_AHB_SLAVE1_SEC"
.LASF39:
	.string	"ERROR"
.LASF62:
	.string	"I2C_FIFO_ERR_INT"
.LASF61:
	.string	"I2C_ARB_LOST_INT"
.LASF71:
	.string	"I2C_Transfer_Cfg"
.LASF58:
	.string	"I2C_TX_FIFO_READY_INT"
.LASF94:
	.string	"I2C_RecieveWord"
.LASF73:
	.string	"intType"
.LASF47:
	.string	"UNMASK"
.LASF30:
	.string	"unsigned char"
.LASF21:
	.string	"BL_AHB_SLAVE1_TMR"
.LASF19:
	.string	"BL_AHB_SLAVE1_I2C"
.LASF66:
	.string	"stopEveryByte"
.LASF5:
	.string	"BL_AHB_SLAVE1_TZ1"
.LASF49:
	.string	"BL_Mask_Type"
.LASF26:
	.string	"signed char"
.LASF36:
	.string	"long long unsigned int"
.LASF34:
	.string	"uint32_t"
.LASF16:
	.string	"BL_AHB_SLAVE1_UART0"
.LASF1:
	.string	"BL_AHB_SLAVE1_RF"
.LASF48:
	.string	"MASK"
.LASF32:
	.string	"uint16_t"
.LASF57:
	.string	"I2C_TRANS_END_INT"
.LASF50:
	.string	"intCallback_Type"
.LASF20:
	.string	"BL_AHB_SLAVE1_PWM"
.LASF33:
	.string	"short unsigned int"
.LASF75:
	.string	"tmpVal"
.LASF84:
	.string	"I2C_IntMask"
.LASF0:
	.string	"BL_AHB_SLAVE1_GLB"
.LASF77:
	.string	"timeOut"
.LASF11:
	.string	"BL_AHB_SLAVE1_SFC"
.LASF7:
	.string	"BL_AHB_SLAVE1_EFUSE"
.LASF70:
	.string	"data"
.LASF10:
	.string	"BL_AHB_SLAVE1_RSVD0A"
.LASF64:
	.string	"I2C_INT_Type"
.LASF101:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/build_out/bl602_std"
.LASF86:
	.string	"bclkDiv"
.LASF35:
	.string	"long unsigned int"
.LASF46:
	.string	"BL_Sts_Type"
.LASF53:
	.string	"I2C_ID_Type"
.LASF17:
	.string	"BL_AHB_SLAVE1_UART1"
.LASF72:
	.string	"i2cNo"
.LASF92:
	.string	"I2C_Disable"
.LASF45:
	.string	"RESET"
.LASF31:
	.string	"uint8_t"
.LASF8:
	.string	"BL_AHB_SLAVE1_CCI"
.LASF44:
	.string	"BL_Fun_Type"
.LASF59:
	.string	"I2C_RX_FIFO_READY_INT"
.LASF9:
	.string	"BL_AHB_SLAVE1_L1C"
.LASF99:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF68:
	.string	"subAddr"
.LASF2:
	.string	"BL_AHB_SLAVE1_GPIP_PHY_AGC"
.LASF85:
	.string	"I2C_ClockSet"
.LASF23:
	.string	"BL_AHB_SLAVE1_CKS"
.LASF89:
	.string	"I2C_Init"
.LASF80:
	.string	"I2C_MasterSendBlocking"
.LASF63:
	.string	"I2C_INT_ALL"
.LASF95:
	.string	"I2C_SendWord"
.LASF43:
	.string	"ENABLE"
.LASF51:
	.string	"I2C0_ID"
.LASF98:
	.string	"GLB_AHB_Slave1_Reset"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
