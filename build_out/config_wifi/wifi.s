	.file	"wifi.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.event_cb_wifi_event.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"UNKNOWN"
	.align	2
.LC1:
	.string	"[APP] [EVT] event->code %d\r\n"
	.align	2
.LC2:
	.string	"[SYS] Memory left is %d Bytes\r\n"
	.align	2
.LC3:
	.string	"[APP] [EVT] AP INIT DONE %lld\r\n"
	.align	2
.LC4:
	.string	"\r\n<<<<<<<<<<<<<<<<<<<<<<<< START SOFT AP OK <<<<<<<<<<<<<<<<<<<<\r\n"
	.align	2
.LC5:
	.string	"[APP] [EVT] AP STOP DONE %lld\r\n"
	.align	2
.LC6:
	.string	"\r\n<<<<<<<<<<<<<<<<<<<<<<<< STOP SOFT AP OK <<<<<<<<<<<<<<<<<<<<<\r\n"
	.align	2
.LC7:
	.string	"\r\n<<<<<<<<<<<<<<<<<<<<<<<< CONNECT AP <<<<<<<<<<<<<<<<<<<<\r\n"
	.align	2
.LC8:
	.string	"http server"
	.align	2
.LC9:
	.string	"\r\n<<<<<<<<<<<<<<<<<<<<<<<< DISCONNECT AP <<<<<<<<<<<<<<<<<<<<\r\n"
	.align	2
.LC10:
	.string	"[APP] [EVT] INIT DONE %lld\r\n"
	.align	2
.LC11:
	.string	"[APP] [EVT] MGMR DONE %lld\r\n"
	.align	2
.LC12:
	.string	"[APP] [EVT] SCAN Done %lld\r\n"
	.align	2
.LC13:
	.string	"wifi sta disconnected\n"
	.align	2
.LC14:
	.string	"[APP] [EVT] disconnect %lld\r\n"
	.align	2
.LC15:
	.string	"[APP] [EVT] Connecting %lld\r\n"
	.align	2
.LC16:
	.string	"[APP] [EVT] Reconnect %lld\r\n"
	.align	2
.LC17:
	.string	"wifi sta connected\n"
	.align	2
.LC18:
	.string	"[APP] [EVT] connected %lld\r\n"
	.align	2
.LC19:
	.string	"WIFI STA GOT IP\n"
	.align	2
.LC20:
	.string	"[APP] [EVT] GOT IP %lld\r\n"
	.align	2
.LC21:
	.string	"[APP] [EVT] [PROV] [BSSID] %lld: %s\r\n"
	.align	2
.LC22:
	.string	"connecting to %s:%s...\r\n"
	.align	2
.LC23:
	.string	"[APP] [EVT] [PROV] [DISCONNECT] %lld\r\n"
	.align	2
.LC24:
	.string	"[APP] [EVT] Unknown code %u, %lld\r\n"
	.section	.text.event_cb_wifi_event,"ax",@progbits
	.align	1
	.globl	event_cb_wifi_event
	.type	event_cb_wifi_event, @function
event_cb_wifi_event:
.LFB30:
	.file 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/wifi.c"
	.loc 1 41 1
	.cfi_startproc
.LVL0:
	.loc 1 42 5
	.loc 1 43 5
	.loc 1 45 5
	.loc 1 41 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.loc 1 45 5
	lhu	a1,6(a0)
.LVL1:
	.loc 1 41 1
	mv	s0,a0
	.loc 1 45 5
	lui	a0,%hi(.LC1)
.LVL2:
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL3:
	.loc 1 47 5 is_stmt 1
	call	xPortGetFreeHeapSize
.LVL4:
	mv	a1,a0
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL5:
	.loc 1 49 5
	.loc 1 49 18 is_stmt 0
	lhu	s1,6(s0)
	li	a4,21
	addi	a5,s1,-1
	slli	a5,a5,16
	srli	a5,a5,16
	bgtu	a5,a4,.L2
	lui	a4,%hi(.L4)
	slli	a5,a5,2
	addi	a4,a4,%lo(.L4)
	add	a5,a5,a4
	lw	a5,0(a5)
	jr	a5
	.section	.rodata.event_cb_wifi_event,"a",@progbits
	.align	2
	.align	2
