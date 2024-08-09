	.file	"http_server.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.web_http_server.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"the received data:\n%s\n"
	.section	.text.web_http_server,"ax",@progbits
	.align	1
	.globl	web_http_server
	.type	web_http_server, @function
web_http_server:
.LFB5:
	.file 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/http_server.c"
	.loc 1 20 43
	.cfi_startproc
.LVL0:
	.loc 1 22 5
	.loc 1 23 5
	.loc 1 24 5
	.loc 1 25 5
	.loc 1 27 5
	.loc 1 20 43 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 27 11
	addi	a1,sp,8
	.loc 1 20 43
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 20 43
	mv	s0,a0
	.loc 1 27 11
	call	netconn_recv
.LVL1:
	.loc 1 28 5 is_stmt 1
	.loc 1 28 8 is_stmt 0
	bne	a0,zero,.L3
	.loc 1 30 9 is_stmt 1
	lw	a0,8(sp)
.LVL2:
	addi	a2,sp,6
	addi	a1,sp,12
	call	netbuf_data
.LVL3:
	.loc 1 31 9
	lw	a1,12(sp)
	lui	a0,%hi(.LC0)
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL4:
	.loc 1 33 9
	.loc 1 33 12 is_stmt 0
	lhu	a4,6(sp)
	li	a5,4
	bleu	a4,a5,.L3
	.loc 1 33 31 discriminator 1
	lw	a5,12(sp)
	.loc 1 33 25 discriminator 1
	li	a4,71
	lbu	a3,0(a5)
	bne	a3,a4,.L3
	.loc 1 33 42 discriminator 2
	lbu	a3,1(a5)
	li	a4,69
	bne	a3,a4,.L3
	.loc 1 33 59 discriminator 3
	lbu	a3,2(a5)
	li	a4,84
	bne	a3,a4,.L3
	.loc 1 33 76 discriminator 4
	lbu	a3,3(a5)
	li	a4,32
	bne	a3,a4,.L3
	.loc 1 33 93 discriminator 5
	lbu	a4,4(a5)
	li	a5,47
	bne	a4,a5,.L3
	.loc 1 35 13 is_stmt 1
	lui	a1,%hi(.LANCHOR0)
	li	a4,0
	li	a3,0
	li	a2,44
	addi	a1,a1,%lo(.LANCHOR0)
	mv	a0,s0
	call	netconn_write_partly
.LVL5:
	.loc 1 37 13
	.loc 1 39 17
	lui	a1,%hi(.LANCHOR1)
	li	a4,0
	li	a3,0
	li	a2,366
	addi	a1,a1,%lo(.LANCHOR1)
	mv	a0,s0
	call	netconn_write_partly
.LVL6:
.L3:
	.loc 1 51 5
	mv	a0,s0
	call	netconn_close
.LVL7:
	.loc 1 52 5
	lw	a0,8(sp)
	call	netbuf_delete
.LVL8:
	.loc 1 53 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL9:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	web_http_server, .-web_http_server
	.section	.text.http_server_start,"ax",@progbits
	.align	1
	.globl	http_server_start
	.type	http_server_start, @function
http_server_start:
.LFB6:
	.loc 1 56 36 is_stmt 1
	.cfi_startproc
.LVL10:
	.loc 1 58 5
	.loc 1 59 5
	.loc 1 60 5
	.loc 1 56 36 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 60 12
	li	a2,0
	li	a1,0
	li	a0,16
.LVL11:
	.loc 1 56 36
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 60 12
	call	netconn_new_with_proto_and_callback
.LVL12:
	.loc 1 61 5
	li	a1,0
	li	a2,80
	.loc 1 60 12
	mv	s0,a0
.LVL13:
	.loc 1 61 5 is_stmt 1
	call	netconn_bind
.LVL14:
	.loc 1 62 5
	li	a1,255
	mv	a0,s0
	call	netconn_listen_with_backlog
.LVL15:
.L8:
	.loc 1 63 5
	.loc 1 65 9
	.loc 1 65 15 is_stmt 0
	addi	a1,sp,12
	mv	a0,s0
	call	netconn_accept
.LVL16:
	.loc 1 66 9 is_stmt 1
	.loc 1 66 12 is_stmt 0
	bne	a0,zero,.L7
	.loc 1 68 13 is_stmt 1
	lw	a0,12(sp)
