	.file	"wifi.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_f2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.comm	password,64,4
	.comm	ssid,32,4
.Letext0:
	.file 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
	.file 2 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_pm.h"
	.file 3 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/wifi/include/bl60x_fw_api.h"
	.file 4 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/wifi_manager/bl60x_wifi_driver/include/wifi_mgmr_ext.h"
	.file 5 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h"
	.file 6 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/wifi.c"
	.file 7 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/memp.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x25d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF62
	.byte	0xc
	.4byte	.LASF63
	.4byte	.LASF64
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
	.4byte	.LASF55
	.byte	0x5
	.byte	0x2e
	.byte	0x17
	.4byte	0x53
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x5
	.byte	0x7
	.byte	0x4
	.4byte	0x24
	.byte	0x7
	.byte	0x34
	.byte	0xe
	.4byte	0xe5
	.byte	0x6
	.4byte	.LASF10
	.byte	0
	.byte	0x6
	.4byte	.LASF11
	.byte	0x1
	.byte	0x6
	.4byte	.LASF12
	.byte	0x2
	.byte	0x6
	.4byte	.LASF13
	.byte	0x3
	.byte	0x6
	.4byte	.LASF14
	.byte	0x4
	.byte	0x6
	.4byte	.LASF15
	.byte	0x5
	.byte	0x6
	.4byte	.LASF16
	.byte	0x6
	.byte	0x6
	.4byte	.LASF17
	.byte	0x7
	.byte	0x6
	.4byte	.LASF18
	.byte	0x8
	.byte	0x6
	.4byte	.LASF19
	.byte	0x9
	.byte	0x6
	.4byte	.LASF20
	.byte	0xa
	.byte	0x6
	.4byte	.LASF21
	.byte	0xb
	.byte	0x6
	.4byte	.LASF22
	.byte	0xc
	.byte	0x6
	.4byte	.LASF23
	.byte	0xd
	.byte	0x6
	.4byte	.LASF24
	.byte	0xe
	.byte	0x6
	.4byte	.LASF25
	.byte	0xf
	.byte	0
	.byte	0x7
	.4byte	.LASF29
	.byte	0x7
	.byte	0x4
	.4byte	0x24
	.byte	0x1
	.byte	0x71
	.byte	0x6
	.4byte	0x10a
	.byte	0x6
	.4byte	.LASF26
	.byte	0
	.byte	0x6
	.4byte	.LASF27
	.byte	0x1
	.byte	0x6
	.4byte	.LASF28
	.byte	0x2
	.byte	0
	.byte	0x7
	.4byte	.LASF30
	.byte	0x7
	.byte	0x4
	.4byte	0x24
	.byte	0x2
	.byte	0x34
	.byte	0x6
	.4byte	0x14d
	.byte	0x6
	.4byte	.LASF31
	.byte	0
	.byte	0x6
	.4byte	.LASF32
	.byte	0x1
	.byte	0x6
	.4byte	.LASF33
	.byte	0x2
	.byte	0x6
	.4byte	.LASF34
	.byte	0x3
	.byte	0x6
	.4byte	.LASF35
	.byte	0x4
	.byte	0x6
	.4byte	.LASF36
	.byte	0x5
	.byte	0x6
	.4byte	.LASF37
	.byte	0x6
	.byte	0x6
	.4byte	.LASF38
	.byte	0x7
	.byte	0
	.byte	0x7
	.4byte	.LASF39
	.byte	0x7
	.byte	0x4
	.4byte	0x24
	.byte	0x3
	.byte	0x9
	.byte	0xe
	.4byte	0x1ae
	.byte	0x6
	.4byte	.LASF40
	.byte	0xff
	.byte	0x6
	.4byte	.LASF41
	.byte	0
	.byte	0x6
	.4byte	.LASF42
	.byte	0x1
	.byte	0x6
	.4byte	.LASF43
	.byte	0x2
	.byte	0x6
	.4byte	.LASF44
	.byte	0x3
	.byte	0x6
	.4byte	.LASF45
	.byte	0x4
	.byte	0x6
	.4byte	.LASF46
	.byte	0x5
	.byte	0x6
	.4byte	.LASF47
	.byte	0x6
	.byte	0x6
	.4byte	.LASF48
	.byte	0x7
	.byte	0x6
	.4byte	.LASF49
	.byte	0x8
	.byte	0x6
	.4byte	.LASF50
	.byte	0x8
	.byte	0x6
	.4byte	.LASF51
	.byte	0x9
	.byte	0x6
	.4byte	.LASF52
	.byte	0xa
	.byte	0
	.byte	0x8
	.4byte	0x6f
	.4byte	0x1be
	.byte	0x9
	.4byte	0x24
	.byte	0x1f
	.byte	0
	.byte	0x8
	.4byte	0x6f
	.4byte	0x1ce
	.byte	0x9
	.4byte	0x24
	.byte	0x3f
	.byte	0
	.byte	0xa
	.4byte	.LASF65
	.byte	0x8
	.byte	0x4
	.byte	0xb9
	.byte	0x10
	.4byte	0x1f6
	.byte	0xb
	.4byte	.LASF53
	.byte	0x4
	.byte	0xba
	.byte	0xa
	.4byte	0x1f6
	.byte	0
	.byte	0xb
	.4byte	.LASF54
	.byte	0x4
	.byte	0xbb
	.byte	0x9
	.4byte	0x1d
	.byte	0x4
	.byte	0
	.byte	0x8
	.4byte	0x6f
	.4byte	0x206
	.byte	0x9
	.4byte	0x24
	.byte	0x2
	.byte	0
	.byte	0x4
	.4byte	.LASF56
	.byte	0x4
	.byte	0xbc
	.byte	0x3
	.4byte	0x1ce
	.byte	0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF57
	.byte	0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF58
	.byte	0x3
	.byte	0x8
	.byte	0x4
	.4byte	.LASF59
	.byte	0xc
	.4byte	.LASF60
	.byte	0x6
	.byte	0xe
	.byte	0x6
	.4byte	0x1ae
	.byte	0x5
	.byte	0x3
	.4byte	ssid
	.byte	0xc
	.4byte	.LASF61
	.byte	0x6
	.byte	0xf
	.byte	0x6
	.4byte	0x1be
	.byte	0x5
	.byte	0x3
	.4byte	password
	.byte	0xd
	.4byte	.LASF66
	.byte	0x6
	.byte	0x14
	.byte	0x14
	.4byte	0x206
	.byte	0x8
	.byte	0x43
	.byte	0x4e
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
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
	.byte	0x6
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x7
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
	.byte	0xb
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
	.byte	0xc
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
	.byte	0xd
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
	.byte	0xa
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x14
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF15:
	.string	"MEMP_ALTCP_PCB"