.L4:
	.word	.L20
	.word	.L19
	.word	.L18
	.word	.L17
	.word	.L16
	.word	.L15
	.word	.L14
	.word	.L13
	.word	.L12
	.word	.L2
	.word	.L11
	.word	.L10
	.word	.L1
	.word	.L9
	.word	.L1
	.word	.L7
	.word	.L6
	.word	.L2
	.word	.L2
	.word	.L2
	.word	.L5
	.word	.L3
	.section	.text.event_cb_wifi_event
.L11:
	.loc 1 53 9 is_stmt 1
	call	aos_now_ms
.LVL6:
	mv	a2,a0
	lui	a0,%hi(.LC3)
	mv	a3,a1
	addi	a0,a0,%lo(.LC3)
	call	printf
.LVL7:
	.loc 1 54 9
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
.L27:
	.loc 1 198 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL8:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 79 9
	tail	printf
.LVL9:
.L10:
	.cfi_restore_state
	.loc 1 61 9 is_stmt 1
	call	aos_now_ms
.LVL10:
	mv	a2,a0
	lui	a0,%hi(.LC5)
	mv	a3,a1
	addi	a0,a0,%lo(.LC5)
	call	printf
.LVL11:
	.loc 1 62 9
	lui	a0,%hi(.LC6)
	addi	a0,a0,%lo(.LC6)
	call	printf
.LVL12:
	.loc 1 63 9
	li	a0,0
	call	set_is_config
.LVL13:
	.loc 1 64 9
	.loc 1 198 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL14:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
	.loc 1 64 9
	li	a0,0
	.loc 1 198 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 64 9
	tail	reset_flag
.LVL15:
.L5:
	.cfi_restore_state
	.loc 1 70 9 is_stmt 1
	.loc 1 71 9
	lui	a0,%hi(.LC7)
	addi	a0,a0,%lo(.LC7)
	call	printf
.LVL16:
	.loc 1 72 9
	.loc 1 198 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL17:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
	.loc 1 72 9
	lui	a1,%hi(.LC8)
	lui	a0,%hi(http_server_start)
	.loc 1 198 1
	.loc 1 72 9
	li	a5,0
	li	a4,15
	li	a3,0
	li	a2,4096
	addi	a1,a1,%lo(.LC8)
	addi	a0,a0,%lo(http_server_start)
	.loc 1 198 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 72 9
	tail	xTaskCreate
.LVL18:
.L3:
	.cfi_restore_state
	.loc 1 78 9 is_stmt 1
	.loc 1 79 9
	lui	a0,%hi(.LC9)
	addi	a0,a0,%lo(.LC9)
	j	.L27
.L20:
	.loc 1 85 9
	call	aos_now_ms
.LVL19:
	mv	a2,a0
	lui	a0,%hi(.LC10)
	mv	a3,a1
	addi	a0,a0,%lo(.LC10)
	call	printf
.LVL20:
	.loc 1 86 9
	.loc 1 198 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL21:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
	.loc 1 86 9
	lui	a0,%hi(.LANCHOR0)
	.loc 1 198 1
	.loc 1 86 9
	addi	a0,a0,%lo(.LANCHOR0)
	.loc 1 198 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 86 9
	tail	wifi_mgmr_start_background
.LVL22:
.L19:
	.cfi_restore_state
	.loc 1 93 9 is_stmt 1
	call	aos_now_ms
.LVL23:
	mv	a2,a0
	lui	a0,%hi(.LC11)
	mv	a3,a1
	addi	a0,a0,%lo(.LC11)
.L28:
	.loc 1 198 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL24:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 98 9
	tail	printf
.LVL25:
.L12:
	.cfi_restore_state
	.loc 1 98 9 is_stmt 1
	call	aos_now_ms
.LVL26:
	mv	a2,a0
	lui	a0,%hi(.LC12)
	mv	a3,a1
	addi	a0,a0,%lo(.LC12)
	j	.L28
.L16:
	.loc 1 105 9
	lui	a0,%hi(.LC13)
	addi	a0,a0,%lo(.LC13)
	call	printf
.LVL27:
	.loc 1 106 9
	call	aos_now_ms
.LVL28:
	mv	a2,a0
	lui	a0,%hi(.LC14)
	mv	a3,a1
	addi	a0,a0,%lo(.LC14)
	j	.L28
.L13:
	.loc 1 112 9
	call	aos_now_ms
