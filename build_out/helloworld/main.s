	.file	"main.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.proc_main_entry,"ax",@progbits
	.align	1
	.type	proc_main_entry, @function
proc_main_entry:
.LFB31:
	.file 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/helloworld/helloworld/main.c"
	.loc 1 118 1
	.cfi_startproc
.LVL0:
	.loc 1 119 5
	lui	a1,%hi(event_cb_wifi_event)
	.loc 1 118 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 119 5
	li	a2,0
	addi	a1,a1,%lo(event_cb_wifi_event)
	li	a0,2
.LVL1:
	.loc 1 118 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 119 5
	call	aos_register_event_filter
.LVL2:
	.loc 1 120 5 is_stmt 1
	call	hal_wifi_start_firmware_task
.LVL3:
	.loc 1 121 5
	li	a2,0
	li	a1,1
	li	a0,2
	call	aos_post_event
.LVL4:
	.loc 1 122 5
	.loc 1 123 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 122 5
	li	a0,0
	.loc 1 123 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 122 5
	tail	vTaskDelete
.LVL5:
	.cfi_endproc
.LFE31:
	.size	proc_main_entry, .-proc_main_entry
	.section	.rodata.event_cb_wifi_event.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"66668888"
	.align	2
.LC1:
	.string	"RD_Hunonic_Mesh"
	.section	.text.event_cb_wifi_event,"ax",@progbits
	.align	1
	.type	event_cb_wifi_event, @function
event_cb_wifi_event:
.LFB30:
	.loc 1 35 1 is_stmt 1
	.cfi_startproc
.LVL6:
	.loc 1 36 5
	.loc 1 36 18 is_stmt 0
	lhu	a5,6(a0)
	.loc 1 36 5
	li	a4,7
	beq	a5,a4,.L4
	bgtu	a5,a4,.L5
	li	a4,1
	beq	a5,a4,.L6
	li	a4,2
	beq	a5,a4,.L7
	ret
.L5:
	li	a4,14
	beq	a5,a4,.L9
	ret
.L6:
	.loc 1 40 13 is_stmt 1
	.loc 1 41 13
	lui	a0,%hi(.LANCHOR0)
.LVL7:
	addi	a0,a0,%lo(.LANCHOR0)
	tail	wifi_mgmr_start_background
.LVL8:
.L7:
	.loc 1 46 13
	.loc 1 47 13
.LBB6:
.LBB7:
	.loc 1 28 5
	.loc 1 30 5
.LBE7:
.LBE6:
	.loc 1 35 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LBB12:
.LBB8:
	.loc 1 30 22
	call	wifi_mgmr_sta_enable
.LVL9:
	.loc 1 31 5 is_stmt 1
.LBE8:
.LBE12:
	.loc 1 115 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
.LBB13:
.LBB9:
	.loc 1 31 5
	lui	a2,%hi(.LC0)
	lui	a1,%hi(.LC1)
.LBE9:
.LBE13:
	.loc 1 115 1
.LBB14:
.LBB10:
	.loc 1 31 5
	li	a6,0
	li	a5,0
	li	a4,0
	li	a3,0
	addi	a2,a2,%lo(.LC0)
	addi	a1,a1,%lo(.LC1)
.LBE10:
.LBE14:
	.loc 1 115 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LBB15:
.LBB11:
	.loc 1 31 5
	tail	wifi_mgmr_sta_connect
.LVL10:
.L4:
.LBE11:
.LBE15:
	.loc 1 82 13 is_stmt 1
	.loc 1 83 13
	.loc 1 84 13
	tail	mqtt_start
.LVL11:
.L9:
	lw	a0,8(a0)
.LVL12:
.LBB16:
.LBB17:
	.loc 1 93 73
	.loc 1 94 13
	.loc 1 94 16 is_stmt 0
	beq	a0,zero,.L3
	.loc 1 96 17 is_stmt 1
	tail	vPortFree
.LVL13:
.L3:
	ret
