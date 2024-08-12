	.file	"main.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.main.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"tcp"
	.align	2
.LC1:
	.string	"axk_mqtt"
	.align	2
.LC2:
	.string	"tcp_transport"
	.align	2
.LC3:
	.string	"[OS] Starting TCP/IP Stack..."
	.align	2
.LC4:
	.string	"[OS] button_manual_task ..."
	.align	2
.LC5:
	.string	"button_manual_task"
	.align	2
.LC6:
	.string	"wifi execute"
	.section	.text.startup.main,"ax",@progbits
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB29:
	.file 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/main.c"
	.loc 1 10 1
	.cfi_startproc
	.loc 1 11 5
	lui	a1,%hi(.LC0)
	.loc 1 10 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 11 5
	addi	a1,a1,%lo(.LC0)
	li	a0,3
	.loc 1 10 1
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 11 5
	call	blog_set_level_log_component
.LVL0:
	.loc 1 12 5 is_stmt 1
	lui	a1,%hi(.LC1)
	addi	a1,a1,%lo(.LC1)
	li	a0,3
	call	blog_set_level_log_component
.LVL1:
	.loc 1 13 5
	lui	a1,%hi(.LC2)
	addi	a1,a1,%lo(.LC2)
	li	a0,3
	call	blog_set_level_log_component
.LVL2:
	.loc 1 14 5
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	call	puts
.LVL3:
	.loc 1 15 5
	li	a1,0
	li	a0,0
	call	tcpip_init
.LVL4:
	.loc 1 17 5
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	call	puts
.LVL5:
	.loc 1 19 5
	li	s0,4096
	lui	a1,%hi(.LC5)
	lui	a0,%hi(button_manual_task)
	addi	a2,s0,-2048
	li	a5,0
	li	a4,15
	li	a3,0
	addi	a1,a1,%lo(.LC5)
	addi	a0,a0,%lo(button_manual_task)
	call	xTaskCreate
.LVL6:
	.loc 1 20 5
	addi	a2,s0,-1024
	.loc 1 21 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 20 5
	lui	a1,%hi(.LC6)
	lui	a0,%hi(wifi_execute)
	.loc 1 21 1
	.loc 1 20 5
	li	a5,0
	li	a4,15
	li	a3,0
	addi	a1,a1,%lo(.LC6)
	addi	a0,a0,%lo(wifi_execute)
	.loc 1 21 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 20 5
	tail	xTaskCreate
.LVL7:
	.cfi_endproc
.LFE29:
	.size	main, .-main
	.text
.Letext0:
	.file 2 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/blog/blog.h"
	.file 3 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.file 4 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/tcpip.h"
	.file 5 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
	.file 6 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/blog/blog_type.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1fa
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF24
	.byte	0xc
	.4byte	.LASF25
	.4byte	.LASF26
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF1
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF2
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF3
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x4
	.byte	0x7
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
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x4
	.4byte	.LASF27
	.byte	0x7
	.byte	0x4
	.4byte	0x64
	.byte	0x6
	.byte	0x22
	.byte	0xe
	.4byte	0xaf
	.byte	0x5
	.4byte	.LASF10
	.byte	0
	.byte	0x5
	.4byte	.LASF11
	.byte	0x1
	.byte	0x5
	.4byte	.LASF12
	.byte	0x2
	.byte	0x5
	.4byte	.LASF13
	.byte	0x3
	.byte	0x5
	.4byte	.LASF14
	.byte	0x4
	.byte	0x5
	.4byte	.LASF15
	.byte	0x5
	.byte	0x5
	.4byte	.LASF16
	.byte	0x6
	.byte	0
	.byte	0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF17
	.byte	0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF18
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF19
	.byte	0x6
	.4byte	.LASF28
	.byte	0x1
	.byte	0x9
	.byte	0x6
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x1
	.byte	0x9c
	.4byte	0x1cb
	.byte	0x7
	.4byte	.LVL0
	.4byte	0x1cb
	.4byte	0xf6
	.byte	0x8
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0x8
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x7
	.4byte	.LVL1
	.4byte	0x1cb
	.4byte	0x112
	.byte	0x8
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0x8
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x7
	.4byte	.LVL2
	.4byte	0x1cb
	.4byte	0x12e
	.byte	0x8
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0x8
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x7
	.4byte	.LVL3
	.4byte	0x1d8
	.4byte	0x145
	.byte	0x8
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x7
	.4byte	.LVL4
	.4byte	0x1e4
	.4byte	0x15d
	.byte	0x8
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x8
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x7
	.4byte	.LVL5
	.4byte	0x1d8
	.4byte	0x174
	.byte	0x8
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0x7
	.4byte	.LVL6
	.4byte	0x1f0
	.4byte	0x1a1
	.byte	0x8
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0x8
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x78
	.byte	0x80,0x70
	.byte	0x8
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x8
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x3f
	.byte	0x8
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x9
	.4byte	.LVL7
	.4byte	0x1f0
	.byte	0x8
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0x8
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0xc00
	.byte	0x8
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x8
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x3f
	.byte	0x8
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0xa
	.4byte	.LASF20
	.4byte	.LASF20
	.byte	0x2
	.2byte	0x158
	.byte	0x9
	.byte	0xb
	.4byte	.LASF21
	.4byte	.LASF21
	.byte	0x3
	.byte	0xdd
	.byte	0x5
	.byte	0xb
	.4byte	.LASF22
	.4byte	.LASF22
	.byte	0x4
	.byte	0x4d
	.byte	0x6
	.byte	0xa
	.4byte	.LASF23
	.4byte	.LASF23
	.byte	0x5
	.2byte	0x14a
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
	.byte	0x5
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x6
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
	.byte	0x7
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
	.byte	0x8
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xa
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
	.byte	0xb
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
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF3:
	.string	"long long int"
.LASF15:
	.string	"BLOG_LEVEL_ASSERT"
.LASF8:
	.string	"unsigned int"
.LASF21:
	.string	"puts"
.LASF22:
	.string	"tcpip_init"
.LASF27:
	.string	"_blog_leve"
.LASF25:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/main.c"
.LASF26:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/build_out/config_wifi"
.LASF6:
	.string	"long unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF23:
	.string	"xTaskCreate"
.LASF12:
	.string	"BLOG_LEVEL_INFO"
.LASF4:
	.string	"unsigned char"
.LASF28:
	.string	"main"
.LASF16:
	.string	"BLOG_LEVEL_NEVER"
.LASF2:
	.string	"long int"
.LASF18:
	.string	"double"
.LASF13:
	.string	"BLOG_LEVEL_WARN"
.LASF19:
	.string	"_Bool"
.LASF11:
	.string	"BLOG_LEVEL_DEBUG"
.LASF5:
	.string	"short unsigned int"
.LASF0:
	.string	"signed char"
.LASF20:
	.string	"blog_set_level_log_component"
.LASF17:
	.string	"float"
.LASF10:
	.string	"BLOG_LEVEL_ALL"
.LASF1:
	.string	"short int"
.LASF14:
	.string	"BLOG_LEVEL_ERROR"
.LASF24:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF9:
	.string	"char"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