.LVL29:
	mv	a2,a0
	lui	a0,%hi(.LC15)
	mv	a3,a1
	addi	a0,a0,%lo(.LC15)
	j	.L28
.L18:
	.loc 1 118 9
	call	aos_now_ms
.LVL30:
	mv	a2,a0
	lui	a0,%hi(.LC16)
	mv	a3,a1
	addi	a0,a0,%lo(.LC16)
	j	.L28
.L17:
	.loc 1 124 9
	lui	a0,%hi(.LC17)
	addi	a0,a0,%lo(.LC17)
	call	printf
.LVL31:
	.loc 1 125 9
.L15:
	.loc 1 131 9
	call	aos_now_ms
.LVL32:
	mv	a2,a0
	lui	a0,%hi(.LC18)
	mv	a3,a1
	addi	a0,a0,%lo(.LC18)
	j	.L28
.L14:
	.loc 1 137 9
	lui	a0,%hi(.LC19)
	addi	a0,a0,%lo(.LC19)
	call	printf
.LVL33:
	.loc 1 138 9
	call	aos_now_ms
.LVL34:
	mv	a2,a0
	lui	a0,%hi(.LC20)
	mv	a3,a1
	addi	a0,a0,%lo(.LC20)
	call	printf
.LVL35:
	.loc 1 142 9
	.loc 1 198 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL36:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 142 9
	tail	mqtt_start
.LVL37:
.L9:
	.cfi_restore_state
	.loc 1 161 9 is_stmt 1
	call	aos_now_ms
.LVL38:
	.loc 1 163 21 is_stmt 0
	lw	a4,8(s0)
	.loc 1 161 9
	mv	a2,a0
	mv	a3,a1
	bne	a4,zero,.L21
	lui	a4,%hi(.LC0)
	addi	a4,a4,%lo(.LC0)
.L21:
	.loc 1 161 9 discriminator 4
	lui	a0,%hi(.LC21)
	addi	a0,a0,%lo(.LC21)
	call	printf
.LVL39:
	.loc 1 164 9 is_stmt 1 discriminator 4
	.loc 1 164 18 is_stmt 0 discriminator 4
	lw	a0,8(s0)
	.loc 1 164 12 discriminator 4
	beq	a0,zero,.L1
	.loc 1 166 13 is_stmt 1
	.loc 1 198 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL40:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 166 13
	tail	vPortFree
.LVL41:
.L7:
	.cfi_restore_state
	.loc 1 183 9 is_stmt 1
	.loc 1 198 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL42:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
	.loc 1 183 9
	lui	a0,%hi(.LC22)
	.loc 1 198 1
	.loc 1 183 9
	li	a2,0
	li	a1,0
	addi	a0,a0,%lo(.LC22)
	.loc 1 198 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 183 9
	tail	printf
.LVL43:
.L6:
	.cfi_restore_state
	.loc 1 189 9 is_stmt 1
	call	aos_now_ms
.LVL44:
	mv	a2,a0
	lui	a0,%hi(.LC23)
	mv	a3,a1
	addi	a0,a0,%lo(.LC23)
	j	.L28
.L2:
	.loc 1 194 9
	call	aos_now_ms
.LVL45:
	.loc 1 198 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL46:
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 194 9
	mv	a3,a1
	mv	a1,s1
	.loc 1 198 1
	lw	s1,4(sp)
	.cfi_restore 9
	.loc 1 194 9
	mv	a2,a0
	lui	a0,%hi(.LC24)
	.loc 1 198 1
	.loc 1 194 9
	addi	a0,a0,%lo(.LC24)
	.loc 1 198 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 194 9
	tail	printf
.LVL47:
.L1:
	.cfi_restore_state
	.loc 1 198 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL48:
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE30:
	.size	event_cb_wifi_event, .-event_cb_wifi_event
	.section	.text.wifi_sta_connect,"ax",@progbits
	.align	1
	.globl	wifi_sta_connect
	.type	wifi_sta_connect, @function
wifi_sta_connect:
.LFB29:
	.loc 1 17 49 is_stmt 1
	.cfi_startproc
.LVL49:
	.loc 1 32 5
	.loc 1 33 5
	.loc 1 17 49 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 17 49
	sw	a1,12(sp)
	mv	s0,a0
	.loc 1 33 22
	call	wifi_mgmr_sta_enable