.LBE17:
.LBE16:
	.cfi_endproc
.LFE30:
	.size	event_cb_wifi_event, .-event_cb_wifi_event
	.section	.rodata.main.str1.4,"aMS",@progbits,1
	.align	2
.LC2:
	.string	"tcp"
	.align	2
.LC3:
	.string	"axk_mqtt"
	.align	2
.LC4:
	.string	"tcp_transport"
	.align	2
.LC5:
	.string	"[OS] Starting TCP/IP Stack..."
	.align	2
.LC6:
	.string	"[OS] proc_main_entry task..."
	.align	2
.LC7:
	.string	"main_entry"
	.align	2
.LC8:
	.string	"button_task"
	.section	.text.startup.main,"ax",@progbits
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB32:
	.loc 1 126 1
	.cfi_startproc
	.loc 1 127 5
	lui	a1,%hi(.LC2)
	.loc 1 126 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 127 5
	addi	a1,a1,%lo(.LC2)
	li	a0,3
	.loc 1 126 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 127 5
	call	blog_set_level_log_component
.LVL14:
	.loc 1 128 5 is_stmt 1
	lui	a1,%hi(.LC3)
	addi	a1,a1,%lo(.LC3)
	li	a0,3
	call	blog_set_level_log_component
.LVL15:
	.loc 1 129 5
	lui	a1,%hi(.LC4)
	addi	a1,a1,%lo(.LC4)
	li	a0,3
	call	blog_set_level_log_component
.LVL16:
	.loc 1 130 5
	lui	a0,%hi(.LC5)
	addi	a0,a0,%lo(.LC5)
	call	puts
.LVL17:
	.loc 1 131 5
	li	a1,0
	li	a0,0
	call	tcpip_init
.LVL18:
	.loc 1 132 5
	lui	a0,%hi(.LC6)
	addi	a0,a0,%lo(.LC6)
	call	puts
.LVL19:
	.loc 1 133 5
	lui	a1,%hi(.LC7)
	lui	a0,%hi(proc_main_entry)
	li	a5,0
	li	a4,15
	li	a3,0
	li	a2,1024
	addi	a1,a1,%lo(.LC7)
	addi	a0,a0,%lo(proc_main_entry)
	call	xTaskCreate
.LVL20:
	.loc 1 134 5
	.loc 1 135 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 134 5
	li	a2,4096
	lui	a1,%hi(.LC8)
	lui	a0,%hi(button_task)
	.loc 1 135 1
	.loc 1 134 5
	li	a5,0
	li	a4,15
	li	a3,0
	addi	a2,a2,-2048
	addi	a1,a1,%lo(.LC8)
	addi	a0,a0,%lo(button_task)
	.loc 1 135 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 134 5
	tail	xTaskCreate
.LVL21:
	.cfi_endproc
