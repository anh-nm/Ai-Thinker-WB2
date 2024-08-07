	.file	"ethernetif.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.low_level_output.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"---------------Sending packet(%d)\r\n"
	.section	.text.low_level_output,"ax",@progbits
	.align	1
	.type	low_level_output, @function
low_level_output:
.LFB6:
	.file 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/lwip-port/FreeRTOS/ethernetif.c"
	.loc 1 159 1
	.cfi_startproc
.LVL0:
	.loc 1 160 3
	.loc 1 162 3
	.loc 1 159 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 162 3
	lui	a5,%hi(.LANCHOR0)
	.loc 1 159 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 162 3
	addi	a5,a5,%lo(.LANCHOR0)
	lw	a1,0(a5)
.LVL1:
	lui	a0,%hi(.LC0)
.LVL2:
	addi	a0,a0,%lo(.LC0)
	addi	a4,a1,1
	sw	a4,0(a5)
	call	printf
.LVL3:
	.loc 1 163 3 is_stmt 1
	.loc 1 164 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	low_level_output, .-low_level_output
	.section	.rodata.ethernetif_init.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"lwip"
	.section	.text.ethernetif_init,"ax",@progbits
	.align	1
	.globl	ethernetif_init
	.type	ethernetif_init, @function
ethernetif_init:
.LFB7:
	.loc 1 179 1 is_stmt 1
	.cfi_startproc
.LVL4:
	.loc 1 180 3
	.loc 1 180 8
	.loc 1 180 8
	.loc 1 180 18
	.loc 1 184 3
	.loc 1 184 19 is_stmt 0
	lui	a5,%hi(.LC1)
	addi	a5,a5,%lo(.LC1)
	sw	a5,52(a0)
	.loc 1 187 3 is_stmt 1
	.loc 1 188 3
	.loc 1 190 3
	.loc 1 190 17 is_stmt 0
	lui	a5,%hi(etharp_output)
	addi	a5,a5,%lo(etharp_output)
	sw	a5,20(a0)
	.loc 1 191 3 is_stmt 1
	.loc 1 191 21 is_stmt 0
	lui	a5,%hi(low_level_output)
	addi	a5,a5,%lo(low_level_output)
	sw	a5,24(a0)
	.loc 1 194 3 is_stmt 1
.LVL5:
.LBB4:
.LBB5:
	.loc 1 80 3
	.loc 1 83 3
	.loc 1 84 3
	.loc 1 85 3
	.loc 1 86 3
	.loc 1 87 3
	.loc 1 88 3
	.loc 1 91 3
	.loc 1 94 3
	.loc 1 91 14 is_stmt 0
	li	a5,1342177280
	addi	a5,a5,1500
	sw	a5,56(a0)
	.loc 1 85 20
	li	a5,16830464
	addi	a5,a5,-1725
	sw	a5,60(a0)
	.loc 1 80 21
	li	a5,1953697792
	addi	a5,a5,-1530
	sw	a5,64(a0)
.LVL6:
.LBE5:
.LBE4:
	.loc 1 195 3 is_stmt 1
	.loc 1 196 1 is_stmt 0
	li	a0,0
.LVL7:
	ret
	.cfi_endproc
.LFE7:
	.size	ethernetif_init, .-ethernetif_init
	.section	.sbss.count.0,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	count.0, @object
	.size	count.0, 4
count.0:
	.zero	4
	.text
