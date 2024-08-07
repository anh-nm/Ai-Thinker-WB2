	.file	"bfl_main.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.app_main_entry,"ax",@progbits
	.align	1
	.type	app_main_entry, @function
app_main_entry:
.LFB72:
	.file 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/bl602/bfl_main.c"
	.loc 1 173 1
	.cfi_startproc
.LVL0:
	.loc 1 174 5
	.loc 1 175 5
	.loc 1 173 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 175 5
	call	main
.LVL1:
	.loc 1 176 5 is_stmt 1
	.loc 1 177 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 176 5
	li	a0,0
	.loc 1 177 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 176 5
	tail	vTaskDelete
.LVL2:
	.cfi_endproc
.LFE72:
	.size	app_main_entry, .-app_main_entry
	.section	.rodata.aos_loop_proc.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"uart@4000A000"
	.align	2
.LC1:
	.string	"uart@4000A100"
	.align	2
.LC2:
	.string	"uart"
	.align	2
.LC3:
	.string	"bfl_main.c"
	.align	2
.LC4:
	.string	"ERROR "
	.align	2
.LC5:
	.string	"[%10u][%s: %s:%4d] %s NULL.\r\n"
	.align	2
.LC6:
	.string	"/dev/ttyS0"
	.align	2
.LC7:
	.string	"Init CLI with event Driven\r\n"
	.align	2
.LC8:
	.string	"main"
	.align	2
.LC9:
	.string	"------------------------------------------\r\n"
	.align	2
.LC10:
	.string	"+++++++++Critical Exit From AOS LOOP entry++++++++++\r\n"
	.align	2
.LC11:
	.string	"******************************************\r\n"
	.section	.text.aos_loop_proc,"ax",@progbits
	.align	1
	.type	aos_loop_proc, @function
aos_loop_proc:
.LFB73:
	.loc 1 180 1 is_stmt 1
	.cfi_startproc
.LVL3:
	.loc 1 190 5
	.loc 1 180 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.loc 1 190 5
	call	easyflash_init
.LVL4:
	.loc 1 194 5 is_stmt 1
	call	vfs_init
.LVL5:
	.loc 1 195 5
	call	vfs_device_init
.LVL6:
	.loc 1 199 5
	.loc 1 200 5
	.loc 1 200 17 is_stmt 0
	lui	a5,%hi(.LC0)
	addi	a5,a5,%lo(.LC0)
	sw	a5,8(sp)
	lui	a5,%hi(.LC1)
	addi	a5,a5,%lo(.LC1)
	sw	a5,12(sp)
	.loc 1 205 5 is_stmt 1
.LVL7:
.LBB4:
.LBB5:
	.loc 1 151 5
	.loc 1 159 14 is_stmt 0
	lui	s0,%hi(.LC2)
	.loc 1 151 21
	call	hal_board_get_factory_addr
.LVL8:
	.loc 1 159 14
	addi	a2,s0,%lo(.LC2)
	li	a1,0
	.loc 1 151 21
	mv	s1,a0
.LVL9:
	.loc 1 152 5 is_stmt 1
	.loc 1 153 5
	.loc 1 155 5
	.loc 1 159 5
	.loc 1 159 14 is_stmt 0
	call	fdt_subnode_offset
.LVL10:
	.loc 1 160 5 is_stmt 1
	.loc 1 160 8 is_stmt 0
	bne	a0,zero,.L4
	.loc 1 161 8 is_stmt 1
	.loc 1 161 13
	.loc 1 161 15
	.loc 1 161 64 is_stmt 0
	call	xPortIsInsideInterrupt
.LVL11:
	.loc 1 161 15
	beq	a0,zero,.L5
	.loc 1 161 91
	call	xTaskGetTickCountFromISR
.LVL12:
.L11:
	.loc 1 161 120
	mv	a1,a0
	.loc 1 161 15
	lui	a3,%hi(.LC3)
	lui	a2,%hi(.LC4)
	lui	a0,%hi(.LC5)
	addi	a5,s0,%lo(.LC2)
	li	a4,161
	addi	a3,a3,%lo(.LC3)
	addi	a2,a2,%lo(.LC4)
	addi	a0,a0,%lo(.LC5)
	call	bl_printk
.LVL13:
	.loc 1 161 178 is_stmt 1
	.loc 1 161 187
	.loc 1 162 8
.L8:
.LBE5:
.LBE4:
	.loc 1 215 5
	call	aos_loop_init
.LVL14:
	.loc 1 219 5
	.loc 1 220 5
	.loc 1 220 18 is_stmt 0
	lui	a0,%hi(.LC6)
	li	a1,0
	addi	a0,a0,%lo(.LC6)
	call	aos_open
.LVL15:
	mv	s0,a0
.LVL16:
	.loc 1 221 5 is_stmt 1
	.loc 1 221 8 is_stmt 0
	blt	a0,zero,.L7
	.loc 1 222 9 is_stmt 1
	lui	a0,%hi(.LC7)
	addi	a0,a0,%lo(.LC7)
	call	printf
.LVL17:
	.loc 1 223 9
	li	a0,0
	call	aos_cli_init
.LVL18:
	.loc 1 224 9
	.loc 1 224 38 is_stmt 0
	call	aos_cli_event_cb_read_get
.LVL19:
	.loc 1 224 9
	li	a2,305418240
	.loc 1 224 38
	mv	a1,a0
	.loc 1 224 9
	addi	a2,a2,1656
	mv	a0,s0
	call	aos_poll_read_fd
.LVL20:
.L7:
	.loc 1 228 5 is_stmt 1
	lui	a1,%hi(.LC8)
	lui	a0,%hi(app_main_entry)
	li	a5,0
	li	a4,15
	li	a3,0
	li	a2,1024
	addi	a1,a1,%lo(.LC8)
	addi	a0,a0,%lo(app_main_entry)
	call	xTaskCreate
.LVL21:
	.loc 1 236 5
	call	aos_loop_run
.LVL22:
	.loc 1 238 5
	lui	a0,%hi(.LC9)
	addi	a0,a0,%lo(.LC9)
	call	puts
.LVL23:
	.loc 1 239 5
	lui	a0,%hi(.LC10)
	addi	a0,a0,%lo(.LC10)
	call	puts
.LVL24:
	.loc 1 240 5
	lui	a0,%hi(.LC11)
	addi	a0,a0,%lo(.LC11)
	call	puts
.LVL25:
	.loc 1 241 5
	li	a0,0
	call	vTaskDelete
.LVL26:
	.loc 1 242 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL27:
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL28:
.L5:
	.cfi_restore_state
.LBB7:
.LBB6:
	.loc 1 161 120
	call	xTaskGetTickCount
.LVL29:
	j	.L11
.LVL30:
.L4:
	mv	a1,a0
.LVL31:
.LBE6:
.LBE7:
	.loc 1 206 9 is_stmt 1
	li	a3,2
	addi	a2,sp,8
	mv	a0,s1
	call	vfs_uart_init
.LVL32:
	j	.L8
	.cfi_endproc
.LFE73:
	.size	aos_loop_proc, .-aos_loop_proc
	.section	.rodata.vApplicationStackOverflowHook.str1.4,"aMS",@progbits,1
	.align	2
.LC12:
	.string	"Stack Overflow checked\r\n"
	.section	.text.vApplicationStackOverflowHook,"ax",@progbits
	.align	1
	.globl	vApplicationStackOverflowHook
	.type	vApplicationStackOverflowHook, @function
vApplicationStackOverflowHook:
.LFB65:
	.loc 1 60 1
	.cfi_startproc
.LVL33:
	.loc 1 61 5
	lui	a0,%hi(.LC12)
.LVL34:
	.loc 1 60 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 61 5
	addi	a0,a0,%lo(.LC12)
	.loc 1 60 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 61 5
	call	puts
.LVL35:
	.loc 1 62 5 is_stmt 1
	call	bl_sys_reset_por
.LVL36:
.L13:
	.loc 1 63 5 discriminator 1
	.loc 1 65 5 discriminator 1
	.loc 1 63 11 discriminator 1
	j	.L13
	.cfi_endproc
.LFE65:
	.size	vApplicationStackOverflowHook, .-vApplicationStackOverflowHook
	.section	.rodata.vApplicationMallocFailedHook.str1.4,"aMS",@progbits,1
	.align	2
.LC13:
	.string	"Memory Allocate Failed. Current left size is %d bytes\r\n"
	.section	.text.vApplicationMallocFailedHook,"ax",@progbits
	.align	1
	.weak	vApplicationMallocFailedHook
	.type	vApplicationMallocFailedHook, @function
vApplicationMallocFailedHook:
.LFB66:
	.loc 1 69 1
	.cfi_startproc
	.loc 1 70 5
	.loc 1 69 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 70 5
	call	xPortGetFreeHeapSize