.LVL50:
	.loc 1 34 5 is_stmt 1
	lw	a2,12(sp)
	mv	a1,s0
	li	a6,0
	li	a5,0
	li	a4,0
	li	a3,0
	call	wifi_mgmr_sta_connect
.LVL51:
	.loc 1 35 5
	.loc 1 36 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL52:
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL53:
	jr	ra
	.cfi_endproc
.LFE29:
	.size	wifi_sta_connect, .-wifi_sta_connect
	.section	.rodata.wifi_execute.str1.4,"aMS",@progbits,1
	.align	2
.LC25:
	.string	"Wi-Fi init successful\r\n"
	.section	.text.wifi_execute,"ax",@progbits
	.align	1
	.globl	wifi_execute
	.type	wifi_execute, @function
wifi_execute:
.LFB31:
	.loc 1 209 1 is_stmt 1
	.cfi_startproc
.LVL54:
	.loc 1 210 5
	lui	a1,%hi(event_cb_wifi_event)
	.loc 1 209 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 210 5
	li	a2,0
	addi	a1,a1,%lo(event_cb_wifi_event)
	li	a0,2
.LVL55:
	.loc 1 209 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 210 5
	call	aos_register_event_filter
.LVL56:
	.loc 1 219 5 is_stmt 1
	lui	a0,%hi(.LC25)
	addi	a0,a0,%lo(.LC25)
	call	printf
.LVL57:
	.loc 1 220 5
	call	hal_wifi_start_firmware_task
.LVL58:
	.loc 1 222 5
	li	a2,0
	li	a1,1
	li	a0,2
	call	aos_post_event
.LVL59:
	.loc 1 224 5
	.loc 1 225 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 224 5
	li	a0,0
	.loc 1 225 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 224 5
	tail	vTaskDelete
.LVL60:
	.cfi_endproc
.LFE31:
	.size	wifi_execute, .-wifi_execute
	.section	.sdata.conf,"aw"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	conf, @object
	.size	conf, 8
conf:
	.string	"CN"
	.zero	5
	.text