.Letext0:
	.file 2 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 3 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/arch.h"
	.file 4 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/err.h"
	.file 5 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/pbuf.h"
	.file 6 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/ip4_addr.h"
	.file 7 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/ip_addr.h"
	.file 8 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
	.file 9 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x537
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF72
	.byte	0xc
	.4byte	.LASF73
	.4byte	.LASF74
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
	.4byte	.LASF5
	.byte	0x2
	.byte	0x22
	.byte	0x15
	.4byte	0x3f
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
	.4byte	0x67
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.byte	0x4
	.4byte	.LASF8
	.byte	0x2
	.byte	0x31
	.byte	0x1c
	.4byte	0x7a
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF9
	.byte	0x4
	.4byte	.LASF10
	.byte	0x2
	.byte	0x34
	.byte	0x1b
	.4byte	0x8d
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.byte	0x5
	.byte	0x4
	.byte	0x6
	.4byte	0x9b
	.4byte	0xad
	.byte	0x7
	.4byte	0x2c
	.byte	0x2
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0xba
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.byte	0x9
	.4byte	0xb3
	.byte	0x4
	.4byte	.LASF14
	.byte	0x3
	.byte	0x7d
	.byte	0x11
	.4byte	0x5b
	.byte	0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x7e
	.byte	0x10
	.4byte	0x33
	.byte	0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x7f
	.byte	0x12
	.4byte	0x6e
	.byte	0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x81
	.byte	0x12
	.4byte	0x81
	.byte	0xa
	.byte	0x5
	.byte	0x4
	.4byte	0x25
	.byte	0x4
	.byte	0x35
	.byte	0xe
	.4byte	0x164
	.byte	0xb
	.4byte	.LASF18
	.byte	0
	.byte	0xc
	.4byte	.LASF19
	.byte	0x7f
	.byte	0xc
	.4byte	.LASF20
	.byte	0x7e
	.byte	0xc
	.4byte	.LASF21
	.byte	0x7d
	.byte	0xc
	.4byte	.LASF22
	.byte	0x7c
	.byte	0xc
	.4byte	.LASF23
	.byte	0x7b
	.byte	0xc
	.4byte	.LASF24
	.byte	0x7a
	.byte	0xc
	.4byte	.LASF25
	.byte	0x79
	.byte	0xc
	.4byte	.LASF26
	.byte	0x78
	.byte	0xc
	.4byte	.LASF27
	.byte	0x77
	.byte	0xc
	.4byte	.LASF28
	.byte	0x76
	.byte	0xc
	.4byte	.LASF29
	.byte	0x75
	.byte	0xc
	.4byte	.LASF30
	.byte	0x74
	.byte	0xc
	.4byte	.LASF31
	.byte	0x73
	.byte	0xc
	.4byte	.LASF32
	.byte	0x72
	.byte	0xc
	.4byte	.LASF33
	.byte	0x71
	.byte	0xc
	.4byte	.LASF34
	.byte	0x70
	.byte	0
	.byte	0x4
	.4byte	.LASF35
	.byte	0x4
	.byte	0x60
	.byte	0xe
	.4byte	0xcb
	.byte	0xd
	.4byte	.LASF42
	.byte	0x10
	.byte	0x5
	.byte	0xba
	.byte	0x8
	.4byte	0x1e6
	.byte	0xe
	.4byte	.LASF36
	.byte	0x5
	.byte	0xbc
	.byte	0x10
	.4byte	0x1e6
	.byte	0
	.byte	0xe
	.4byte	.LASF37
	.byte	0x5
	.byte	0xbf
	.byte	0x9
	.4byte	0x9b
	.byte	0x4
	.byte	0xe
	.4byte	.LASF38
	.byte	0x5
	.byte	0xc8
	.byte	0x9
	.4byte	0xd7
	.byte	0x8
	.byte	0xf
	.string	"len"
	.byte	0x5
	.byte	0xcb
	.byte	0x9
	.4byte	0xd7
	.byte	0xa
	.byte	0xe
	.4byte	.LASF39
	.byte	0x5
	.byte	0xd0
	.byte	0x8
	.4byte	0xbf
	.byte	0xc
	.byte	0xe
	.4byte	.LASF40
	.byte	0x5
	.byte	0xd3
	.byte	0x8
	.4byte	0xbf
	.byte	0xd
	.byte	0xf
	.string	"ref"
	.byte	0x5
	.byte	0xda
	.byte	0x8
	.4byte	0xbf
	.byte	0xe
	.byte	0xe
	.4byte	.LASF41
	.byte	0x5
	.byte	0xdd
	.byte	0x8
	.4byte	0xbf
	.byte	0xf
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x170
	.byte	0xd
	.4byte	.LASF43
	.byte	0x4
	.byte	0x6
	.byte	0x33
	.byte	0x8
	.4byte	0x207
	.byte	0xe
	.4byte	.LASF44
	.byte	0x6
	.byte	0x34
	.byte	0x9
	.4byte	0xe3
	.byte	0
	.byte	0
	.byte	0x4
	.4byte	.LASF45
	.byte	0x6
	.byte	0x39
	.byte	0x19
	.4byte	0x1ec
	.byte	0x9
	.4byte	0x207
	.byte	0x10
	.4byte	.LASF46
	.byte	0x7
	.2byte	0x10e
	.byte	0x14
	.4byte	0x207
	.byte	0x11
	.4byte	.LASF75
	.byte	0x7
	.byte	0x4
	.4byte	0x2c
	.byte	0x8
	.byte	0x9c
	.byte	0x6
	.4byte	0x244
	.byte	0xb
	.4byte	.LASF47
	.byte	0
	.byte	0xb
	.4byte	.LASF48
	.byte	0x1
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x24a
	.byte	0x12
	.4byte	.LASF49
	.byte	0x54
	.byte	0x8
	.2byte	0x104
	.byte	0x8
	.4byte	0x38c
	.byte	0x13
	.4byte	.LASF36
	.byte	0x8
	.2byte	0x107
	.byte	0x11
	.4byte	0x244
	.byte	0
	.byte	0x13
	.4byte	.LASF50
	.byte	0x8
	.2byte	0x10c
	.byte	0xd
	.4byte	0x218
	.byte	0x4
	.byte	0x13
	.4byte	.LASF51
	.byte	0x8
	.2byte	0x10d
	.byte	0xd
	.4byte	0x218
	.byte	0x8
	.byte	0x14
	.string	"gw"
	.byte	0x8
	.2byte	0x10e
	.byte	0xd
	.4byte	0x218
	.byte	0xc
	.byte	0x13
	.4byte	.LASF52
	.byte	0x8
	.2byte	0x121
	.byte	0x12
	.4byte	0x38c
	.byte	0x10
	.byte	0x13
	.4byte	.LASF53
	.byte	0x8
	.2byte	0x127
	.byte	0x13
	.4byte	0x3b2
	.byte	0x14
	.byte	0x13
	.4byte	.LASF54
	.byte	0x8
	.2byte	0x12c
	.byte	0x17
	.4byte	0x3e3
	.byte	0x18
	.byte	0x13
	.4byte	.LASF55
	.byte	0x8
	.2byte	0x137
	.byte	0x1c
	.4byte	0x409
	.byte	0x1c
	.byte	0x13
	.4byte	.LASF56
	.byte	0x8
	.2byte	0x13c
	.byte	0x1c
	.4byte	0x409
	.byte	0x20
	.byte	0x13
	.4byte	.LASF57
	.byte	0x8
	.2byte	0x144
	.byte	0x9
	.4byte	0x9b
	.byte	0x24
	.byte	0x13
	.4byte	.LASF58
	.byte	0x8
	.2byte	0x146
	.byte	0x9
	.4byte	0x9d
	.byte	0x28
	.byte	0x13
	.4byte	.LASF59
	.byte	0x8
	.2byte	0x14a
	.byte	0xf
	.4byte	0xad
	.byte	0x34
	.byte	0x14
	.string	"mtu"
	.byte	0x8
	.2byte	0x150
	.byte	0x9
	.4byte	0xd7
	.byte	0x38
	.byte	0x13
	.4byte	.LASF60
	.byte	0x8
	.2byte	0x156
	.byte	0x8
	.4byte	0x451
	.byte	0x3a
	.byte	0x13
	.4byte	.LASF61
	.byte	0x8
	.2byte	0x158
	.byte	0x8
	.4byte	0xbf
	.byte	0x40
	.byte	0x13
	.4byte	.LASF40
	.byte	0x8
	.2byte	0x15a
	.byte	0x8
	.4byte	0xbf
	.byte	0x41
	.byte	0x13
	.4byte	.LASF62
	.byte	0x8
	.2byte	0x15c
	.byte	0x8
	.4byte	0x461
	.byte	0x42
	.byte	0x14
	.string	"num"
	.byte	0x8
	.2byte	0x15f
	.byte	0x8
	.4byte	0xbf
	.byte	0x44
	.byte	0x13
	.4byte	.LASF63
	.byte	0x8
	.2byte	0x166
	.byte	0x8
	.4byte	0xbf
	.byte	0x45
	.byte	0x13
	.4byte	.LASF64
	.byte	0x8
	.2byte	0x175
	.byte	0x1c
	.4byte	0x426
	.byte	0x48
	.byte	0x13
	.4byte	.LASF65
	.byte	0x8
	.2byte	0x181
	.byte	0x10
	.4byte	0x1e6
	.byte	0x4c
	.byte	0x13
	.4byte	.LASF66
	.byte	0x8
	.2byte	0x182
	.byte	0x10
	.4byte	0x1e6
	.byte	0x50
	.byte	0
	.byte	0x4
	.4byte	.LASF67
	.byte	0x8
	.byte	0xb2
	.byte	0x11
	.4byte	0x398
	.byte	0x8
	.byte	0x4
	.4byte	0x39e
	.byte	0x15
	.4byte	0x164
	.4byte	0x3b2
	.byte	0x16
	.4byte	0x1e6
	.byte	0x16
	.4byte	0x244
	.byte	0
	.byte	0x4
	.4byte	.LASF68
	.byte	0x8
	.byte	0xbd
	.byte	0x11
	.4byte	0x3be
	.byte	0x8
	.byte	0x4
	.4byte	0x3c4
	.byte	0x15
	.4byte	0x164
	.4byte	0x3dd
	.byte	0x16
	.4byte	0x244
	.byte	0x16
	.4byte	0x1e6
	.byte	0x16
	.4byte	0x3dd
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x213
	.byte	0x4
	.4byte	.LASF69
	.byte	0x8
	.byte	0xd4
	.byte	0x11
	.4byte	0x3ef
	.byte	0x8
	.byte	0x4
	.4byte	0x3f5
	.byte	0x15
	.4byte	0x164
	.4byte	0x409
	.byte	0x16
	.4byte	0x244
	.byte	0x16
	.4byte	0x1e6
	.byte	0
	.byte	0x4
	.4byte	.LASF70
	.byte	0x8
	.byte	0xd6
	.byte	0x10
	.4byte	0x415
	.byte	0x8
	.byte	0x4
	.4byte	0x41b
	.byte	0x17
	.4byte	0x426
	.byte	0x16
	.4byte	0x244
	.byte	0
	.byte	0x4
	.4byte	.LASF71
	.byte	0x8
	.byte	0xd9
	.byte	0x11
	.4byte	0x432
	.byte	0x8
	.byte	0x4
	.4byte	0x438
	.byte	0x15
	.4byte	0x164
	.4byte	0x451
	.byte	0x16
	.4byte	0x244
	.byte	0x16
	.4byte	0x3dd
	.byte	0x16
	.4byte	0x225
	.byte	0
	.byte	0x6
	.4byte	0xbf
	.4byte	0x461
	.byte	0x7
	.4byte	0x2c
	.byte	0x5
	.byte	0
	.byte	0x6
	.4byte	0xb3
	.4byte	0x471
	.byte	0x7
	.4byte	0x2c
	.byte	0x1
	.byte	0
	.byte	0x18
	.4byte	.LASF76
	.byte	0x1
	.byte	0xb2
	.byte	0x7
	.4byte	0x164
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x4b6
	.byte	0x19
	.4byte	.LASF49
	.byte	0x1
	.byte	0xb2
	.byte	0x25
	.4byte	0x244
	.4byte	.LLST2
	.byte	0x1a
	.4byte	0x514
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0xc2
	.byte	0x3
	.byte	0x1b
	.4byte	0x521
	.4byte	.LLST3
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LASF77
	.byte	0x1
	.byte	0x9e
	.byte	0xe
	.4byte	0x164
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x514
	.byte	0x19
	.4byte	.LASF49
	.byte	0x1
	.byte	0x9e
	.byte	0x2d
	.4byte	0x244
	.4byte	.LLST0
	.byte	0x1d
	.string	"p"
	.byte	0x1
	.byte	0x9e
	.byte	0x41
	.4byte	0x1e6
	.4byte	.LLST1
	.byte	0x1e
	.4byte	.LASF78
	.byte	0x1
	.byte	0xa0
	.byte	0xe
	.4byte	0x25
	.byte	0x5
	.byte	0x3
	.4byte	count.0
	.byte	0x1f
	.4byte	.LVL3
	.4byte	0x52e
	.byte	0x20
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LASF79
	.byte	0x1
	.byte	0x4d
	.byte	0xd
	.byte	0x1
	.4byte	0x52e
	.byte	0x22
	.4byte	.LASF49
	.byte	0x1
	.byte	0x4d
	.byte	0x2a
	.4byte	0x244
	.byte	0
	.byte	0x23
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x9
	.byte	0xc8
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
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
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
	.byte	0x26
	.byte	0
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
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xd
	.byte	0
	.byte	0
	.byte	0xd
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
	.byte	0xe
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x15
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
	.byte	0x16
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
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
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x1d
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
	.byte	0x1e
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
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x21
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
	.byte	0x22
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL6
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
	.4byte	.LFE6
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
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF44:
	.string	"addr"