.LVL37:
	.loc 1 78 1
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 70 5
	mv	a1,a0
	lui	a0,%hi(.LC13)
	.loc 1 78 1
	.loc 1 70 5
	addi	a0,a0,%lo(.LC13)
	.loc 1 78 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 70 5
	tail	printf
.LVL38:
	.cfi_endproc
.LFE66:
	.size	vApplicationMallocFailedHook, .-vApplicationMallocFailedHook
	.section	.text.vApplicationIdleHook,"ax",@progbits
	.align	1
	.weak	vApplicationIdleHook
	.type	vApplicationIdleHook, @function
vApplicationIdleHook:
.LFB67:
	.loc 1 81 1 is_stmt 1
	.cfi_startproc
	.loc 1 82 5
 #APP
# 82 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/bl602/bfl_main.c" 1
	   wfi     
# 0 "" 2
	.loc 1 86 1 is_stmt 0
 #NO_APP
	ret
	.cfi_endproc
.LFE67:
	.size	vApplicationIdleHook, .-vApplicationIdleHook
	.section	.text.vApplicationGetIdleTaskMemory,"ax",@progbits
	.align	1
	.weak	vApplicationGetIdleTaskMemory
	.type	vApplicationGetIdleTaskMemory, @function
vApplicationGetIdleTaskMemory:
.LFB68:
	.loc 1 89 1 is_stmt 1
	.cfi_startproc
.LVL39:
	.loc 1 93 5
	.loc 1 94 5
	.loc 1 98 5
	.loc 1 98 27 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	sw	a5,0(a0)
	.loc 1 101 5 is_stmt 1
	.loc 1 101 29 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	addi	a5,a5,%lo(.LANCHOR1)
	sw	a5,0(a1)
	.loc 1 106 5 is_stmt 1
	.loc 1 106 27 is_stmt 0
	li	a5,114
	sw	a5,0(a2)
	.loc 1 107 1
	ret
	.cfi_endproc
.LFE68:
	.size	vApplicationGetIdleTaskMemory, .-vApplicationGetIdleTaskMemory
	.section	.text.vApplicationGetTimerTaskMemory,"ax",@progbits
	.align	1
	.globl	vApplicationGetTimerTaskMemory
	.type	vApplicationGetTimerTaskMemory, @function
vApplicationGetTimerTaskMemory:
.LFB69:
	.loc 1 113 1 is_stmt 1
	.cfi_startproc
.LVL40:
	.loc 1 117 5
	.loc 1 118 5
	.loc 1 122 5
	.loc 1 122 28 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	addi	a5,a5,%lo(.LANCHOR2)
	sw	a5,0(a0)
	.loc 1 125 5 is_stmt 1
	.loc 1 125 30 is_stmt 0
	lui	a5,%hi(.LANCHOR3)
	addi	a5,a5,%lo(.LANCHOR3)
	sw	a5,0(a1)
	.loc 1 130 5 is_stmt 1
	.loc 1 130 28 is_stmt 0
	li	a5,400
	sw	a5,0(a2)
	.loc 1 131 1
	ret
	.cfi_endproc
.LFE69:
	.size	vApplicationGetTimerTaskMemory, .-vApplicationGetTimerTaskMemory
	.section	.text.vAssertCalled,"ax",@progbits
	.align	1
	.weak	vAssertCalled
	.type	vAssertCalled, @function
vAssertCalled:
.LFB70:
	.loc 1 135 1 is_stmt 1
	.cfi_startproc
	.loc 1 136 5
	.loc 1 135 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 136 5
 #APP
# 136 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/bl602/bfl_main.c" 1
	csrc mstatus, 8
# 0 "" 2
	.loc 1 137 5 is_stmt 1
 #NO_APP
	call	abort
.LVL41:
	.cfi_endproc
.LFE70:
	.size	vAssertCalled, .-vAssertCalled
	.weak	user_vAssertCalled
	.set	user_vAssertCalled,vAssertCalled
	.section	.text.log_port_reset,"ax",@progbits
	.align	1
	.globl	log_port_reset
	.type	log_port_reset, @function
log_port_reset:
.LFB76:
	.loc 1 287 1
	.cfi_startproc
	.loc 1 288 5
	.loc 1 290 5
	.loc 1 291 5
	.loc 1 292 5
	.loc 1 293 5
	.loc 1 294 5
	.loc 1 295 5
	.loc 1 292 17 is_stmt 0
	li	a5,33619968
	.loc 1 287 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 292 17
	addi	a5,a5,784
	sw	a5,8(sp)
	.loc 1 296 5
	addi	a0,sp,8
	.loc 1 290 15
	li	a5,256
	.loc 1 287 1
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 290 15
	sh	a5,12(sp)
	.loc 1 296 5 is_stmt 1
	call	GLB_GPIO_Init
.LVL42:
	.loc 1 298 5
	.loc 1 298 17 is_stmt 0
	li	a5,7
	.loc 1 299 5
	addi	a0,sp,8
	.loc 1 298 17
	sb	a5,8(sp)
	.loc 1 299 5 is_stmt 1
	call	GLB_GPIO_Init
.LVL43:
	.loc 1 300 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE76:
	.size	log_port_reset, .-log_port_reset
	.section	.rodata.bfl_main.str1.4,"aMS",@progbits,1
	.align	2
.LC14:
	.string	"Starting bl602 now....\r\n"
	.align	2
.LC15:
	.string	"Booting Ai-WB2 Modules...\r\n"
	.align	2
.LC16:
	.string	"RISC-V Core Feature:"
	.align	2
.LC17:
	.string	"\r\n"
	.align	2
.LC18:
	.string	"Build Version: "
	.align	2
.LC19:
	.string	"release_bl_iot_sdk_1.6.40-11-gf4c8dac01"
	.align	2
.LC20:
	.string	"Build Date: "
	.align	2
.LC21:
	.string	"Aug  1 2024"
	.align	2
.LC22:
	.string	"Build Time: "
	.align	2
.LC23:
	.string	"17:10:37"
	.align	2
.LC24:
	.string	"[OS] Starting aos_loop_proc task...\r\n"
	.align	2
.LC25:
	.string	"event_loop"
	.align	2
.LC26:
	.string	"[OS] Starting OS Scheduler...\r\n"
	.section	.text.bfl_main,"ax",@progbits
	.align	1
	.globl	bfl_main
	.type	bfl_main, @function
bfl_main:
.LFB77:
	.loc 1 303 1 is_stmt 1
	.cfi_startproc
	.loc 1 304 5
	.loc 1 306 5
	.loc 1 303 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 306 5
	call	bl_sys_early_init
.LVL44:
	.loc 1 314 5 is_stmt 1
	lui	a0,%hi(.LANCHOR4)
	addi	a0,a0,%lo(.LANCHOR4)
	call	hosal_uart_init_only_tx
.LVL45:
	.loc 1 315 5
	lui	a0,%hi(.LC14)
	addi	a0,a0,%lo(.LC14)
	call	puts
.LVL46:
	.loc 1 317 5
.LBB12:
.LBB13:
	.loc 1 246 5
	.loc 1 247 5
	lui	a0,%hi(.LC15)
	addi	a0,a0,%lo(.LC15)
	call	puts
.LVL47:
	.loc 1 248 5
	lui	a0,%hi(.LC16)
	addi	a0,a0,%lo(.LC16)
	call	puts
.LVL48:
	.loc 1 249 5
	addi	a0,sp,8
	call	bl_chip_info
.LVL49:
	.loc 1 250 5
	addi	a0,sp,8
	call	puts
.LVL50:
	.loc 1 251 5
	lui	s0,%hi(.LC17)
	addi	a0,s0,%lo(.LC17)
	call	puts
.LVL51:
	.loc 1 252 5
	lui	a0,%hi(.LC18)
	addi	a0,a0,%lo(.LC18)
	call	puts
.LVL52:
	.loc 1 253 5
	lui	a0,%hi(.LC19)
	addi	a0,a0,%lo(.LC19)
	call	puts
.LVL53:
	.loc 1 254 5
	addi	a0,s0,%lo(.LC17)
	call	puts
.LVL54:
	.loc 1 255 5
	lui	a0,%hi(.LC20)
	addi	a0,a0,%lo(.LC20)
	call	puts
.LVL55:
	.loc 1 256 5
	lui	a0,%hi(.LC21)
	addi	a0,a0,%lo(.LC21)
	call	puts
.LVL56:
	.loc 1 257 5
	addi	a0,s0,%lo(.LC17)
	call	puts
.LVL57:
	.loc 1 258 5
	lui	a0,%hi(.LC22)
	addi	a0,a0,%lo(.LC22)
	call	puts