.Letext0:
	.file 2 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/yloop.h"
	.file 4 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
	.file 5 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_pm.h"
	.file 6 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/wifi/include/bl60x_fw_api.h"
	.file 7 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/wifi_manager/bl60x_wifi_driver/include/wifi_mgmr_ext.h"
	.file 8 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 9 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hal_wifi.h"
	.file 10 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 11 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
	.file 12 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
	.file 13 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/button.h"
	.file 14 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/mqtt.h"
	.file 15 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/memp.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x714
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF93
	.byte	0xc
	.4byte	.LASF94
	.4byte	.LASF95
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.byte	0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x5b
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.byte	0x4
	.4byte	.LASF7
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x6e
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.byte	0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x81
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.byte	0x5
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x6
	.byte	0x4
	.4byte	0x91
	.byte	0x7
	.byte	0x10
	.byte	0x3
	.byte	0x66
	.byte	0x9
	.4byte	0xe9
	.byte	0x8
	.4byte	.LASF13
	.byte	0x3
	.byte	0x68
	.byte	0xe
	.4byte	0x75
	.byte	0
	.byte	0x8
	.4byte	.LASF14
	.byte	0x3
	.byte	0x6a
	.byte	0xe
	.4byte	0x62
	.byte	0x4
	.byte	0x8
	.4byte	.LASF15
	.byte	0x3
	.byte	0x6c
	.byte	0xe
	.4byte	0x62
	.byte	0x6
	.byte	0x8
	.4byte	.LASF16
	.byte	0x3
	.byte	0x6e
	.byte	0x13
	.4byte	0x81
	.byte	0x8
	.byte	0x8
	.4byte	.LASF17
	.byte	0x3
	.byte	0x70
	.byte	0x13
	.4byte	0x81
	.byte	0xc
	.byte	0
	.byte	0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0x71
	.byte	0x3
	.4byte	0x9e
	.byte	0x6
	.byte	0x4
	.4byte	0xe9
	.byte	0x9
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xf
	.byte	0x34
	.byte	0xe
	.4byte	0x16a
	.byte	0xa
	.4byte	.LASF19
	.byte	0
	.byte	0xa
	.4byte	.LASF20
	.byte	0x1
	.byte	0xa
	.4byte	.LASF21
	.byte	0x2
	.byte	0xa
	.4byte	.LASF22
	.byte	0x3
	.byte	0xa
	.4byte	.LASF23
	.byte	0x4
	.byte	0xa
	.4byte	.LASF24
	.byte	0x5
	.byte	0xa
	.4byte	.LASF25
	.byte	0x6
	.byte	0xa
	.4byte	.LASF26
	.byte	0x7
	.byte	0xa
	.4byte	.LASF27
	.byte	0x8
	.byte	0xa
	.4byte	.LASF28
	.byte	0x9
	.byte	0xa
	.4byte	.LASF29
	.byte	0xa
	.byte	0xa
	.4byte	.LASF30
	.byte	0xb
	.byte	0xa
	.4byte	.LASF31
	.byte	0xc
	.byte	0xa
	.4byte	.LASF32
	.byte	0xd
	.byte	0xa
	.4byte	.LASF33
	.byte	0xe
	.byte	0xa
	.4byte	.LASF34
	.byte	0xf
	.byte	0
	.byte	0xb
	.4byte	.LASF38
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x4
	.byte	0x71
	.byte	0x6
	.4byte	0x18f
	.byte	0xa
	.4byte	.LASF35
	.byte	0
	.byte	0xa
	.4byte	.LASF36
	.byte	0x1
	.byte	0xa
	.4byte	.LASF37
	.byte	0x2
	.byte	0
	.byte	0xb
	.4byte	.LASF39
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x5
	.byte	0x34
	.byte	0x6
	.4byte	0x1d2
	.byte	0xa
	.4byte	.LASF40
	.byte	0
	.byte	0xa
	.4byte	.LASF41
	.byte	0x1
	.byte	0xa
	.4byte	.LASF42
	.byte	0x2
	.byte	0xa
	.4byte	.LASF43
	.byte	0x3
	.byte	0xa
	.4byte	.LASF44
	.byte	0x4
	.byte	0xa
	.4byte	.LASF45
	.byte	0x5
	.byte	0xa
	.4byte	.LASF46
	.byte	0x6
	.byte	0xa
	.4byte	.LASF47
	.byte	0x7
	.byte	0
	.byte	0xb
	.4byte	.LASF48
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x6
	.byte	0x9
	.byte	0xe
	.4byte	0x233
	.byte	0xa
	.4byte	.LASF49
	.byte	0xff
	.byte	0xa
	.4byte	.LASF50
	.byte	0
	.byte	0xa
	.4byte	.LASF51
	.byte	0x1
	.byte	0xa
	.4byte	.LASF52
	.byte	0x2
	.byte	0xa
	.4byte	.LASF53
	.byte	0x3
	.byte	0xa
	.4byte	.LASF54
	.byte	0x4
	.byte	0xa
	.4byte	.LASF55
	.byte	0x5
	.byte	0xa
	.4byte	.LASF56
	.byte	0x6
	.byte	0xa
	.4byte	.LASF57
	.byte	0x7
	.byte	0xa
	.4byte	.LASF58
	.byte	0x8
	.byte	0xa
	.4byte	.LASF59
	.byte	0x8
	.byte	0xa
	.4byte	.LASF60
	.byte	0x9
	.byte	0xa
	.4byte	.LASF61
	.byte	0xa
	.byte	0
	.byte	0x4
	.4byte	.LASF62
	.byte	0x7
	.byte	0x85
	.byte	0xf
	.4byte	0x8f
	.byte	0xc
	.4byte	.LASF96
	.byte	0x8
	.byte	0x7
	.byte	0xb9
	.byte	0x10
	.4byte	0x267
	.byte	0x8
	.4byte	.LASF63
	.byte	0x7
	.byte	0xba
	.byte	0xa
	.4byte	0x267
	.byte	0
	.byte	0x8
	.4byte	.LASF64
	.byte	0x7
	.byte	0xbb
	.byte	0x9
	.4byte	0x25
	.byte	0x4
	.byte	0
	.byte	0xd
	.4byte	0x91
	.4byte	0x277
	.byte	0xe
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.byte	0x4
	.4byte	.LASF65
	.byte	0x7
	.byte	0xbc
	.byte	0x3
	.4byte	0x23f
	.byte	0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF66
	.byte	0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF67
	.byte	0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF68
	.byte	0xf
	.4byte	.LASF76
	.byte	0x1
	.byte	0xb
	.byte	0x14
	.4byte	0x277
	.byte	0x5
	.byte	0x3
	.4byte	conf
	.byte	0x10
	.4byte	.LASF69
	.byte	0x1
	.byte	0xd0
	.byte	0x6
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x1
	.byte	0x9c
	.4byte	0x33e
	.byte	0x11
	.4byte	.LASF71
	.byte	0x1
	.byte	0xd0
	.byte	0x19
	.4byte	0x8f
	.4byte	.LLST5
	.byte	0x12
	.4byte	.LVL56
	.4byte	0x660
	.4byte	0x2f1
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	event_cb_wifi_event
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x12
	.4byte	.LVL57
	.4byte	0x66c
	.4byte	0x308
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC25
	.byte	0
	.byte	0x14
	.4byte	.LVL58
	.4byte	0x678
	.byte	0x12
	.4byte	.LVL59
	.4byte	0x684
	.4byte	0x32e
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x15
	.4byte	.LVL60
	.4byte	0x690
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LASF70
	.byte	0x1
	.byte	0x28
	.byte	0x6
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x1
	.byte	0x9c
	.4byte	0x5e1
	.byte	0x11
	.4byte	.LASF72
	.byte	0x1
	.byte	0x28
	.byte	0x29
	.4byte	0xf5
	.4byte	.LLST0
	.byte	0x11
	.4byte	.LASF73
	.byte	0x1
	.byte	0x28
	.byte	0x36
	.4byte	0x8f
	.4byte	.LLST1
	.byte	0x16
	.4byte	.LASF74
	.byte	0x1
	.byte	0x2a
	.byte	0x12
	.4byte	0x98
	.byte	0x16
	.4byte	.LASF75
	.byte	0x1
	.byte	0x2b
	.byte	0x12
	.4byte	0x98
	.byte	0x12
	.4byte	.LVL3
	.4byte	0x66c
	.4byte	0x3a3
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x14
	.4byte	.LVL4
	.4byte	0x69d
	.byte	0x12
	.4byte	.LVL5
	.4byte	0x66c
	.4byte	0x3c3
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x14
	.4byte	.LVL6
	.4byte	0x6a9
	.byte	0x12
	.4byte	.LVL7
	.4byte	0x66c
	.4byte	0x3e3
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x17
	.4byte	.LVL9
	.4byte	0x66c
	.byte	0x14
	.4byte	.LVL10
	.4byte	0x6a9
	.byte	0x12
	.4byte	.LVL11
	.4byte	0x66c
	.4byte	0x40c
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x12
	.4byte	.LVL12
	.4byte	0x66c
	.4byte	0x423
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0x12
	.4byte	.LVL13
	.4byte	0x6b6
	.4byte	0x436
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x18
	.4byte	.LVL15
	.4byte	0x6c2
	.4byte	0x449
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x12
	.4byte	.LVL16
	.4byte	0x66c
	.4byte	0x460
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0x18
	.4byte	.LVL18
	.4byte	0x6ce
	.4byte	0x48d
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x1000
	.byte	0x13
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x13
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x3f
	.byte	0x13
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x14
	.4byte	.LVL19
	.4byte	0x6a9
	.byte	0x12
	.4byte	.LVL20
	.4byte	0x66c
	.4byte	0x4ad
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.byte	0x18
	.4byte	.LVL22
	.4byte	0x6db
	.4byte	0x4c4
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0x14
	.4byte	.LVL23
	.4byte	0x6a9
	.byte	0x17
	.4byte	.LVL25
	.4byte	0x66c
	.byte	0x14
	.4byte	.LVL26
	.4byte	0x6a9
	.byte	0x12
	.4byte	.LVL27
	.4byte	0x66c
	.4byte	0x4f6
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.byte	0x14
	.4byte	.LVL28
	.4byte	0x6a9
	.byte	0x14
	.4byte	.LVL29
	.4byte	0x6a9
	.byte	0x14
	.4byte	.LVL30
	.4byte	0x6a9
	.byte	0x12
	.4byte	.LVL31
	.4byte	0x66c
	.4byte	0x528
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.byte	0x14
	.4byte	.LVL32
	.4byte	0x6a9
	.byte	0x12
	.4byte	.LVL33
	.4byte	0x66c
	.4byte	0x548
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0
	.byte	0x14
	.4byte	.LVL34
	.4byte	0x6a9
	.byte	0x12
	.4byte	.LVL35
	.4byte	0x66c
	.4byte	0x568
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC20
	.byte	0
	.byte	0x17
	.4byte	.LVL37
	.4byte	0x6e7
	.byte	0x14
	.4byte	.LVL38
	.4byte	0x6a9
	.byte	0x12
	.4byte	.LVL39
	.4byte	0x66c
	.4byte	0x591
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0
	.byte	0x17
	.4byte	.LVL41
	.4byte	0x6f3
	.byte	0x18
	.4byte	.LVL43
	.4byte	0x66c
	.4byte	0x5bb
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC22
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x14
	.4byte	.LVL44
	.4byte	0x6a9
	.byte	0x14
	.4byte	.LVL45
	.4byte	0x6a9
	.byte	0x15
	.4byte	.LVL47
	.4byte	0x66c
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC24
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LASF97
	.byte	0x1
	.byte	0x11
	.byte	0x5
	.4byte	0x25
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x1
	.byte	0x9c
	.4byte	0x660
	.byte	0x11
	.4byte	.LASF74
	.byte	0x1
	.byte	0x11
	.byte	0x1c
	.4byte	0x98
	.4byte	.LLST2
	.byte	0x11
	.4byte	.LASF75
	.byte	0x1
	.byte	0x11
	.byte	0x28
	.4byte	0x98
	.4byte	.LLST3
	.byte	0x1a
	.4byte	.LASF77
	.byte	0x1
	.byte	0x20
	.byte	0x16
	.4byte	0x233
	.4byte	.LLST4
	.byte	0x14
	.4byte	.LVL50
	.4byte	0x6ff
	.byte	0x1b
	.4byte	.LVL51
	.4byte	0x70b
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0x13
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x13
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x30
	.byte	0x13
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x30
	.byte	0x13
	.byte	0x1
	.byte	0x60
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x3
	.byte	0x83
	.byte	0x5
	.byte	0x1c
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x8
	.byte	0xc8
	.byte	0x5
	.byte	0x1c
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x9
	.byte	0x8
	.byte	0x5
	.byte	0x1c
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x3
	.byte	0x99
	.byte	0x5
	.byte	0x1d
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0xa
	.2byte	0x2c2
	.byte	0x6
	.byte	0x1c
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0xb
	.byte	0x96
	.byte	0x8
	.byte	0x1d
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0xc
	.2byte	0x1ef
	.byte	0xf
	.byte	0x1c
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0xd
	.byte	0x22
	.byte	0x6
	.byte	0x1c
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0xd
	.byte	0x23
	.byte	0x6
	.byte	0x1d
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0xa
	.2byte	0x14a
	.byte	0xd
	.byte	0x1c
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0x7
	.byte	0xc3
	.byte	0x6
	.byte	0x1c
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0xe
	.byte	0x11
	.byte	0x6
	.byte	0x1c
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0xb
	.byte	0x94
	.byte	0x6
	.byte	0x1c
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0x7
	.byte	0xc6
	.byte	0x12
	.byte	0x1c
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0x7
	.byte	0xd2
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
	.byte	0x8
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
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
	.byte	0x8
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
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0x2
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x17
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0x1
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
	.byte	0x1a
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
	.byte	0x1b
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1c
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
	.byte	0x1d
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
.LLST5:
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL55
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x58
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
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL49
	.4byte	.LVL50-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50-1
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL52
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL49
	.4byte	.LVL50-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL50-1
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL53
	.4byte	.LFE29
	.2byte	0x2
	.byte	0x72
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL50
	.4byte	.LVL51-1
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF24:
	.string	"MEMP_ALTCP_PCB"