.LFE32:
	.size	main, .-main
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
	.file 8 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/blog/blog_type.h"
	.file 9 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/blog/blog.h"
	.file 10 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 11 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/tcpip.h"
	.file 12 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 13 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hal_wifi.h"
	.file 14 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
	.file 15 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/memp.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x647
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF95
	.byte	0xc
	.4byte	.LASF96
	.4byte	.LASF97
	.4byte	.Ldebug_ranges0+0x30
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
	.4byte	.LASF98
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
	.byte	0xb
	.4byte	.LASF66
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x8
	.byte	0x22
	.byte	0xe
	.4byte	0x2c0
	.byte	0xa
	.4byte	.LASF67
	.byte	0
	.byte	0xa
	.4byte	.LASF68
	.byte	0x1
	.byte	0xa
	.4byte	.LASF69
	.byte	0x2
	.byte	0xa
	.4byte	.LASF70
	.byte	0x3
	.byte	0xa
	.4byte	.LASF71
	.byte	0x4
	.byte	0xa
	.4byte	.LASF72
	.byte	0x5
	.byte	0xa
	.4byte	.LASF73
	.byte	0x6
	.byte	0
	.byte	0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF74
	.byte	0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF75
	.byte	0xf
	.4byte	.LASF99
	.byte	0x1
	.byte	0x15
	.byte	0x14
	.4byte	0x277
	.byte	0x5
	.byte	0x3
	.4byte	conf
	.byte	0x10
	.4byte	.LASF100
	.byte	0x1
	.byte	0x7d
	.byte	0x6
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x1
	.byte	0x9c
	.4byte	0x3f0
	.byte	0x11
	.4byte	.LVL14
	.4byte	0x5ab
	.4byte	0x312
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x11
	.4byte	.LVL15
	.4byte	0x5ab
	.4byte	0x32e
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x11
	.4byte	.LVL16
	.4byte	0x5ab
	.4byte	0x34a
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0x11
	.4byte	.LVL17
	.4byte	0x5b8
	.4byte	0x361
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x11
	.4byte	.LVL18
	.4byte	0x5c4
	.4byte	0x379
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x11
	.4byte	.LVL19
	.4byte	0x5b8
	.4byte	0x390
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0x11
	.4byte	.LVL20
	.4byte	0x5d0
	.4byte	0x3c6
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	proc_main_entry
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x400
	.byte	0x12
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x12
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x3f
	.byte	0x12
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x13
	.4byte	.LVL21
	.4byte	0x5d0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x800
	.byte	0x12
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x12
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x3f
	.byte	0x12
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LASF101
	.byte	0x1
	.byte	0x75
	.byte	0xd
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x1
	.byte	0x9c
	.4byte	0x46d
	.byte	0x15
	.4byte	.LASF102
	.byte	0x1
	.byte	0x75
	.byte	0x23
	.4byte	0x8f
	.4byte	.LLST0
	.byte	0x11
	.4byte	.LVL2
	.4byte	0x5dd
	.4byte	0x437
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	event_cb_wifi_event
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x16
	.4byte	.LVL3
	.4byte	0x5e9
	.byte	0x11
	.4byte	.LVL4
	.4byte	0x5f5
	.4byte	0x45d
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x13
	.4byte	.LVL5
	.4byte	0x601
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LASF78
	.byte	0x1
	.byte	0x22
	.byte	0xd
	.byte	0x1
	.4byte	0x493
	.byte	0x18
	.4byte	.LASF76
	.byte	0x1
	.byte	0x22
	.byte	0x30
	.4byte	0xf5
	.byte	0x18
	.4byte	.LASF77
	.byte	0x1
	.byte	0x22
	.byte	0x3d
	.4byte	0x8f
	.byte	0
	.byte	0x17
	.4byte	.LASF79
	.byte	0x1
	.byte	0x1a
	.byte	0xd
	.byte	0x1
	.4byte	0x4c5
	.byte	0x18
	.4byte	.LASF80
	.byte	0x1
	.byte	0x1a
	.byte	0x24
	.4byte	0x98
	.byte	0x18
	.4byte	.LASF81
	.byte	0x1
	.byte	0x1a
	.byte	0x30
	.4byte	0x98
	.byte	0x19
	.4byte	.LASF103
	.byte	0x1
	.byte	0x1c
	.byte	0x16
	.4byte	0x233
	.byte	0
	.byte	0x1a
	.4byte	0x46d
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x1
	.byte	0x9c
	.4byte	0x5ab
	.byte	0x1b
	.4byte	0x47a
	.4byte	.LLST1
	.byte	0x1b
	.4byte	0x486
	.4byte	.LLST2
	.byte	0x1c
	.4byte	0x493
	.4byte	.LBB6
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x2f
	.byte	0xd
	.4byte	0x559
	.byte	0x1b
	.4byte	0x4a0
	.4byte	.LLST3
	.byte	0x1b
	.4byte	0x4ac
	.4byte	.LLST4
	.byte	0x1d
	.4byte	.Ldebug_ranges0+0
	.byte	0x1e
	.4byte	0x4b8
	.4byte	.LLST5
	.byte	0x16
	.4byte	.LVL9
	.4byte	0x60e
	.byte	0x13
	.4byte	.LVL10
	.4byte	0x61a
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x12
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
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
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	0x46d
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.byte	0x1
	.byte	0x22
	.byte	0xd
	.4byte	0x58a
	.byte	0x20
	.4byte	0x47a
	.byte	0x20
	.4byte	0x47a
	.byte	0x1b
	.4byte	0x486
	.4byte	.LLST6
	.byte	0x21
	.4byte	.LVL13
	.4byte	0x626
	.byte	0
	.byte	0x22
	.4byte	.LVL8
	.4byte	0x632
	.4byte	0x5a1
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0x21
	.4byte	.LVL11
	.4byte	0x63e
	.byte	0
	.byte	0x23
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0x9
	.2byte	0x158
	.byte	0x9
	.byte	0x24
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0xa
	.byte	0xdd
	.byte	0x5
	.byte	0x24
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0xb
	.byte	0x4d
	.byte	0x6
	.byte	0x23
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0xc
	.2byte	0x14a
	.byte	0xd
	.byte	0x24
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0x3
	.byte	0x83
	.byte	0x5
	.byte	0x24
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0xd
	.byte	0x8
	.byte	0x5
	.byte	0x24
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0x3
	.byte	0x99
	.byte	0x5
	.byte	0x23
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0xc
	.2byte	0x2c2
	.byte	0x6
	.byte	0x24
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0x7
	.byte	0xc6
	.byte	0x12
	.byte	0x24
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0x7
	.byte	0xd2
	.byte	0x5
	.byte	0x24
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0xe
	.byte	0x94
	.byte	0x6
	.byte	0x24
	.4byte	.LASF93
	.4byte	.LASF93
	.byte	0x7
	.byte	0xc3
	.byte	0x6
	.byte	0x24
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0x1
	.byte	0x12
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
	.byte	0x14
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
	.byte	0x15
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
	.byte	0x16
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0x18
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
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x1b
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1c
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
	.byte	0x1d
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
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
	.byte	0x20
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x21
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
	.byte	0x22
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
	.byte	0x23
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
	.byte	0x24
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
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
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
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9-1
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11-1
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL8-1
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9-1
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL11-1
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL13-1
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x6
	.byte	0x3
	.4byte	.LC1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL13-1
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LFE30
	.2byte	0x1
	.byte	0x5b
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
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	0
	.4byte	0
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF24:
	.string	"MEMP_ALTCP_PCB"