.LVL58:
	.loc 1 259 5
	lui	a0,%hi(.LC23)
	addi	a0,a0,%lo(.LC23)
	call	puts
.LVL59:
	.loc 1 260 5
	addi	a0,s0,%lo(.LC17)
	call	puts
.LVL60:
.LBE13:
.LBE12:
	.loc 1 320 5
	lui	a0,%hi(.LANCHOR5)
	addi	a0,a0,%lo(.LANCHOR5)
	call	vPortDefineHeapRegions
.LVL61:
	.loc 1 323 5
.LBB14:
.LBB15:
	.loc 1 267 5
	call	blog_init
.LVL62:
	.loc 1 270 5
	call	bl_irq_init
.LVL63:
	.loc 1 271 5
	call	bl_sec_init
.LVL64:
	.loc 1 272 5
	call	hal_boot2_init
.LVL65:
	.loc 1 281 5
	li	a0,0
	call	hal_board_cfg
.LVL66:
.LBE15:
.LBE14:
	.loc 1 325 5
	lui	a0,%hi(.LC24)
	addi	a0,a0,%lo(.LC24)
	call	puts
.LVL67:
	.loc 1 326 5
	lui	a1,%hi(.LC25)
	lui	a0,%hi(aos_loop_proc)
	addi	a5,sp,8
	li	a4,15
	li	a3,0
	li	a2,1024
	addi	a1,a1,%lo(.LC25)
	addi	a0,a0,%lo(aos_loop_proc)
	call	xTaskCreate
.LVL68:
	.loc 1 328 5
	lui	a0,%hi(.LC26)
	addi	a0,a0,%lo(.LC26)
	call	puts
.LVL69:
	.loc 1 329 5
	call	vTaskStartScheduler
.LVL70:
	.loc 1 330 1 is_stmt 0
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE77:
	.size	bfl_main, .-bfl_main
	.globl	uart_stdio
	.section	.bss.uxIdleTaskStack.1,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	uxIdleTaskStack.1, @object
	.size	uxIdleTaskStack.1, 456
uxIdleTaskStack.1:
	.zero	456
	.section	.bss.uxTimerTaskStack.3,"aw",@nobits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	uxTimerTaskStack.3, @object
	.size	uxTimerTaskStack.3, 1600
uxTimerTaskStack.3:
	.zero	1600
	.section	.bss.xIdleTaskTCB.0,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	xIdleTaskTCB.0, @object
	.size	xIdleTaskTCB.0, 104
xIdleTaskTCB.0:
	.zero	104
	.section	.bss.xTimerTaskTCB.2,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	xTimerTaskTCB.2, @object
	.size	xTimerTaskTCB.2, 104
xTimerTaskTCB.2:
	.zero	104
	.section	.data.uart_stdio,"aw"
	.align	2
	.set	.LANCHOR4,. + 0
	.type	uart_stdio, @object
	.size	uart_stdio, 80
uart_stdio:
	.zero	4
	.byte	0
	.byte	16
	.byte	7
	.byte	-1
	.byte	-1
	.zero	3
	.word	115200
	.word	3
	.word	0
	.word	0
	.zero	4
	.word	0
	.zero	44
	.section	.data.xHeapRegions,"aw"
	.align	2
	.set	.LANCHOR5,. + 0
	.type	xHeapRegions, @object
	.size	xHeapRegions, 32
xHeapRegions:
	.word	_heap_start
	.word	_heap_size
	.word	_heap_wifi_start
	.word	_heap_wifi_size
	.word	0
	.word	0
	.word	0
	.word	0
	.text