.LASF29:
	.string	"lwip_internal_netif_client_data_index"
.LASF31:
	.string	"PM_MODE_STA_NONE"
.LASF2:
	.string	"short int"
.LASF60:
	.string	"ssid"
.LASF14:
	.string	"MEMP_TCP_SEG"
.LASF30:
	.string	"PM_LEVEL"
.LASF45:
	.string	"TASK_SM"
.LASF61:
	.string	"password"
.LASF19:
	.string	"MEMP_TCPIP_MSG_INPKT"
.LASF21:
	.string	"MEMP_SYS_TIMEOUT"
.LASF47:
	.string	"TASK_BAM"
.LASF38:
	.string	"PM_MODE_MAX"
.LASF55:
	.string	"uint8_t"
.LASF54:
	.string	"channel_nums"
.LASF66:
	.string	"conf"
.LASF13:
	.string	"MEMP_TCP_PCB_LISTEN"
.LASF51:
	.string	"TASK_API"
.LASF22:
	.string	"MEMP_NETDB"
.LASF46:
	.string	"TASK_APM"
.LASF33:
	.string	"PM_MODE_STA_MESH"
.LASF58:
	.string	"float"
.LASF4:
	.string	"long long int"
.LASF8:
	.string	"long long unsigned int"
.LASF3:
	.string	"long int"
.LASF49:
	.string	"TASK_CFG"
.LASF28:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_MAX"
.LASF63:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/wifi.c"
.LASF56:
	.string	"wifi_conf_t"
.LASF37:
	.string	"PM_MODE_AP_IDLE"
.LASF26:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_DHCP"
.LASF40:
	.string	"TASK_NONE"
.LASF43:
	.string	"TASK_SCANU"
.LASF5:
	.string	"unsigned char"
.LASF65:
	.string	"wifi_conf"
.LASF48:
	.string	"TASK_RXU"
.LASF32:
	.string	"PM_MODE_STA_IDLE"
.LASF53:
	.string	"country_code"
.LASF25:
	.string	"MEMP_MAX"
.LASF1:
	.string	"signed char"
.LASF27:
	.string	"LWIP_NETIF_CLIENT_DATA_INDEX_IGMP"
.LASF50:
	.string	"TASK_LAST_EMB"
.LASF0:
	.string	"unsigned int"
.LASF41:
	.string	"TASK_MM"
.LASF20:
	.string	"MEMP_IGMP_GROUP"
.LASF6:
	.string	"short unsigned int"
.LASF39:
	.string	"wifi_fw_task_id"
.LASF9:
	.string	"char"
.LASF18:
	.string	"MEMP_TCPIP_MSG_API"
.LASF34:
	.string	"PM_MODE_STA_DOZE"
.LASF57:
	.string	"_Bool"
.LASF23:
	.string	"MEMP_PBUF"
.LASF42:
	.string	"TASK_SCAN"
.LASF7:
	.string	"long unsigned int"
.LASF59:
	.string	"double"
.LASF10:
	.string	"MEMP_RAW_PCB"
.LASF24:
	.string	"MEMP_PBUF_POOL"
.LASF64:
	.string	"/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/build_out/config_wifi"
.LASF17:
	.string	"MEMP_NETCONN"
.LASF35:
	.string	"PM_MODE_STA_COEX"
.LASF12:
	.string	"MEMP_TCP_PCB"
.LASF36:
	.string	"PM_MODE_STA_DOWN"
.LASF11:
	.string	"MEMP_UDP_PCB"
.LASF52:
	.string	"TASK_MAX"
.LASF44:
	.string	"TASK_ME"
.LASF16:
	.string	"MEMP_NETBUF"
.LASF62:
	.string	"GNU C99 10.2.0 -march=rv32imfc -mabi=ilp32f -march=rv32imfc -gdwarf -Os -std=gnu99 -ffunction-sections -fdata-sections -fstrict-volatile-bitfields -fcommon -ffreestanding -fno-strict-aliasing"
	.ident	"GCC: (SiFive GCC-Metal 10.2.0-2020.12.8) 10.2.0"