.LASF60:
	.string	"hwaddr"
.LASF74:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/build_out/lwip"
.LASF5:
	.string	"int8_t"
.LASF31:
	.string	"ERR_ABRT"
.LASF57:
	.string	"state"
.LASF28:
	.string	"ERR_ISCONN"
.LASF68:
	.string	"netif_output_fn"
.LASF2:
	.string	"short int"
.LASF52:
	.string	"input"
.LASF38:
	.string	"tot_len"
.LASF33:
	.string	"ERR_CLSD"
.LASF55:
	.string	"status_callback"
.LASF61:
	.string	"hwaddr_len"
.LASF58:
	.string	"client_data"
.LASF47:
	.string	"NETIF_DEL_MAC_FILTER"
.LASF64:
	.string	"igmp_mac_filter"
.LASF6:
	.string	"uint8_t"
.LASF17:
	.string	"u32_t"
.LASF50:
	.string	"ip_addr"
.LASF79:
	.string	"low_level_init"
.LASF18:
	.string	"ERR_OK"
.LASF32:
	.string	"ERR_RST"
.LASF43:
	.string	"ip4_addr"
.LASF59:
	.string	"hostname"
.LASF1:
	.string	"signed char"
.LASF54:
	.string	"linkoutput"
.LASF15:
	.string	"s8_t"