.Letext0:
	.file 2 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h"
	.file 3 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 4 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
	.file 5 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
	.file 6 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
	.file 7 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 8 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/include/hosal_dma.h"
	.file 9 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/include/hosal_uart.h"
	.file 10 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_gpio.h"
	.file 11 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 12 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_chip.h"
	.file 13 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/blog/blog.h"
	.file 14 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_irq.h"
	.file 15 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_sec.h"
	.file 16 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hal_boot2.h"
	.file 17 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hal_board.h"
	.file 18 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_sys.h"
	.file 19 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/StdDriver/Inc/bl602_glb.h"
	.file 20 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/blfdt/inc/libfdt.h"
	.file 21 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/utils/include/utils_log.h"
	.file 22 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/easyflash4/inc/easyflash.h"
	.file 23 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
	.file 24 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/event_device.h"
	.file 25 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/yloop.h"
	.file 26 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/cli/cli/include/cli.h"
	.file 27 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/include/device/vfs_uart.h"
	.file 28 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf7b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF170
	.byte	0xc
	.4byte	.LASF171
	.4byte	.LASF172
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0xd1
	.byte	0x16
	.4byte	0x38
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF3
	.byte	0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x2e
	.byte	0x17
	.4byte	0x67
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF8
	.byte	0x3
	.4byte	.LASF9
	.byte	0x3
	.byte	0x34
	.byte	0x1b
	.4byte	0x81
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.byte	0x5
	.byte	0x4
	.byte	0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x3e
	.byte	0x12
	.4byte	0x75
	.byte	0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x40
	.byte	0x12
	.4byte	0x75
	.byte	0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x41
	.byte	0x12
	.4byte	0x75
	.byte	0x6
	.4byte	.LASF18
	.byte	0x8
	.byte	0x5
	.byte	0x7a
	.byte	0x10
	.4byte	0xdd
	.byte	0x7
	.4byte	.LASF15
	.byte	0x5
	.byte	0x7c
	.byte	0xb
	.4byte	0xdd
	.byte	0
	.byte	0x7
	.4byte	.LASF16
	.byte	0x5
	.byte	0x7d
	.byte	0x9
	.4byte	0x2c
	.byte	0x4
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x5b
	.byte	0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0x7e
	.byte	0x3
	.4byte	0xb5
	.byte	0x9
	.4byte	.LASF19
	.byte	0x14
	.byte	0x6
	.2byte	0x414
	.byte	0x8
	.4byte	0x11a
	.byte	0xa
	.4byte	.LASF20
	.byte	0x6
	.2byte	0x419
	.byte	0xd
	.4byte	0xa9
	.byte	0
	.byte	0xa
	.4byte	.LASF21
	.byte	0x6
	.2byte	0x41a
	.byte	0x8
	.4byte	0x11a
	.byte	0x4
	.byte	0
	.byte	0xb
	.4byte	0x8f
	.4byte	0x12a
	.byte	0xc
	.4byte	0x38
	.byte	0x3
	.byte	0
	.byte	0xd
	.4byte	.LASF22
	.byte	0x6
	.2byte	0x41f
	.byte	0x22
	.4byte	0xef
	.byte	0x9
	.4byte	.LASF23
	.byte	0x68
	.byte	0x6
	.2byte	0x447
	.byte	0x10
	.4byte	0x1fc
	.byte	0xa
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x449
	.byte	0x8
	.4byte	0x8f
	.byte	0
	.byte	0xa
	.4byte	.LASF25
	.byte	0x6
	.2byte	0x44d
	.byte	0x13
	.4byte	0x1fc
	.byte	0x4
	.byte	0xa
	.4byte	.LASF26
	.byte	0x6
	.2byte	0x44e
	.byte	0xe
	.4byte	0x9d
	.byte	0x2c
	.byte	0xa
	.4byte	.LASF27
	.byte	0x6
	.2byte	0x44f
	.byte	0x8
	.4byte	0x8f
	.byte	0x30
	.byte	0xa
	.4byte	.LASF28
	.byte	0x6
	.2byte	0x450
	.byte	0xa
	.4byte	0x20c
	.byte	0x34
	.byte	0xa
	.4byte	.LASF29
	.byte	0x6
	.2byte	0x455
	.byte	0xf
	.4byte	0x9d
	.byte	0x44
	.byte	0xa
	.4byte	.LASF30
	.byte	0x6
	.2byte	0x458
	.byte	0xf
	.4byte	0x21c
	.byte	0x48
	.byte	0xa
	.4byte	.LASF31
	.byte	0x6
	.2byte	0x45b
	.byte	0xf
	.4byte	0x21c
	.byte	0x50
	.byte	0xa
	.4byte	.LASF32
	.byte	0x6
	.2byte	0x461
	.byte	0x9
	.4byte	0x22c
	.byte	0x58
	.byte	0xa
	.4byte	.LASF33
	.byte	0x6
	.2byte	0x463
	.byte	0xf
	.4byte	0x22c
	.byte	0x5c
	.byte	0xa
	.4byte	.LASF34
	.byte	0x6
	.2byte	0x46d
	.byte	0xc
	.4byte	0x75
	.byte	0x60
	.byte	0xa
	.4byte	.LASF35
	.byte	0x6
	.2byte	0x46e
	.byte	0xb
	.4byte	0x5b
	.byte	0x64
	.byte	0xa
	.4byte	.LASF36
	.byte	0x6
	.2byte	0x471
	.byte	0xb
	.4byte	0x5b
	.byte	0x65
	.byte	0
	.byte	0xb
	.4byte	0x12a
	.4byte	0x20c
	.byte	0xc
	.4byte	0x38
	.byte	0x1
	.byte	0
	.byte	0xb
	.4byte	0x5b
	.4byte	0x21c
	.byte	0xc
	.4byte	0x38
	.byte	0xf
	.byte	0
	.byte	0xb
	.4byte	0x9d
	.4byte	0x22c
	.byte	0xc
	.4byte	0x38
	.byte	0x1
	.byte	0
	.byte	0xb
	.4byte	0x8f
	.4byte	0x23c
	.byte	0xc
	.4byte	0x38
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF37
	.byte	0x6
	.2byte	0x47a
	.byte	0x3
	.4byte	0x137
	.byte	0x3
	.4byte	.LASF38
	.byte	0x7
	.byte	0x46
	.byte	0x25
	.4byte	0x255
	.byte	0x8
	.byte	0x4
	.4byte	0x25b
	.byte	0xe
	.4byte	.LASF173
	.byte	0x8
	.byte	0x4
	.4byte	0x26d
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF39
	.byte	0xf
	.4byte	0x266
	.byte	0x8
	.byte	0x4
	.4byte	0x91
	.byte	0x8
	.byte	0x4
	.4byte	0x266
	.byte	0x10
	.4byte	0x25
	.4byte	0x28d
	.byte	0x11
	.4byte	0x8f
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x75
	.byte	0x3
	.4byte	.LASF40
	.byte	0x8
	.byte	0x38
	.byte	0xd
	.4byte	0x25
	.byte	0x3
	.4byte	.LASF41
	.byte	0x9
	.byte	0x3e
	.byte	0xf
	.4byte	0x2ab
	.byte	0x8
	.byte	0x4
	.4byte	0x27e
	.byte	0x12
	.byte	0x7
	.byte	0x4
	.4byte	0x38
	.byte	0x9
	.byte	0x43
	.byte	0xe
	.4byte	0x2de
	.byte	0x13
	.4byte	.LASF42
	.byte	0
	.byte	0x13
	.4byte	.LASF43
	.byte	0x1
	.byte	0x13
	.4byte	.LASF44
	.byte	0x2
	.byte	0x13
	.4byte	.LASF45
	.byte	0x3
	.byte	0x13
	.4byte	.LASF46
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF47
	.byte	0x9
	.byte	0x49
	.byte	0x3
	.4byte	0x2b1
	.byte	0x12
	.byte	0x7
	.byte	0x4
	.4byte	0x38
	.byte	0x9
	.byte	0x4e
	.byte	0xe
	.4byte	0x30b
	.byte	0x13
	.4byte	.LASF48
	.byte	0
	.byte	0x13
	.4byte	.LASF49
	.byte	0x1
	.byte	0x13
	.4byte	.LASF50
	.byte	0x2
	.byte	0
	.byte	0x3
	.4byte	.LASF51
	.byte	0x9
	.byte	0x52
	.byte	0x3
	.4byte	0x2ea
	.byte	0x12
	.byte	0x7
	.byte	0x4
	.4byte	0x38
	.byte	0x9
	.byte	0x57
	.byte	0xe
	.4byte	0x33e
	.byte	0x13
	.4byte	.LASF52
	.byte	0
	.byte	0x13
	.4byte	.LASF53
	.byte	0x1
	.byte	0x13
	.4byte	.LASF54
	.byte	0x2
	.byte	0x13
	.4byte	.LASF55
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF56
	.byte	0x9
	.byte	0x5c
	.byte	0x3
	.4byte	0x317
	.byte	0x12
	.byte	0x7
	.byte	0x4
	.4byte	0x38
	.byte	0x9
	.byte	0x61
	.byte	0xe
	.4byte	0x36b
	.byte	0x13
	.4byte	.LASF57
	.byte	0
	.byte	0x13
	.4byte	.LASF58
	.byte	0x1
	.byte	0x13
	.4byte	.LASF59
	.byte	0x2
	.byte	0
	.byte	0x3
	.4byte	.LASF60
	.byte	0x9
	.byte	0x65
	.byte	0x3
	.4byte	0x34a
	.byte	0x12
	.byte	0x7
	.byte	0x4
	.4byte	0x38
	.byte	0x9
	.byte	0x6a
	.byte	0xe
	.4byte	0x39e
	.byte	0x13
	.4byte	.LASF61
	.byte	0
	.byte	0x13
	.4byte	.LASF62
	.byte	0x1
	.byte	0x13
	.4byte	.LASF63
	.byte	0x2
	.byte	0x13
	.4byte	.LASF64
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF65
	.byte	0x9
	.byte	0x6f
	.byte	0x3
	.4byte	0x377
	.byte	0x14
	.byte	0x20
	.byte	0x9
	.byte	0x82
	.byte	0x9
	.4byte	0x443
	.byte	0x7
	.4byte	.LASF66
	.byte	0x9
	.byte	0x83
	.byte	0xd
	.4byte	0x5b
	.byte	0
	.byte	0x7
	.4byte	.LASF67
	.byte	0x9
	.byte	0x84
	.byte	0xd
	.4byte	0x5b
	.byte	0x1
	.byte	0x7
	.4byte	.LASF68
	.byte	0x9
	.byte	0x85
	.byte	0xd
	.4byte	0x5b
	.byte	0x2
	.byte	0x7
	.4byte	.LASF69
	.byte	0x9
	.byte	0x86
	.byte	0xd
	.4byte	0x5b
	.byte	0x3
	.byte	0x7
	.4byte	.LASF70
	.byte	0x9
	.byte	0x87
	.byte	0xd
	.4byte	0x5b
	.byte	0x4
	.byte	0x7
	.4byte	.LASF71
	.byte	0x9
	.byte	0x88
	.byte	0xe
	.4byte	0x75
	.byte	0x8
	.byte	0x7
	.4byte	.LASF72
	.byte	0x9
	.byte	0x89
	.byte	0x1d
	.4byte	0x2de
	.byte	0xc
	.byte	0x7
	.4byte	.LASF73
	.byte	0x9
	.byte	0x8a
	.byte	0x19
	.4byte	0x36b
	.byte	0x10
	.byte	0x7
	.4byte	.LASF74
	.byte	0x9
	.byte	0x8b
	.byte	0x1c
	.4byte	0x30b
	.byte	0x14
	.byte	0x7
	.4byte	.LASF75
	.byte	0x9
	.byte	0x8c
	.byte	0x1f
	.4byte	0x33e
	.byte	0x18
	.byte	0x7
	.4byte	.LASF76
	.byte	0x9
	.byte	0x8d
	.byte	0x17
	.4byte	0x39e
	.byte	0x1c
	.byte	0
	.byte	0x3
	.4byte	.LASF77
	.byte	0x9
	.byte	0x8e
	.byte	0x3
	.4byte	0x3aa
	.byte	0x14
	.byte	0x50
	.byte	0x9
	.byte	0x93
	.byte	0x9
	.4byte	0x502
	.byte	0x7
	.4byte	.LASF78
	.byte	0x9
	.byte	0x94
	.byte	0xd
	.4byte	0x5b
	.byte	0
	.byte	0x7
	.4byte	.LASF79
	.byte	0x9
	.byte	0x95
	.byte	0x19
	.4byte	0x443
	.byte	0x4
	.byte	0x7
	.4byte	.LASF80
	.byte	0x9
	.byte	0x96
	.byte	0x1b
	.4byte	0x29f
	.byte	0x24
	.byte	0x7
	.4byte	.LASF81
	.byte	0x9
	.byte	0x97
	.byte	0xb
	.4byte	0x8f
	.byte	0x28
	.byte	0x7
	.4byte	.LASF82
	.byte	0x9
	.byte	0x98
	.byte	0x1b
	.4byte	0x29f
	.byte	0x2c
	.byte	0x7
	.4byte	.LASF83
	.byte	0x9
	.byte	0x99
	.byte	0xb
	.4byte	0x8f
	.byte	0x30
	.byte	0x7
	.4byte	.LASF84
	.byte	0x9
	.byte	0x9a
	.byte	0x1b
	.4byte	0x29f
	.byte	0x34
	.byte	0x7
	.4byte	.LASF85
	.byte	0x9
	.byte	0x9b
	.byte	0xb
	.4byte	0x8f
	.byte	0x38
	.byte	0x7
	.4byte	.LASF86
	.byte	0x9
	.byte	0x9c
	.byte	0x1b
	.4byte	0x29f
	.byte	0x3c
	.byte	0x7
	.4byte	.LASF87
	.byte	0x9
	.byte	0x9d
	.byte	0xb
	.4byte	0x8f
	.byte	0x40
	.byte	0x7
	.4byte	.LASF88
	.byte	0x9
	.byte	0x9e
	.byte	0x16
	.4byte	0x293
	.byte	0x44
	.byte	0x7
	.4byte	.LASF89
	.byte	0x9
	.byte	0x9f
	.byte	0x16
	.4byte	0x293
	.byte	0x48
	.byte	0x7
	.4byte	.LASF90
	.byte	0x9
	.byte	0xa0
	.byte	0xb
	.4byte	0x8f
	.byte	0x4c
	.byte	0
	.byte	0x3
	.4byte	.LASF91
	.byte	0x9
	.byte	0xa1
	.byte	0x3
	.4byte	0x44f
	.byte	0x8
	.byte	0x4
	.4byte	0x514
	.byte	0x15
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF92
	.byte	0x16
	.4byte	.LASF93
	.byte	0x1
	.byte	0x29
	.byte	0x12
	.4byte	0x502
	.byte	0x5
	.byte	0x3
	.4byte	uart_stdio
	.byte	0x17
	.4byte	.LASF94
	.byte	0x1
	.byte	0x2f
	.byte	0x10
	.4byte	0x5b
	.byte	0x17
	.4byte	.LASF95
	.byte	0x1
	.byte	0x30
	.byte	0x10
	.4byte	0x5b
	.byte	0x17
	.4byte	.LASF96
	.byte	0x1
	.byte	0x31
	.byte	0x10
	.4byte	0x5b
	.byte	0x17
	.4byte	.LASF97
	.byte	0x1
	.byte	0x32
	.byte	0x10
	.4byte	0x5b
	.byte	0xb
	.4byte	0xe3
	.4byte	0x56e
	.byte	0xc
	.4byte	0x38
	.byte	0x3
	.byte	0
	.byte	0x18
	.4byte	.LASF105
	.byte	0x1
	.byte	0x33
	.byte	0x15
	.4byte	0x55e
	.byte	0x5
	.byte	0x3
	.4byte	xHeapRegions
	.byte	0x14
	.byte	0x6
	.byte	0xa
	.byte	0x7e
	.byte	0x9
	.4byte	0x5d8
	.byte	0x7
	.4byte	.LASF98
	.byte	0xa
	.byte	0x80
	.byte	0xd
	.4byte	0x5b
	.byte	0
	.byte	0x7
	.4byte	.LASF99
	.byte	0xa
	.byte	0x81
	.byte	0xd
	.4byte	0x5b
	.byte	0x1
	.byte	0x7
	.4byte	.LASF100
	.byte	0xa
	.byte	0x82
	.byte	0xd
	.4byte	0x5b
	.byte	0x2
	.byte	0x7
	.4byte	.LASF101
	.byte	0xa
	.byte	0x83
	.byte	0xd
	.4byte	0x5b
	.byte	0x3
	.byte	0x7
	.4byte	.LASF102
	.byte	0xa
	.byte	0x84
	.byte	0xd
	.4byte	0x5b
	.byte	0x4
	.byte	0x7
	.4byte	.LASF103
	.byte	0xa
	.byte	0x85
	.byte	0xd
	.4byte	0x5b
	.byte	0x5
	.byte	0
	.byte	0x3
	.4byte	.LASF104
	.byte	0xa
	.byte	0x86
	.byte	0x2
	.4byte	0x580
	.byte	0x19
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x12e
	.byte	0x6
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.byte	0x1
	.byte	0x9c
	.4byte	0x867
	.byte	0x1a
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x130
	.byte	0x12
	.4byte	0x249
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x1b
	.4byte	0x8bd
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x1
	.2byte	0x13d
	.byte	0x5
	.4byte	0x761
	.byte	0x1c
	.4byte	0x8ca
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x1d
	.4byte	.LVL47
	.4byte	0xdd2
	.4byte	0x63f
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.byte	0x1d
	.4byte	.LVL48
	.4byte	0xdd2
	.4byte	0x656
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0
	.byte	0x1d
	.4byte	.LVL49
	.4byte	0xdde
	.4byte	0x66a
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0
	.byte	0x1d
	.4byte	.LVL50
	.4byte	0xdd2
	.4byte	0x67e
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0
	.byte	0x1d
	.4byte	.LVL51
	.4byte	0xdd2
	.4byte	0x695
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.byte	0x1d
	.4byte	.LVL52
	.4byte	0xdd2
	.4byte	0x6ac
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0
	.byte	0x1d
	.4byte	.LVL53
	.4byte	0xdd2
	.4byte	0x6c3
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0
	.byte	0x1d
	.4byte	.LVL54
	.4byte	0xdd2
	.4byte	0x6da
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.byte	0x1d
	.4byte	.LVL55
	.4byte	0xdd2
	.4byte	0x6f1
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC20
	.byte	0
	.byte	0x1d
	.4byte	.LVL56
	.4byte	0xdd2
	.4byte	0x708
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0
	.byte	0x1d
	.4byte	.LVL57
	.4byte	0xdd2
	.4byte	0x71f
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.byte	0x1d
	.4byte	.LVL58
	.4byte	0xdd2
	.4byte	0x736
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC22
	.byte	0
	.byte	0x1d
	.4byte	.LVL59
	.4byte	0xdd2
	.4byte	0x74d
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC23
	.byte	0
	.byte	0x1f
	.4byte	.LVL60
	.4byte	0xdd2
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	0x8b3
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.byte	0x1
	.2byte	0x143
	.byte	0x5
	.4byte	0x7aa
	.byte	0x20
	.4byte	.LVL62
	.4byte	0xdea
	.byte	0x20
	.4byte	.LVL63
	.4byte	0xdf7
	.byte	0x20
	.4byte	.LVL64
	.4byte	0xe03
	.byte	0x20
	.4byte	.LVL65
	.4byte	0xe0f
	.byte	0x1f
	.4byte	.LVL66
	.4byte	0xe1b
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x20
	.4byte	.LVL44
	.4byte	0xe27
	.byte	0x1d
	.4byte	.LVL45
	.4byte	0xe33
	.4byte	0x7ca
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR4
	.byte	0
	.byte	0x1d
	.4byte	.LVL46
	.4byte	0xdd2
	.4byte	0x7e1
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.byte	0x1d
	.4byte	.LVL61
	.4byte	0xe3f
	.4byte	0x7f8
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR5
	.byte	0
	.byte	0x1d
	.4byte	.LVL67
	.4byte	0xdd2
	.4byte	0x80f
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC24
	.byte	0
	.byte	0x1d
	.4byte	.LVL68
	.4byte	0xe4b
	.4byte	0x846
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	aos_loop_proc
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC25
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x400
	.byte	0x1e
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x1e
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x3f
	.byte	0x1e
	.byte	0x1
	.byte	0x5f
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0
	.byte	0x1d
	.4byte	.LVL69
	.4byte	0xdd2
	.4byte	0x85d
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC26
	.byte	0
	.byte	0x20
	.4byte	.LVL70
	.4byte	0xe58
	.byte	0
	.byte	0x21
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x11e
	.byte	0x6
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.byte	0x1
	.byte	0x9c
	.4byte	0x8b3
	.byte	0x22
	.string	"cfg"
	.byte	0x1
	.2byte	0x120
	.byte	0x17
	.4byte	0x5d8
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x1d
	.4byte	.LVL42
	.4byte	0xe65
	.4byte	0x8a2
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x1f
	.4byte	.LVL43
	.4byte	0xe65
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x108
	.byte	0xd
	.byte	0x1
	.byte	0x24
	.4byte	.LASF176
	.byte	0x1
	.byte	0xf4
	.byte	0xd
	.byte	0x1
	.4byte	0x8d7
	.byte	0x25
	.4byte	.LASF115
	.byte	0x1
	.byte	0xf6
	.byte	0xa
	.4byte	0x8d7
	.byte	0
	.byte	0xb
	.4byte	0x266
	.4byte	0x8e7
	.byte	0xc
	.4byte	0x38
	.byte	0x27
	.byte	0
	.byte	0x26
	.4byte	.LASF110
	.byte	0x1
	.byte	0xb3
	.byte	0xd
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.byte	0x1
	.byte	0x9c
	.4byte	0xb5e
	.byte	0x27
	.4byte	.LASF112
	.byte	0x1
	.byte	0xb3
	.byte	0x21
	.4byte	0x8f
	.4byte	.LLST1
	.byte	0x28
	.string	"fdt"
	.byte	0x1
	.byte	0xc7
	.byte	0xe
	.4byte	0x75
	.4byte	.LLST2
	.byte	0x29
	.4byte	.LASF107
	.byte	0x1
	.byte	0xc7
	.byte	0x17
	.4byte	0x75
	.4byte	.LLST3
	.byte	0x18
	.4byte	.LASF108
	.byte	0x1
	.byte	0xc8
	.byte	0x11
	.4byte	0xb5e
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x29
	.4byte	.LASF109
	.byte	0x1
	.byte	0xdb
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST4
	.byte	0x2a
	.4byte	0xbbf
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xcd
	.byte	0xe
	.4byte	0xa1b
	.byte	0x2b
	.4byte	0xbd0
	.4byte	.LLST5
	.byte	0x2b
	.4byte	0xbe8
	.4byte	.LLST6
	.byte	0x2b
	.4byte	0xbdc
	.4byte	.LLST7
	.byte	0x2c
	.4byte	.Ldebug_ranges0+0
	.byte	0x2d
	.4byte	0xbf4
	.4byte	.LLST8
	.byte	0x2d
	.4byte	0xc00
	.4byte	.LLST8
	.byte	0x2d
	.4byte	0xc0c
	.4byte	.LLST10
	.byte	0x20
	.4byte	.LVL8
	.4byte	0xe72
	.byte	0x1d
	.4byte	.LVL10
	.4byte	0xe7e
	.4byte	0x9c6
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x20
	.4byte	.LVL11
	.4byte	0xe8b
	.byte	0x20
	.4byte	.LVL12
	.4byte	0xe97
	.byte	0x1d
	.4byte	.LVL13
	.4byte	0xea4
	.4byte	0xa10
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0x1e
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0x1e
	.byte	0x1
	.byte	0x5e
	.byte	0x2
	.byte	0x8
	.byte	0xa1
	.byte	0x1e
	.byte	0x1
	.byte	0x5f
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x20
	.4byte	.LVL29
	.4byte	0xeb0
	.byte	0
	.byte	0
	.byte	0x20
	.4byte	.LVL4
	.4byte	0xebd
	.byte	0x20
	.4byte	.LVL5
	.4byte	0xec9
	.byte	0x20
	.4byte	.LVL6
	.4byte	0xed5
	.byte	0x20
	.4byte	.LVL14
	.4byte	0xee1
	.byte	0x1d
	.4byte	.LVL15
	.4byte	0xeed
	.4byte	0xa5b
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1d
	.4byte	.LVL17
	.4byte	0xef9
	.4byte	0xa72
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0x1d
	.4byte	.LVL18
	.4byte	0xf05
	.4byte	0xa85
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x20
	.4byte	.LVL19
	.4byte	0xf11
	.byte	0x1d
	.4byte	.LVL20
	.4byte	0xf1d
	.4byte	0xaab
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0xc
	.4byte	0x12345678
	.byte	0
	.byte	0x1d
	.4byte	.LVL21
	.4byte	0xe4b
	.4byte	0xae1
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	app_main_entry
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x400
	.byte	0x1e
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x1e
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x3f
	.byte	0x1e
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x20
	.4byte	.LVL22
	.4byte	0xf29
	.byte	0x1d
	.4byte	.LVL23
	.4byte	0xdd2
	.4byte	0xb01
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0x1d
	.4byte	.LVL24
	.4byte	0xdd2
	.4byte	0xb18
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.byte	0x1d
	.4byte	.LVL25
	.4byte	0xdd2
	.4byte	0xb2f
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.byte	0x1d
	.4byte	.LVL26
	.4byte	0xf35
	.4byte	0xb42
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1f
	.4byte	.LVL32
	.4byte	0xf42
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x1e
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0xb
	.4byte	0x260
	.4byte	0xb6e
	.byte	0xc
	.4byte	0x38
	.byte	0x1
	.byte	0
	.byte	0x26
	.4byte	.LASF111
	.byte	0x1
	.byte	0xac
	.byte	0xd
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.byte	0x1
	.byte	0x9c
	.4byte	0xbbf
	.byte	0x27
	.4byte	.LASF112
	.byte	0x1
	.byte	0xac
	.byte	0x22
	.4byte	0x8f
	.4byte	.LLST0
	.byte	0x2e
	.4byte	.LASF166
	.byte	0x1
	.byte	0xae
	.byte	0x10
	.4byte	0x25
	.4byte	0xba6
	.byte	0x2f
	.byte	0
	.byte	0x20
	.4byte	.LVL1
	.4byte	0xf4e
	.byte	0x30
	.4byte	.LVL2
	.4byte	0xf35
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x31
	.4byte	.LASF177
	.byte	0x1
	.byte	0x95
	.byte	0xc
	.4byte	0x25
	.byte	0x1
	.4byte	0xc19
	.byte	0x32
	.4byte	.LASF113
	.byte	0x1
	.byte	0x95
	.byte	0x25
	.4byte	0x260
	.byte	0x32
	.4byte	.LASF114
	.byte	0x1
	.byte	0x95
	.byte	0x35
	.4byte	0x28d
	.byte	0x33
	.string	"off"
	.byte	0x1
	.byte	0x95
	.byte	0x46
	.4byte	0x28d
	.byte	0x25
	.4byte	.LASF116
	.byte	0x1
	.byte	0x97
	.byte	0xe
	.4byte	0x75
	.byte	0x34
	.string	"fdt"
	.byte	0x1
	.byte	0x98
	.byte	0x11
	.4byte	0x50e
	.byte	0x25
	.4byte	.LASF107
	.byte	0x1
	.byte	0x99
	.byte	0xe
	.4byte	0x75
	.byte	0
	.byte	0x35
	.4byte	.LASF118
	.byte	0x1
	.byte	0x86
	.byte	0x1c
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.byte	0x1
	.byte	0x9c
	.4byte	0xc39
	.byte	0x20
	.4byte	.LVL41
	.4byte	0xf5a
	.byte	0
	.byte	0x35
	.4byte	.LASF119
	.byte	0x1
	.byte	0x70
	.byte	0x6
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.byte	0x1
	.byte	0x9c
	.4byte	0xc9e
	.byte	0x36
	.4byte	.LASF120
	.byte	0x1
	.byte	0x70
	.byte	0x34
	.4byte	0xc9e
	.byte	0x1
	.byte	0x5a
	.byte	0x36
	.4byte	.LASF121
	.byte	0x1
	.byte	0x70
	.byte	0x59
	.4byte	0xcaa
	.byte	0x1
	.byte	0x5b
	.byte	0x36
	.4byte	.LASF122
	.byte	0x1
	.byte	0x70
	.byte	0x7c
	.4byte	0x28d
	.byte	0x1
	.byte	0x5c
	.byte	0x18
	.4byte	.LASF123
	.byte	0x1
	.byte	0x75
	.byte	0x19
	.4byte	0x23c
	.byte	0x5
	.byte	0x3
	.4byte	xTimerTaskTCB.2
	.byte	0x18
	.4byte	.LASF124
	.byte	0x1
	.byte	0x76
	.byte	0x18
	.4byte	0xcb0
	.byte	0x5
	.byte	0x3
	.4byte	uxTimerTaskStack.3
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0xca4
	.byte	0x8
	.byte	0x4
	.4byte	0x23c
	.byte	0x8
	.byte	0x4
	.4byte	0x272
	.byte	0xb
	.4byte	0x91
	.4byte	0xcc1
	.byte	0x37
	.4byte	0x38
	.2byte	0x18f
	.byte	0
	.byte	0x35
	.4byte	.LASF125
	.byte	0x1
	.byte	0x58
	.byte	0x1c
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.byte	0x1
	.byte	0x9c
	.4byte	0xd26
	.byte	0x36
	.4byte	.LASF126
	.byte	0x1
	.byte	0x58
	.byte	0x49
	.4byte	0xc9e
	.byte	0x1
	.byte	0x5a
	.byte	0x36
	.4byte	.LASF127
	.byte	0x1
	.byte	0x58
	.byte	0x6d
	.4byte	0xcaa
	.byte	0x1
	.byte	0x5b
	.byte	0x36
	.4byte	.LASF128
	.byte	0x1
	.byte	0x58
	.byte	0x8f
	.4byte	0x28d
	.byte	0x1
	.byte	0x5c
	.byte	0x18
	.4byte	.LASF129
	.byte	0x1
	.byte	0x5d
	.byte	0x19
	.4byte	0x23c
	.byte	0x5
	.byte	0x3
	.4byte	xIdleTaskTCB.0
	.byte	0x18
	.4byte	.LASF130
	.byte	0x1
	.byte	0x5e
	.byte	0x18
	.4byte	0xd26
	.byte	0x5
	.byte	0x3
	.4byte	uxIdleTaskStack.1
	.byte	0
	.byte	0xb
	.4byte	0x91
	.4byte	0xd36
	.byte	0xc
	.4byte	0x38
	.byte	0x71
	.byte	0
	.byte	0x38
	.4byte	.LASF178
	.byte	0x1
	.byte	0x50
	.byte	0x1c
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.byte	0x1
	.byte	0x9c
	.byte	0x35
	.4byte	.LASF131
	.byte	0x1
	.byte	0x44
	.byte	0x1c
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.byte	0x1
	.byte	0x9c
	.4byte	0xd7b
	.byte	0x20
	.4byte	.LVL37
	.4byte	0xf66
	.byte	0x30
	.4byte	.LVL38
	.4byte	0xef9
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.byte	0
	.byte	0x35
	.4byte	.LASF132
	.byte	0x1
	.byte	0x3b
	.byte	0x6
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.byte	0x1
	.byte	0x9c
	.4byte	0xdd2
	.byte	0x27
	.4byte	.LASF133
	.byte	0x1
	.byte	0x3b
	.byte	0x31
	.4byte	0x249
	.4byte	.LLST11
	.byte	0x27
	.4byte	.LASF134
	.byte	0x1
	.byte	0x3b
	.byte	0x3e
	.4byte	0x278
	.4byte	.LLST12
	.byte	0x1d
	.4byte	.LVL35
	.4byte	0xdd2
	.4byte	0xdc8
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.byte	0x20
	.4byte	.LVL36
	.4byte	0xf72
	.byte	0
	.byte	0x39
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0xb
	.byte	0xdd
	.byte	0x5
	.byte	0x39
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0xc
	.byte	0x3
	.byte	0x5
	.byte	0x3a
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0xd
	.2byte	0x154
	.byte	0xa
	.byte	0x39
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0xe
	.byte	0xd
	.byte	0x6
	.byte	0x39
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0xf
	.byte	0x14
	.byte	0x5
	.byte	0x39
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0x10
	.byte	0x37
	.byte	0x5
	.byte	0x39
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0x11
	.byte	0x3
	.byte	0x5
	.byte	0x39
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0x12
	.byte	0x18
	.byte	0x5
	.byte	0x39
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0x9
	.byte	0xe9
	.byte	0x5
	.byte	0x39
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0x5
	.byte	0x8b
	.byte	0x6
	.byte	0x3a
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0x7
	.2byte	0x14a
	.byte	0xd
	.byte	0x3a
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0x7
	.2byte	0x497
	.byte	0x6
	.byte	0x3a
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0x13
	.2byte	0x276
	.byte	0xd
	.byte	0x39
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0x11
	.byte	0x4
	.byte	0xa
	.byte	0x3a
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0x14
	.2byte	0x1c1
	.byte	0x5
	.byte	0x39
	.4byte	.LASF150
	.4byte	.LASF150
	.byte	0x4
	.byte	0x98
	.byte	0xc
	.byte	0x3a
	.4byte	.LASF151
	.4byte	.LASF151
	.byte	0x7
	.2byte	0x558
	.byte	0xc
	.byte	0x39
	.4byte	.LASF152
	.4byte	.LASF152
	.byte	0x15
	.byte	0x81
	.byte	0x6
	.byte	0x3a
	.4byte	.LASF153
	.4byte	.LASF153
	.byte	0x7
	.2byte	0x547
	.byte	0xc
	.byte	0x39
	.4byte	.LASF154
	.4byte	.LASF154
	.byte	0x16
	.byte	0x2c
	.byte	0xb
	.byte	0x39
	.4byte	.LASF155
	.4byte	.LASF155
	.byte	0x17
	.byte	0x2c
	.byte	0x5
	.byte	0x39
	.4byte	.LASF156
	.4byte	.LASF156
	.byte	0x18
	.byte	0x13
	.byte	0x5
	.byte	0x39
	.4byte	.LASF157
	.4byte	.LASF157
	.byte	0x19
	.byte	0xd7
	.byte	0xc
	.byte	0x39
	.4byte	.LASF158
	.4byte	.LASF158
	.byte	0x17
	.byte	0x36
	.byte	0x5
	.byte	0x39
	.4byte	.LASF159
	.4byte	.LASF159
	.byte	0xb
	.byte	0xc8
	.byte	0x5
	.byte	0x39
	.4byte	.LASF160
	.4byte	.LASF160
	.byte	0x1a
	.byte	0x97
	.byte	0x5
	.byte	0x39
	.4byte	.LASF161
	.4byte	.LASF161
	.byte	0x1a
	.byte	0x9e
	.byte	0x7
	.byte	0x39
	.4byte	.LASF162
	.4byte	.LASF162
	.byte	0x19
	.byte	0xa4
	.byte	0x5
	.byte	0x39
	.4byte	.LASF163
	.4byte	.LASF163
	.byte	0x19
	.byte	0xe3
	.byte	0x6
	.byte	0x3a
	.4byte	.LASF164
	.4byte	.LASF164
	.byte	0x7
	.2byte	0x2c2
	.byte	0x6
	.byte	0x39
	.4byte	.LASF165
	.4byte	.LASF165
	.byte	0x1b
	.byte	0x5a
	.byte	0x5
	.byte	0x39
	.4byte	.LASF166
	.4byte	.LASF166
	.byte	0x1
	.byte	0xae
	.byte	0x10
	.byte	0x39
	.4byte	.LASF167
	.4byte	.LASF167
	.byte	0x1c
	.byte	0x45
	.byte	0x6
	.byte	0x39
	.4byte	.LASF168
	.4byte	.LASF168
	.byte	0x5
	.byte	0x96
	.byte	0x8
	.byte	0x39
	.4byte	.LASF169
	.4byte	.LASF169
	.byte	0x12
	.byte	0x15
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xa
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
	.byte	0xb
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
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
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0x13
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0x15
	.byte	0x26
	.byte	0
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
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
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
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1d
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
	.byte	0x1e
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1f
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0x89,0x82,0x1
	.byte	0
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x23
	.byte	0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0x24
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x28
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
	.byte	0x1
	.byte	0x55
	.byte	0x17
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
	.byte	0x49
	.byte	0x13
	.byte	0x3c
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2f
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0x30
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
	.byte	0x31
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
	.byte	0x32
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
	.byte	0x33
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
	.byte	0x34
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
	.byte	0x35
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
	.byte	0x36
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
	.byte	0x37
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x38
	.byte	0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0x39
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
	.byte	0x3a
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
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4-1
	.4byte	.LFE73
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LFE73
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL16
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL13
	.2byte	0x6
	.byte	0x3
	.4byte	.LC2
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x6
	.byte	0x3
	.4byte	.LC2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL7
	.4byte	.LVL13
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+2333
	.byte	0
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+2333
	.byte	0
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL7
	.4byte	.LVL13
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+2317
	.byte	0
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+2317
	.byte	0
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL9
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30
	.4byte	.LVL31
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
	.4byte	.LFE72
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34
	.4byte	.LFE65
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL33
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL35-1
	.4byte	.LFE65
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x64
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
	.4byte	.LFB72
	.4byte	.LFE72
	.4byte	.LFB73
	.4byte	.LFE73
	.4byte	.LFB65
	.4byte	.LFE65
	.4byte	.LFB66
	.4byte	.LFE66
	.4byte	.LFB67
	.4byte	.LFE67
	.4byte	.LFB68
	.4byte	.LFE68
	.4byte	.LFB69
	.4byte	.LFE69
	.4byte	.LFB70
	.4byte	.LFE70
	.4byte	.LFB76
	.4byte	.LFE76
	.4byte	.LFB77
	.4byte	.LFE77
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF159:
	.string	"printf"