.LVL17:
	call	web_http_server
.LVL18:
	.loc 1 69 13
	lw	a0,12(sp)
	call	netconn_delete
.LVL19:
	.loc 1 63 11
	.loc 1 65 13 is_stmt 0
	j	.L8
.LVL20:
.L7:
	.loc 1 73 13 is_stmt 1
	mv	a0,s0
.LVL21:
	call	netconn_close
.LVL22:
	.loc 1 74 13
	mv	a0,s0
	call	netconn_delete
.LVL23:
	.loc 1 75 13
	.loc 1 79 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL24:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	http_server_start, .-http_server_start
	.section	.rodata.http_html_hdr,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	http_html_hdr, @object
	.size	http_html_hdr, 45
http_html_hdr:
	.string	"HTTP/1.1 200 OK\r\nContent-type: text/html\r\n\r\n"
	.section	.rodata.http_index_hml,"a"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	http_index_hml, @object
	.size	http_index_hml, 367
http_index_hml:
	.ascii	"<!DOCTYPE html><html>\n<head>\n  <meta name=\"viewport\" con"
	.ascii	"tent=\"width=device-width, initial-scale=1\">\n  <style t"
	.string	"ype=\"text/css\">\n    html, body, iframe { margin: 0; padding: 0; height: 100%; }\n    iframe { display: block; width: 100%; border: none; }\n  </style>\n<title>HELLO Ai-WB2 module</title>\n</head>\n<body>\n<h1>Hello World, from Ai-WB2 module</h1>\n</body>\n</html>\n"
	.text