.LASF78:
	.string	"aos_register_event_filter"
.LASF92:
	.string	"wifi_mgmr_sta_connect"
.LASF40:
	.string	"PM_MODE_STA_NONE"
.LASF80:
	.string	"hal_wifi_start_firmware_task"
.LASF14:
	.string	"type"
.LASF74:
	.string	"ssid"
.LASF23:
	.string	"MEMP_TCP_SEG"
.LASF39:
	.string	"PM_LEVEL"
.LASF54:
	.string	"TASK_SM"
.LASF75:
	.string	"password"
.LASF72:
	.string	"event"
.LASF88:
	.string	"wifi_mgmr_start_background"
.LASF2:
	.string	"short int"
.LASF16:
	.string	"value"
.LASF30:
	.string	"MEMP_SYS_TIMEOUT"
.LASF56:
	.string	"TASK_BAM"
.LASF47:
	.string	"PM_MODE_MAX"
.LASF37:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF64:
	.string	"channel_nums"
.LASF76:
	.string	"conf"
.LASF22:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF91:
	.string	"wifi_mgmr_sta_enable"
.LASF9:
	.string	"uint32_t"
.LASF60:
	.string	"TASK_API"
.LASF31:
	.string	"MEMP_NETDB"
.LASF55:
	.string	"TASK_APM"
