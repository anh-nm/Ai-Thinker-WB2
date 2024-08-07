# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/RISCV/Device/Bouffalo/BL602/Startup/interrupt.c"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/build_out/bl602_std//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/RISCV/Device/Bouffalo/BL602/Startup/interrupt.c"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint.h" 1 3 4
# 11 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint.h" 3 4
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h" 1 3 4
# 34 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h" 3 4

# 34 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h" 3 4
typedef signed char int8_t;


typedef short int int16_t;


typedef long int int32_t;


typedef long long int int64_t;


typedef unsigned char uint8_t;


typedef short unsigned int uint16_t;


typedef long unsigned int uint32_t;


typedef long long unsigned int uint64_t;




typedef signed char int_least8_t;
typedef short int int_least16_t;
typedef long int int_least32_t;
typedef long long int int_least64_t;
typedef unsigned char uint_least8_t;
typedef short unsigned int uint_least16_t;
typedef long unsigned int uint_least32_t;
typedef long long unsigned int uint_least64_t;



typedef int int_fast8_t;
typedef int int_fast16_t;
typedef int int_fast32_t;
typedef long long int int_fast64_t;
typedef unsigned int uint_fast8_t;
typedef unsigned int uint_fast16_t;
typedef unsigned int uint_fast32_t;
typedef long long unsigned int uint_fast64_t;




typedef int intptr_t;


typedef unsigned int uintptr_t;




typedef long long int intmax_t;
typedef long long unsigned int uintmax_t;
# 12 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint.h" 2 3 4
# 2 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/RISCV/Device/Bouffalo/BL602/Startup/interrupt.c" 2
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/RISCV/Core/Include/clic.h" 1
# 3 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/RISCV/Device/Bouffalo/BL602/Startup/interrupt.c" 2
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/RISCV/Core/Include/cmsis_compatible_gcc.h" 1
# 87 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/RISCV/Core/Include/cmsis_compatible_gcc.h"

# 87 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/RISCV/Core/Include/cmsis_compatible_gcc.h"
__attribute__( ( always_inline ) ) static inline void __enable_irq(void)
{
  __asm volatile ("csrsi mstatus, 8");
}

__attribute__( ( always_inline ) ) static inline void __disable_irq(void)
{
  __asm volatile ("csrci mstatus, 8");
}

__attribute__((always_inline)) static inline uint32_t __REV(uint32_t value)
{

    uint32_t res = 0;

    res = (value << 24) | (value >> 24);
    res &= 0xFF0000FF;
    res |= ((value >> 8) & 0x0000FF00) | ((value << 8) & 0x00FF0000);

    return res;
}

__attribute__((always_inline)) static inline uint32_t __REV16(uint32_t value)
{
  return __builtin_bswap16(value);
}

extern void clic_enable_interrupt (uint32_t source);
extern void clic_disable_interrupt ( uint32_t source);
extern void clic_set_pending(uint32_t source);
extern void clic_clear_pending(uint32_t source);
# 4 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/RISCV/Device/Bouffalo/BL602/Startup/interrupt.c" 2

typedef void( *pFunc )( void );
extern void Trap_Handler(void);
extern void Interrupt_Handler(void);
void Interrupt_Handler_Stub(void);
# 150 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/bl602_std/bl602_std/RISCV/Device/Bouffalo/BL602/Startup/interrupt.c"
void clic_enable_interrupt (uint32_t source) {
    *(volatile uint8_t*)(0x02800000UL +0x400 +source) = 1;
}

void clic_disable_interrupt ( uint32_t source){
  *(volatile uint8_t*)(0x02800000UL +0x400 +source) = 0;
}

void clic_set_pending(uint32_t source){
  *(volatile uint8_t*)(0x02800000UL +0x000 +source) = 1;
}

void clic_clear_pending(uint32_t source){
  *(volatile uint8_t*)(0x02800000UL +0x000 +source) = 0;
}

void clic_set_intcfg (uint32_t source, uint32_t intcfg){
  *(volatile uint8_t*)(0x02800000UL +0x800 +source) = intcfg;
}

uint8_t clic_get_intcfg ( uint32_t source){
  return *(volatile uint8_t*)(0x02800000UL +0x800 +source);
}

void clic_set_cliccfg ( uint32_t cfg){
  *(volatile uint8_t*)(0x02800000UL +0xc00) = cfg;
}

uint8_t clic_get_cliccfg (void){
  return *(volatile uint8_t*)(0x02800000UL +0xc00);
}
