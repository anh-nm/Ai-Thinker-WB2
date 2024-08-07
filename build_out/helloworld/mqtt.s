	.file	"mqtt.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.event_cb.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"hunonic/demo/mqtt/sub"
	.align	2
.LC3:
	.string	"switch"
	.align	2
.LC4:
	.string	"online"
	.align	2
.LC5:
	.string	"hunonic/demo/mqtt/pub"
	.align	2
.LC6:
	.string	"TOPIC=%.*s\r\n"
	.align	2
.LC7:
	.string	"DATA=%.*s\r\n"
	.align	2
.LC8:
	.string	"cmd"
	.align	2
.LC9:
	.string	"\r\ncmd: %d\r\n"
	.align	2
.LC10:
	.string	"version"
	.align	2
.LC11:
	.string	"version: \r\n"
	.align	2
.LC12:
	.string	"hwver"
	.align	2
.LC13:
	.string	"build"
	.align	2
.LC14:
	.string	"Hardware: %d\tbuild: %d\r\n"
	.align	2
.LC15:
	.string	"swver"
	.align	2
.LC16:
	.string	"Software: %d\tbuild: %s\r\n"
	.align	2
.LC18:
	.string	"ret"
	.align	2
.LC19:
	.string	"\r\nReply\r\n"
	.align	2
.LC20:
	.string	"id"
	.align	2
.LC21:
	.string	"src"
	.align	2
.LC22:
	.string	"id: %s,\tsrc: %d"
	.align	2
.LC23:
	.string	"ls_user"
	.align	2
.LC24:
	.string	"uid"
	.align	2
.LC25:
	.string	"\r\nls_user: %d\r\n"
	.align	2
.LC26:
	.string	"%s, "
	.align	2
.LC27:
	.string	"\r\n"
	.align	2
.LC28:
	.string	"\r\nuid: %d"
	.align	2
.LC29:
	.string	"ctr"
	.align	2
.LC30:
	.string	"Khong co switch nao nhu vay"
	.align	2
.LC31:
	.string	"\r\nValue missing"
	.section	.text.event_cb,"ax",@progbits
	.align	1
	.type	event_cb, @function
event_cb:
.LFB6:
	.file 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/helloworld/helloworld/mqtt.c"
	.loc 1 34 1
	.cfi_startproc
.LVL0:
	.loc 1 35 5
	.loc 1 36 5
	.loc 1 34 1 is_stmt 0
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sw	s4,88(sp)
	sw	ra,108(sp)
	sw	s0,104(sp)
	sw	s1,100(sp)
	sw	s2,96(sp)
	sw	s3,92(sp)
	sw	s5,84(sp)
	sw	s6,80(sp)
	sw	s7,76(sp)
	sw	s8,72(sp)
	sw	s9,68(sp)
	sw	s10,64(sp)
	sw	s11,60(sp)
	.cfi_offset 20, -24
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.cfi_offset 27, -52
	.loc 1 38 14
	lw	a5,0(a0)
	.loc 1 41 5
	li	s4,3
	.loc 1 36 30
	lw	s1,4(a0)
.LVL1:
	.loc 1 38 5 is_stmt 1
	.loc 1 39 5
	.loc 1 40 5
	.loc 1 41 5
	beq	a5,s4,.L2
	li	a4,6
	beq	a5,a4,.L3
	li	a4,1
	bne	a5,a4,.L4
.LBB36:
	.loc 1 43 9
	.loc 1 47 9
	.loc 1 47 18 is_stmt 0
	lui	a1,%hi(.LC1)
	li	a2,0
	addi	a1,a1,%lo(.LC1)
	mv	a0,s1
.LVL2:
	call	axk_mqtt_client_subscribe
.LVL3:
	.loc 1 48 9 is_stmt 1
	.loc 1 55 9