.LASF42:
	.string	"PM_MODE_STA_MESH"
.LASF67:
	.string	"float"
.LASF84:
	.string	"aos_now_ms"
.LASF4:
	.string	"long long int"
.LASF11:
	.string	"long long unsigned int"
.LASF38:
	.string	"lwip_internal_netif_client_data_index"
.LASF97:
	.string	"wifi_sta_connect"
.LASF3:
	.string	"long int"
.LASF58:
	.string	"TASK_CFG"
.LASF79:
	.string	"printf"
.LASF94:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/wifi.c"
.LASF65:
	.string	"wifi_conf_t"
.LASF46:
	.string	"PM_MODE_AP_IDLE"
.LASF83:
	.string	"xPortGetFreeHeapSize"
.LASF73:
	.string	"private_data"
.LASF35:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF28:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF69:
	.string	"wifi_execute"
.LASF52:
	.string	"TASK_SCANU"
.LASF5:
	.string	"unsigned char"
.LASF49:
	.string	"TASK_NONE"
.LASF96:
	.string	"wifi_conf"
.LASF57:
	.string	"TASK_RXU"
.LASF41:
	.string	"PM_MODE_STA_IDLE"
.LASF63:
	.string	"country_code"
.LASF34:
	.string	"MEMP_MAX"