.Letext0:
	.file 2 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/arch.h"
	.file 4 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/err.h"
	.file 5 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
	.file 6 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/lwip-port/arch/sys_arch.h"
	.file 7 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/ip4_addr.h"
	.file 8 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/ip_addr.h"
	.file 9 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/pbuf.h"
	.file 10 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/memp.h"
	.file 11 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netbuf.h"
	.file 12 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
	.file 13 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/api.h"
	.file 14 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x86e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF137
	.byte	0xc
	.4byte	.LASF138
	.4byte	.LASF139
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
	.byte	0x4
	.4byte	.LASF2
	.byte	0x2
	.byte	0x22
	.byte	0x15
	.4byte	0x3f
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x4
	.4byte	.LASF3
	.byte	0x2
	.byte	0x25
	.byte	0x13
	.4byte	0x52
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.byte	0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x28
	.byte	0x12
	.4byte	0x65
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.byte	0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x2e
	.byte	0x17
	.4byte	0x7f
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x4
	.4byte	.LASF10
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x92
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF11
	.byte	0x4
	.4byte	.LASF12
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0xa5
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF14
	.byte	0x5
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.byte	0x6
	.4byte	0xb5
	.byte	0x7
	.byte	0x4
	.4byte	0xb5
	.byte	0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x7d
	.byte	0x11
	.4byte	0x73
	.byte	0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x7e
	.byte	0x10
	.4byte	0x33
	.byte	0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0x7f
	.byte	0x12
	.4byte	0x86
	.byte	0x4
	.4byte	.LASF19
	.byte	0x3
	.byte	0x80
	.byte	0x11
	.4byte	0x46
	.byte	0x4
	.4byte	.LASF20
	.byte	0x3
	.byte	0x81
	.byte	0x12
	.4byte	0x99
	.byte	0x4
	.4byte	.LASF21
	.byte	0x3
	.byte	0x82
	.byte	0x11
	.4byte	0x59
	.byte	0x8
	.byte	0x5
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0x35
	.byte	0xe
	.4byte	0x184
	.byte	0x9
	.4byte	.LASF22
	.byte	0
	.byte	0xa
	.4byte	.LASF23
	.byte	0x7f
	.byte	0xa
	.4byte	.LASF24
	.byte	0x7e
	.byte	0xa
	.4byte	.LASF25
	.byte	0x7d
	.byte	0xa
	.4byte	.LASF26
	.byte	0x7c
	.byte	0xa
	.4byte	.LASF27
	.byte	0x7b
	.byte	0xa
	.4byte	.LASF28
	.byte	0x7a
	.byte	0xa
	.4byte	.LASF29
	.byte	0x79
	.byte	0xa
	.4byte	.LASF30
	.byte	0x78
	.byte	0xa
	.4byte	.LASF31
	.byte	0x77
	.byte	0xa
	.4byte	.LASF32
	.byte	0x76
	.byte	0xa
	.4byte	.LASF33
	.byte	0x75
	.byte	0xa
	.4byte	.LASF34
	.byte	0x74
	.byte	0xa
	.4byte	.LASF35
	.byte	0x73
	.byte	0xa
	.4byte	.LASF36
	.byte	0x72
	.byte	0xa
	.4byte	.LASF37
	.byte	0x71
	.byte	0xa
	.4byte	.LASF38
	.byte	0x70
	.byte	0
	.byte	0x4
	.4byte	.LASF39
	.byte	0x4
	.byte	0x60
	.byte	0xe
	.4byte	0xd3
	.byte	0x4
	.4byte	.LASF40
	.byte	0x5
	.byte	0x30
	.byte	0x22
	.4byte	0x19c
	.byte	0x7
	.byte	0x4
	.4byte	0x1a2
	.byte	0xb
	.4byte	.LASF111
	.byte	0x4
	.4byte	.LASF41
	.byte	0x6
	.byte	0x2e
	.byte	0x17
	.4byte	0x190
	.byte	0xc
	.4byte	.LASF44
	.byte	0x4
	.byte	0x7
	.byte	0x33
	.byte	0x8
	.4byte	0x1ce
	.byte	0xd
	.4byte	.LASF46
	.byte	0x7
	.byte	0x34
	.byte	0x9
	.4byte	0xf7
	.byte	0
	.byte	0
	.byte	0x4
	.4byte	.LASF42
	.byte	0x7
	.byte	0x39
	.byte	0x19
	.4byte	0x1b3
	.byte	0xe
	.4byte	.LASF43
	.byte	0x8
	.2byte	0x10e
	.byte	0x14
	.4byte	0x1ce
	.byte	0xc
	.4byte	.LASF45
	.byte	0x10
	.byte	0x9
	.byte	0xba
	.byte	0x8
	.4byte	0x25d
	.byte	0xd
	.4byte	.LASF47
	.byte	0x9
	.byte	0xbc
	.byte	0x10
	.4byte	0x25d
	.byte	0
	.byte	0xd
	.4byte	.LASF48
	.byte	0x9
	.byte	0xbf
	.byte	0x9
	.4byte	0xb3
	.byte	0x4
	.byte	0xd
	.4byte	.LASF49
	.byte	0x9
	.byte	0xc8
	.byte	0x9
	.4byte	0xdf
	.byte	0x8
	.byte	0xf
	.string	"len"
	.byte	0x9
	.byte	0xcb
	.byte	0x9
	.4byte	0xdf
	.byte	0xa
	.byte	0xd
	.4byte	.LASF50
	.byte	0x9
	.byte	0xd0
	.byte	0x8
	.4byte	0xc7
	.byte	0xc
	.byte	0xd
	.4byte	.LASF51
	.byte	0x9
	.byte	0xd3
	.byte	0x8
	.4byte	0xc7
	.byte	0xd
	.byte	0xf
	.string	"ref"
	.byte	0x9
	.byte	0xda
	.byte	0x8
	.4byte	0xc7
	.byte	0xe
	.byte	0xd
	.4byte	.LASF52
	.byte	0x9
	.byte	0xdd
	.byte	0x8
	.4byte	0xc7
	.byte	0xf
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x1e7
	.byte	0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xa
	.byte	0x34
	.byte	0xe
	.4byte	0x2d2
	.byte	0x9
	.4byte	.LASF53
	.byte	0
	.byte	0x9
	.4byte	.LASF54
	.byte	0x1
	.byte	0x9
	.4byte	.LASF55
	.byte	0x2
	.byte	0x9
	.4byte	.LASF56
	.byte	0x3
	.byte	0x9
	.4byte	.LASF57
	.byte	0x4
	.byte	0x9
	.4byte	.LASF58
	.byte	0x5
	.byte	0x9
	.4byte	.LASF59
	.byte	0x6
	.byte	0x9
	.4byte	.LASF60
	.byte	0x7
	.byte	0x9
	.4byte	.LASF61
	.byte	0x8
	.byte	0x9
	.4byte	.LASF62
	.byte	0x9
	.byte	0x9
	.4byte	.LASF63
	.byte	0xa
	.byte	0x9
	.4byte	.LASF64
	.byte	0xb
	.byte	0x9
	.4byte	.LASF65
	.byte	0xc
	.byte	0x9
	.4byte	.LASF66
	.byte	0xd
	.byte	0x9
	.4byte	.LASF67
	.byte	0xe
	.byte	0x9
	.4byte	.LASF68
	.byte	0xf
	.byte	0
	.byte	0x10
	.4byte	.LASF75
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xc
	.byte	0x71
	.byte	0x6
	.4byte	0x2f7
	.byte	0x9
	.4byte	.LASF69
	.byte	0
	.byte	0x9
	.4byte	.LASF70
	.byte	0x1
	.byte	0x9
	.4byte	.LASF71
	.byte	0x2
	.byte	0
	.byte	0xc
	.4byte	.LASF72
	.byte	0x14
	.byte	0xb
	.byte	0x3c
	.byte	0x8
	.4byte	0x351
	.byte	0xf
	.string	"p"
	.byte	0xb
	.byte	0x3d
	.byte	0x10
	.4byte	0x25d
	.byte	0
	.byte	0xf
	.string	"ptr"
	.byte	0xb
	.byte	0x3d
	.byte	0x14
	.4byte	0x25d
	.byte	0x4
	.byte	0xd
	.4byte	.LASF46
	.byte	0xb
	.byte	0x3e
	.byte	0xd
	.4byte	0x1da
	.byte	0x8
	.byte	0xd
	.4byte	.LASF73
	.byte	0xb
	.byte	0x3f
	.byte	0x9
	.4byte	0xdf
	.byte	0xc
	.byte	0xd
	.4byte	.LASF51
	.byte	0xb
	.byte	0x41
	.byte	0x8
	.4byte	0xc7
	.byte	0xe
	.byte	0xd
	.4byte	.LASF74
	.byte	0xb
	.byte	0x42
	.byte	0x9
	.4byte	0xdf
	.byte	0x10
	.byte	0
	.byte	0x10
	.4byte	.LASF76
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xd
	.byte	0x71
	.byte	0x6
	.4byte	0x388
	.byte	0x9
	.4byte	.LASF77
	.byte	0
	.byte	0x9
	.4byte	.LASF78
	.byte	0x10
	.byte	0x9
	.4byte	.LASF79
	.byte	0x20
	.byte	0x9
	.4byte	.LASF80
	.byte	0x21
	.byte	0x9
	.4byte	.LASF81
	.byte	0x22
	.byte	0x9
	.4byte	.LASF82
	.byte	0x40
	.byte	0
	.byte	0x10
	.4byte	.LASF83
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xd
	.byte	0x93
	.byte	0x6
	.4byte	0x3b9
	.byte	0x9
	.4byte	.LASF84
	.byte	0
	.byte	0x9
	.4byte	.LASF85
	.byte	0x1
	.byte	0x9
	.4byte	.LASF86
	.byte	0x2
	.byte	0x9
	.4byte	.LASF87
	.byte	0x3
	.byte	0x9
	.4byte	.LASF88
	.byte	0x4
	.byte	0
	.byte	0x10
	.4byte	.LASF89
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0xd
	.byte	0xb5
	.byte	0x6
	.4byte	0x3ea
	.byte	0x9
	.4byte	.LASF90
	.byte	0
	.byte	0x9
	.4byte	.LASF91
	.byte	0x1
	.byte	0x9
	.4byte	.LASF92
	.byte	0x2
	.byte	0x9
	.4byte	.LASF93
	.byte	0x3
	.byte	0x9
	.4byte	.LASF94
	.byte	0x4
	.byte	0
	.byte	0x4
	.4byte	.LASF95
	.byte	0xd
	.byte	0xd7
	.byte	0x11
	.4byte	0x3f6
	.byte	0x7
	.byte	0x4
	.4byte	0x3fc
	.byte	0x11
	.4byte	0x411
	.byte	0x12
	.4byte	0x411
	.byte	0x12
	.4byte	0x3b9
	.byte	0x12
	.4byte	0xdf
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x417
	.byte	0xc
	.4byte	.LASF96
	.byte	0x3c
	.byte	0xd
	.byte	0xda
	.byte	0x8
	.4byte	0x4fd
	.byte	0xd
	.4byte	.LASF97
	.byte	0xd
	.byte	0xdc
	.byte	0x15
	.4byte	0x351
	.byte	0
	.byte	0xd
	.4byte	.LASF98
	.byte	0xd
	.byte	0xde
	.byte	0x16
	.4byte	0x388
	.byte	0x4
	.byte	0xf
	.string	"pcb"
	.byte	0xd
	.byte	0xe5
	.byte	0x5
	.4byte	0x4fd
	.byte	0x8
	.byte	0xd
	.4byte	.LASF99
	.byte	0xd
	.byte	0xe7
	.byte	0x9
	.4byte	0x184
	.byte	0xc
	.byte	0xd
	.4byte	.LASF100
	.byte	0xd
	.byte	0xee
	.byte	0xe
	.4byte	0x1a7
	.byte	0x10
	.byte	0xd
	.4byte	.LASF101
	.byte	0xd
	.byte	0xf2
	.byte	0xe
	.4byte	0x1a7
	.byte	0x14
	.byte	0xd
	.4byte	.LASF102
	.byte	0xd
	.byte	0xf7
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.byte	0xd
	.4byte	.LASF103
	.byte	0xd
	.byte	0xfb
	.byte	0x7
	.4byte	0x25
	.byte	0x1c
	.byte	0x13
	.4byte	.LASF104
	.byte	0xd
	.2byte	0x100
	.byte	0x9
	.4byte	0x103
	.byte	0x20
	.byte	0x13
	.4byte	.LASF105
	.byte	0xd
	.2byte	0x105
	.byte	0x9
	.4byte	0xf7
	.byte	0x24
	.byte	0x13
	.4byte	.LASF106
	.byte	0xd
	.2byte	0x10a
	.byte	0x7
	.4byte	0x25
	.byte	0x28
	.byte	0x13
	.4byte	.LASF107
	.byte	0xd
	.2byte	0x10e
	.byte	0x7
	.4byte	0x25
	.byte	0x2c
	.byte	0x13
	.4byte	.LASF108
	.byte	0xd
	.2byte	0x112
	.byte	0x9
	.4byte	0xeb
	.byte	0x30
	.byte	0x13
	.4byte	.LASF51
	.byte	0xd
	.2byte	0x115
	.byte	0x8
	.4byte	0xc7
	.byte	0x32
	.byte	0x13
	.4byte	.LASF109
	.byte	0xd
	.2byte	0x11a
	.byte	0x13
	.4byte	0x567
	.byte	0x34
	.byte	0x13
	.4byte	.LASF110
	.byte	0xd
	.2byte	0x11d
	.byte	0x14
	.4byte	0x3ea
	.byte	0x38
	.byte	0
	.byte	0x14
	.byte	0x4
	.byte	0xd
	.byte	0xe0
	.byte	0x3
	.4byte	0x536
	.byte	0x15
	.string	"ip"
	.byte	0xd
	.byte	0xe1
	.byte	0x14
	.4byte	0x53b
	.byte	0x15
	.string	"tcp"
	.byte	0xd
	.byte	0xe2
	.byte	0x15
	.4byte	0x546
	.byte	0x15
	.string	"udp"
	.byte	0xd
	.byte	0xe3
	.byte	0x15
	.4byte	0x551
	.byte	0x15
	.string	"raw"
	.byte	0xd
	.byte	0xe4
	.byte	0x15
	.4byte	0x55c
	.byte	0
	.byte	0xb
	.4byte	.LASF112
	.byte	0x7
	.byte	0x4
	.4byte	0x536
	.byte	0xb
	.4byte	.LASF113
	.byte	0x7
	.byte	0x4
	.4byte	0x541
	.byte	0xb
	.4byte	.LASF114
	.byte	0x7
	.byte	0x4
	.4byte	0x54c
	.byte	0xb
	.4byte	.LASF115
	.byte	0x7
	.byte	0x4
	.4byte	0x557
	.byte	0xb
	.4byte	.LASF116
	.byte	0x7
	.byte	0x4
	.4byte	0x562
	.byte	0x16
	.4byte	0xbc
	.4byte	0x57d
	.byte	0x17
	.4byte	0x2c
	.byte	0x2c
	.byte	0
	.byte	0x6
	.4byte	0x56d
	.byte	0x18
	.4byte	.LASF117
	.byte	0x1
	.byte	0x3
	.byte	0x13
	.4byte	0x57d
	.byte	0x5
	.byte	0x3
	.4byte	http_html_hdr
	.byte	0x16
	.4byte	0xbc
	.4byte	0x5a5
	.byte	0x19
	.4byte	0x2c
	.2byte	0x16e
	.byte	0
	.byte	0x6
	.4byte	0x594
	.byte	0x18
	.4byte	.LASF118
	.byte	0x1
	.byte	0x5
	.byte	0x13
	.4byte	0x5a5
	.byte	0x5
	.byte	0x3
	.4byte	http_index_hml
	.byte	0x1a
	.4byte	.LASF121
	.byte	0x1
	.byte	0x38
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x6b8
	.byte	0x1b
	.4byte	.LASF123
	.byte	0x1
	.byte	0x38
	.byte	0x1e
	.4byte	0xb3
	.4byte	.LLST2
	.byte	0x1c
	.4byte	.LASF119
	.byte	0x1
	.byte	0x3a
	.byte	0x15
	.4byte	0x411
	.4byte	.LLST3
	.byte	0x18
	.4byte	.LASF120
	.byte	0x1
	.byte	0x3a
	.byte	0x1c
	.4byte	0x411
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x1d
	.string	"err"
	.byte	0x1
	.byte	0x3b
	.byte	0xb
	.4byte	0x184
	.4byte	.LLST4
	.byte	0x1e
	.4byte	.LVL12
	.4byte	0x7e5
	.4byte	0x62e
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x40
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x1f
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1e
	.4byte	.LVL14
	.4byte	0x7f2
	.4byte	0x64d
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
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
	.byte	0x8
	.byte	0x50
	.byte	0
	.byte	0x1e
	.4byte	.LVL15
	.4byte	0x7ff
	.4byte	0x667
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0x1e
	.4byte	.LVL16
	.4byte	0x80c
	.4byte	0x681
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0x20
	.4byte	.LVL18
	.4byte	0x6b8
	.byte	0x20
	.4byte	.LVL19
	.4byte	0x819
	.byte	0x1e
	.4byte	.LVL22
	.4byte	0x826
	.4byte	0x6a7
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LVL23
	.4byte	0x819
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LASF122
	.byte	0x1
	.byte	0x14
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x7df
	.byte	0x1b
	.4byte	.LASF119
	.byte	0x1
	.byte	0x14
	.byte	0x26
	.4byte	0x411
	.4byte	.LLST0
	.byte	0x18
	.4byte	.LASF124
	.byte	0x1
	.byte	0x16
	.byte	0x14
	.4byte	0x7df
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x22
	.string	"buf"
	.byte	0x1
	.byte	0x17
	.byte	0xb
	.4byte	0xc1
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x18
	.4byte	.LASF125
	.byte	0x1
	.byte	0x18
	.byte	0xb
	.4byte	0xdf
	.byte	0x2
	.byte	0x91
	.byte	0x66
	.byte	0x1d
	.string	"err"
	.byte	0x1
	.byte	0x19
	.byte	0xb
	.4byte	0x184
	.4byte	.LLST1
	.byte	0x1e
	.4byte	.LVL1
	.4byte	0x833
	.4byte	0x735
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x1e
	.4byte	.LVL3
	.4byte	0x840
	.4byte	0x74f
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x1f
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x66
	.byte	0
	.byte	0x1e
	.4byte	.LVL4
	.4byte	0x84c
	.4byte	0x766
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x1e
	.4byte	.LVL5
	.4byte	0x858
	.4byte	0x793
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x1f
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x2c
	.byte	0x1f
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x1f
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1e
	.4byte	.LVL6
	.4byte	0x858
	.4byte	0x7c1
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0x1f
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x16e
	.byte	0x1f
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x30
	.byte	0x1f
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x1e
	.4byte	.LVL7
	.4byte	0x826
	.4byte	0x7d5
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x20
	.4byte	.LVL8
	.4byte	0x865
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x2f7
	.byte	0x23
	.4byte	.LASF126
	.4byte	.LASF126
	.byte	0xd
	.2byte	0x138
	.byte	0x11
	.byte	0x23
	.4byte	.LASF127
	.4byte	.LASF127
	.byte	0xd
	.2byte	0x146
	.byte	0x7
	.byte	0x23
	.4byte	.LASF128
	.4byte	.LASF128
	.byte	0xd
	.2byte	0x14a
	.byte	0x7
	.byte	0x23
	.4byte	.LASF129
	.4byte	.LASF129
	.byte	0xd
	.2byte	0x14d
	.byte	0x7
	.byte	0x23
	.4byte	.LASF130
	.4byte	.LASF130
	.byte	0xd
	.2byte	0x13b
	.byte	0x7
	.byte	0x23
	.4byte	.LASF131
	.4byte	.LASF131
	.byte	0xd
	.2byte	0x15e
	.byte	0x7
	.byte	0x23
	.4byte	.LASF132
	.4byte	.LASF132
	.byte	0xd
	.2byte	0x14e
	.byte	0x7
	.byte	0x24
	.4byte	.LASF133
	.4byte	.LASF133
	.byte	0xb
	.byte	0x52
	.byte	0x7
	.byte	0x24
	.4byte	.LASF134
	.4byte	.LASF134
	.byte	0xe
	.byte	0xc8
	.byte	0x5
	.byte	0x23
	.4byte	.LASF135
	.4byte	.LASF135
	.byte	0xd
	.2byte	0x157
	.byte	0x7
	.byte	0x24
	.4byte	.LASF136
	.4byte	.LASF136
	.byte	0xb
	.byte	0x4b
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0x9
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
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
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
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
	.byte	0x11
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0x14
	.byte	0x17
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
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0x5
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
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0x1d
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
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
.LLST2:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL13
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LVL21
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
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL9
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF87:
	.string	"NETCONN_CONNECT"