.LASF4:
	.string	"long long int"
.LASF21:
	.string	"ERR_TIMEOUT"
.LASF3:
	.string	"long int"
.LASF75:
	.string	"netif_mac_filter_action"
.LASF46:
	.string	"ip_addr_t"
.LASF80:
	.string	"printf"
.LASF27:
	.string	"ERR_ALREADY"
.LASF39:
	.string	"type_internal"
.LASF71:
	.string	"netif_igmp_mac_filter_fn"
.LASF62:
	.string	"name"
.LASF7:
	.string	"unsigned char"
.LASF22:
	.string	"ERR_RTE"
.LASF67:
	.string	"netif_input_fn"
.LASF29:
	.string	"ERR_CONN"
.LASF23:
	.string	"ERR_INPROGRESS"
.LASF70:
	.string	"netif_status_callback_fn"
.LASF41:
	.string	"if_idx"
.LASF69:
	.string	"netif_linkoutput_fn"
.LASF40:
	.string	"flags"
.LASF12:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint32_t"
.LASF65:
	.string	"loop_first"
.LASF0:
	.string	"unsigned int"
.LASF8:
	.string	"uint16_t"
.LASF30:
	.string	"ERR_IF"
.LASF19:
	.string	"ERR_MEM"
.LASF20:
	.string	"ERR_BUF"
.LASF48:
	.string	"NETIF_ADD_MAC_FILTER"
.LASF9:
	.string	"short unsigned int"
.LASF56:
	.string	"link_callback"
.LASF35:
	.string	"err_t"
.LASF13:
	.string	"char"
.LASF76:
	.string	"ethernetif_init"
.LASF25:
	.string	"ERR_WOULDBLOCK"
.LASF11:
	.string	"long unsigned int"
.LASF73:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/lwip-port/FreeRTOS/ethernetif.c"
.LASF45:
	.string	"ip4_addr_t"
.LASF49:
	.string	"netif"
.LASF78:
	.string	"count"
.LASF51:
	.string	"netmask"
.LASF77:
	.string	"low_level_output"
.LASF66:
	.string	"loop_last"
.LASF16:
	.string	"u16_t"
.LASF26:
	.string	"ERR_USE"
.LASF63:
	.string	"rs_count"
.LASF53:
	.string	"output"
.LASF34:
	.string	"ERR_ARG"
.LASF14:
	.string	"u8_t"
.LASF24:
	.string	"ERR_VAL"
.LASF37:
	.string	"payload"
.LASF36:
	.string	"next"
.LASF42:
	.string	"pbuf"
.LASF72:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