.LASF96:
	.string	"_heap_wifi_start"
.LASF147:
	.string	"GLB_GPIO_Init"
.LASF5:
	.string	"size_t"
.LASF61:
	.string	"HOSAL_UART_MODE_POLL"
.LASF75:
	.string	"flow_control"
.LASF19:
	.string	"xSTATIC_LIST_ITEM"
.LASF44:
	.string	"HOSAL_DATA_WIDTH_7BIT"
.LASF66:
	.string	"uart_id"
.LASF54:
	.string	"HOSAL_FLOW_CONTROL_RTS"
.LASF93:
	.string	"uart_stdio"
.LASF11:
	.string	"long long unsigned int"
.LASF121:
	.string	"ppxTimerTaskStackBuffer"
.LASF127:
	.string	"ppxIdleTaskStackBuffer"
.LASF116:
	.string	"addr"
.LASF176:
	.string	"_dump_boot_info"
.LASF89:
	.string	"dma_rx_chan"
.LASF60:
	.string	"hosal_uart_parity_t"
.LASF63:
	.string	"HOSAL_UART_MODE_INT_RX"
.LASF139:
	.string	"bl_sec_init"
.LASF155:
	.string	"vfs_init"
.LASF86:
	.string	"rxdma_cb"
.LASF4:
	.string	"long long int"