.LASF54:
	.string	"TASK_SM"
.LASF86:
	.string	"aos_register_event_filter"
.LASF38:
	.string	"lwip_internal_netif_client_data_index"
.LASF40:
	.string	"PM_MODE_STA_NONE"
.LASF87:
	.string	"hal_wifi_start_firmware_task"
.LASF2:
	.string	"short int"
.LASF80:
	.string	"ssid"
.LASF23:
	.string	"MEMP_TCP_SEG"
.LASF39:
	.string	"PM_LEVEL"
.LASF84:
	.string	"tcpip_init"
.LASF100:
	.string	"main"
.LASF81:
	.string	"password"
.LASF76:
	.string	"event"
.LASF93:
	.string	"wifi_mgmr_start_background"
.LASF16:
	.string	"value"
.LASF30:
	.string	"MEMP_SYS_TIMEOUT"
.LASF56:
	.string	"TASK_BAM"
.LASF47:
	.string	"PM_MODE_MAX"
.LASF6:
	.string	"uint8_t"
.LASF64:
	.string	"channel_nums"
.LASF71:
	.string	"BLOG_LEVEL_ERROR"
.LASF15:
	.string	"code"
.LASF99:
	.string	"conf"
.LASF22:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF90:
	.string	"wifi_mgmr_sta_enable"
.LASF9:
	.string	"uint32_t"
.LASF94:
	.string	"mqtt_start"
.LASF31:
	.string	"MEMP_NETDB"