.LASF104:
	.string	"send_timeout"
.LASF54:
	.string	"MEMP_UDP_PCB"
.LASF64:
	.string	"MEMP_SYS_TIMEOUT"
.LASF32:
	.string	"ERR_ISCONN"
.LASF45:
	.string	"pbuf"
.LASF22:
	.string	"ERR_OK"
.LASF103:
	.string	"socket"
.LASF65:
	.string	"MEMP_NETDB"
.LASF136:
	.string	"netbuf_delete"
.LASF120:
	.string	"newconn"
.LASF97:
	.string	"type"
.LASF134:
	.string	"printf"
.LASF14:
	.string	"long long unsigned int"
.LASF41:
	.string	"sys_mbox_t"
.LASF21:
	.string	"s32_t"
.LASF57:
	.string	"MEMP_TCP_SEG"
.LASF40:
	.string	"QueueHandle_t"
.LASF47:
	.string	"next"
.LASF118:
	.string	"http_index_hml"
.LASF3:
	.string	"int16_t"
.LASF7:
	.string	"long long int"
.LASF1:
	.string	"signed char"
.LASF79:
	.string	"NETCONN_UDP"
.LASF30:
	.string	"ERR_USE"
.LASF96:
	.string	"netconn"
.LASF25:
	.string	"ERR_TIMEOUT"