.LASF1:
	.string	"signed char"
.LASF87:
	.string	"p_rxdma_arg"
.LASF125:
	.string	"vApplicationGetIdleTaskMemory"
.LASF115:
	.string	"chip_feature"
.LASF167:
	.string	"abort"
.LASF17:
	.string	"HeapRegion_t"
.LASF28:
	.string	"ucDummy7"
.LASF177:
	.string	"get_dts_addr"
.LASF3:
	.string	"long int"
.LASF173:
	.string	"tskTaskControlBlock"
.LASF52:
	.string	"HOSAL_FLOW_CONTROL_DISABLED"
.LASF131:
	.string	"vApplicationMallocFailedHook"
.LASF151:
	.string	"xTaskGetTickCountFromISR"
.LASF38:
	.string	"TaskHandle_t"
.LASF14:
	.string	"TickType_t"
.LASF140:
	.string	"hal_boot2_init"
.LASF82:
	.string	"rx_cb"
.LASF129:
	.string	"xIdleTaskTCB"
.LASF73:
	.string	"parity"
.LASF108:
	.string	"uart_node"
.LASF94:
	.string	"_heap_start"
.LASF171:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/bl602/bfl_main.c"
.LASF123:
	.string	"xTimerTaskTCB"
.LASF146:
	.string	"vTaskStartScheduler"