.LASF66:
	.string	"_blog_leve"
.LASF55:
	.string	"TASK_APM"
.LASF42:
	.string	"PM_MODE_STA_MESH"
.LASF74:
	.string	"float"
.LASF60:
	.string	"TASK_API"
.LASF4:
	.string	"long long int"
.LASF11:
	.string	"long long unsigned int"
.LASF101:
	.string	"proc_main_entry"
.LASF3:
	.string	"long int"
.LASF58:
	.string	"TASK_CFG"
.LASF82:
	.string	"blog_set_level_log_component"
.LASF65:
	.string	"wifi_conf_t"
.LASF79:
	.string	"wifi_sta_connect"
.LASF46:
	.string	"PM_MODE_AP_IDLE"
.LASF91:
	.string	"wifi_mgmr_sta_connect"
.LASF77:
	.string	"private_data"
.LASF35:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF70:
	.string	"BLOG_LEVEL_WARN"
.LASF28:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF52:
	.string	"TASK_SCANU"
.LASF5:
	.string	"unsigned char"
.LASF49:
	.string	"TASK_NONE"
.LASF98:
	.string	"wifi_conf"
.LASF57:
	.string	"TASK_RXU"
.LASF41:
	.string	"PM_MODE_STA_IDLE"
.LASF63:
	.string	"country_code"
.LASF34:
	.string	"MEMP_MAX"
.LASF72:
	.string	"BLOG_LEVEL_ASSERT"
.LASF1:
	.string	"signed char"
.LASF36:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF14:
	.string	"type"
.LASF0:
	.string	"unsigned int"
.LASF50:
	.string	"TASK_MM"
.LASF7:
	.string	"uint16_t"
.LASF69:
	.string	"BLOG_LEVEL_INFO"
.LASF83:
	.string	"puts"
.LASF29:
	.string	"MEMP_IGMP_GROUP"
.LASF13:
	.string	"time"
.LASF8:
	.string	"short unsigned int"
.LASF48:
	.string	"wifi_fw_task_id"
.LASF103:
	.string	"wifi_interface"
.LASF12:
	.string	"char"
.LASF27:
	.string	"MEMP_TCPIP_MSG_API"
.LASF37:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF89:
	.string	"vTaskDelete"
.LASF43:
	.string	"PM_MODE_STA_DOZE"
.LASF97:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/helloworld/build_out/helloworld"
.LASF85:
	.string	"xTaskCreate"
.LASF32:
	.string	"MEMP_PBUF"
.LASF18:
	.string	"input_event_t"
.LASF96:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/helloworld/helloworld/main.c"
.LASF51:
	.string	"TASK_SCAN"
.LASF67:
	.string	"BLOG_LEVEL_ALL"
.LASF88:
	.string	"aos_post_event"
.LASF10:
	.string	"long unsigned int"
.LASF75:
	.string	"double"
.LASF19:
	.string	"MEMP_RAW_PCB"
.LASF92:
	.string	"vPortFree"
.LASF78:
	.string	"event_cb_wifi_event"
.LASF33:
	.string	"MEMP_PBUF_POOL"
.LASF26:
	.string	"MEMP_NETCONN"
.LASF62:
	.string	"wifi_interface_t"
.LASF44:
	.string	"PM_MODE_STA_COEX"
.LASF102:
	.string	"pvParameters"
.LASF21:
	.string	"MEMP_TCP_PCB"
.LASF73:
	.string	"BLOG_LEVEL_NEVER"
.LASF45:
	.string	"PM_MODE_STA_DOWN"
.LASF59:
	.string	"TASK_LAST_EMB"
.LASF20:
	.string	"MEMP_UDP_PCB"
.LASF68:
	.string	"BLOG_LEVEL_DEBUG"
.LASF61:
	.string	"TASK_MAX"
.LASF17:
	.string	"extra"
.LASF53:
	.string	"TASK_ME"
.LASF25:
	.string	"MEMP_NETBUF"
.LASF95:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