.LASF98:
	.string	"state"
.LASF6:
	.string	"long int"
.LASF119:
	.string	"conn"
.LASF53:
	.string	"MEMP_RAW_PCB"
.LASF78:
	.string	"NETCONN_TCP"
.LASF44:
	.string	"ip4_addr"
.LASF71:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF34:
	.string	"ERR_IF"
.LASF10:
	.string	"uint16_t"
.LASF121:
	.string	"http_server_start"
.LASF115:
	.string	"raw_pcb"
.LASF56:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF88:
	.string	"NETCONN_CLOSE"
.LASF50:
	.string	"type_internal"
.LASF73:
	.string	"port"
.LASF52:
	.string	"if_idx"
.LASF83:
	.string	"netconn_state"
.LASF0:
	.string	"unsigned int"
.LASF16:
	.string	"u8_t"
.LASF63:
	.string	"MEMP_IGMP_GROUP"
.LASF82:
	.string	"NETCONN_RAW"
.LASF100:
	.string	"recvmbox"
.LASF13:
	.string	"long unsigned int"
.LASF31:
	.string	"ERR_ALREADY"
.LASF20:
	.string	"u32_t"
.LASF55:
	.string	"MEMP_TCP_PCB"
.LASF76:
	.string	"netconn_type"
.LASF11:
	.string	"short unsigned int"