.LASF42:
	.string	"HOSAL_DATA_WIDTH_5BIT"
.LASF26:
	.string	"uxDummy5"
.LASF29:
	.string	"uxDummy9"
.LASF59:
	.string	"HOSAL_EVEN_PARITY"
.LASF78:
	.string	"port"
.LASF88:
	.string	"dma_tx_chan"
.LASF95:
	.string	"_heap_size"
.LASF0:
	.string	"unsigned int"
.LASF118:
	.string	"vAssertCalled"
.LASF15:
	.string	"pucStartAddress"
.LASF83:
	.string	"p_rxarg"
.LASF170:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF10:
	.string	"long unsigned int"
.LASF56:
	.string	"hosal_uart_flow_control_t"
.LASF112:
	.string	"pvParameters"
.LASF85:
	.string	"p_txdma_arg"
.LASF113:
	.string	"name"
.LASF149:
	.string	"fdt_subnode_offset"
.LASF132:
	.string	"vApplicationStackOverflowHook"
.LASF8:
	.string	"short unsigned int"
.LASF12:
	.string	"StackType_t"
.LASF57:
	.string	"HOSAL_NO_PARITY"
.LASF160:
	.string	"aos_cli_init"
.LASF128:
	.string	"pulIdleTaskStackSize"
.LASF48:
	.string	"HOSAL_STOP_BITS_1"