.L4:
.LBE36:
	.loc 1 232 5
	.loc 1 233 1 is_stmt 0
	lw	ra,108(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,104(sp)
	.cfi_restore 8
	lw	s1,100(sp)
	.cfi_restore 9
.LVL4:
	lw	s2,96(sp)
	.cfi_restore 18
	lw	s3,92(sp)
	.cfi_restore 19
	lw	s4,88(sp)
	.cfi_restore 20
	lw	s5,84(sp)
	.cfi_restore 21
	lw	s6,80(sp)
	.cfi_restore 22
	lw	s7,76(sp)
	.cfi_restore 23
	lw	s8,72(sp)
	.cfi_restore 24
	lw	s9,68(sp)
	.cfi_restore 25
	lw	s10,64(sp)
	.cfi_restore 26
	lw	s11,60(sp)
	.cfi_restore 27
	li	a0,0
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
.LVL5:
.L2:
	.cfi_restore_state
.LBB64:
	.loc 1 61 9 is_stmt 1
	.loc 1 66 9
	.loc 1 66 23 is_stmt 0
	call	cJSON_CreateObject
.LVL6:
	.loc 1 69 25
	lui	a5,%hi(.LC2)
	lw	a1,%lo(.LC2+4)(a5)
	.loc 1 66 23
	mv	s0,a0
.LVL7:
	.loc 1 69 9 is_stmt 1
	.loc 1 69 25 is_stmt 0
	lw	a0,%lo(.LC2)(a5)
	call	cJSON_CreateNumber
.LVL8:
	sw	a0,12(sp)
.LVL9:
	.loc 1 70 9 is_stmt 1
	.loc 1 70 25 is_stmt 0
	li	a1,0
	li	a0,0
.LVL10:
	call	cJSON_CreateNumber
.LVL11:
	.loc 1 73 9
	lw	a2,12(sp)
	lui	a1,%hi(.LC3)
	.loc 1 70 25
	mv	s2,a0
.LVL12:
	.loc 1 73 9 is_stmt 1
	addi	a1,a1,%lo(.LC3)
	mv	a0,s0
.LVL13:
	call	cJSON_AddItemToObject
.LVL14:
	.loc 1 74 9
	lui	a1,%hi(.LC4)
	mv	a2,s2
	addi	a1,a1,%lo(.LC4)
	mv	a0,s0
	call	cJSON_AddItemToObject
.LVL15:
	.loc 1 78 9
	.loc 1 78 29 is_stmt 0
	mv	a0,s0
	call	cJSON_Print
.LVL16:
	.loc 1 80 18
	lui	a1,%hi(.LC5)
	mv	a2,a0
	.loc 1 78 29
	mv	s2,a0
.LVL17:
	.loc 1 80 9 is_stmt 1
	.loc 1 80 18 is_stmt 0
	li	a5,0
	li	a4,0
	li	a3,0
	addi	a1,a1,%lo(.LC5)
	mv	a0,s1
.LVL18:
	call	axk_mqtt_client_publish
.LVL19:
	.loc 1 81 9 is_stmt 1
	.loc 1 83 9
	mv	a0,s2
	call	free
.LVL20:
	.loc 1 84 9
	mv	a0,s0
	call	cJSON_Delete
.LVL21:
	.loc 1 85 9
	j	.L4
.LVL22:
.L3:
	.loc 1 94 9 is_stmt 0
	lw	a2,28(a0)
	lw	a1,32(a0)
	mv	s0,a0
	.loc 1 93 9 is_stmt 1
	.loc 1 94 9
	lui	a0,%hi(.LC6)
.LVL23:
	addi	a0,a0,%lo(.LC6)
	call	printf
.LVL24:
	.loc 1 95 9
	lw	a2,12(s0)
	lw	a1,16(s0)
	lui	a0,%hi(.LC7)
	addi	a0,a0,%lo(.LC7)
	call	printf
.LVL25:
	.loc 1 100 9
	.loc 1 100 27 is_stmt 0
	lw	a1,16(s0)
	lw	a0,12(s0)
	call	strndup
.LVL26:
	mv	s3,a0
.LVL27:
	.loc 1 101 9 is_stmt 1
	.loc 1 101 23 is_stmt 0
	call	cJSON_Parse
.LVL28:
	mv	s0,a0
.LVL29:
	.loc 1 103 9 is_stmt 1
	.loc 1 103 11 is_stmt 0
	beq	a0,zero,.L5
.LBB37:
	.loc 1 106 13 is_stmt 1
	.loc 1 106 26 is_stmt 0
	lui	a1,%hi(.LC8)
	addi	a1,a1,%lo(.LC8)
	call	cJSON_GetObjectItem
.LVL30:
	.loc 1 107 13
	lw	a1,20(a0)
	.loc 1 106 26
	mv	s2,a0
.LVL31:
	.loc 1 107 13 is_stmt 1
	lui	a0,%hi(.LC9)
.LVL32:
	addi	a0,a0,%lo(.LC9)
	call	printf
.LVL33:
	.loc 1 108 13
	.loc 1 108 17 is_stmt 0
	lw	a5,20(s2)
.LVL34:
	.loc 1 109 13 is_stmt 1
	.loc 1 109 15 is_stmt 0
	li	a4,200
	bne	a5,a4,.L6
.LBB38:
	.loc 1 110 17 is_stmt 1
	.loc 1 110 33 is_stmt 0
	lui	a1,%hi(.LC10)
	addi	a1,a1,%lo(.LC10)
	mv	a0,s0
	call	cJSON_GetObjectItem
.LVL35:
	mv	s6,a0
.LVL36:
	.loc 1 111 17 is_stmt 1
	.loc 1 111 40 is_stmt 0
	call	cJSON_GetArraySize
.LVL37:
	mv	s5,a0
.LVL38:
	.loc 1 112 17 is_stmt 1
	lui	a0,%hi(.LC11)
.LVL39:
	addi	a0,a0,%lo(.LC11)
	call	printf
.LVL40:
	.loc 1 115 17
.LBB39:
	.loc 1 115 22
	.loc 1 115 26 is_stmt 0
	li	s2,0
.LVL41:
	lui	s7,%hi(.LC13)
.LBB40:
.LBB41:
	.loc 1 124 40
	lui	s8,%hi(.LC15)
	.loc 1 126 25
	lui	s9,%hi(.LC16)
.LBE41:
.LBB42:
	.loc 1 118 40
	lui	s10,%hi(.LC12)
	.loc 1 120 25
	lui	s11,%hi(.LC14)
.LVL42:
.L7:
.LBE42:
.LBE40:
	.loc 1 115 33 is_stmt 1 discriminator 1
	.loc 1 115 17 is_stmt 0 discriminator 1
	blt	s2,s5,.L10
.LVL43:
.L18:
.LBE39:
.LBE38:
.LBB49:
.LBB50:
	.loc 1 184 21 is_stmt 1
	.loc 1 184 34 is_stmt 0
	lui	a5,%hi(.LC17)
	lw	a1,%lo(.LC17+4)(a5)
	lw	a0,%lo(.LC17)(a5)
	call	cJSON_CreateNumber
.LVL44:
	.loc 1 185 21
	lui	a1,%hi(.LC18)
	.loc 1 184 34
	mv	a2,a0
.LVL45:
	.loc 1 185 21 is_stmt 1
	addi	a1,a1,%lo(.LC18)
	mv	a0,s0
.LVL46:
	call	cJSON_AddItemToObject
.LVL47:
	.loc 1 187 21
	.loc 1 187 36 is_stmt 0
	mv	a0,s0
	call	cJSON_PrintUnformatted
.LVL48:
	.loc 1 188 30
	lui	a1,%hi(.LC5)
	.loc 1 187 36
	mv	a2,a0
.LVL49:
	.loc 1 188 21 is_stmt 1
	.loc 1 188 30 is_stmt 0
	li	a5,0
	li	a4,1
	li	a3,0
	addi	a1,a1,%lo(.LC5)
	mv	a0,s1
.LVL50:
	call	axk_mqtt_client_publish
.LVL51:
	.loc 1 189 21 is_stmt 1
	.loc 1 190 21
	lui	a0,%hi(.LC19)
	addi	a0,a0,%lo(.LC19)
.L31:
.LBE50:
	.loc 1 192 21 is_stmt 0
	call	printf
.LVL52:
.L5:
.LBE49:
.LBE37:
	.loc 1 215 9 is_stmt 1
	mv	a0,s0
	call	cJSON_Delete
.LVL53:
	.loc 1 216 9
	mv	a0,s3
	call	free
.LVL54:
	.loc 1 218 9
	j	.L4
.LVL55:
.L10:
.LBB63:
.LBB54:
.LBB48:
.LBB46:
	.loc 1 116 21
	.loc 1 116 43 is_stmt 0
	mv	a1,s2
	mv	a0,s6
	call	cJSON_GetArrayItem
.LVL56:
	mv	s4,a0
.LVL57:
	.loc 1 117 21 is_stmt 1
	.loc 1 117 23 is_stmt 0
	bne	s2,zero,.L8
.LBB43:
	.loc 1 118 25 is_stmt 1
	.loc 1 118 40 is_stmt 0
	addi	a1,s10,%lo(.LC12)
	call	cJSON_GetObjectItem
.LVL58:
	sw	a0,12(sp)
.LVL59:
	.loc 1 119 25 is_stmt 1
	.loc 1 119 40 is_stmt 0
	addi	a1,s7,%lo(.LC13)
	mv	a0,s4
.LVL60:
	call	cJSON_GetObjectItem
.LVL61:
	.loc 1 120 25 is_stmt 1
	lw	a5,12(sp)
	lw	a2,20(a0)
	addi	a0,s11,%lo(.LC14)
.LVL62:
	lw	a1,20(a5)
.LVL63:
.L29:
.LBE43:
.LBB44:
	.loc 1 126 25 is_stmt 0
	call	printf
.LVL64:
.LBE44:
.LBE46:
	.loc 1 115 55 is_stmt 1
	.loc 1 115 56 is_stmt 0
	addi	s2,s2,1
.LVL65:
	j	.L7
.LVL66:
.L8:
.LBB47:
.LBB45:
	.loc 1 124 25 is_stmt 1
	.loc 1 124 40 is_stmt 0
	addi	a1,s8,%lo(.LC15)
	call	cJSON_GetObjectItem
.LVL67:
	sw	a0,12(sp)
.LVL68:
	.loc 1 125 25 is_stmt 1
	.loc 1 125 40 is_stmt 0
	addi	a1,s7,%lo(.LC13)
	mv	a0,s4
.LVL69:
	call	cJSON_GetObjectItem
.LVL70:
	.loc 1 126 25 is_stmt 1
	lw	a5,12(sp)
	lw	a2,16(a0)
	addi	a0,s9,%lo(.LC16)
.LVL71:
	lw	a1,20(a5)
	j	.L29
.LVL72:
.L6:
.LBE45:
.LBE47:
.LBE48:
.LBE54:
	.loc 1 138 18
	.loc 1 138 20 is_stmt 0
	li	a4,201
	bne	a5,a4,.L11
.LBB55:
	.loc 1 139 17 is_stmt 1
	.loc 1 139 29 is_stmt 0
	lui	a1,%hi(.LC20)
	addi	a1,a1,%lo(.LC20)
	mv	a0,s0
	call	cJSON_GetObjectItem
.LVL73:
	.loc 1 140 30
	lui	a1,%hi(.LC21)
	.loc 1 139 29
	mv	s2,a0
.LVL74:
	.loc 1 140 17 is_stmt 1
	.loc 1 140 30 is_stmt 0
	addi	a1,a1,%lo(.LC21)
	mv	a0,s0
.LVL75:
	call	cJSON_GetObjectItem
.LVL76:
	.loc 1 141 17 is_stmt 1
	lw	a2,20(a0)
	lw	a1,16(s2)
	lui	a0,%hi(.LC22)
.LVL77:
	addi	a0,a0,%lo(.LC22)
	call	printf
.LVL78:
	.loc 1 144 17
	j	.L18
.LVL79:
.L11:
.LBE55:
	.loc 1 152 18
	.loc 1 152 20 is_stmt 0
	li	a4,203
	bne	a5,a4,.L12
.LBB56:
	.loc 1 153 17 is_stmt 1
	.loc 1 153 34 is_stmt 0
	lui	a1,%hi(.LC23)
	addi	a1,a1,%lo(.LC23)
	mv	a0,s0
	call	cJSON_GetObjectItem
.LVL80:
	.loc 1 154 30
	lui	a1,%hi(.LC24)
	.loc 1 153 34
	mv	s5,a0
.LVL81:
	.loc 1 154 17 is_stmt 1
	.loc 1 154 30 is_stmt 0
	addi	a1,a1,%lo(.LC24)
	mv	a0,s0
.LVL82:
	call	cJSON_GetObjectItem
.LVL83:
	.loc 1 155 30
	lui	a1,%hi(.LC21)
	addi	a1,a1,%lo(.LC21)
	.loc 1 154 30
	mv	s7,a0
.LVL84:
	.loc 1 155 17 is_stmt 1
	.loc 1 155 30 is_stmt 0
	mv	a0,s0
.LVL85:
	call	cJSON_GetObjectItem
.LVL86:
	mv	s6,a0
.LVL87:
	.loc 1 157 17 is_stmt 1
	.loc 1 157 30 is_stmt 0
	mv	a0,s5
.LVL88:
	call	cJSON_GetArraySize
.LVL89:
	.loc 1 158 17
	mv	a1,a0
	.loc 1 157 30
	mv	s2,a0
.LVL90:
	.loc 1 158 17 is_stmt 1
	lui	a0,%hi(.LC25)
.LVL91:
	addi	a0,a0,%lo(.LC25)
	call	printf
.LVL92:
	.loc 1 159 17
.LBB57:
	.loc 1 159 22
	.loc 1 159 26 is_stmt 0
	li	s4,0
.LBB58:
	.loc 1 161 21
	lui	s8,%hi(.LC26)
.LVL93:
.L13:
.LBE58:
	.loc 1 159 33 is_stmt 1 discriminator 1
	.loc 1 159 17 is_stmt 0 discriminator 1
	blt	s4,s2,.L14
.LBE57:
	.loc 1 163 17 is_stmt 1
	lui	a0,%hi(.LC27)
	addi	a0,a0,%lo(.LC27)
	call	printf
.LVL94:
	.loc 1 165 17
	lw	a1,20(s7)
	lui	s2,%hi(.LC28)
.LVL95:
	addi	a0,s2,%lo(.LC28)
	call	printf
.LVL96:
	.loc 1 166 17
	lw	a1,20(s6)
	addi	a0,s2,%lo(.LC28)
	call	printf
.LVL97:
	.loc 1 169 17
	j	.L18
.LVL98:
.L14:
.LBB61:
.LBB59:
	.loc 1 160 21 discriminator 3
	.loc 1 160 35 is_stmt 0 discriminator 3
	mv	a1,s4
	mv	a0,s5
	call	cJSON_GetArrayItem
.LVL99:
	.loc 1 161 21 is_stmt 1 discriminator 3
	lw	a1,16(a0)
	addi	a0,s8,%lo(.LC26)
.LVL100:
.LBE59:
	.loc 1 159 44 is_stmt 0 discriminator 3
	addi	s4,s4,1
.LVL101:
.LBB60:
	.loc 1 161 21 discriminator 3
	call	printf
.LVL102:
.LBE60:
	.loc 1 159 43 is_stmt 1 discriminator 3
	j	.L13
.LVL103:
.L12:
.LBE61:
.LBE56:
.LBB62:
	.loc 1 178 17
	.loc 1 178 33 is_stmt 0
	lui	a1,%hi(.LC3)
	addi	a1,a1,%lo(.LC3)
	mv	a0,s0
	call	cJSON_GetObjectItem
.LVL104:
	.loc 1 179 30
	lui	a1,%hi(.LC29)
	.loc 1 178 33
	mv	s2,a0
.LVL105:
	.loc 1 179 17 is_stmt 1
	.loc 1 179 30 is_stmt 0
	addi	a1,a1,%lo(.LC29)
	mv	a0,s0
.LVL106:
	call	cJSON_GetObjectItem
.LVL107:
	.loc 1 180 17 is_stmt 1
	.loc 1 180 19 is_stmt 0
	beq	s2,zero,.L15
	.loc 1 180 33 discriminator 1
	beq	a0,zero,.L15
.LBB53:
	.loc 1 181 21 is_stmt 1
	lw	s2,20(s2)
.LVL108:
.LBB51:
.LBB52:
	.loc 1 336 9 is_stmt 0
	lui	a1,%hi(.LANCHOR0)
	lw	s5,20(a0)
.LVL109:
	.loc 1 332 5 is_stmt 1
	.loc 1 333 5
	.loc 1 336 5
	.loc 1 336 9 is_stmt 0
	li	a2,20
	addi	a1,a1,%lo(.LANCHOR0)
	addi	a0,sp,28
.LVL110:
	call	memcpy
.LVL111:
	.loc 1 338 5 is_stmt 1
	.loc 1 338 25 is_stmt 0
	addi	a5,s2,-1
	.loc 1 338 8
	bgtu	a5,s4,.L16
	.loc 1 339 9 is_stmt 1
	.loc 1 340 43 is_stmt 0
	addi	a5,sp,48
	slli	s2,s2,2
.LVL112:
	add	s2,a5,s2
	.loc 1 339 11
	li	a5,1
	.loc 1 340 13
	lbu	a0,-20(s2)
	li	a1,0
	.loc 1 339 11
	beq	s5,a5,.L30
	.loc 1 342 13 is_stmt 1
	li	a1,1
.L30:
	call	bl_gpio_output_set
.LVL113:
	j	.L18
.LVL114:
.L16:
	.loc 1 345 9
	lui	a0,%hi(.LC30)
	addi	a0,a0,%lo(.LC30)
	call	printf
.LVL115:
	j	.L18
.LVL116:
.L15:
.LBE52:
.LBE51:
.LBE53:
	.loc 1 192 21
	lui	a0,%hi(.LC31)
.LVL117:
	addi	a0,a0,%lo(.LC31)
	j	.L31
.LBE62:
.LBE63:
.LBE64:
	.cfi_endproc
.LFE6:
	.size	event_cb, .-event_cb
	.section	.rodata.mqtt_start.str1.4,"aMS",@progbits,1
	.align	2
.LC32:
	.string	"mqtt://150.95.113.123"
	.align	2
.LC33:
	.string	"utest"
	.align	2
.LC34:
	.string	"utest123"
	.align	2
.LC35:
	.string	"\r\nAXK ok"
	.align	2
.LC36:
	.string	"ERROR"
	.section	.text.mqtt_start,"ax",@progbits
	.align	1
	.globl	mqtt_start
	.type	mqtt_start, @function
mqtt_start:
.LFB7:
	.loc 1 238 1
	.cfi_startproc
	.loc 1 239 5
	.loc 1 238 1 is_stmt 0
	addi	sp,sp,-192
	.cfi_def_cfa_offset 192
	.loc 1 239 5
	li	a2,0
	li	a1,0
	li	a0,14
	.loc 1 238 1
	sw	ra,188(sp)
	.cfi_offset 1, -4
	.loc 1 239 5
	call	bl_gpio_enable_output
.LVL118:
	.loc 1 240 5 is_stmt 1
	li	a2,0
	li	a1,0
	li	a0,17
	call	bl_gpio_enable_output
.LVL119:
	.loc 1 241 5
	li	a2,0
	li	a1,0
	li	a0,3
	call	bl_gpio_enable_output
.LVL120:
	.loc 1 242 5
	li	a2,0
	li	a1,0
	li	a0,0
	call	bl_gpio_enable_output
.LVL121:
	.loc 1 244 5
	.loc 1 244 30 is_stmt 0
	li	a2,172
	li	a1,0
	addi	a0,sp,4
	call	memset
.LVL122:
	lui	a5,%hi(event_cb)
	addi	a5,a5,%lo(event_cb)
	sw	a5,0(sp)
	lui	a5,%hi(.LC32)
	addi	a5,a5,%lo(.LC32)
	sw	a5,12(sp)
	lui	a5,%hi(.LC33)
	addi	a5,a5,%lo(.LC33)
	sw	a5,28(sp)
	lui	a5,%hi(.LC34)
	addi	a5,a5,%lo(.LC34)
	.loc 1 250 14
	mv	a0,sp
	.loc 1 244 30
	sw	a5,32(sp)
	.loc 1 250 5 is_stmt 1
	.loc 1 250 14 is_stmt 0
	call	axk_mqtt_client_init
.LVL123:
	.loc 1 250 12
	lui	a5,%hi(client)
	sw	a0,%lo(client)(a5)
	.loc 1 251 5 is_stmt 1
	.loc 1 251 21 is_stmt 0
	call	axk_mqtt_client_start
.LVL124:
	.loc 1 252 5 is_stmt 1
	.loc 1 252 7 is_stmt 0
	bne	a0,zero,.L33
	.loc 1 253 9 is_stmt 1
	lui	a0,%hi(.LC35)
.LVL125:
	addi	a0,a0,%lo(.LC35)
.L36:
	.loc 1 255 9 is_stmt 0
	call	printf
.LVL126:
	.loc 1 257 1
	lw	ra,188(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,192
	.cfi_def_cfa_offset 0
	jr	ra
.LVL127:
.L33:
	.cfi_restore_state
	.loc 1 255 9 is_stmt 1
	lui	a0,%hi(.LC36)
.LVL128:
	addi	a0,a0,%lo(.LC36)
	j	.L36
	.cfi_endproc
.LFE7:
	.size	mqtt_start, .-mqtt_start
	.section	.rodata.button_task.str1.4,"aMS",@progbits,1
	.align	2
.LC37:
	.string	"press"
	.align	2
.LC38:
	.string	"act"
	.align	2
.LC39:
	.string	"release"
	.section	.text.button_task,"ax",@progbits
	.align	1
	.globl	button_task
	.type	button_task, @function
button_task:
.LFB8:
	.loc 1 261 30
	.cfi_startproc
.LVL129:
	.loc 1 262 5
	.loc 1 261 30 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	.loc 1 262 5
	li	a2,0
	li	a1,1
	li	a0,21
.LVL130:
	.loc 1 261 30
	sw	ra,60(sp)
	sw	s3,44(sp)
	sw	s4,40(sp)
	sw	s5,36(sp)
	sw	s6,32(sp)
	sw	s7,28(sp)
	sw	s8,24(sp)
	sw	s9,20(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	.cfi_offset 1, -4
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 262 5
	call	bl_gpio_enable_input
.LVL131:
	.loc 1 263 5 is_stmt 1
	li	a2,0
	li	a1,0
	li	a0,3
	call	bl_gpio_enable_output
.LVL132:
.LBB65:
	.loc 1 302 33 is_stmt 0
	lui	a5,%hi(.LC17)
	lw	s4,%lo(.LC17)(a5)
	lw	s5,%lo(.LC17+4)(a5)
	lui	s8,%hi(.LANCHOR1)
	.loc 1 303 30
	lui	s9,%hi(.LC39)
	.loc 1 306 17
	lui	s3,%hi(.LC3)
	.loc 1 307 17
	lui	s6,%hi(.LC38)
	.loc 1 313 26
	lui	s7,%hi(client)
.L40:
.LBE65:
	.loc 1 264 5 is_stmt 1
	.loc 1 266 5
	.loc 1 267 9
	.loc 1 267 13 is_stmt 0
	li	a0,21
	call	bl_gpio_input_get_value
.LVL133:
	addi	s1,s8,%lo(.LANCHOR1)
	.loc 1 267 12
	bne	a0,zero,.L38
	.loc 1 269 13 is_stmt 1
	.loc 1 269 15 is_stmt 0
	lw	a5,0(s1)
	bne	a5,zero,.L39
.LBB66:
	.loc 1 270 17 is_stmt 1
	li	a1,1
	li	a0,3
	call	bl_gpio_output_set
.LVL134:
	.loc 1 272 17
	.loc 1 272 31 is_stmt 0
	call	cJSON_CreateObject
.LVL135:
	mv	s0,a0
.LVL136:
	.loc 1 275 17 is_stmt 1
	.loc 1 275 33 is_stmt 0
	mv	a1,s5
	mv	a0,s4
	call	cJSON_CreateNumber
.LVL137:
	sw	a0,12(sp)
.LVL138:
	.loc 1 276 17 is_stmt 1
	.loc 1 276 30 is_stmt 0
	lui	a0,%hi(.LC37)
.LVL139:
	addi	a0,a0,%lo(.LC37)
	call	cJSON_CreateString
.LVL140:
	.loc 1 279 17
	lw	a2,12(sp)
	.loc 1 276 30
	mv	s2,a0
.LVL141:
	.loc 1 279 17 is_stmt 1
	addi	a1,s3,%lo(.LC3)
	mv	a0,s0
.LVL142:
	call	cJSON_AddItemToObject
.LVL143:
	.loc 1 280 17
	mv	a2,s2
	addi	a1,s6,%lo(.LC38)
	mv	a0,s0
	call	cJSON_AddItemToObject
.LVL144:
	.loc 1 284 17
	.loc 1 284 37 is_stmt 0
	mv	a0,s0
	call	cJSON_Print
.LVL145:
	.loc 1 286 26
	mv	a2,a0
	.loc 1 284 37
	mv	s2,a0
.LVL146:
	.loc 1 286 17 is_stmt 1
	.loc 1 286 26 is_stmt 0
	lw	a0,%lo(client)(s7)
.LVL147:
	lui	a1,%hi(.LC5)
	li	a5,0
	li	a4,0
	li	a3,0
	addi	a1,a1,%lo(.LC5)
	call	axk_mqtt_client_publish
.LVL148:
	.loc 1 287 17 is_stmt 1
	.loc 1 289 17
	mv	a0,s2
	call	free
.LVL149:
	.loc 1 290 17
	mv	a0,s0
	call	cJSON_Delete
.LVL150:
	.loc 1 291 17
	.loc 1 291 22 is_stmt 0
	li	a5,1
	sw	a5,0(s1)
	.loc 1 292 17 is_stmt 1
.LVL151:
.L42:
.LBE66:
.LBB67:
	.loc 1 319 17
	li	a0,100
	call	vTaskDelay
.LVL152:
.L39:
.LBE67:
	.loc 1 322 9
	li	a0,100
	call	vTaskDelay
.LVL153:
	.loc 1 266 11
	.loc 1 267 12 is_stmt 0
	j	.L40
.L38:
	.loc 1 296 13 is_stmt 1
	.loc 1 296 15 is_stmt 0
	lw	a4,0(s1)
	li	a5,1
	bne	a4,a5,.L39
.LBB68:
	.loc 1 297 17 is_stmt 1
	li	a1,0
	li	a0,3
	call	bl_gpio_output_set
.LVL154:
	.loc 1 299 17
	.loc 1 299 31 is_stmt 0
	call	cJSON_CreateObject
.LVL155:
	mv	s0,a0
.LVL156:
	.loc 1 302 17 is_stmt 1
	.loc 1 302 33 is_stmt 0
	mv	a1,s5
	mv	a0,s4
	call	cJSON_CreateNumber
.LVL157:
	sw	a0,12(sp)
.LVL158:
	.loc 1 303 17 is_stmt 1
	.loc 1 303 30 is_stmt 0
	addi	a0,s9,%lo(.LC39)
.LVL159:
	call	cJSON_CreateString
.LVL160:
	.loc 1 306 17
	lw	a2,12(sp)
	.loc 1 303 30
	mv	s2,a0
.LVL161:
	.loc 1 306 17 is_stmt 1
	addi	a1,s3,%lo(.LC3)
	mv	a0,s0
.LVL162:
	call	cJSON_AddItemToObject
.LVL163:
	.loc 1 307 17
	mv	a2,s2
	addi	a1,s6,%lo(.LC38)
	mv	a0,s0
	call	cJSON_AddItemToObject
.LVL164:
	.loc 1 311 17
	.loc 1 311 37 is_stmt 0
	mv	a0,s0
	call	cJSON_Print
.LVL165:
	.loc 1 313 26
	mv	a2,a0
	.loc 1 311 37
	mv	s2,a0
.LVL166:
	.loc 1 313 17 is_stmt 1
	.loc 1 313 26 is_stmt 0
	lw	a0,%lo(client)(s7)
.LVL167:
	lui	a1,%hi(.LC5)
	li	a5,0
	li	a4,0
	li	a3,0
	addi	a1,a1,%lo(.LC5)
	call	axk_mqtt_client_publish
.LVL168:
	.loc 1 314 17 is_stmt 1
	.loc 1 316 17
	mv	a0,s2
	call	free
.LVL169:
	.loc 1 317 17
	mv	a0,s0
	call	cJSON_Delete
.LVL170:
	.loc 1 318 17
	.loc 1 318 22 is_stmt 0
	sw	zero,0(s1)
	j	.L42
.LBE68:
	.cfi_endproc
.LFE8:
	.size	button_task, .-button_task
	.globl	flag
	.comm	client,4,4
	.section	.srodata.cst8,"aM",@progbits,8
	.align	3
.LC2:
	.word	0
	.word	1079574528
	.align	3
.LC17:
	.word	0
	.word	1072693248
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC0:
	.word	0
	.word	14
	.word	17
	.word	3
	.word	0
	.section	.sbss.flag,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	flag, @object
	.size	flag, 4
flag:
	.zero	4
	.text
.Letext0:
	.file 2 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 4 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 5 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_common/include/axk_err.h"
	.file 6 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_mqtt/include/mqtt_client.h"
	.file 7 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/cjson/cJSON.h"
	.file 8 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_gpio.h"
	.file 9 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h"
	.file 10 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 11 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 12 "<built-in>"
	.file 13 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1446
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF190
	.byte	0xc
	.4byte	.LASF191
	.4byte	.LASF192
	.4byte	.Ldebug_ranges0+0x140
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
	.byte	0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x4d
	.byte	0x12
	.4byte	0x4d
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x60
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.byte	0x2
	.byte	0x8
	.byte	0x5
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
	.byte	0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0xd1
	.byte	0x16
	.4byte	0x7c
	.byte	0x5
	.byte	0x4
	.byte	0x6
	.byte	0x4
	.4byte	0x97
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x7
	.4byte	0x97
	.byte	0x6
	.byte	0x4
	.4byte	0x9e
	.byte	0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x2c
	.byte	0x13
	.4byte	0x41
	.byte	0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x54
	.byte	0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0x12
	.byte	0xd
	.4byte	0x75
	.byte	0x3
	.4byte	.LASF16
	.byte	0x6
	.byte	0x16
	.byte	0xf
	.4byte	0x8f
	.byte	0x3
	.4byte	.LASF17
	.byte	0x6
	.byte	0x1a
	.byte	0x21
	.4byte	0xe5
	.byte	0x6
	.byte	0x4
	.4byte	0xeb
	.byte	0x8
	.4byte	.LASF117
	.byte	0x9
	.byte	0x5
	.byte	0x4
	.4byte	0x75
	.byte	0x6
	.byte	0x25
	.byte	0xe
	.4byte	0x13b
	.byte	0xa
	.4byte	.LASF18
	.byte	0x7f
	.byte	0xb
	.4byte	.LASF19
	.byte	0
	.byte	0xb
	.4byte	.LASF20
	.byte	0x1
	.byte	0xb
	.4byte	.LASF21
	.byte	0x2
	.byte	0xb
	.4byte	.LASF22
	.byte	0x3
	.byte	0xb
	.4byte	.LASF23
	.byte	0x4
	.byte	0xb
	.4byte	.LASF24
	.byte	0x5
	.byte	0xb
	.4byte	.LASF25
	.byte	0x6
	.byte	0xb
	.4byte	.LASF26
	.byte	0x7
	.byte	0xb
	.4byte	.LASF27
	.byte	0x8
	.byte	0
	.byte	0x3
	.4byte	.LASF28
	.byte	0x6
	.byte	0x49
	.byte	0x3
	.4byte	0xf0
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x6
	.byte	0x4e
	.byte	0xe
	.4byte	0x17a
	.byte	0xb
	.4byte	.LASF29
	.byte	0
	.byte	0xb
	.4byte	.LASF30
	.byte	0x1
	.byte	0xb
	.4byte	.LASF31
	.byte	0x2
	.byte	0xb
	.4byte	.LASF32
	.byte	0x3
	.byte	0xb
	.4byte	.LASF33
	.byte	0x4
	.byte	0xb
	.4byte	.LASF34
	.byte	0x5
	.byte	0
	.byte	0x3
	.4byte	.LASF35
	.byte	0x6
	.byte	0x55
	.byte	0x3
	.4byte	0x147
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x6
	.byte	0x5a
	.byte	0xe
	.4byte	0x1a7
	.byte	0xb
	.4byte	.LASF36
	.byte	0
	.byte	0xb
	.4byte	.LASF37
	.byte	0x1
	.byte	0xb
	.4byte	.LASF38
	.byte	0x2
	.byte	0
	.byte	0x3
	.4byte	.LASF39
	.byte	0x6
	.byte	0x5e
	.byte	0x3
	.4byte	0x186
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x6
	.byte	0x67
	.byte	0xe
	.4byte	0x1e0
	.byte	0xb
	.4byte	.LASF40
	.byte	0
	.byte	0xb
	.4byte	.LASF41
	.byte	0x1
	.byte	0xb
	.4byte	.LASF42
	.byte	0x2
	.byte	0xb
	.4byte	.LASF43
	.byte	0x3
	.byte	0xb
	.4byte	.LASF44
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF45
	.byte	0x6
	.byte	0x6d
	.byte	0x3
	.4byte	0x1b3
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x6
	.byte	0x72
	.byte	0xe
	.4byte	0x20d
	.byte	0xb
	.4byte	.LASF46
	.byte	0
	.byte	0xb
	.4byte	.LASF47
	.byte	0x1
	.byte	0xb
	.4byte	.LASF48
	.byte	0x2
	.byte	0
	.byte	0x3
	.4byte	.LASF49
	.byte	0x6
	.byte	0x76
	.byte	0x3
	.4byte	0x1ec
	.byte	0xc
	.4byte	.LASF122
	.byte	0x18
	.byte	0x6
	.byte	0x84
	.byte	0x10
	.4byte	0x275
	.byte	0xd
	.4byte	.LASF50
	.byte	0x6
	.byte	0x86
	.byte	0xf
	.4byte	0xc1
	.byte	0
	.byte	0xd
	.4byte	.LASF51
	.byte	0x6
	.byte	0x87
	.byte	0x9
	.4byte	0x75
	.byte	0x4
	.byte	0xd
	.4byte	.LASF52
	.byte	0x6
	.byte	0x88
	.byte	0x9
	.4byte	0x75
	.byte	0x8
	.byte	0xd
	.4byte	.LASF53
	.byte	0x6
	.byte	0x8a
	.byte	0x1b
	.4byte	0x1a7
	.byte	0xc
	.byte	0xd
	.4byte	.LASF54
	.byte	0x6
	.byte	0x8b
	.byte	0x24
	.4byte	0x17a
	.byte	0x10
	.byte	0xd
	.4byte	.LASF55
	.byte	0x6
	.byte	0x8d
	.byte	0x9
	.4byte	0x75
	.byte	0x14
	.byte	0
	.byte	0x3
	.4byte	.LASF56
	.byte	0x6
	.byte	0x8f
	.byte	0x3
	.4byte	0x219
	.byte	0xe
	.byte	0x3c
	.byte	0x6
	.byte	0x94
	.byte	0x9
	.4byte	0x34e
	.byte	0xd
	.4byte	.LASF57
	.byte	0x6
	.byte	0x95
	.byte	0x19
	.4byte	0x13b
	.byte	0
	.byte	0xd
	.4byte	.LASF58
	.byte	0x6
	.byte	0x96
	.byte	0x1e
	.4byte	0xd9
	.byte	0x4
	.byte	0xd
	.4byte	.LASF59
	.byte	0x6
	.byte	0x97
	.byte	0xb
	.4byte	0x8f
	.byte	0x8
	.byte	0xd
	.4byte	.LASF60
	.byte	0x6
	.byte	0x98
	.byte	0xb
	.4byte	0x91
	.byte	0xc
	.byte	0xd
	.4byte	.LASF61
	.byte	0x6
	.byte	0x99
	.byte	0x9
	.4byte	0x75
	.byte	0x10
	.byte	0xd
	.4byte	.LASF62
	.byte	0x6
	.byte	0x9a
	.byte	0x9
	.4byte	0x75
	.byte	0x14
	.byte	0xd
	.4byte	.LASF63
	.byte	0x6
	.byte	0x9b
	.byte	0x9
	.4byte	0x75
	.byte	0x18
	.byte	0xd
	.4byte	.LASF64
	.byte	0x6
	.byte	0x9c
	.byte	0xb
	.4byte	0x91
	.byte	0x1c
	.byte	0xd
	.4byte	.LASF65
	.byte	0x6
	.byte	0x9d
	.byte	0x9
	.4byte	0x75
	.byte	0x20
	.byte	0xd
	.4byte	.LASF66
	.byte	0x6
	.byte	0x9e
	.byte	0x9
	.4byte	0x75
	.byte	0x24
	.byte	0xd
	.4byte	.LASF67
	.byte	0x6
	.byte	0x9f
	.byte	0x9
	.4byte	0x75
	.byte	0x28
	.byte	0xd
	.4byte	.LASF68
	.byte	0x6
	.byte	0xa0
	.byte	0x1d
	.4byte	0x34e
	.byte	0x2c
	.byte	0xd
	.4byte	.LASF69
	.byte	0x6
	.byte	0xa1
	.byte	0x9
	.4byte	0x354
	.byte	0x30
	.byte	0xf
	.string	"qos"
	.byte	0x6
	.byte	0xa2
	.byte	0x9
	.4byte	0x75
	.byte	0x34
	.byte	0xf
	.string	"dup"
	.byte	0x6
	.byte	0xa3
	.byte	0x9
	.4byte	0x354
	.byte	0x38
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x275
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF70
	.byte	0x3
	.4byte	.LASF71
	.byte	0x6
	.byte	0xa4
	.byte	0x3
	.4byte	0x281
	.byte	0x3
	.4byte	.LASF72
	.byte	0x6
	.byte	0xa6
	.byte	0x1b
	.4byte	0x373
	.byte	0x6
	.byte	0x4
	.4byte	0x35b
	.byte	0x3
	.4byte	.LASF73
	.byte	0x6
	.byte	0xa8
	.byte	0x16
	.4byte	0x385
	.byte	0x6
	.byte	0x4
	.4byte	0x38b
	.byte	0x10
	.4byte	0xc1
	.4byte	0x39a
	.byte	0x11
	.4byte	0x367
	.byte	0
	.byte	0xe
	.byte	0xb0
	.byte	0x6
	.byte	0xad
	.byte	0x9
	.4byte	0x5ed
	.byte	0xd
	.4byte	.LASF74
	.byte	0x6
	.byte	0xae
	.byte	0x1b
	.4byte	0x379
	.byte	0
	.byte	0xd
	.4byte	.LASF75
	.byte	0x6
	.byte	0xaf
	.byte	0x1d
	.4byte	0xcd
	.byte	0x4
	.byte	0xd
	.4byte	.LASF76
	.byte	0x6
	.byte	0xb0
	.byte	0x11
	.4byte	0xa3
	.byte	0x8
	.byte	0xf
	.string	"uri"
	.byte	0x6
	.byte	0xb1
	.byte	0x11
	.4byte	0xa3
	.byte	0xc
	.byte	0xd
	.4byte	.LASF77
	.byte	0x6
	.byte	0xb2
	.byte	0xe
	.4byte	0xb5
	.byte	0x10
	.byte	0xd
	.4byte	.LASF78
	.byte	0x6
	.byte	0xb3
	.byte	0x9
	.4byte	0x354
	.byte	0x14
	.byte	0xd
	.4byte	.LASF79
	.byte	0x6
	.byte	0xb4
	.byte	0x11
	.4byte	0xa3
	.byte	0x18
	.byte	0xd
	.4byte	.LASF80
	.byte	0x6
	.byte	0xb8
	.byte	0x11
	.4byte	0xa3
	.byte	0x1c
	.byte	0xd
	.4byte	.LASF81
	.byte	0x6
	.byte	0xb9
	.byte	0x11
	.4byte	0xa3
	.byte	0x20
	.byte	0xd
	.4byte	.LASF82
	.byte	0x6
	.byte	0xba
	.byte	0x11
	.4byte	0xa3
	.byte	0x24
	.byte	0xd
	.4byte	.LASF83
	.byte	0x6
	.byte	0xbb
	.byte	0x11
	.4byte	0xa3
	.byte	0x28
	.byte	0xd
	.4byte	.LASF84
	.byte	0x6
	.byte	0xbc
	.byte	0x9
	.4byte	0x75
	.byte	0x2c
	.byte	0xd
	.4byte	.LASF85
	.byte	0x6
	.byte	0xbd
	.byte	0x9
	.4byte	0x75
	.byte	0x30
	.byte	0xd
	.4byte	.LASF86
	.byte	0x6
	.byte	0xbe
	.byte	0x9
	.4byte	0x75
	.byte	0x34
	.byte	0xd
	.4byte	.LASF87
	.byte	0x6
	.byte	0xbf
	.byte	0x9
	.4byte	0x75
	.byte	0x38
	.byte	0xd
	.4byte	.LASF88
	.byte	0x6
	.byte	0xc0
	.byte	0x9
	.4byte	0x75
	.byte	0x3c
	.byte	0xd
	.4byte	.LASF89
	.byte	0x6
	.byte	0xc1
	.byte	0x9
	.4byte	0x354
	.byte	0x40
	.byte	0xd
	.4byte	.LASF59
	.byte	0x6
	.byte	0xc2
	.byte	0xb
	.4byte	0x8f
	.byte	0x44
	.byte	0xd
	.4byte	.LASF90
	.byte	0x6
	.byte	0xc3
	.byte	0x9
	.4byte	0x75
	.byte	0x48
	.byte	0xd
	.4byte	.LASF91
	.byte	0x6
	.byte	0xc4
	.byte	0x9
	.4byte	0x75
	.byte	0x4c
	.byte	0xd
	.4byte	.LASF92
	.byte	0x6
	.byte	0xc5
	.byte	0x9
	.4byte	0x75
	.byte	0x50
	.byte	0xd
	.4byte	.LASF93
	.byte	0x6
	.byte	0xc6
	.byte	0x11
	.4byte	0xa3
	.byte	0x54
	.byte	0xd
	.4byte	.LASF94
	.byte	0x6
	.byte	0xc7
	.byte	0xc
	.4byte	0x83
	.byte	0x58
	.byte	0xd
	.4byte	.LASF95
	.byte	0x6
	.byte	0xc8
	.byte	0x11
	.4byte	0xa3
	.byte	0x5c
	.byte	0xd
	.4byte	.LASF96
	.byte	0x6
	.byte	0xc9
	.byte	0xc
	.4byte	0x83
	.byte	0x60
	.byte	0xd
	.4byte	.LASF97
	.byte	0x6
	.byte	0xca
	.byte	0x11
	.4byte	0xa3
	.byte	0x64
	.byte	0xd
	.4byte	.LASF98
	.byte	0x6
	.byte	0xcb
	.byte	0xc
	.4byte	0x83
	.byte	0x68
	.byte	0xd
	.4byte	.LASF99
	.byte	0x6
	.byte	0xcc
	.byte	0x1a
	.4byte	0x1e0
	.byte	0x6c
	.byte	0xd
	.4byte	.LASF100
	.byte	0x6
	.byte	0xcd
	.byte	0x9
	.4byte	0x75
	.byte	0x70
	.byte	0xd
	.4byte	.LASF101
	.byte	0x6
	.byte	0xce
	.byte	0x20
	.4byte	0x5f7
	.byte	0x74
	.byte	0xd
	.4byte	.LASF102
	.byte	0x6
	.byte	0xcf
	.byte	0x12
	.4byte	0x354
	.byte	0x78
	.byte	0xd
	.4byte	.LASF103
	.byte	0x6
	.byte	0xd0
	.byte	0x11
	.4byte	0x60c
	.byte	0x7c
	.byte	0xd
	.4byte	.LASF104
	.byte	0x6
	.byte	0xd1
	.byte	0x9
	.4byte	0x75
	.byte	0x80
	.byte	0xd
	.4byte	.LASF105
	.byte	0x6
	.byte	0xd2
	.byte	0x12
	.4byte	0x612
	.byte	0x84
	.byte	0xd
	.4byte	.LASF106
	.byte	0x6
	.byte	0xd3
	.byte	0x11
	.4byte	0xa3
	.byte	0x88
	.byte	0xd
	.4byte	.LASF107
	.byte	0x6
	.byte	0xd4
	.byte	0x9
	.4byte	0x75
	.byte	0x8c
	.byte	0xd
	.4byte	.LASF108
	.byte	0x6
	.byte	0xd5
	.byte	0x1d
	.4byte	0x20d
	.byte	0x90
	.byte	0xd
	.4byte	.LASF109
	.byte	0x6
	.byte	0xd6
	.byte	0x9
	.4byte	0x75
	.byte	0x94
	.byte	0xd
	.4byte	.LASF110
	.byte	0x6
	.byte	0xd7
	.byte	0x9
	.4byte	0x354
	.byte	0x98
	.byte	0xd
	.4byte	.LASF111
	.byte	0x6
	.byte	0xd8
	.byte	0x9
	.4byte	0x354
	.byte	0x99
	.byte	0xd
	.4byte	.LASF112
	.byte	0x6
	.byte	0xd9
	.byte	0xb
	.4byte	0x8f
	.byte	0x9c
	.byte	0xd
	.4byte	.LASF113
	.byte	0x6
	.byte	0xda
	.byte	0x9
	.4byte	0x75
	.byte	0xa0
	.byte	0xd
	.4byte	.LASF114
	.byte	0x6
	.byte	0xdb
	.byte	0x9
	.4byte	0x354
	.byte	0xa4
	.byte	0xd
	.4byte	.LASF115
	.byte	0x6
	.byte	0xdc
	.byte	0x11
	.4byte	0xa3
	.byte	0xa8
	.byte	0xd
	.4byte	.LASF116
	.byte	0x6
	.byte	0xdd
	.byte	0x9
	.4byte	0x75
	.byte	0xac
	.byte	0
	.byte	0x8
	.4byte	.LASF118
	.byte	0x7
	.4byte	0x5ed
	.byte	0x6
	.byte	0x4
	.4byte	0x5f2
	.byte	0x10
	.4byte	0xc1
	.4byte	0x60c
	.byte	0x11
	.4byte	0x8f
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x5fd
	.byte	0x6
	.byte	0x4
	.4byte	0xa3
	.byte	0x3
	.4byte	.LASF119
	.byte	0x6
	.byte	0xde
	.byte	0x3
	.4byte	0x39a
	.byte	0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF120
	.byte	0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF121
	.byte	0xc
	.4byte	.LASF123
	.byte	0x28
	.byte	0x7
	.byte	0x34
	.byte	0x10
	.4byte	0x6a8
	.byte	0xd
	.4byte	.LASF124
	.byte	0x7
	.byte	0x35
	.byte	0x10
	.4byte	0x6a8
	.byte	0
	.byte	0xd
	.4byte	.LASF125
	.byte	0x7
	.byte	0x35
	.byte	0x16
	.4byte	0x6a8
	.byte	0x4
	.byte	0xd
	.4byte	.LASF126
	.byte	0x7
	.byte	0x36
	.byte	0x10
	.4byte	0x6a8
	.byte	0x8
	.byte	0xd
	.4byte	.LASF127
	.byte	0x7
	.byte	0x38
	.byte	0x6
	.4byte	0x75
	.byte	0xc
	.byte	0xd
	.4byte	.LASF128
	.byte	0x7
	.byte	0x3a
	.byte	0x8
	.4byte	0x91
	.byte	0x10
	.byte	0xd
	.4byte	.LASF129
	.byte	0x7
	.byte	0x3b
	.byte	0x6
	.4byte	0x75
	.byte	0x14
	.byte	0xd
	.4byte	.LASF130
	.byte	0x7
	.byte	0x3c
	.byte	0x9
	.4byte	0x62b
	.byte	0x18
	.byte	0xd
	.4byte	.LASF131
	.byte	0x7
	.byte	0x3e
	.byte	0x8
	.4byte	0x91
	.byte	0x20
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x632
	.byte	0x3
	.4byte	.LASF123
	.byte	0x7
	.byte	0x3f
	.byte	0x3
	.4byte	0x632
	.byte	0x12
	.4byte	.LASF58
	.byte	0x1
	.byte	0xeb
	.byte	0x1a
	.4byte	0xd9
	.byte	0x5
	.byte	0x3
	.4byte	client
	.byte	0x13
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x103
	.byte	0x5
	.4byte	0x75
	.byte	0x5
	.byte	0x3
	.4byte	flag
	.byte	0x14
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x146
	.byte	0xd
	.byte	0x1
	.4byte	0x72f
	.byte	0x15
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x146
	.byte	0x23
	.4byte	0x72f
	.byte	0x15
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x146
	.byte	0x32
	.4byte	0x72f
	.byte	0x16
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x14c
	.byte	0x9
	.4byte	0x75
	.byte	0x17
	.string	"ctr"
	.byte	0x1
	.2byte	0x14d
	.byte	0x9
	.4byte	0x75
	.byte	0x16
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x150
	.byte	0x9
	.4byte	0x735
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x6ae
	.byte	0x18
	.4byte	0x75
	.4byte	0x745
	.byte	0x19
	.4byte	0x7c
	.byte	0x4
	.byte	0
	.byte	0x1a
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x105
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0xa69
	.byte	0x1b
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x105
	.byte	0x18
	.4byte	0x8f
	.4byte	.LLST34
	.byte	0x16
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x108
	.byte	0x9
	.4byte	0x75
	.byte	0x1c
	.4byte	.LBB66
	.4byte	.LBE66-.LBB66
	.4byte	0x8bb
	.byte	0x1d
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x110
	.byte	0x18
	.4byte	0x72f
	.4byte	.LLST38
	.byte	0x1d
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x113
	.byte	0x18
	.4byte	0x72f
	.4byte	.LLST39
	.byte	0x1e
	.string	"act"
	.byte	0x1
	.2byte	0x114
	.byte	0x18
	.4byte	0x72f
	.4byte	.LLST40
	.byte	0x1d
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x11c
	.byte	0x17
	.4byte	0x91
	.4byte	.LLST41
	.byte	0x1f
	.4byte	.LVL134
	.4byte	0x131c
	.4byte	0x7e3
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x21
	.4byte	.LVL135
	.4byte	0x1328
	.byte	0x21
	.4byte	.LVL137
	.4byte	0x1334
	.byte	0x1f
	.4byte	.LVL140
	.4byte	0x1340
	.4byte	0x80c
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC37
	.byte	0
	.byte	0x1f
	.4byte	.LVL143
	.4byte	0x134c
	.4byte	0x830
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0x4c
	.byte	0x6
	.byte	0
	.byte	0x1f
	.4byte	.LVL144
	.4byte	0x134c
	.4byte	0x853
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC38
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL145
	.4byte	0x1358
	.4byte	0x867
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL148
	.4byte	0x1364
	.4byte	0x896
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL149
	.4byte	0x1371
	.4byte	0x8aa
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LVL150
	.4byte	0x137d
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.Ldebug_ranges0+0x120
	.4byte	0xa0b
	.byte	0x24
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x12b
	.byte	0x18
	.4byte	0x72f
	.byte	0x1
	.byte	0x58
	.byte	0x1d
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x12e
	.byte	0x18
	.4byte	0x72f
	.4byte	.LLST35
	.byte	0x1e
	.string	"act"
	.byte	0x1
	.2byte	0x12f
	.byte	0x18
	.4byte	0x72f
	.4byte	.LLST36
	.byte	0x1d
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x137
	.byte	0x17
	.4byte	0x91
	.4byte	.LLST37
	.byte	0x1f
	.4byte	.LVL152
	.4byte	0x1389
	.4byte	0x91a
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0x1f
	.4byte	.LVL154
	.4byte	0x131c
	.4byte	0x933
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LVL155
	.4byte	0x1328
	.byte	0x21
	.4byte	.LVL157
	.4byte	0x1334
	.byte	0x1f
	.4byte	.LVL160
	.4byte	0x1340
	.4byte	0x95c
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC39
	.byte	0
	.byte	0x1f
	.4byte	.LVL163
	.4byte	0x134c
	.4byte	0x980
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0x4c
	.byte	0x6
	.byte	0
	.byte	0x1f
	.4byte	.LVL164
	.4byte	0x134c
	.4byte	0x9a3
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC38
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL165
	.4byte	0x1358
	.4byte	0x9b7
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL168
	.4byte	0x1364
	.4byte	0x9e6
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL169
	.4byte	0x1371
	.4byte	0x9fa
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LVL170
	.4byte	0x137d
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL131
	.4byte	0x1396
	.4byte	0xa28
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x45
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
	.byte	0x1f
	.4byte	.LVL132
	.4byte	0x13a2
	.4byte	0xa45
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
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
	.4byte	.LVL133
	.4byte	0x13ae
	.4byte	0xa58
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x45
	.byte	0
	.byte	0x22
	.4byte	.LVL153
	.4byte	0x1389
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0
	.byte	0x25
	.4byte	.LASF140
	.byte	0x1
	.byte	0xed
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0xb5a
	.byte	0x26
	.4byte	.LASF141
	.byte	0x1
	.byte	0xf4
	.byte	0x1e
	.4byte	0x618
	.byte	0x3
	.byte	0x91
	.byte	0xc0,0x7e
	.byte	0x27
	.string	"rtn"
	.byte	0x1
	.byte	0xfb
	.byte	0xf
	.4byte	0xc1
	.4byte	.LLST33
	.byte	0x1f
	.4byte	.LVL118
	.4byte	0x13a2
	.4byte	0xabc
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3e
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
	.4byte	.LVL119
	.4byte	0x13a2
	.4byte	0xad9
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x41
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
	.4byte	.LVL120
	.4byte	0x13a2
	.4byte	0xaf6
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
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
	.4byte	.LVL121
	.4byte	0x13a2
	.4byte	0xb13
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
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
	.4byte	.LVL122
	.4byte	0x13ba
	.4byte	0xb33
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xc4,0x7e
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0xac
	.byte	0
	.byte	0x1f
	.4byte	.LVL123
	.4byte	0x13c5
	.4byte	0xb47
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LVL124
	.4byte	0x13d1
	.byte	0x21
	.4byte	.LVL126
	.4byte	0x13dd
	.byte	0
	.byte	0x28
	.4byte	.LASF193
	.byte	0x1
	.byte	0x21
	.byte	0x12
	.4byte	0xc1
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x12f6
	.byte	0x29
	.4byte	.LASF143
	.byte	0x1
	.byte	0x21
	.byte	0x33
	.4byte	0x367
	.4byte	.LLST0
	.byte	0x2a
	.4byte	.LASF57
	.byte	0x1
	.byte	0x23
	.byte	0xd
	.4byte	0xa9
	.4byte	.LLST1
	.byte	0x2a
	.4byte	.LASF58
	.byte	0x1
	.byte	0x24
	.byte	0x1e
	.4byte	0xd9
	.4byte	.LLST2
	.byte	0x2b
	.4byte	.LASF66
	.byte	0x1
	.byte	0x28
	.byte	0x9
	.4byte	0x75
	.byte	0x2c
	.4byte	.Ldebug_ranges0+0
	.byte	0x2a
	.4byte	.LASF137
	.byte	0x1
	.byte	0x42
	.byte	0x10
	.4byte	0x72f
	.4byte	.LLST3
	.byte	0x2a
	.4byte	.LASF133
	.byte	0x1
	.byte	0x45
	.byte	0x10
	.4byte	0x72f
	.4byte	.LLST4
	.byte	0x2a
	.4byte	.LASF144
	.byte	0x1
	.byte	0x46
	.byte	0x10
	.4byte	0x72f
	.4byte	.LLST5
	.byte	0x2a
	.4byte	.LASF138
	.byte	0x1
	.byte	0x4e
	.byte	0xf
	.4byte	0x91
	.4byte	.LLST6
	.byte	0x2a
	.4byte	.LASF145
	.byte	0x1
	.byte	0x64
	.byte	0xf
	.4byte	0x91
	.4byte	.LLST7
	.byte	0x26
	.4byte	.LASF146
	.byte	0x1
	.byte	0x65
	.byte	0x10
	.4byte	0x72f
	.byte	0x1
	.byte	0x58
	.byte	0x23
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x1192
	.byte	0x27
	.string	"cmd"
	.byte	0x1
	.byte	0x6a
	.byte	0x14
	.4byte	0x72f
	.4byte	.LLST8
	.byte	0x2a
	.4byte	.LASF147
	.byte	0x1
	.byte	0x6c
	.byte	0x11
	.4byte	0x75
	.4byte	.LLST9
	.byte	0x23
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0xdc9
	.byte	0x2a
	.4byte	.LASF148
	.byte	0x1
	.byte	0x6e
	.byte	0x18
	.4byte	0x72f
	.4byte	.LLST10
	.byte	0x2a
	.4byte	.LASF149
	.byte	0x1
	.byte	0x6f
	.byte	0x15
	.4byte	0x75
	.4byte	.LLST11
	.byte	0x2d
	.string	"ret"
	.byte	0x1
	.byte	0x82
	.byte	0x18
	.4byte	0x72f
	.byte	0x2b
	.4byte	.LASF150
	.byte	0x1
	.byte	0x85
	.byte	0x17
	.4byte	0x91
	.byte	0x23
	.4byte	.Ldebug_ranges0+0x48
	.4byte	0xd84
	.byte	0x27
	.string	"i"
	.byte	0x1
	.byte	0x73
	.byte	0x1a
	.4byte	0x75
	.4byte	.LLST12
	.byte	0x2c
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x2a
	.4byte	.LASF151
	.byte	0x1
	.byte	0x74
	.byte	0x1c
	.4byte	0x72f
	.4byte	.LLST13
	.byte	0x23
	.4byte	.Ldebug_ranges0+0xa0
	.4byte	0xd09
	.byte	0x2a
	.4byte	.LASF152
	.byte	0x1
	.byte	0x76
	.byte	0x20
	.4byte	0x72f
	.4byte	.LLST16
	.byte	0x2a
	.4byte	.LASF153
	.byte	0x1
	.byte	0x77
	.byte	0x20
	.4byte	0x72f
	.4byte	.LLST17
	.byte	0x1f
	.4byte	.LVL58
	.4byte	0x13e9
	.4byte	0xcef
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.byte	0x22
	.4byte	.LVL61
	.4byte	0x13e9
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.Ldebug_ranges0+0x80
	.4byte	0xd6c
	.byte	0x2a
	.4byte	.LASF154
	.byte	0x1
	.byte	0x7c
	.byte	0x20
	.4byte	0x72f
	.4byte	.LLST14
	.byte	0x2a
	.4byte	.LASF153
	.byte	0x1
	.byte	0x7d
	.byte	0x20
	.4byte	0x72f
	.4byte	.LLST15
	.byte	0x21
	.4byte	.LVL64
	.4byte	0x13dd
	.byte	0x1f
	.4byte	.LVL67
	.4byte	0x13e9
	.4byte	0xd52
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.byte	0x22
	.4byte	.LVL70
	.4byte	0x13e9
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LVL56
	.4byte	0x13f5
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL35
	.4byte	0x13e9
	.4byte	0xda1
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.byte	0x1f
	.4byte	.LVL37
	.4byte	0x1401
	.4byte	0xdb5
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LVL40
	.4byte	0x13dd
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LBB55
	.4byte	.LBE55-.LBB55
	.4byte	0xe5b
	.byte	0x27
	.string	"id"
	.byte	0x1
	.byte	0x8b
	.byte	0x18
	.4byte	0x72f
	.4byte	.LLST25
	.byte	0x27
	.string	"src"
	.byte	0x1
	.byte	0x8c
	.byte	0x18
	.4byte	0x72f
	.4byte	.LLST26
	.byte	0x2d
	.string	"ret"
	.byte	0x1
	.byte	0x90
	.byte	0x18
	.4byte	0x72f
	.byte	0x2b
	.4byte	.LASF150
	.byte	0x1
	.byte	0x93
	.byte	0x17
	.4byte	0x91
	.byte	0x1f
	.4byte	.LVL73
	.4byte	0x13e9
	.4byte	0xe2a
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC20
	.byte	0
	.byte	0x1f
	.4byte	.LVL76
	.4byte	0x13e9
	.4byte	0xe47
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0
	.byte	0x22
	.4byte	.LVL78
	.4byte	0x13dd
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC22
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LBB56
	.4byte	.LBE56-.LBB56
	.4byte	0xfe5
	.byte	0x2a
	.4byte	.LASF155
	.byte	0x1
	.byte	0x99
	.byte	0x18
	.4byte	0x72f
	.4byte	.LLST27
	.byte	0x27
	.string	"uid"
	.byte	0x1
	.byte	0x9a
	.byte	0x18
	.4byte	0x72f
	.4byte	.LLST28
	.byte	0x27
	.string	"src"
	.byte	0x1
	.byte	0x9b
	.byte	0x18
	.4byte	0x72f
	.4byte	.LLST29
	.byte	0x2a
	.4byte	.LASF156
	.byte	0x1
	.byte	0x9d
	.byte	0x15
	.4byte	0x75
	.4byte	.LLST30
	.byte	0x2d
	.string	"ret"
	.byte	0x1
	.byte	0xa9
	.byte	0x18
	.4byte	0x72f
	.byte	0x2b
	.4byte	.LASF150
	.byte	0x1
	.byte	0xac
	.byte	0x17
	.4byte	0x91
	.byte	0x23
	.4byte	.Ldebug_ranges0+0xe8
	.4byte	0xf1b
	.byte	0x27
	.string	"i"
	.byte	0x1
	.byte	0x9f
	.byte	0x1a
	.4byte	0x75
	.4byte	.LLST31
	.byte	0x2c
	.4byte	.Ldebug_ranges0+0x100
	.byte	0x2a
	.4byte	.LASF157
	.byte	0x1
	.byte	0xa0
	.byte	0x1c
	.4byte	0x72f
	.4byte	.LLST32
	.byte	0x1f
	.4byte	.LVL99
	.4byte	0x13f5
	.4byte	0xf06
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LVL102
	.4byte	0x13dd
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC26
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL80
	.4byte	0x13e9
	.4byte	0xf38
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.byte	0x1f
	.4byte	.LVL83
	.4byte	0x13e9
	.4byte	0xf55
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC24
	.byte	0
	.byte	0x1f
	.4byte	.LVL86
	.4byte	0x13e9
	.4byte	0xf72
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0
	.byte	0x1f
	.4byte	.LVL89
	.4byte	0x1401
	.4byte	0xf86
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL92
	.4byte	0x13dd
	.4byte	0xfa3
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC25
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL94
	.4byte	0x13dd
	.4byte	0xfba
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC27
	.byte	0
	.byte	0x1f
	.4byte	.LVL96
	.4byte	0x13dd
	.4byte	0xfd1
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC28
	.byte	0
	.byte	0x22
	.4byte	.LVL97
	.4byte	0x13dd
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC28
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.Ldebug_ranges0+0xb8
	.4byte	0x1161
	.byte	0x2a
	.4byte	.LASF158
	.byte	0x1
	.byte	0xb2
	.byte	0x18
	.4byte	0x72f
	.4byte	.LLST18
	.byte	0x27
	.string	"ctr"
	.byte	0x1
	.byte	0xb3
	.byte	0x18
	.4byte	0x72f
	.4byte	.LLST19
	.byte	0x23
	.4byte	.Ldebug_ranges0+0xd0
	.4byte	0x1121
	.byte	0x27
	.string	"ret"
	.byte	0x1
	.byte	0xb8
	.byte	0x1c
	.4byte	0x72f
	.4byte	.LLST20
	.byte	0x2a
	.4byte	.LASF150
	.byte	0x1
	.byte	0xbb
	.byte	0x1b
	.4byte	0x91
	.4byte	.LLST21
	.byte	0x2e
	.4byte	0x6df
	.4byte	.LBB51
	.4byte	.LBE51-.LBB51
	.byte	0x1
	.byte	0xb5
	.byte	0x15
	.4byte	0x10be
	.byte	0x2f
	.4byte	0x6ed
	.byte	0x2f
	.4byte	0x6fa
	.byte	0x2f
	.4byte	0x6ed
	.byte	0x30
	.4byte	0x6fa
	.4byte	.LLST22
	.byte	0x31
	.4byte	0x707
	.4byte	.LLST23
	.byte	0x31
	.4byte	0x714
	.4byte	.LLST24
	.byte	0x32
	.4byte	0x721
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0x1f
	.4byte	.LVL111
	.4byte	0x140d
	.4byte	0x10a1
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
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0x21
	.4byte	.LVL113
	.4byte	0x131c
	.byte	0x22
	.4byte	.LVL115
	.4byte	0x13dd
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC30
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LVL44
	.4byte	0x1334
	.byte	0x1f
	.4byte	.LVL47
	.4byte	0x134c
	.4byte	0x10e4
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0
	.byte	0x1f
	.4byte	.LVL48
	.4byte	0x1418
	.4byte	0x10f8
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LVL51
	.4byte	0x1364
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x20
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x20
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x31
	.byte	0x20
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LVL52
	.4byte	0x13dd
	.byte	0x1f
	.4byte	.LVL104
	.4byte	0x13e9
	.4byte	0x1147
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x22
	.4byte	.LVL107
	.4byte	0x13e9
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC29
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL30
	.4byte	0x13e9
	.4byte	0x117e
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.byte	0x22
	.4byte	.LVL33
	.4byte	0x13dd
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL3
	.4byte	0x1424
	.4byte	0x11b4
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x21
	.4byte	.LVL6
	.4byte	0x1328
	.byte	0x21
	.4byte	.LVL8
	.4byte	0x1334
	.byte	0x21
	.4byte	.LVL11
	.4byte	0x1334
	.byte	0x1f
	.4byte	.LVL14
	.4byte	0x134c
	.4byte	0x11f4
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x4
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0x6
	.byte	0
	.byte	0x1f
	.4byte	.LVL15
	.4byte	0x134c
	.4byte	0x1217
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL16
	.4byte	0x1358
	.4byte	0x122b
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL19
	.4byte	0x1364
	.4byte	0x125d
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x20
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x20
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x20
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x30
	.byte	0x20
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1f
	.4byte	.LVL20
	.4byte	0x1371
	.4byte	0x1271
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL21
	.4byte	0x137d
	.4byte	0x1285
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL24
	.4byte	0x13dd
	.4byte	0x129c
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0x1f
	.4byte	.LVL25
	.4byte	0x13dd
	.4byte	0x12b3
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0x21
	.4byte	.LVL26
	.4byte	0x1431
	.byte	0x1f
	.4byte	.LVL28
	.4byte	0x143d
	.4byte	0x12d0
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LVL53
	.4byte	0x137d
	.4byte	0x12e4
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LVL54
	.4byte	0x1371
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x33
	.4byte	.LASF160
	.byte	0x1
	.byte	0x1a
	.byte	0xd
	.byte	0x1
	.4byte	0x131c
	.byte	0x34
	.4byte	.LASF161
	.byte	0x1
	.byte	0x1a
	.byte	0x2e
	.4byte	0xa3
	.byte	0x34
	.4byte	.LASF162
	.byte	0x1
	.byte	0x1a
	.byte	0x3b
	.4byte	0x75
	.byte	0
	.byte	0x35
	.4byte	.LASF163
	.4byte	.LASF163
	.byte	0x8
	.byte	0x11
	.byte	0x5
	.byte	0x35
	.4byte	.LASF164
	.4byte	.LASF164
	.byte	0x7
	.byte	0x67
	.byte	0xf
	.byte	0x35
	.4byte	.LASF165
	.4byte	.LASF165
	.byte	0x7
	.byte	0x64
	.byte	0xf
	.byte	0x35
	.4byte	.LASF166
	.4byte	.LASF166
	.byte	0x7
	.byte	0x65
	.byte	0xf
	.byte	0x35
	.4byte	.LASF167
	.4byte	.LASF167
	.byte	0x7
	.byte	0x71
	.byte	0xd
	.byte	0x35
	.4byte	.LASF168
	.4byte	.LASF168
	.byte	0x7
	.byte	0x4d
	.byte	0xe
	.byte	0x36
	.4byte	.LASF169
	.4byte	.LASF169
	.byte	0x6
	.2byte	0x15b
	.byte	0x5
	.byte	0x35
	.4byte	.LASF170
	.4byte	.LASF170
	.byte	0x9
	.byte	0x5e
	.byte	0x6
	.byte	0x35
	.4byte	.LASF171
	.4byte	.LASF171
	.byte	0x7
	.byte	0x53
	.byte	0xd
	.byte	0x36
	.4byte	.LASF172
	.4byte	.LASF172
	.byte	0xa
	.2byte	0x2f6
	.byte	0x6
	.byte	0x35
	.4byte	.LASF173
	.4byte	.LASF173
	.byte	0x8
	.byte	0x10
	.byte	0x5
	.byte	0x35
	.4byte	.LASF174
	.4byte	.LASF174
	.byte	0x8
	.byte	0xf
	.byte	0x5
	.byte	0x35
	.4byte	.LASF175
	.4byte	.LASF175
	.byte	0x8
	.byte	0x13
	.byte	0x5
	.byte	0x37
	.4byte	.LASF182
	.4byte	.LASF184
	.byte	0xc
	.byte	0
	.byte	0x35
	.4byte	.LASF176
	.4byte	.LASF176
	.byte	0x6
	.byte	0xe7
	.byte	0x1a
	.byte	0x35
	.4byte	.LASF177
	.4byte	.LASF177
	.byte	0x6
	.byte	0xfd
	.byte	0xb
	.byte	0x35
	.4byte	.LASF178
	.4byte	.LASF178
	.byte	0xb
	.byte	0xc8
	.byte	0x5
	.byte	0x35
	.4byte	.LASF179
	.4byte	.LASF179
	.byte	0x7
	.byte	0x5a
	.byte	0xf
	.byte	0x35
	.4byte	.LASF180
	.4byte	.LASF180
	.byte	0x7
	.byte	0x58
	.byte	0xf
	.byte	0x35
	.4byte	.LASF181
	.4byte	.LASF181
	.byte	0x7
	.byte	0x56
	.byte	0xc
	.byte	0x37
	.4byte	.LASF183
	.4byte	.LASF185
	.byte	0xc
	.byte	0
	.byte	0x35
	.4byte	.LASF186
	.4byte	.LASF186
	.byte	0x7
	.byte	0x4f
	.byte	0xe
	.byte	0x36
	.4byte	.LASF187
	.4byte	.LASF187
	.byte	0x6
	.2byte	0x133
	.byte	0x5
	.byte	0x35
	.4byte	.LASF188
	.4byte	.LASF188
	.byte	0xd
	.byte	0x58
	.byte	0x7
	.byte	0x35
	.4byte	.LASF189
	.4byte	.LASF189
	.byte	0x7
	.byte	0x4b
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xa
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xd
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
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x11
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0x15
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
	.byte	0x16
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
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0x1
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1e
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
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x22
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x23
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x25
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
	.byte	0x26
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
	.byte	0x2
	.byte	0x17
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
	.byte	0x29
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2b
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
	.byte	0x2c
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2d
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
	.byte	0x2e
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
	.byte	0x2f
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x30
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x31
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x32
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
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
	.byte	0x34
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
	.byte	0x35
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
	.byte	0x36
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
	.byte	0x37
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
.LLST34:
	.4byte	.LVL129
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL130
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL136
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL139
	.4byte	.LVL151
	.2byte	0x2
	.byte	0x91
	.byte	0x4c
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL142
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL146
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL147
	.4byte	.LVL148-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL148-1
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL158
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL159
	.4byte	.LFE8
	.2byte	0x2
	.byte	0x91
	.byte	0x4c
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL161
	.4byte	.LVL162
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL162
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL166
	.4byte	.LVL167
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL167
	.4byte	.LVL168-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL168-1
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6-1
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL29
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL22
	.4byte	.LVL24-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL5
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LVL22
	.2byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18
	.4byte	.LVL19-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL19-1
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28-1
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL79
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL103
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL34
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL72
	.4byte	.LVL73-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL79
	.4byte	.LVL80-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL103
	.4byte	.LVL104-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL36
	.4byte	.LVL37-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37-1
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL55
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL39
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL55
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL55
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL57
	.4byte	.LVL58-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL58-1
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL66
	.4byte	.LVL67-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL67-1
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL60
	.4byte	.LVL63
	.2byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL69
	.4byte	.LVL72
	.2byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL75
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL82
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL85
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL88
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL91
	.4byte	.LVL92-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL92-1
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL98
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x3
	.byte	0x84
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL106
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL116
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL107
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL46
	.4byte	.LVL47-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50
	.4byte	.LVL51-1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL109
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL114
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL109
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB36
	.4byte	.LBE36
	.4byte	.LBB64
	.4byte	.LBE64
	.4byte	0
	.4byte	0
	.4byte	.LBB37
	.4byte	.LBE37
	.4byte	.LBB63
	.4byte	.LBE63
	.4byte	0
	.4byte	0
	.4byte	.LBB38
	.4byte	.LBE38
	.4byte	.LBB54
	.4byte	.LBE54
	.4byte	0
	.4byte	0
	.4byte	.LBB39
	.4byte	.LBE39
	.4byte	.LBB48
	.4byte	.LBE48
	.4byte	0
	.4byte	0
	.4byte	.LBB40
	.4byte	.LBE40
	.4byte	.LBB46
	.4byte	.LBE46
	.4byte	.LBB47
	.4byte	.LBE47
	.4byte	0
	.4byte	0
	.4byte	.LBB41
	.4byte	.LBE41
	.4byte	.LBB44
	.4byte	.LBE44
	.4byte	.LBB45
	.4byte	.LBE45
	.4byte	0
	.4byte	0
	.4byte	.LBB42
	.4byte	.LBE42
	.4byte	.LBB43
	.4byte	.LBE43
	.4byte	0
	.4byte	0
	.4byte	.LBB49
	.4byte	.LBE49
	.4byte	.LBB62
	.4byte	.LBE62
	.4byte	0
	.4byte	0
	.4byte	.LBB50
	.4byte	.LBE50
	.4byte	.LBB53
	.4byte	.LBE53
	.4byte	0
	.4byte	0
	.4byte	.LBB57
	.4byte	.LBE57
	.4byte	.LBB61
	.4byte	.LBE61
	.4byte	0
	.4byte	0
	.4byte	.LBB58
	.4byte	.LBE58
	.4byte	.LBB59
	.4byte	.LBE59
	.4byte	.LBB60
	.4byte	.LBE60
	.4byte	0
	.4byte	0
	.4byte	.LBB65
	.4byte	.LBE65
	.4byte	.LBB67
	.4byte	.LBE67
	.4byte	.LBB68
	.4byte	.LBE68
	.4byte	0
	.4byte	0
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF40:
	.string	"MQTT_TRANSPORT_UNKNOWN"
.LASF81:
	.string	"password"
.LASF83:
	.string	"lwt_msg"
.LASF136:
	.string	"switch_pins"
.LASF37:
	.string	"MQTT_ERROR_TYPE_TCP_TRANSPORT"
.LASF159:
	.string	"control_button"
.LASF24:
	.string	"MQTT_EVENT_PUBLISHED"
.LASF49:
	.string	"axk_mqtt_protocol_ver_t"
.LASF73:
	.string	"mqtt_event_callback_t"
.LASF155:
	.string	"ls_user"
.LASF161:
	.string	"message"
.LASF128:
	.string	"valuestring"
.LASF95:
	.string	"client_cert_pem"
.LASF10:
	.string	"unsigned int"
.LASF124:
	.string	"next"
.LASF148:
	.string	"version"
.LASF87:
	.string	"disable_clean_session"
.LASF5:
	.string	"__int32_t"
.LASF125:
	.string	"prev"
.LASF153:
	.string	"build"
.LASF150:
	.string	"update"
.LASF91:
	.string	"task_stack"
.LASF185:
	.string	"__builtin_memcpy"
.LASF90:
	.string	"task_prio"
.LASF36:
	.string	"MQTT_ERROR_TYPE_NONE"
.LASF190:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF62:
	.string	"total_data_len"
.LASF181:
	.string	"cJSON_GetArraySize"
.LASF100:
	.string	"refresh_connection_after_ms"
.LASF129:
	.string	"valueint"
.LASF92:
	.string	"buffer_size"
.LASF14:
	.string	"uint32_t"
.LASF98:
	.string	"client_key_len"
.LASF89:
	.string	"disable_auto_reconnect"
.LASF105:
	.string	"alpn_protos"
.LASF120:
	.string	"float"
.LASF143:
	.string	"event"
.LASF74:
	.string	"event_handle"
.LASF103:
	.string	"crt_bundle_attach"
.LASF9:
	.string	"long long unsigned int"
.LASF135:
	.string	"switch_val"
.LASF76:
	.string	"host"
.LASF193:
	.string	"event_cb"
.LASF43:
	.string	"MQTT_TRANSPORT_OVER_WS"
.LASF48:
	.string	"MQTT_PROTOCOL_V_3_1_1"
.LASF17:
	.string	"axk_mqtt_client_handle_t"
.LASF72:
	.string	"axk_mqtt_event_handle_t"
.LASF126:
	.string	"child"
.LASF57:
	.string	"event_id"
.LASF186:
	.string	"cJSON_PrintUnformatted"
.LASF187:
	.string	"axk_mqtt_client_subscribe"
.LASF93:
	.string	"cert_pem"
.LASF11:
	.string	"size_t"
.LASF123:
	.string	"cJSON"
.LASF158:
	.string	"SWITCH"
.LASF121:
	.string	"double"
.LASF29:
	.string	"MQTT_CONNECTION_ACCEPTED"
.LASF70:
	.string	"_Bool"
.LASF85:
	.string	"lwt_retain"
.LASF104:
	.string	"reconnect_timeout_ms"
.LASF84:
	.string	"lwt_qos"
.LASF38:
	.string	"MQTT_ERROR_TYPE_CONNECTION_REFUSED"
.LASF170:
	.string	"free"
.LASF115:
	.string	"path"
.LASF167:
	.string	"cJSON_AddItemToObject"
.LASF173:
	.string	"bl_gpio_enable_input"
.LASF172:
	.string	"vTaskDelay"
.LASF180:
	.string	"cJSON_GetArrayItem"
.LASF42:
	.string	"MQTT_TRANSPORT_OVER_SSL"
.LASF139:
	.string	"button_task"
.LASF175:
	.string	"bl_gpio_input_get_value"
.LASF23:
	.string	"MQTT_EVENT_UNSUBSCRIBED"
.LASF50:
	.string	"axk_tls_last_axk_err"
.LASF31:
	.string	"MQTT_CONNECTION_REFUSE_ID_REJECTED"
.LASF30:
	.string	"MQTT_CONNECTION_REFUSE_PROTOCOL"
.LASF82:
	.string	"lwt_topic"
.LASF12:
	.string	"char"
.LASF109:
	.string	"out_buffer_size"
.LASF145:
	.string	"json_data"
.LASF165:
	.string	"cJSON_CreateNumber"
.LASF131:
	.string	"string"
.LASF63:
	.string	"current_data_offset"
.LASF138:
	.string	"json_string"
.LASF60:
	.string	"data"
.LASF53:
	.string	"error_type"
.LASF22:
	.string	"MQTT_EVENT_SUBSCRIBED"
.LASF118:
	.string	"psk_key_hint"
.LASF133:
	.string	"Switch"
.LASF59:
	.string	"user_context"
.LASF106:
	.string	"clientkey_password"
.LASF71:
	.string	"axk_mqtt_event_t"
.LASF25:
	.string	"MQTT_EVENT_DATA"
.LASF65:
	.string	"topic_len"
.LASF96:
	.string	"client_cert_len"
.LASF174:
	.string	"bl_gpio_enable_output"
.LASF8:
	.string	"long long int"
.LASF178:
	.string	"printf"
.LASF75:
	.string	"event_loop_handle"
.LASF122:
	.string	"axk_mqtt_error_codes"
.LASF99:
	.string	"transport"
.LASF66:
	.string	"msg_id"
.LASF177:
	.string	"axk_mqtt_client_start"
.LASF55:
	.string	"axk_transport_sock_errno"
.LASF88:
	.string	"keepalive"
.LASF35:
	.string	"axk_mqtt_connect_return_code_t"
.LASF34:
	.string	"MQTT_CONNECTION_REFUSE_NOT_AUTHORIZED"
.LASF182:
	.string	"memset"
.LASF26:
	.string	"MQTT_EVENT_BEFORE_CONNECT"
.LASF183:
	.string	"memcpy"
.LASF79:
	.string	"client_id"
.LASF142:
	.string	"param"
.LASF130:
	.string	"valuedouble"
.LASF164:
	.string	"cJSON_CreateObject"
.LASF134:
	.string	"getctr"
.LASF68:
	.string	"error_handle"
.LASF144:
	.string	"online"
.LASF54:
	.string	"connect_return_code"
.LASF39:
	.string	"axk_mqtt_error_type_t"
.LASF16:
	.string	"axk_event_loop_handle_t"
.LASF27:
	.string	"MQTT_EVENT_DELETED"
.LASF160:
	.string	"log_error_if_nonzero"
.LASF61:
	.string	"data_len"
.LASF137:
	.string	"root"
.LASF156:
	.string	"ls_arr"
.LASF33:
	.string	"MQTT_CONNECTION_REFUSE_BAD_USERNAME"
.LASF112:
	.string	"ds_data"
.LASF119:
	.string	"axk_mqtt_client_config_t"
.LASF163:
	.string	"bl_gpio_output_set"
.LASF32:
	.string	"MQTT_CONNECTION_REFUSE_SERVER_UNAVAILABLE"
.LASF56:
	.string	"axk_mqtt_error_codes_t"
.LASF2:
	.string	"short int"
.LASF101:
	.string	"psk_hint_key"
.LASF69:
	.string	"retain"
.LASF4:
	.string	"long int"
.LASF147:
	.string	"cmd_value"
.LASF80:
	.string	"username"
.LASF140:
	.string	"mqtt_start"
.LASF141:
	.string	"mqtt_cfg"
.LASF168:
	.string	"cJSON_Print"
.LASF28:
	.string	"axk_mqtt_event_id_t"
.LASF18:
	.string	"MQTT_EVENT_ANY"
.LASF132:
	.string	"flag"
.LASF146:
	.string	"json"
.LASF94:
	.string	"cert_len"
.LASF41:
	.string	"MQTT_TRANSPORT_OVER_TCP"
.LASF47:
	.string	"MQTT_PROTOCOL_V_3_1"
.LASF114:
	.string	"disable_keepalive"
.LASF58:
	.string	"client"
.LASF67:
	.string	"session_present"
.LASF184:
	.string	"__builtin_memset"
.LASF15:
	.string	"axk_err_t"
.LASF179:
	.string	"cJSON_GetObjectItem"
.LASF108:
	.string	"protocol_ver"
.LASF51:
	.string	"axk_tls_stack_err"
.LASF189:
	.string	"cJSON_Parse"
.LASF7:
	.string	"long unsigned int"
.LASF97:
	.string	"client_key_pem"
.LASF19:
	.string	"MQTT_EVENT_ERROR"
.LASF13:
	.string	"int32_t"
.LASF77:
	.string	"port"
.LASF191:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/helloworld/helloworld/mqtt.c"
.LASF127:
	.string	"type"
.LASF1:
	.string	"unsigned char"
.LASF6:
	.string	"__uint32_t"
.LASF46:
	.string	"MQTT_PROTOCOL_UNDEFINED"
.LASF78:
	.string	"set_null_client_id"
.LASF117:
	.string	"axk_mqtt_client"
.LASF64:
	.string	"topic"
.LASF176:
	.string	"axk_mqtt_client_init"
.LASF171:
	.string	"cJSON_Delete"
.LASF162:
	.string	"error_code"
.LASF21:
	.string	"MQTT_EVENT_DISCONNECTED"
.LASF111:
	.string	"use_secure_element"
.LASF157:
	.string	"item"
.LASF151:
	.string	"version_item"
.LASF152:
	.string	"hwver"
.LASF154:
	.string	"swver"
.LASF149:
	.string	"arr_version_size"
.LASF0:
	.string	"signed char"
.LASF113:
	.string	"network_timeout_ms"
.LASF3:
	.string	"short unsigned int"
.LASF20:
	.string	"MQTT_EVENT_CONNECTED"
.LASF102:
	.string	"use_global_ca_store"
.LASF116:
	.string	"message_retransmit_timeout"
.LASF52:
	.string	"axk_tls_cert_verify_flags"
.LASF107:
	.string	"clientkey_password_len"
.LASF86:
	.string	"lwt_msg_len"
.LASF110:
	.string	"skip_cert_common_name_check"
.LASF188:
	.string	"strndup"
.LASF192:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/helloworld/build_out/helloworld"
.LASF169:
	.string	"axk_mqtt_client_publish"
.LASF44:
	.string	"MQTT_TRANSPORT_OVER_WSS"
.LASF166:
	.string	"cJSON_CreateString"
.LASF45:
	.string	"axk_mqtt_transport_t"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