.LASF42:
	.string	"ip4_addr_t"
.LASF86:
	.string	"NETCONN_LISTEN"
.LASF110:
	.string	"callback"
.LASF85:
	.string	"NETCONN_WRITE"
.LASF131:
	.string	"netconn_close"
.LASF68:
	.string	"MEMP_MAX"
.LASF43:
	.string	"ip_addr_t"
.LASF39:
	.string	"err_t"
.LASF49:
	.string	"tot_len"
.LASF48:
	.string	"payload"
.LASF123:
	.string	"param"
.LASF132:
	.string	"netconn_recv"
.LASF117:
	.string	"http_html_hdr"
.LASF124:
	.string	"inputbuf"
.LASF95:
	.string	"netconn_callback"
.LASF102:
	.string	"mbox_threads_waiting"
.LASF138:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/http_server.c"
.LASF27:
	.string	"ERR_INPROGRESS"
.LASF99:
	.string	"pending_err"
.LASF19:
	.string	"s16_t"
.LASF28:
	.string	"ERR_VAL"
.LASF107:
	.string	"recv_avail"
.LASF135:
	.string	"netconn_write_partly"
.LASF111:
	.string	"QueueDefinition"
.LASF108:
	.string	"linger"
.LASF5:
	.string	"int32_t"