.LASF50:
	.string	"HOSAL_STOP_BITS_2"
.LASF30:
	.string	"uxDummy10"
.LASF114:
	.string	"start"
.LASF31:
	.string	"uxDummy12"
.LASF141:
	.string	"hal_board_cfg"
.LASF153:
	.string	"xTaskGetTickCount"
.LASF120:
	.string	"ppxTimerTaskTCBBuffer"
.LASF40:
	.string	"hosal_dma_chan_t"
.LASF105:
	.string	"xHeapRegions"
.LASF103:
	.string	"smtCtrl"
.LASF34:
	.string	"ulDummy18"
.LASF156:
	.string	"vfs_device_init"
.LASF178:
	.string	"vApplicationIdleHook"
.LASF135:
	.string	"puts"
.LASF99:
	.string	"gpioFun"
.LASF20:
	.string	"xDummy2"
.LASF102:
	.string	"drive"
.LASF80:
	.string	"tx_cb"
.LASF91:
	.string	"hosal_uart_dev_t"
.LASF119:
	.string	"vApplicationGetTimerTaskMemory"
.LASF69:
	.string	"cts_pin"
.LASF133:
	.string	"xTask"
.LASF145:
	.string	"xTaskCreate"
.LASF98:
	.string	"gpioPin"
.LASF84:
	.string	"txdma_cb"
.LASF70:
	.string	"rts_pin"
.LASF169:
	.string	"bl_sys_reset_por"
.LASF136:
	.string	"bl_chip_info"
.LASF36:
	.string	"uxDummy20"
.LASF175:
	.string	"system_early_init"
.LASF90:
	.string	"priv"
.LASF22:
	.string	"StaticListItem_t"
.LASF117:
	.string	"log_port_reset"
.LASF101:
	.string	"pullType"
.LASF81:
	.string	"p_txarg"
.LASF74:
	.string	"stop_bits"
.LASF143:
	.string	"hosal_uart_init_only_tx"
.LASF18:
	.string	"HeapRegion"
.LASF68:
	.string	"rx_pin"
.LASF92:
	.string	"_Bool"
.LASF7:
	.string	"unsigned char"
.LASF58:
	.string	"HOSAL_ODD_PARITY"
.LASF168:
	.string	"xPortGetFreeHeapSize"
.LASF124:
	.string	"uxTimerTaskStack"
.LASF100:
	.string	"gpioMode"
.LASF2:
	.string	"short int"
.LASF144:
	.string	"vPortDefineHeapRegions"
.LASF109:
	.string	"fd_console"
.LASF150:
	.string	"xPortIsInsideInterrupt"
.LASF71:
	.string	"baud_rate"
.LASF142:
	.string	"bl_sys_early_init"
.LASF157:
	.string	"aos_loop_init"
.LASF126:
	.string	"ppxIdleTaskTCBBuffer"
.LASF106:
	.string	"aos_loop_proc_task"
.LASF154:
	.string	"easyflash_init"
.LASF174:
	.string	"bfl_main"
.LASF152:
	.string	"bl_printk"
.LASF16:
	.string	"xSizeInBytes"
.LASF111:
	.string	"app_main_entry"
.LASF23:
	.string	"xSTATIC_TCB"
.LASF9:
	.string	"uint32_t"
.LASF41:
	.string	"hosal_uart_callback_t"
.LASF77:
	.string	"hosal_uart_config_t"
.LASF161:
	.string	"aos_cli_event_cb_read_get"
.LASF138:
	.string	"bl_irq_init"
.LASF39:
	.string	"char"
.LASF76:
	.string	"mode"
.LASF21:
	.string	"pvDummy3"
.LASF79:
	.string	"config"
.LASF164:
	.string	"vTaskDelete"
.LASF53:
	.string	"HOSAL_FLOW_CONTROL_CTS"
.LASF72:
	.string	"data_width"
.LASF130:
	.string	"uxIdleTaskStack"
.LASF24:
	.string	"pxDummy1"
.LASF27:
	.string	"pxDummy6"
.LASF148:
	.string	"hal_board_get_factory_addr"
.LASF163:
	.string	"aos_loop_run"
.LASF107:
	.string	"offset"
.LASF172:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/build_out/bl602"
.LASF97:
	.string	"_heap_wifi_size"
.LASF47:
	.string	"hosal_uart_data_width_t"
.LASF55:
	.string	"HOSAL_FLOW_CONTROL_CTS_RTS"
.LASF43:
	.string	"HOSAL_DATA_WIDTH_6BIT"
.LASF46:
	.string	"HOSAL_DATA_WIDTH_9BIT"
.LASF49:
	.string	"HOSAL_STOP_BITS_1_5"
.LASF25:
	.string	"xDummy3"
.LASF122:
	.string	"pulTimerTaskStackSize"
.LASF64:
	.string	"HOSAL_UART_MODE_INT"
.LASF67:
	.string	"tx_pin"
.LASF65:
	.string	"hosal_uart_mode_t"
.LASF137:
	.string	"blog_init"
.LASF51:
	.string	"hosal_uart_stop_bits_t"
.LASF35:
	.string	"ucDummy19"
.LASF134:
	.string	"pcTaskName"
.LASF6:
	.string	"uint8_t"
.LASF62:
	.string	"HOSAL_UART_MODE_INT_TX"
.LASF33:
	.string	"pvDummy15_1"
.LASF165:
	.string	"vfs_uart_init"
.LASF32:
	.string	"pvDummy15"
.LASF158:
	.string	"aos_open"
.LASF110:
	.string	"aos_loop_proc"
.LASF45:
	.string	"HOSAL_DATA_WIDTH_8BIT"
.LASF162:
	.string	"aos_poll_read_fd"
.LASF166:
	.string	"main"
.LASF13:
	.string	"UBaseType_t"
.LASF37:
	.string	"StaticTask_t"
.LASF104:
	.string	"GLB_GPIO_Cfg_Type"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