.LASF1:
	.string	"signed char"
.LASF36:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF59:
	.string	"TASK_LAST_EMB"
.LASF0:
	.string	"unsigned int"
.LASF50:
	.string	"TASK_MM"
.LASF7:
	.string	"uint16_t"
.LASF10:
	.string	"long unsigned int"
.LASF15:
	.string	"code"
.LASF29:
	.string	"MEMP_IGMP_GROUP"
.LASF13:
	.string	"time"
.LASF8:
	.string	"short unsigned int"
.LASF48:
	.string	"wifi_fw_task_id"
.LASF77:
	.string	"wifi_interface"
.LASF12:
	.string	"char"
.LASF27:
	.string	"MEMP_TCPIP_MSG_API"
.LASF82:
	.string	"vTaskDelete"
.LASF43:
	.string	"PM_MODE_STA_DOZE"
.LASF66:
	.string	"_Bool"
.LASF87:
	.string	"xTaskCreate"
.LASF89:
	.string	"mqtt_start"
.LASF32:
	.string	"MEMP_PBUF"
.LASF18:
	.string	"input_event_t"
.LASF51:
	.string	"TASK_SCAN"
.LASF86:
	.string	"reset_flag"
.LASF81:
	.string	"aos_post_event"
.LASF53:
	.string	"TASK_ME"
.LASF68:
	.string	"double"
.LASF19:
	.string	"MEMP_RAW_PCB"
.LASF90:
	.string	"vPortFree"
.LASF70:
	.string	"event_cb_wifi_event"
.LASF6:
	.string	"uint8_t"
.LASF33:
	.string	"MEMP_PBUF_POOL"
.LASF95:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/build_out/config_wifi"
.LASF26:
	.string	"MEMP_NETCONN"
.LASF62:
	.string	"wifi_interface_t"
.LASF44:
	.string	"PM_MODE_STA_COEX"
.LASF71:
	.string	"pvParameters"
.LASF21:
	.string	"MEMP_TCP_PCB"
.LASF45:
	.string	"PM_MODE_STA_DOWN"
.LASF20:
	.string	"MEMP_UDP_PCB"
.LASF61:
	.string	"TASK_MAX"
.LASF17:
	.string	"extra"
.LASF85:
	.string	"set_is_config"
.LASF25:
	.string	"MEMP_NETBUF"
.LASF93:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