.LASF9:
	.string	"unsigned char"
.LASF38:
	.string	"ERR_ARG"
.LASF33:
	.string	"ERR_CONN"
.LASF70:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF4:
	.string	"short int"
.LASF94:
	.string	"NETCONN_EVT_ERROR"
.LASF72:
	.string	"netbuf"
.LASF91:
	.string	"NETCONN_EVT_RCVMINUS"
.LASF125:
	.string	"buflen"
.LASF46:
	.string	"addr"
.LASF81:
	.string	"NETCONN_UDPNOCHKSUM"
.LASF69:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF17:
	.string	"s8_t"
.LASF126:
	.string	"netconn_new_with_proto_and_callback"
.LASF114:
	.string	"udp_pcb"
.LASF36:
	.string	"ERR_RST"
.LASF12:
	.string	"uint32_t"
.LASF80:
	.string	"NETCONN_UDPLITE"
.LASF61:
	.string	"MEMP_TCPIP_MSG_API"
.LASF35:
	.string	"ERR_ABRT"
.LASF15:
	.string	"char"
.LASF109:
	.string	"current_msg"
.LASF92:
	.string	"NETCONN_EVT_SENDPLUS"
.LASF59:
	.string	"MEMP_NETBUF"
.LASF74:
	.string	"toport_chksum"
.LASF112:
	.string	"ip_pcb"
.LASF60:
	.string	"MEMP_NETCONN"
.LASF58:
	.string	"MEMP_ALTCP_PCB"
.LASF67:
	.string	"MEMP_PBUF_POOL"
.LASF129:
	.string	"netconn_accept"
.LASF122:
	.string	"web_http_server"
.LASF37:
	.string	"ERR_CLSD"
.LASF26:
	.string	"ERR_RTE"
.LASF2:
	.string	"int8_t"
.LASF106:
	.string	"recv_bufsize"
.LASF18:
	.string	"u16_t"
.LASF24:
	.string	"ERR_BUF"
.LASF139:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/build_out/config_wifi"
.LASF133:
	.string	"netbuf_data"
.LASF75:
	.string	"lwip_internal_netif_client_data_index"
.LASF128:
	.string	"netconn_listen_with_backlog"
.LASF137:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
.LASF8:
	.string	"uint8_t"
.LASF51:
	.string	"flags"
.LASF89:
	.string	"netconn_evt"
.LASF77:
	.string	"NETCONN_INVALID"
.LASF130:
	.string	"netconn_delete"
.LASF90:
	.string	"NETCONN_EVT_RCVPLUS"
.LASF29:
	.string	"ERR_WOULDBLOCK"
.LASF84:
	.string	"NETCONN_NONE"
.LASF116:
	.string	"api_msg"
.LASF101:
	.string	"acceptmbox"
.LASF93:
	.string	"NETCONN_EVT_SENDMINUS"
.LASF105:
	.string	"recv_timeout"
.LASF66:
	.string	"MEMP_PBUF"
.LASF23:
	.string	"ERR_MEM"
.LASF113:
	.string	"tcp_pcb"
.LASF62:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF127:
	.string	"netconn_bind"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
