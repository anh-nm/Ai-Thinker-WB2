# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/button.c"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/build_out/config_wifi//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/button.c"



# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/button.h" 1




# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_gpio.h" 1


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
# 4 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_gpio.h" 2


# 5 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_gpio.h"
typedef struct _gpio_ctx_desc {
    struct _gpio_ctx_desc *next;
    void (*gpio_handler)(void *);
    void *arg;

    uint8_t gpioPin;
    uint8_t intCtrlMod;
    uint8_t intTrgMod;
} gpio_ctx_t;

int bl_gpio_enable_output(uint8_t pin, uint8_t pullup, uint8_t pulldown);
int bl_gpio_enable_input(uint8_t pin, uint8_t pullup, uint8_t pulldown);
int bl_gpio_output_set(uint8_t pin, uint8_t value);
int bl_gpio_input_get(uint8_t pin, uint8_t *value);
int bl_gpio_input_get_value(uint8_t pin);
int bl_gpio_int_clear(uint8_t gpioPin,uint8_t intClear);
void bl_gpio_intmask(uint8_t gpiopin, uint8_t mask);
void bl_set_gpio_intmod(uint8_t gpioPin, uint8_t intCtrlMod, uint8_t intTrgMod);
void bl_gpio_register(gpio_ctx_t *pstnode);
# 6 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/button.h" 2
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 1 3
# 29 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 1 3
# 10 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 3
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/newlib.h" 1 3
# 14 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/newlib.h" 3
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/_newlib_version.h" 1 3
# 15 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/newlib.h" 2 3
# 11 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 2 3
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/config.h" 1 3



# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/ieeefp.h" 1 3
# 5 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/config.h" 2 3
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/features.h" 1 3
# 6 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/config.h" 2 3
# 12 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 2 3
# 30 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3





# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/cdefs.h" 1 3
# 45 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/cdefs.h" 3
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 1 3
# 41 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3

# 41 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 3
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 46 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/cdefs.h" 2 3

# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 209 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 48 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/cdefs.h" 2 3
# 36 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 143 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 321 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef int wchar_t;
# 37 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3



# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdarg.h" 1 3 4
# 40 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 41 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3





typedef __gnuc_va_list va_list;
# 60 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 1 3
# 13 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 1 3
# 14 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 2 3
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 15 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 2 3
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 1 3
# 24 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 350 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef unsigned int wint_t;
# 25 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 2 3


# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_types.h" 1 3
# 28 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 2 3


typedef long __blkcnt_t;



typedef long __blksize_t;



typedef __uint64_t __fsblkcnt_t;



typedef __uint32_t __fsfilcnt_t;



typedef long _off_t;





typedef int __pid_t;



typedef short __dev_t;



typedef unsigned short __uid_t;


typedef unsigned short __gid_t;



typedef __uint32_t __id_t;







typedef unsigned short __ino_t;
# 90 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
typedef __uint32_t __mode_t;





__extension__ typedef long long _off64_t;





typedef _off_t __off_t;


typedef _off64_t __loff_t;


typedef long __key_t;







typedef long _fpos_t;
# 131 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
typedef unsigned int __size_t;
# 147 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
typedef signed int _ssize_t;
# 158 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_types.h" 3
typedef _ssize_t __ssize_t;



typedef struct
{
  int __count;
  union
  {
    wint_t __wch;
    unsigned char __wchb[4];
  } __value;
} _mbstate_t;




typedef void *_iconv_t;






typedef unsigned long __clock_t;






typedef __int_least64_t __time_t;





typedef unsigned long __clockid_t;


typedef unsigned long __timer_t;


typedef __uint8_t __sa_family_t;



typedef __uint32_t __socklen_t;


typedef int __nl_item;
typedef unsigned short __nlink_t;
typedef long __suseconds_t;
typedef unsigned long __useconds_t;







typedef __builtin_va_list __va_list;
# 16 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 2 3






typedef unsigned long __ULong;
# 34 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h" 1 3
# 11 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/lock.h" 3
typedef int _LOCK_T;
typedef int _LOCK_RECURSIVE_T;
# 35 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 2 3
typedef _LOCK_RECURSIVE_T _flock_t;







struct _reent;

struct __locale_t;






struct _Bigint
{
  struct _Bigint *_next;
  int _k, _maxwds, _sign, _wds;
  __ULong _x[1];
};


struct __tm
{
  int __tm_sec;
  int __tm_min;
  int __tm_hour;
  int __tm_mday;
  int __tm_mon;
  int __tm_year;
  int __tm_wday;
  int __tm_yday;
  int __tm_isdst;
};







struct _on_exit_args {
 void * _fnargs[32];
 void * _dso_handle[32];

 __ULong _fntypes;


 __ULong _is_cxa;
};
# 98 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
struct _atexit {
 struct _atexit *_next;
 int _ind;

 void (*_fns[32])(void);
        struct _on_exit_args _on_exit_args;
};
# 122 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
struct __sbuf {
 unsigned char *_base;
 int _size;
};
# 186 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
struct __sFILE {
  unsigned char *_p;
  int _r;
  int _w;
  short _flags;
  short _file;
  struct __sbuf _bf;
  int _lbfsize;






  void * _cookie;

  _ssize_t (*_read) (struct _reent *, void *,
        char *, int);
  _ssize_t (*_write) (struct _reent *, void *,
         const char *,
         int);
  _fpos_t (*_seek) (struct _reent *, void *, _fpos_t, int);
  int (*_close) (struct _reent *, void *);


  struct __sbuf _ub;
  unsigned char *_up;
  int _ur;


  unsigned char _ubuf[3];
  unsigned char _nbuf[1];


  struct __sbuf _lb;


  int _blksize;
  _off_t _offset;


  struct _reent *_data;



  _flock_t _lock;

  _mbstate_t _mbstate;
  int _flags2;
};
# 292 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
typedef struct __sFILE __FILE;



struct _glue
{
  struct _glue *_next;
  int _niobs;
  __FILE *_iobs;
};
# 324 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
struct _rand48 {
  unsigned short _seed[3];
  unsigned short _mult[3];
  unsigned short _add;




};
# 613 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
struct _reent
{
  int _errno;




  __FILE *_stdin, *_stdout, *_stderr;

  int _inc;
  char _emergency[25];


  int _unspecified_locale_info;
  struct __locale_t *_locale;

  int __sdidinit;

  void (*__cleanup) (struct _reent *);


  struct _Bigint *_result;
  int _result_k;
  struct _Bigint *_p5s;
  struct _Bigint **_freelist;


  int _cvtlen;
  char *_cvtbuf;

  union
    {
      struct
        {
          unsigned int _unused_rand;
          char * _strtok_last;
          char _asctime_buf[26];
          struct __tm _localtime_buf;
          int _gamma_signgam;
          __extension__ unsigned long long _rand_next;
          struct _rand48 _r48;
          _mbstate_t _mblen_state;
          _mbstate_t _mbtowc_state;
          _mbstate_t _wctomb_state;
          char _l64a_buf[8];
          char _signal_buf[24];
          int _getdate_err;
          _mbstate_t _mbrlen_state;
          _mbstate_t _mbrtowc_state;
          _mbstate_t _mbsrtowcs_state;
          _mbstate_t _wcrtomb_state;
          _mbstate_t _wcsrtombs_state;
   int _h_errno;
        } _reent;



      struct
        {

          unsigned char * _nextf[30];
          unsigned int _nmalloc[30];
        } _unused;
    } _new;



  struct _atexit *_atexit;
  struct _atexit _atexit0;



  void (**(_sig_func))(int);




  struct _glue __sglue;

  __FILE __sf[3];

};
# 819 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
extern struct _reent *_impure_ptr ;
extern struct _reent *const _global_impure_ptr ;

void _reclaim_reent (struct _reent *);
# 61 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 1 3
# 28 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 3
typedef __uint8_t u_int8_t;


typedef __uint16_t u_int16_t;


typedef __uint32_t u_int32_t;


typedef __uint64_t u_int64_t;

typedef __intptr_t register_t;






# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h" 1 3
# 20 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_stdint.h" 3
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 47 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3


# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/endian.h" 1 3





# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_endian.h" 1 3
# 7 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/endian.h" 2 3
# 50 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 1 3
# 14 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 3
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_sigset.h" 1 3
# 41 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_sigset.h" 3
typedef unsigned long __sigset_t;
# 15 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 2 3
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timeval.h" 1 3
# 37 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timeval.h" 3
typedef __suseconds_t suseconds_t;




typedef __int_least64_t time_t;
# 54 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timeval.h" 3
struct timeval {
 time_t tv_sec;
 suseconds_t tv_usec;
};
# 16 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 2 3
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/timespec.h" 1 3
# 38 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/timespec.h" 3
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timespec.h" 1 3
# 47 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_timespec.h" 3
struct timespec {
 time_t tv_sec;
 long tv_nsec;
};
# 39 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/timespec.h" 2 3
# 58 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/timespec.h" 3
struct itimerspec {
 struct timespec it_interval;
 struct timespec it_value;
};
# 17 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 2 3



typedef __sigset_t sigset_t;
# 34 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 3
typedef unsigned long __fd_mask;

typedef __fd_mask fd_mask;
# 48 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 3
typedef struct fd_set {
 __fd_mask __fds_bits[(((64) + ((((int)sizeof(__fd_mask) * 8)) - 1)) / (((int)sizeof(__fd_mask) * 8)))];
} fd_set;
# 74 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/select.h" 3


int select (int __n, fd_set *__readfds, fd_set *__writefds, fd_set *__exceptfds, struct timeval *__timeout)
                                                   ;

int pselect (int __n, fd_set *__readfds, fd_set *__writefds, fd_set *__exceptfds, const struct timespec *__timeout, const sigset_t *__set)

                           ;



# 51 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3




typedef __uint32_t in_addr_t;




typedef __uint16_t in_port_t;



typedef __uintptr_t u_register_t;






typedef unsigned char u_char;



typedef unsigned short u_short;



typedef unsigned int u_int;



typedef unsigned long u_long;







typedef unsigned short ushort;
typedef unsigned int uint;
typedef unsigned long ulong;



typedef __blkcnt_t blkcnt_t;




typedef __blksize_t blksize_t;




typedef unsigned long clock_t;
# 119 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 3
typedef long daddr_t;



typedef char * caddr_t;




typedef __fsblkcnt_t fsblkcnt_t;
typedef __fsfilcnt_t fsfilcnt_t;




typedef __id_t id_t;




typedef __ino_t ino_t;
# 157 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 3
typedef __off_t off_t;



typedef __dev_t dev_t;



typedef __uid_t uid_t;



typedef __gid_t gid_t;




typedef __pid_t pid_t;




typedef __key_t key_t;




typedef _ssize_t ssize_t;




typedef __mode_t mode_t;




typedef __nlink_t nlink_t;




typedef __clockid_t clockid_t;





typedef __timer_t timer_t;





typedef __useconds_t useconds_t;
# 220 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 3
typedef __int64_t sbintime_t;


# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 1 3
# 23 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/sched.h" 1 3
# 48 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/sched.h" 3
struct sched_param {
  int sched_priority;
# 61 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/sched.h" 3
};
# 24 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 2 3
# 32 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
typedef __uint32_t pthread_t;
# 61 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
typedef struct {
  int is_initialized;
  void *stackaddr;
  int stacksize;
  int contentionscope;
  int inheritsched;
  int schedpolicy;
  struct sched_param schedparam;





  int detachstate;
} pthread_attr_t;
# 154 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
typedef __uint32_t pthread_mutex_t;

typedef struct {
  int is_initialized;
# 168 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_pthreadtypes.h" 3
  int recursive;
} pthread_mutexattr_t;






typedef __uint32_t pthread_cond_t;



typedef struct {
  int is_initialized;
  clock_t clock;



} pthread_condattr_t;



typedef __uint32_t pthread_key_t;

typedef struct {
  int is_initialized;
  int init_executed;
} pthread_once_t;
# 224 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/types.h" 1 3
# 225 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/types.h" 2 3
# 62 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3




typedef __FILE FILE;






typedef _fpos_t fpos_t;





# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/stdio.h" 1 3
# 80 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3
# 181 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
char * ctermid (char *);


char * cuserid (char *);

FILE * tmpfile (void);
char * tmpnam (char *);

char * tempnam (const char *, const char *) __attribute__((__malloc__)) __attribute__((__warn_unused_result__));

int fclose (FILE *);
int fflush (FILE *);
FILE * freopen (const char *restrict, const char *restrict, FILE *restrict);
void setbuf (FILE *restrict, char *restrict);
int setvbuf (FILE *restrict, char *restrict, int, size_t);
int fprintf (FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int fscanf (FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int printf (const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 1, 2)));
int scanf (const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 1, 2)));
int sscanf (const char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int vfprintf (FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int vprintf (const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 1, 0)));
int vsprintf (char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int fgetc (FILE *);
char * fgets (char *restrict, int, FILE *restrict);
int fputc (int, FILE *);
int fputs (const char *restrict, FILE *restrict);
int getc (FILE *);
int getchar (void);
char * gets (char *);
int putc (int, FILE *);
int putchar (int);
int puts (const char *);
int ungetc (int, FILE *);
size_t fread (void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t fwrite (const void *restrict , size_t _size, size_t _n, FILE *);



int fgetpos (FILE *restrict, fpos_t *restrict);

int fseek (FILE *, long, int);



int fsetpos (FILE *, const fpos_t *);

long ftell ( FILE *);
void rewind (FILE *);
void clearerr (FILE *);
int feof (FILE *);
int ferror (FILE *);
void perror (const char *);

FILE * fopen (const char *restrict _name, const char *restrict _type);
int sprintf (char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int remove (const char *);
int rename (const char *, const char *);
# 257 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
int fseeko (FILE *, off_t, int);
off_t ftello (FILE *);



int fcloseall (void);



int snprintf (char *restrict, size_t, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int vsnprintf (char *restrict, size_t, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int vfscanf (FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int vscanf (const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 1, 0)));
int vsscanf (const char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));


int asprintf (char **restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int vasprintf (char **, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));


int asiprintf (char **, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
char * asniprintf (char *, size_t *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
char * asnprintf (char *restrict, size_t *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));

int diprintf (int, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));

int fiprintf (FILE *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int fiscanf (FILE *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int iprintf (const char *, ...)
               __attribute__ ((__format__ (__printf__, 1, 2)));
int iscanf (const char *, ...)
               __attribute__ ((__format__ (__scanf__, 1, 2)));
int siprintf (char *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int siscanf (const char *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int sniprintf (char *, size_t, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int vasiprintf (char **, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
char * vasniprintf (char *, size_t *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
char * vasnprintf (char *, size_t *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int vdiprintf (int, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int vfiprintf (FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int vfiscanf (FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int viprintf (const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 1, 0)));
int viscanf (const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 1, 0)));
int vsiprintf (char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int vsiscanf (const char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int vsniprintf (char *, size_t, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
# 339 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
FILE * fdopen (int, const char *);

int fileno (FILE *);


int pclose (FILE *);
FILE * popen (const char *, const char *);



void setbuffer (FILE *, char *, int);
int setlinebuf (FILE *);



int getw (FILE *);
int putw (int, FILE *);


int getc_unlocked (FILE *);
int getchar_unlocked (void);
void flockfile (FILE *);
int ftrylockfile (FILE *);
void funlockfile (FILE *);
int putc_unlocked (int, FILE *);
int putchar_unlocked (int);
# 374 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
int dprintf (int, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));

FILE * fmemopen (void *restrict, size_t, const char *restrict);


FILE * open_memstream (char **, size_t *);
int vdprintf (int, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));



int renameat (int, const char *, int, const char *);
# 396 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
int _asiprintf_r (struct _reent *, char **, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
char * _asniprintf_r (struct _reent *, char *, size_t *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
char * _asnprintf_r (struct _reent *, char *restrict, size_t *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
int _asprintf_r (struct _reent *, char **restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _diprintf_r (struct _reent *, int, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _dprintf_r (struct _reent *, int, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _fclose_r (struct _reent *, FILE *);
int _fcloseall_r (struct _reent *);
FILE * _fdopen_r (struct _reent *, int, const char *);
int _fflush_r (struct _reent *, FILE *);
int _fgetc_r (struct _reent *, FILE *);
int _fgetc_unlocked_r (struct _reent *, FILE *);
char * _fgets_r (struct _reent *, char *restrict, int, FILE *restrict);
char * _fgets_unlocked_r (struct _reent *, char *restrict, int, FILE *restrict);




int _fgetpos_r (struct _reent *, FILE *, fpos_t *);
int _fsetpos_r (struct _reent *, FILE *, const fpos_t *);

int _fiprintf_r (struct _reent *, FILE *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _fiscanf_r (struct _reent *, FILE *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
FILE * _fmemopen_r (struct _reent *, void *restrict, size_t, const char *restrict);
FILE * _fopen_r (struct _reent *, const char *restrict, const char *restrict);
FILE * _freopen_r (struct _reent *, const char *restrict, const char *restrict, FILE *restrict);
int _fprintf_r (struct _reent *, FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _fpurge_r (struct _reent *, FILE *);
int _fputc_r (struct _reent *, int, FILE *);
int _fputc_unlocked_r (struct _reent *, int, FILE *);
int _fputs_r (struct _reent *, const char *restrict, FILE *restrict);
int _fputs_unlocked_r (struct _reent *, const char *restrict, FILE *restrict);
size_t _fread_r (struct _reent *, void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t _fread_unlocked_r (struct _reent *, void *restrict, size_t _size, size_t _n, FILE *restrict);
int _fscanf_r (struct _reent *, FILE *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
int _fseek_r (struct _reent *, FILE *, long, int);
int _fseeko_r (struct _reent *, FILE *, _off_t, int);
long _ftell_r (struct _reent *, FILE *);
_off_t _ftello_r (struct _reent *, FILE *);
void _rewind_r (struct _reent *, FILE *);
size_t _fwrite_r (struct _reent *, const void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t _fwrite_unlocked_r (struct _reent *, const void *restrict, size_t _size, size_t _n, FILE *restrict);
int _getc_r (struct _reent *, FILE *);
int _getc_unlocked_r (struct _reent *, FILE *);
int _getchar_r (struct _reent *);
int _getchar_unlocked_r (struct _reent *);
char * _gets_r (struct _reent *, char *);
int _iprintf_r (struct _reent *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int _iscanf_r (struct _reent *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
FILE * _open_memstream_r (struct _reent *, char **, size_t *);
void _perror_r (struct _reent *, const char *);
int _printf_r (struct _reent *, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 2, 3)));
int _putc_r (struct _reent *, int, FILE *);
int _putc_unlocked_r (struct _reent *, int, FILE *);
int _putchar_unlocked_r (struct _reent *, int);
int _putchar_r (struct _reent *, int);
int _puts_r (struct _reent *, const char *);
int _remove_r (struct _reent *, const char *);
int _rename_r (struct _reent *,
      const char *_old, const char *_new);
int _scanf_r (struct _reent *, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 2, 3)));
int _siprintf_r (struct _reent *, char *, const char *, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _siscanf_r (struct _reent *, const char *, const char *, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
int _sniprintf_r (struct _reent *, char *, size_t, const char *, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
int _snprintf_r (struct _reent *, char *restrict, size_t, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 4, 5)));
int _sprintf_r (struct _reent *, char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__printf__, 3, 4)));
int _sscanf_r (struct _reent *, const char *restrict, const char *restrict, ...)
               __attribute__ ((__format__ (__scanf__, 3, 4)));
char * _tempnam_r (struct _reent *, const char *, const char *);
FILE * _tmpfile_r (struct _reent *);
char * _tmpnam_r (struct _reent *, char *);
int _ungetc_r (struct _reent *, int, FILE *);
int _vasiprintf_r (struct _reent *, char **, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
char * _vasniprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
char * _vasnprintf_r (struct _reent*, char *, size_t *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
int _vasprintf_r (struct _reent *, char **, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vdiprintf_r (struct _reent *, int, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vdprintf_r (struct _reent *, int, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vfiprintf_r (struct _reent *, FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vfiscanf_r (struct _reent *, FILE *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));
int _vfprintf_r (struct _reent *, FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vfscanf_r (struct _reent *, FILE *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));
int _viprintf_r (struct _reent *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int _viscanf_r (struct _reent *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int _vprintf_r (struct _reent *, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 2, 0)));
int _vscanf_r (struct _reent *, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 2, 0)));
int _vsiprintf_r (struct _reent *, char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vsiscanf_r (struct _reent *, const char *, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));
int _vsniprintf_r (struct _reent *, char *, size_t, const char *, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
int _vsnprintf_r (struct _reent *, char *restrict, size_t, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 4, 0)));
int _vsprintf_r (struct _reent *, char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__printf__, 3, 0)));
int _vsscanf_r (struct _reent *, const char *restrict, const char *restrict, __gnuc_va_list)
               __attribute__ ((__format__ (__scanf__, 3, 0)));



int fpurge (FILE *);
ssize_t __getdelim (char **, size_t *, int, FILE *);
ssize_t __getline (char **, size_t *, FILE *);


void clearerr_unlocked (FILE *);
int feof_unlocked (FILE *);
int ferror_unlocked (FILE *);
int fileno_unlocked (FILE *);
int fflush_unlocked (FILE *);
int fgetc_unlocked (FILE *);
int fputc_unlocked (int, FILE *);
size_t fread_unlocked (void *restrict, size_t _size, size_t _n, FILE *restrict);
size_t fwrite_unlocked (const void *restrict , size_t _size, size_t _n, FILE *);



char * fgets_unlocked (char *restrict, int, FILE *restrict);
int fputs_unlocked (const char *restrict, FILE *restrict);
# 577 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
int __srget_r (struct _reent *, FILE *);
int __swbuf_r (struct _reent *, int, FILE *);
# 601 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
FILE *funopen (const void *__cookie,
  int (*__readfn)(void *__cookie, char *__buf,
    int __n),
  int (*__writefn)(void *__cookie, const char *__buf,
     int __n),
  fpos_t (*__seekfn)(void *__cookie, fpos_t __off, int __whence),
  int (*__closefn)(void *__cookie));
FILE *_funopen_r (struct _reent *, const void *__cookie,
  int (*__readfn)(void *__cookie, char *__buf,
    int __n),
  int (*__writefn)(void *__cookie, const char *__buf,
     int __n),
  fpos_t (*__seekfn)(void *__cookie, fpos_t __off, int __whence),
  int (*__closefn)(void *__cookie));
# 624 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
typedef ssize_t cookie_read_function_t(void *__cookie, char *__buf, size_t __n);
typedef ssize_t cookie_write_function_t(void *__cookie, const char *__buf,
     size_t __n);




typedef int cookie_seek_function_t(void *__cookie, off_t *__off, int __whence);

typedef int cookie_close_function_t(void *__cookie);
typedef struct
{


  cookie_read_function_t *read;
  cookie_write_function_t *write;
  cookie_seek_function_t *seek;
  cookie_close_function_t *close;
} cookie_io_functions_t;
FILE *fopencookie (void *__cookie,
  const char *__mode, cookie_io_functions_t __functions);
FILE *_fopencookie_r (struct _reent *, void *__cookie,
  const char *__mode, cookie_io_functions_t __functions);
# 687 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
static __inline__ int __sputc_r(struct _reent *_ptr, int _c, FILE *_p) {




 if (--_p->_w >= 0 || (_p->_w >= _p->_lbfsize && (char)_c != '\n'))
  return (*_p->_p++ = _c);
 else
  return (__swbuf_r(_ptr, _c, _p));
}
# 741 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
static __inline int
_getchar_unlocked(void)
{
 struct _reent *_ptr;

 _ptr = _impure_ptr;
 return ((--(((_ptr)->_stdin))->_r < 0 ? __srget_r(_ptr, ((_ptr)->_stdin)) : (int)(*(((_ptr)->_stdin))->_p++)));
}

static __inline int
_putchar_unlocked(int _c)
{
 struct _reent *_ptr;

 _ptr = _impure_ptr;
 return (__sputc_r(_ptr, _c, ((_ptr)->_stdout)));
}
# 797 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3

# 7 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/button.h" 2
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h" 1
# 34 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 35 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h" 2
# 56 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOSConfig.h" 1
# 74 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOSConfig.h"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/platform.h" 1
# 127 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/platform.h"

# 127 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/platform.h"
unsigned long get_cpu_freq(void);
unsigned long get_timer_freq(void);
uint64_t get_timer_value(void);
# 75 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOSConfig.h" 2
# 57 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h" 2


# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/projdefs.h" 1
# 35 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/projdefs.h"
typedef void (*TaskFunction_t)( void * );
# 60 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h" 2


# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h" 1
# 45 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/deprecated_definitions.h" 1
# 46 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h" 2






# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h" 1
# 62 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
typedef uint32_t StackType_t;
typedef int32_t BaseType_t;
typedef uint32_t UBaseType_t;
typedef uint32_t TickType_t;
# 84 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
extern void vTaskSwitchContext( void );
extern void vEnvironmentCall( uint32_t exception );
# 97 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
extern void vTaskEnterCritical( void );
extern void vTaskExitCritical( void );
# 152 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/portable/GCC/RISC-V/portmacro.h"
BaseType_t xPortIsInsideInterrupt( void );
# 53 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h" 2
# 99 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/mpu_wrappers.h" 1
# 100 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h" 2
# 117 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
  StackType_t *pxPortInitialiseStack( StackType_t *pxTopOfStack, TaskFunction_t pxCode, void *pvParameters ) ;




typedef struct HeapRegion
{
 uint8_t *pucStartAddress;
 size_t xSizeInBytes;
} HeapRegion_t;
# 139 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/portable.h"
void vPortDefineHeapRegions( const HeapRegion_t * const pxHeapRegions ) ;





void *pvPortMalloc( size_t xSize ) ;
void *pvPortCalloc(size_t numElements, size_t sizeOfElement); ;
void *pvPortRealloc(void *pv, size_t xSize) ;
void vPortFree( void *pv ) ;
void vPortInitialiseBlocks( void ) ;
size_t xPortGetFreeHeapSize( void ) ;
size_t xPortGetMinimumEverFreeHeapSize( void ) ;





BaseType_t xPortStartScheduler( void ) ;






void vPortEndScheduler( void ) ;
# 63 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h" 2
# 1044 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
struct xSTATIC_LIST_ITEM
{



 TickType_t xDummy2;
 void *pvDummy3[ 4 ];



};
typedef struct xSTATIC_LIST_ITEM StaticListItem_t;


struct xSTATIC_MINI_LIST_ITEM
{



 TickType_t xDummy2;
 void *pvDummy3[ 2 ];
};
typedef struct xSTATIC_MINI_LIST_ITEM StaticMiniListItem_t;


typedef struct xSTATIC_LIST
{



 UBaseType_t uxDummy2;
 void *pvDummy3;
 StaticMiniListItem_t xDummy4;



} StaticList_t;
# 1095 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
typedef struct xSTATIC_TCB
{
 void *pxDummy1;



 StaticListItem_t xDummy3[ 2 ];
 UBaseType_t uxDummy5;
 void *pxDummy6;
 uint8_t ucDummy7[ ( 16 ) ];




  UBaseType_t uxDummy9;


  UBaseType_t uxDummy10[ 2 ];


  UBaseType_t uxDummy12[ 2 ];





  void *pvDummy15[ 1 ];

        void *pvDummy15_1[ 1 ];
# 1133 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
  uint32_t ulDummy18;
  uint8_t ucDummy19;


  uint8_t uxDummy20;
# 1146 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
} StaticTask_t;
# 1162 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
typedef struct xSTATIC_QUEUE
{
 void *pvDummy1[ 3 ];

 union
 {
  void *pvDummy2;
  UBaseType_t uxDummy2;
 } u;

 StaticList_t xDummy3[ 2 ];
 UBaseType_t uxDummy4[ 3 ];
 uint8_t ucDummy5[ 2 ];


  uint8_t ucDummy6;







  UBaseType_t uxDummy8;
  uint8_t ucDummy9;


} StaticQueue_t;
typedef StaticQueue_t StaticSemaphore_t;
# 1206 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
typedef struct xSTATIC_EVENT_GROUP
{
 TickType_t xDummy1;
 StaticList_t xDummy2;


  UBaseType_t uxDummy3;



   uint8_t ucDummy4;


} StaticEventGroup_t;
# 1235 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
typedef struct xSTATIC_TIMER
{
 void *pvDummy1;
 StaticListItem_t xDummy2;
 TickType_t xDummy3;
 void *pvDummy5;
 TaskFunction_t pvDummy6;

  UBaseType_t uxDummy7;

 uint8_t ucDummy8;

} StaticTimer_t;
# 1263 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
typedef struct xSTATIC_STREAM_BUFFER
{
 size_t uxDummy1[ 4 ];
 void * pvDummy2[ 3 ];
 uint8_t ucDummy3;

  UBaseType_t uxDummy4;

} StaticStreamBuffer_t;


typedef StaticStreamBuffer_t StaticMessageBuffer_t;
# 8 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/button.h" 2
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h" 1
# 36 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/list.h" 1
# 139 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/list.h"
struct xLIST;
struct xLIST_ITEM
{

 TickType_t xItemValue;
 struct xLIST_ITEM * pxNext;
 struct xLIST_ITEM * pxPrevious;
 void * pvOwner;
 struct xLIST * pvContainer;

};
typedef struct xLIST_ITEM ListItem_t;

struct xMINI_LIST_ITEM
{

 TickType_t xItemValue;
 struct xLIST_ITEM * pxNext;
 struct xLIST_ITEM * pxPrevious;
};
typedef struct xMINI_LIST_ITEM MiniListItem_t;




typedef struct xLIST
{

 volatile UBaseType_t uxNumberOfItems;
 ListItem_t * pxIndex;
 MiniListItem_t xListEnd;

} List_t;
# 345 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/list.h"
void vListInitialise( List_t * const pxList ) ;
# 356 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/list.h"
void vListInitialiseItem( ListItem_t * const pxItem ) ;
# 369 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/list.h"
void vListInsert( List_t * const pxList, ListItem_t * const pxNewListItem ) ;
# 390 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/list.h"
void vListInsertEnd( List_t * const pxList, ListItem_t * const pxNewListItem ) ;
# 405 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/list.h"
UBaseType_t uxListRemove( ListItem_t * const pxItemToRemove ) ;
# 37 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h" 2
# 69 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
struct tskTaskControlBlock;
typedef struct tskTaskControlBlock* TaskHandle_t;





typedef BaseType_t (*TaskHookFunction_t)( void * );


typedef enum
{
 eRunning = 0,
 eReady,
 eBlocked,
 eSuspended,
 eDeleted,
 eInvalid
} eTaskState;


typedef enum
{
 eNoAction = 0,
 eSetBits,
 eIncrement,
 eSetValueWithOverwrite,
 eSetValueWithoutOverwrite
} eNotifyAction;




typedef struct xTIME_OUT
{
 BaseType_t xOverflowCount;
 TickType_t xTimeOnEntering;
} TimeOut_t;




typedef struct xMEMORY_REGION
{
 void *pvBaseAddress;
 uint32_t ulLengthInBytes;
 uint32_t ulParameters;
} MemoryRegion_t;




typedef struct xTASK_PARAMETERS
{
 TaskFunction_t pvTaskCode;
 const char * const pcName;
 uint16_t usStackDepth;
 void *pvParameters;
 UBaseType_t uxPriority;
 StackType_t *puxStackBuffer;
 MemoryRegion_t xRegions[ 1 ];



} TaskParameters_t;



typedef struct xTASK_STATUS
{
 TaskHandle_t xHandle;
 const char *pcTaskName;
 UBaseType_t xTaskNumber;
 eTaskState eCurrentState;
 UBaseType_t uxCurrentPriority;
 UBaseType_t uxBasePriority;
 uint32_t ulRunTimeCounter;
 StackType_t *pxStackBase;
 uint16_t usStackHighWaterMark;
} TaskStatus_t;


typedef enum
{
 eAbortSleep = 0,
 eStandardSleep,
 eNoTasksWaitingTimeout
} eSleepModeStatus;
# 330 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
 BaseType_t xTaskCreate( TaskFunction_t pxTaskCode,
       const char * const pcName,
       const uint16_t usStackDepth,
       void * const pvParameters,
       UBaseType_t uxPriority,
       TaskHandle_t * const pxCreatedTask ) ;
# 446 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
 TaskHandle_t xTaskCreateStatic( TaskFunction_t pxTaskCode,
         const char * const pcName,
         const uint32_t ulStackDepth,
         void * const pvParameters,
         UBaseType_t uxPriority,
         StackType_t * const puxStackBuffer,
         StaticTask_t * const pxTaskBuffer ) ;
# 665 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskAllocateMPURegions( TaskHandle_t xTask, const MemoryRegion_t * const pxRegions ) ;
# 706 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskDelete( TaskHandle_t xTaskToDelete ) ;
# 758 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskDelay( const TickType_t xTicksToDelay ) ;
# 817 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskDelayUntil( TickType_t * const pxPreviousWakeTime, const TickType_t xTimeIncrement ) ;
# 842 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskAbortDelay( TaskHandle_t xTask ) ;
# 889 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
UBaseType_t uxTaskPriorityGet( const TaskHandle_t xTask ) ;







UBaseType_t uxTaskPriorityGetFromISR( const TaskHandle_t xTask ) ;
# 915 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
eTaskState eTaskGetState( TaskHandle_t xTask ) ;
# 971 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskGetInfo( TaskHandle_t xTask, TaskStatus_t *pxTaskStatus, BaseType_t xGetFreeStackSpace, eTaskState eState ) ;
# 1013 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskPrioritySet( TaskHandle_t xTask, UBaseType_t uxNewPriority ) ;
# 1064 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskSuspend( TaskHandle_t xTaskToSuspend ) ;
# 1113 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskResume( TaskHandle_t xTaskToResume ) ;
# 1142 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskResumeFromISR( TaskHandle_t xTaskToResume ) ;
# 1175 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskStartScheduler( void ) ;
# 1231 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskEndScheduler( void ) ;
# 1282 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskSuspendAll( void ) ;
# 1336 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskResumeAll( void ) ;
# 1351 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
TickType_t xTaskGetTickCount( void ) ;
BaseType_t xTaskGetTickCount2( TickType_t *ticks, BaseType_t *overflow ) ;
# 1368 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
TickType_t xTaskGetTickCountFromISR( void ) ;
# 1382 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
UBaseType_t uxTaskGetNumberOfTasks( void ) ;
# 1395 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
char *pcTaskGetName( TaskHandle_t xTaskToQuery ) ;
# 1411 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
TaskHandle_t xTaskGetHandle( const char *pcNameToQuery ) ;
# 1438 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
UBaseType_t uxTaskGetStackHighWaterMark( TaskHandle_t xTask ) ;
# 1465 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
uint16_t uxTaskGetStackHighWaterMark2( TaskHandle_t xTask ) ;
# 1513 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
 void vTaskSetThreadLocalStoragePointer( TaskHandle_t xTaskToSet, BaseType_t xIndex, void *pvValue ) ;
 void *pvTaskGetThreadLocalStoragePointer( TaskHandle_t xTaskToQuery, BaseType_t xIndex ) ;






        typedef void (*TlsDeleteCallbackFunction_t)( int, void * );




        UBaseType_t vTaskSetThreadLocalStoragePointerAndDelCallback( TaskHandle_t xTaskToSet, BaseType_t xIndex, void *pvValue, TlsDeleteCallbackFunction_t pvDelCallback);
# 1541 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskCallApplicationTaskHook( TaskHandle_t xTask, void *pvParameter ) ;
# 1550 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
TaskHandle_t xTaskGetIdleTaskHandle( void ) ;
# 1649 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
UBaseType_t uxTaskGetSystemState( TaskStatus_t * const pxTaskStatusArray, const UBaseType_t uxArraySize, uint32_t * const pulTotalRunTime ) ;
UBaseType_t xAddTasksToAllList( void ) ;
List_t * pxTaskGetAllList( void ) ;
# 1698 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskList( char * pcWriteBuffer ) ;
# 1752 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskGetRunTimeStats( char *pcWriteBuffer ) ;
# 1782 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
TickType_t xTaskGetIdleRunTimeCounter( void ) ;
# 1863 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskGenericNotify( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, uint32_t *pulPreviousNotificationValue ) ;
# 1954 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskGenericNotifyFromISR( TaskHandle_t xTaskToNotify, uint32_t ulValue, eNotifyAction eAction, uint32_t *pulPreviousNotificationValue, BaseType_t *pxHigherPriorityTaskWoken ) ;
# 2031 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskNotifyWait( uint32_t ulBitsToClearOnEntry, uint32_t ulBitsToClearOnExit, uint32_t *pulNotificationValue, TickType_t xTicksToWait ) ;
# 2132 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskNotifyGiveFromISR( TaskHandle_t xTaskToNotify, BaseType_t *pxHigherPriorityTaskWoken ) ;
# 2201 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
uint32_t ulTaskNotifyTake( BaseType_t xClearCountOnExit, TickType_t xTicksToWait ) ;
# 2217 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskNotifyStateClear( TaskHandle_t xTask );
# 2238 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskIncrementTick( void ) ;
# 2271 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskPlaceOnEventList( List_t * const pxEventList, const TickType_t xTicksToWait ) ;
void vTaskPlaceOnUnorderedEventList( List_t * pxEventList, const TickType_t xItemValue, const TickType_t xTicksToWait ) ;
# 2285 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskPlaceOnEventListRestricted( List_t * const pxEventList, TickType_t xTicksToWait, const BaseType_t xWaitIndefinitely ) ;
# 2311 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
BaseType_t xTaskRemoveFromEventList( const List_t * const pxEventList ) ;
void vTaskRemoveFromUnorderedEventList( ListItem_t * pxEventListItem, const TickType_t xItemValue ) ;
# 2322 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
 void vTaskSwitchContext( void ) ;





TickType_t uxTaskResetEventItemValue( void ) ;




TaskHandle_t xTaskGetCurrentTaskHandle( void ) ;




void vTaskSetTimeOutState( TimeOut_t * const pxTimeOut ) ;





BaseType_t xTaskCheckForTimeOut( TimeOut_t * const pxTimeOut, TickType_t * const pxTicksToWait ) ;





void vTaskMissedYield( void ) ;





BaseType_t xTaskGetSchedulerState( void ) ;





BaseType_t xTaskPriorityInherit( TaskHandle_t const pxMutexHolder ) ;





BaseType_t xTaskPriorityDisinherit( TaskHandle_t const pxMutexHolder ) ;
# 2378 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskPriorityDisinheritAfterTimeout( TaskHandle_t const pxMutexHolder, UBaseType_t uxHighestPriorityWaitingTask ) ;




UBaseType_t uxTaskGetTaskNumber( TaskHandle_t xTask ) ;





void vTaskSetTaskNumber( TaskHandle_t xTask, const UBaseType_t uxHandle ) ;
# 2399 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
void vTaskStepTick( const TickType_t xTicksToJump ) ;
void vTaskStepTickSafe( const TickType_t xTicksToJump ) ;
# 2416 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h"
eSleepModeStatus eTaskConfirmSleepModeStatus( void ) ;





TaskHandle_t pvTaskIncrementMutexHeldCount( void ) ;





void vTaskInternalSetTimeOutState( TimeOut_t * const pxTimeOut ) ;
# 9 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/button.h" 2
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h" 1
# 38 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/task.h" 1
# 39 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h" 2
# 76 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
struct tmrTimerControl;
typedef struct tmrTimerControl * TimerHandle_t;




typedef void (*TimerCallbackFunction_t)( TimerHandle_t xTimer );





typedef void (*PendedFunction_t)( void *, uint32_t );
# 228 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
 TimerHandle_t xTimerCreate( const char * const pcTimerName,
        const TickType_t xTimerPeriodInTicks,
        const UBaseType_t uxAutoReload,
        void * const pvTimerID,
        TimerCallbackFunction_t pxCallbackFunction ) ;
# 358 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
 TimerHandle_t xTimerCreateStatic( const char * const pcTimerName,
          const TickType_t xTimerPeriodInTicks,
          const UBaseType_t uxAutoReload,
          void * const pvTimerID,
          TimerCallbackFunction_t pxCallbackFunction,
          StaticTimer_t *pxTimerBuffer ) ;
# 386 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
void *pvTimerGetTimerID( const TimerHandle_t xTimer ) ;
# 407 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
void vTimerSetTimerID( TimerHandle_t xTimer, void *pvNewID ) ;
# 444 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
BaseType_t xTimerIsTimerActive( TimerHandle_t xTimer ) ;







TaskHandle_t xTimerGetTimerDaemonTaskHandle( void ) ;
# 1187 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
BaseType_t xTimerPendFunctionCallFromISR( PendedFunction_t xFunctionToPend, void *pvParameter1, uint32_t ulParameter2, BaseType_t *pxHigherPriorityTaskWoken ) ;
# 1221 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
BaseType_t xTimerPendFunctionCall( PendedFunction_t xFunctionToPend, void *pvParameter1, uint32_t ulParameter2, TickType_t xTicksToWait ) ;
# 1232 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
const char * pcTimerGetName( TimerHandle_t xTimer ) ;
# 1249 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
void vTimerSetReloadMode( TimerHandle_t xTimer, const UBaseType_t uxAutoReload ) ;
# 1260 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
TickType_t xTimerGetPeriod( TimerHandle_t xTimer ) ;
# 1275 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h"
TickType_t xTimerGetExpiryTime( TimerHandle_t xTimer ) ;





BaseType_t xTimerCreateTimerTask( void ) ;
BaseType_t xTimerGenericCommand( TimerHandle_t xTimer, const BaseType_t xCommandID, const TickType_t xOptionalValue, BaseType_t * const pxHigherPriorityTaskWoken, const TickType_t xTicksToWait ) ;


 void vTimerSetTimerNumber( TimerHandle_t xTimer, UBaseType_t uxTimerNumber ) ;
 UBaseType_t uxTimerGetTimerNumber( TimerHandle_t xTimer ) ;
# 10 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/button.h" 2
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sockets.h" 1
# 42 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sockets.h"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/opt.h" 1
# 51 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/opt.h"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/lwip-port/config/lwipopts.h" 1
# 400 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/lwip-port/config/lwipopts.h"
extern int bl_rand();
# 413 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/lwip-port/config/lwipopts.h"
void *sys_thread_sem_get(void);
void sys_thread_sem_init(void);
void sys_thread_sem_deinit(void);
# 52 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/opt.h" 2
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/debug.h" 1
# 40 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/debug.h"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/arch.h" 1
# 48 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/arch.h"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/lwip-port/arch/cc.h" 1
# 35 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/lwip-port/arch/cc.h"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/lwip-port/arch/cpu.h" 1
# 36 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/lwip-port/arch/cc.h" 2

typedef int sys_prot_t;
# 49 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/arch.h" 2
# 83 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/arch.h"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 1 3
# 10 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 3
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/ieeefp.h" 1 3
# 11 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 2 3





# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 17 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 2 3



# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/stdlib.h" 1 3
# 21 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 2 3

# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/alloca.h" 1 3
# 23 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 2 3







# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_locale.h" 1 3
# 9 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_locale.h" 3

# 9 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_locale.h" 3
struct __locale_t;
typedef struct __locale_t *locale_t;
# 31 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 2 3




typedef struct
{
  int quot;
  int rem;
} div_t;

typedef struct
{
  long quot;
  long rem;
} ldiv_t;


typedef struct
{
  long long int quot;
  long long int rem;
} lldiv_t;




typedef int (*__compar_fn_t) (const void *, const void *);







int __locale_mb_cur_max (void);



void abort (void) __attribute__ ((__noreturn__));
int abs (int);

__uint32_t arc4random (void);
__uint32_t arc4random_uniform (__uint32_t);
void arc4random_buf (void *, size_t);

int atexit (void (*__func)(void));
double atof (const char *__nptr);

float atoff (const char *__nptr);

int atoi (const char *__nptr);
int _atoi_r (struct _reent *, const char *__nptr);
long atol (const char *__nptr);
long _atol_r (struct _reent *, const char *__nptr);
void * bsearch (const void *__key,
         const void *__base,
         size_t __nmemb,
         size_t __size,
         __compar_fn_t _compar);
void *calloc(size_t, size_t) __attribute__((__malloc__)) __attribute__((__warn_unused_result__))
      __attribute__((__alloc_size__(1, 2))) ;
div_t div (int __numer, int __denom);
void exit (int __status) __attribute__ ((__noreturn__));
void free (void *) ;
char * getenv (const char *__string);
char * _getenv_r (struct _reent *, const char *__string);

char * secure_getenv (const char *__string);

char * _findenv (const char *, int *);
char * _findenv_r (struct _reent *, const char *, int *);

extern char *suboptarg;
int getsubopt (char **, char * const *, char **);

long labs (long);
ldiv_t ldiv (long __numer, long __denom);
void *malloc(size_t) __attribute__((__malloc__)) __attribute__((__warn_unused_result__)) __attribute__((__alloc_size__(1))) ;
int mblen (const char *, size_t);
int _mblen_r (struct _reent *, const char *, size_t, _mbstate_t *);
int mbtowc (wchar_t *restrict, const char *restrict, size_t);
int _mbtowc_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
int wctomb (char *, wchar_t);
int _wctomb_r (struct _reent *, char *, wchar_t, _mbstate_t *);
size_t mbstowcs (wchar_t *restrict, const char *restrict, size_t);
size_t _mbstowcs_r (struct _reent *, wchar_t *restrict, const char *restrict, size_t, _mbstate_t *);
size_t wcstombs (char *restrict, const wchar_t *restrict, size_t);
size_t _wcstombs_r (struct _reent *, char *restrict, const wchar_t *restrict, size_t, _mbstate_t *);


char * mkdtemp (char *);


int mkostemp (char *, int);
int mkostemps (char *, int, int);


int mkstemp (char *);


int mkstemps (char *, int);


char * mktemp (char *) __attribute__ ((__deprecated__("the use of `mktemp' is dangerous; use `mkstemp' instead")));


char * _mkdtemp_r (struct _reent *, char *);
int _mkostemp_r (struct _reent *, char *, int);
int _mkostemps_r (struct _reent *, char *, int, int);
int _mkstemp_r (struct _reent *, char *);
int _mkstemps_r (struct _reent *, char *, int);
char * _mktemp_r (struct _reent *, char *) __attribute__ ((__deprecated__("the use of `mktemp' is dangerous; use `mkstemp' instead")));
void qsort (void *__base, size_t __nmemb, size_t __size, __compar_fn_t _compar);
int rand (void);
void *realloc(void *, size_t) __attribute__((__warn_unused_result__)) __attribute__((__alloc_size__(2))) ;

void *reallocarray(void *, size_t, size_t) __attribute__((__warn_unused_result__)) __attribute__((__alloc_size__(2, 3)));
void *reallocf(void *, size_t) __attribute__((__warn_unused_result__)) __attribute__((__alloc_size__(2)));


char * realpath (const char *restrict path, char *restrict resolved_path);


int rpmatch (const char *response);


void setkey (const char *__key);

void srand (unsigned __seed);
double strtod (const char *restrict __n, char **restrict __end_PTR);
double _strtod_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR);

float strtof (const char *restrict __n, char **restrict __end_PTR);







long strtol (const char *restrict __n, char **restrict __end_PTR, int __base);
long _strtol_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long strtoul (const char *restrict __n, char **restrict __end_PTR, int __base);
unsigned long _strtoul_r (struct _reent *,const char *restrict __n, char **restrict __end_PTR, int __base);


double strtod_l (const char *restrict, char **restrict, locale_t);
float strtof_l (const char *restrict, char **restrict, locale_t);

extern long double strtold_l (const char *restrict, char **restrict,
         locale_t);

long strtol_l (const char *restrict, char **restrict, int, locale_t);
unsigned long strtoul_l (const char *restrict, char **restrict, int,
    locale_t __loc);
long long strtoll_l (const char *restrict, char **restrict, int, locale_t);
unsigned long long strtoull_l (const char *restrict, char **restrict, int,
          locale_t __loc);


int system (const char *__string);


long a64l (const char *__input);
char * l64a (long __input);
char * _l64a_r (struct _reent *,long __input);


int on_exit (void (*__func)(int, void *),void *__arg);


void _Exit (int __status) __attribute__ ((__noreturn__));


int putenv (char *__string);

int _putenv_r (struct _reent *, char *__string);
void * _reallocf_r (struct _reent *, void *, size_t);

int setenv (const char *__string, const char *__value, int __overwrite);

int _setenv_r (struct _reent *, const char *__string, const char *__value, int __overwrite);
# 224 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 3
char * __itoa (int, char *, int);
char * __utoa (unsigned, char *, int);

char * itoa (int, char *, int);
char * utoa (unsigned, char *, int);


int rand_r (unsigned *__seed);



double drand48 (void);
double _drand48_r (struct _reent *);
double erand48 (unsigned short [3]);
double _erand48_r (struct _reent *, unsigned short [3]);
long jrand48 (unsigned short [3]);
long _jrand48_r (struct _reent *, unsigned short [3]);
void lcong48 (unsigned short [7]);
void _lcong48_r (struct _reent *, unsigned short [7]);
long lrand48 (void);
long _lrand48_r (struct _reent *);
long mrand48 (void);
long _mrand48_r (struct _reent *);
long nrand48 (unsigned short [3]);
long _nrand48_r (struct _reent *, unsigned short [3]);
unsigned short *
       seed48 (unsigned short [3]);
unsigned short *
       _seed48_r (struct _reent *, unsigned short [3]);
void srand48 (long);
void _srand48_r (struct _reent *, long);


char * initstate (unsigned, char *, size_t);
long random (void);
char * setstate (char *);
void srandom (unsigned);


long long atoll (const char *__nptr);

long long _atoll_r (struct _reent *, const char *__nptr);

long long llabs (long long);
lldiv_t lldiv (long long __numer, long long __denom);
long long strtoll (const char *restrict __n, char **restrict __end_PTR, int __base);

long long _strtoll_r (struct _reent *, const char *restrict __n, char **restrict __end_PTR, int __base);

unsigned long long strtoull (const char *restrict __n, char **restrict __end_PTR, int __base);

unsigned long long _strtoull_r (struct _reent *, const char *restrict __n, char **restrict __end_PTR, int __base);



void cfree (void *);


int unsetenv (const char *__string);

int _unsetenv_r (struct _reent *, const char *__string);



int posix_memalign (void **, size_t, size_t) __attribute__((__nonnull__ (1)))
     __attribute__((__warn_unused_result__));


char * _dtoa_r (struct _reent *, double, int, int, int *, int*, char**);

void * _malloc_r (struct _reent *, size_t) ;
void * _calloc_r (struct _reent *, size_t, size_t) ;
void _free_r (struct _reent *, void *) ;
void * _realloc_r (struct _reent *, void *, size_t) ;
void _mstats_r (struct _reent *, char *);

int _system_r (struct _reent *, const char *);

void __eprintf (const char *, const char *, unsigned int, const char *);






void qsort_r (void *__base, size_t __nmemb, size_t __size, int (*_compar)(const void *, const void *, void *), void *__thunk);
# 322 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdlib.h" 3
extern long double _strtold_r (struct _reent *, const char *restrict, char **restrict);

extern long double strtold (const char *restrict, char **restrict);







void * aligned_alloc(size_t, size_t) __attribute__((__malloc__)) __attribute__((__alloc_align__(1)))
     __attribute__((__alloc_size__(2))) __attribute__((__warn_unused_result__));
int at_quick_exit(void (*)(void));
__attribute__((__noreturn__)) void
 quick_exit(int);



# 84 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/arch.h" 2
# 107 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/arch.h"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 108 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/arch.h" 2
# 125 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/arch.h"

# 125 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/arch.h"
typedef uint8_t u8_t;
typedef int8_t s8_t;
typedef uint16_t u16_t;
typedef int16_t s16_t;
typedef uint32_t u32_t;
typedef int32_t s32_t;

typedef uint64_t u64_t;
typedef int64_t s64_t;

typedef uintptr_t mem_ptr_t;
# 148 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/arch.h"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/inttypes.h" 1 3
# 18 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/inttypes.h" 3
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_intsup.h" 1 3
# 35 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_intsup.h" 3
       
       
       
       
       
       
       
       
# 190 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_intsup.h" 3
       
       
       
       
       
       
       
       
# 19 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/inttypes.h" 2 3



# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 23 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/inttypes.h" 2 3
# 312 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/inttypes.h" 3

# 312 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/inttypes.h" 3
typedef struct {
  intmax_t quot;
  intmax_t rem;
} imaxdiv_t;

struct _reent;





extern intmax_t imaxabs(intmax_t);
extern imaxdiv_t imaxdiv(intmax_t numer, intmax_t denomer);
extern intmax_t strtoimax(const char *restrict, char **restrict, int);
extern intmax_t _strtoimax_r(struct _reent *, const char *restrict, char **restrict, int);
extern uintmax_t strtoumax(const char *restrict, char **restrict, int);
extern uintmax_t _strtoumax_r(struct _reent *, const char *restrict, char **restrict, int);
extern intmax_t wcstoimax(const wchar_t *restrict, wchar_t **restrict, int);
extern intmax_t _wcstoimax_r(struct _reent *, const wchar_t *restrict, wchar_t **restrict, int);
extern uintmax_t wcstoumax(const wchar_t *restrict, wchar_t **restrict, int);
extern uintmax_t _wcstoumax_r(struct _reent *, const wchar_t *restrict, wchar_t **restrict, int);


extern intmax_t strtoimax_l(const char *restrict, char **_restrict, int, locale_t);
extern uintmax_t strtoumax_l(const char *restrict, char **_restrict, int, locale_t);
extern intmax_t wcstoimax_l(const wchar_t *restrict, wchar_t **_restrict, int, locale_t);
extern uintmax_t wcstoumax_l(const wchar_t *restrict, wchar_t **_restrict, int, locale_t);
# 149 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/arch.h" 2
# 185 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/arch.h"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include-fixed/limits.h" 1 3 4
# 34 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include-fixed/limits.h" 3 4
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include-fixed/syslimits.h" 1 3 4






# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include-fixed/limits.h" 1 3 4
# 195 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include-fixed/limits.h" 3 4
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/limits.h" 1 3 4





# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/syslimits.h" 1 3 4
# 7 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/limits.h" 2 3 4
# 196 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include-fixed/limits.h" 2 3 4
# 8 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include-fixed/syslimits.h" 2 3 4
# 35 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include-fixed/limits.h" 2 3 4
# 186 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/arch.h" 2
# 203 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/arch.h"

# 203 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/arch.h"
typedef int ssize_t;
# 230 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/arch.h"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/ctype.h" 1 3
# 11 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/ctype.h" 3



# 13 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/ctype.h" 3
int isalnum (int __c);
int isalpha (int __c);
int iscntrl (int __c);
int isdigit (int __c);
int isgraph (int __c);
int islower (int __c);
int isprint (int __c);
int ispunct (int __c);
int isspace (int __c);
int isupper (int __c);
int isxdigit (int __c);
int tolower (int __c);
int toupper (int __c);


int isblank (int __c);



int isascii (int __c);
int toascii (int __c);





extern int isalnum_l (int __c, locale_t __l);
extern int isalpha_l (int __c, locale_t __l);
extern int isblank_l (int __c, locale_t __l);
extern int iscntrl_l (int __c, locale_t __l);
extern int isdigit_l (int __c, locale_t __l);
extern int isgraph_l (int __c, locale_t __l);
extern int islower_l (int __c, locale_t __l);
extern int isprint_l (int __c, locale_t __l);
extern int ispunct_l (int __c, locale_t __l);
extern int isspace_l (int __c, locale_t __l);
extern int isupper_l (int __c, locale_t __l);
extern int isxdigit_l(int __c, locale_t __l);
extern int tolower_l (int __c, locale_t __l);
extern int toupper_l (int __c, locale_t __l);



extern int isascii_l (int __c, locale_t __l);
extern int toascii_l (int __c, locale_t __l);
# 70 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/ctype.h" 3
extern const char _ctype_[];
# 114 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/ctype.h" 3
static __inline const char *
__locale_ctype_ptr_l(locale_t _l)
{
 (void)_l;
 return _ctype_;
}
# 181 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/ctype.h" 3

# 231 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/arch.h" 2
# 41 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/debug.h" 2
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/opt.h" 1
# 42 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/debug.h" 2
# 53 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/opt.h" 2
# 43 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sockets.h" 2



# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/ip_addr.h" 1
# 41 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/ip_addr.h"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/def.h" 1
# 96 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/def.h"

# 96 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/def.h"
u16_t lwip_htons(u16_t x);




u32_t lwip_htonl(u32_t x);
# 133 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/def.h"
void lwip_itoa(char* result, size_t bufsize, int number);



int lwip_strnicmp(const char* str1, const char* str2, size_t len);



int lwip_stricmp(const char* str1, const char* str2);



char* lwip_strnstr(const char* buffer, const char* token, size_t n);
# 42 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/ip_addr.h" 2

# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/ip4_addr.h" 1
# 51 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/ip4_addr.h"
struct ip4_addr {
  u32_t addr;
};



typedef struct ip4_addr ip4_addr_t;


struct netif;
# 151 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/ip4_addr.h"
u8_t ip4_addr_isbroadcast_u32(u32_t addr, const struct netif *netif);


u8_t ip4_addr_netmask_valid(u32_t netmask);
# 204 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/ip4_addr.h"
u32_t ipaddr_addr(const char *cp);
int ip4addr_aton(const char *cp, ip4_addr_t *addr);

char *ip4addr_ntoa(const ip4_addr_t *addr);
char *ip4addr_ntoa_r(const ip4_addr_t *addr, char *buf, int buflen);
# 44 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/ip_addr.h" 2
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/ip6_addr.h" 1
# 46 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/ip6_addr.h"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/def.h" 1
# 47 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/ip6_addr.h" 2
# 45 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/ip_addr.h" 2
# 54 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/ip_addr.h"
enum lwip_ip_addr_type {

  IPADDR_TYPE_V4 = 0U,

  IPADDR_TYPE_V6 = 6U,

  IPADDR_TYPE_ANY = 46U
};
# 270 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/ip_addr.h"
typedef ip4_addr_t ip_addr_t;
# 369 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/ip_addr.h"
extern const ip_addr_t ip_addr_any;
extern const ip_addr_t ip_addr_broadcast;
# 47 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sockets.h" 2
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h" 1
# 44 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/err.h" 1
# 53 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/err.h"
typedef enum {

  ERR_OK = 0,

  ERR_MEM = -1,

  ERR_BUF = -2,

  ERR_TIMEOUT = -3,

  ERR_RTE = -4,

  ERR_INPROGRESS = -5,

  ERR_VAL = -6,

  ERR_WOULDBLOCK = -7,

  ERR_USE = -8,

  ERR_ALREADY = -9,

  ERR_ISCONN = -10,

  ERR_CONN = -11,

  ERR_IF = -12,


  ERR_ABRT = -13,

  ERR_RST = -14,

  ERR_CLSD = -15,

  ERR_ARG = -16
} err_enum_t;






typedef s8_t err_t;
# 110 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/err.h"
int err_to_errno(err_t err);
# 45 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h" 2




# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/pbuf.h" 1
# 89 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/pbuf.h"
typedef enum {



  PBUF_TRANSPORT = 128u + (14 + 0) + 20 + 20,



  PBUF_IP = 128u + (14 + 0) + 20,




  PBUF_LINK = 128u + (14 + 0),





  PBUF_RAW_TX = 128u,


  PBUF_RAW = 0
} pbuf_layer;
# 145 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/pbuf.h"
typedef enum {






  PBUF_RAM = (0x0200 | 0x80 | 0x00),



  PBUF_ROM = 0x01,



  PBUF_REF = (0x40 | 0x01),






  PBUF_POOL = (0x0100 | 0x80 | 0x02)
} pbuf_type;
# 186 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/pbuf.h"
struct pbuf {

  struct pbuf *next;


  void *payload;
# 200 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/pbuf.h"
  u16_t tot_len;


  u16_t len;




  u8_t type_internal;


  u8_t flags;






  u8_t ref;


  u8_t if_idx;
};






struct pbuf_rom {

  struct pbuf *next;


  const void *payload;
};



typedef void (*pbuf_free_custom_fn)(struct pbuf *p);


struct pbuf_custom {

  struct pbuf pbuf;

  pbuf_free_custom_fn custom_free_function;
};
# 272 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/pbuf.h"
struct pbuf *pbuf_alloc(pbuf_layer l, u16_t length, pbuf_type type);
struct pbuf *pbuf_alloc_reference(void *payload, u16_t length, pbuf_type type);

struct pbuf *pbuf_alloced_custom(pbuf_layer l, u16_t length, pbuf_type type,
                                 struct pbuf_custom *p, void *payload_mem,
                                 u16_t payload_mem_len);

void pbuf_realloc(struct pbuf *p, u16_t size);



u8_t pbuf_header(struct pbuf *p, s16_t header_size);
u8_t pbuf_header_force(struct pbuf *p, s16_t header_size);
u8_t pbuf_add_header(struct pbuf *p, size_t header_size_increment);
u8_t pbuf_add_header_force(struct pbuf *p, size_t header_size_increment);
u8_t pbuf_remove_header(struct pbuf *p, size_t header_size);
struct pbuf *pbuf_free_header(struct pbuf *q, u16_t size);
void pbuf_ref(struct pbuf *p);
u8_t pbuf_free(struct pbuf *p);
u16_t pbuf_clen(const struct pbuf *p);
void pbuf_cat(struct pbuf *head, struct pbuf *tail);
void pbuf_chain(struct pbuf *head, struct pbuf *tail);
struct pbuf *pbuf_dechain(struct pbuf *p);
err_t pbuf_copy(struct pbuf *p_to, const struct pbuf *p_from);
u16_t pbuf_copy_partial(const struct pbuf *p, void *dataptr, u16_t len, u16_t offset);
void *pbuf_get_contiguous(const struct pbuf *p, void *buffer, size_t bufsize, u16_t len, u16_t offset);
err_t pbuf_take(struct pbuf *buf, const void *dataptr, u16_t len);
err_t pbuf_take_at(struct pbuf *buf, const void *dataptr, u16_t len, u16_t offset);
struct pbuf *pbuf_skip(struct pbuf* in, u16_t in_offset, u16_t* out_offset);
struct pbuf *pbuf_coalesce(struct pbuf *p, pbuf_layer layer);
struct pbuf *pbuf_clone(pbuf_layer l, pbuf_type type, struct pbuf *p);

err_t pbuf_fill_chksum(struct pbuf *p, u16_t start_offset, const void *dataptr,
                       u16_t len, u16_t *chksum);





u8_t pbuf_get_at(const struct pbuf* p, u16_t offset);
int pbuf_try_get_at(const struct pbuf* p, u16_t offset);
void pbuf_put_at(struct pbuf* p, u16_t offset, u8_t data);
u16_t pbuf_memcmp(const struct pbuf* p, u16_t offset, const void* s2, u16_t n);
u16_t pbuf_memfind(const struct pbuf* p, const void* mem, u16_t mem_len, u16_t start_offset);
u16_t pbuf_strstr(const struct pbuf* p, const char* substr);
# 50 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h" 2
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/stats.h" 1
# 42 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/stats.h"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/mem.h" 1
# 67 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/mem.h"
typedef u16_t mem_size_t;




void mem_init(void);
void *mem_trim(void *mem, mem_size_t size);
void *mem_malloc(mem_size_t size);
void *mem_calloc(mem_size_t count, mem_size_t size);
void mem_free(void *mem);
# 43 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/stats.h" 2
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/memp.h" 1
# 49 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/memp.h"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/priv/memp_std.h" 1
# 42 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/priv/memp_std.h"















# 67 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/priv/memp_std.h"






# 89 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/priv/memp_std.h"

# 98 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/priv/memp_std.h"









# 133 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/priv/memp_std.h"


# 50 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/memp.h" 2


typedef enum {

# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/priv/memp_std.h" 1
# 42 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/priv/memp_std.h"
MEMP_RAW_PCB,



MEMP_UDP_PCB,



MEMP_TCP_PCB,
MEMP_TCP_PCB_LISTEN,
MEMP_TCP_SEG,



MEMP_ALTCP_PCB,
# 67 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/priv/memp_std.h"
MEMP_NETBUF,
MEMP_NETCONN,



MEMP_TCPIP_MSG_API,
# 89 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/priv/memp_std.h"
MEMP_TCPIP_MSG_INPKT,
# 98 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/priv/memp_std.h"
MEMP_IGMP_GROUP,



MEMP_SYS_TIMEOUT,



MEMP_NETDB,
# 133 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/priv/memp_std.h"
MEMP_PBUF,
MEMP_PBUF_POOL,
# 55 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/memp.h" 2
  MEMP_MAX
} memp_t;

# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/priv/memp_priv.h" 1
# 48 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/priv/memp_priv.h"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/priv/mem_priv.h" 1
# 49 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/priv/memp_priv.h" 2
# 69 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/priv/memp_priv.h"
struct memp {
  struct memp *next;




};
# 108 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/priv/memp_priv.h"
struct memp_desc {






  struct stats_mem *stats;



  u16_t size;



  u16_t num;


  u8_t *base;


  struct memp **tab;

};
# 147 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/priv/memp_priv.h"
void memp_init_pool(const struct memp_desc *desc);





void *memp_malloc_pool(const struct memp_desc *desc);

void memp_free_pool(const struct memp_desc* desc, void *mem);
# 59 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/memp.h" 2
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/stats.h" 1
# 60 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/memp.h" 2

extern const struct memp_desc* const memp_pools[MEMP_MAX];
# 141 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/memp.h"
void memp_init(void);





void *memp_malloc(memp_t type);

void memp_free(memp_t type, void *mem);
# 44 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/stats.h" 2
# 64 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/stats.h"
struct stats_proto {
  u16_t xmit;
  u16_t recv;
  u16_t fw;
  u16_t drop;
  u16_t chkerr;
  u16_t lenerr;
  u16_t memerr;
  u16_t rterr;
  u16_t proterr;
  u16_t opterr;
  u16_t err;
  u16_t cachehit;
};


struct stats_igmp {
  u16_t xmit;
  u16_t recv;
  u16_t drop;
  u16_t chkerr;
  u16_t lenerr;
  u16_t memerr;
  u16_t proterr;
  u16_t rx_v1;
  u16_t rx_group;
  u16_t rx_general;
  u16_t rx_report;
  u16_t tx_join;
  u16_t tx_leave;
  u16_t tx_report;
};


struct stats_mem {



  u16_t err;
  mem_size_t avail;
  mem_size_t used;
  mem_size_t max;
  u16_t illegal;
};


struct stats_syselem {
  u16_t used;
  u16_t max;
  u16_t err;
};


struct stats_sys {
  struct stats_syselem sem;
  struct stats_syselem mutex;
  struct stats_syselem mbox;
};


struct stats_mib2 {

  u32_t ipinhdrerrors;
  u32_t ipinaddrerrors;
  u32_t ipinunknownprotos;
  u32_t ipindiscards;
  u32_t ipindelivers;
  u32_t ipoutrequests;
  u32_t ipoutdiscards;
  u32_t ipoutnoroutes;
  u32_t ipreasmoks;
  u32_t ipreasmfails;
  u32_t ipfragoks;
  u32_t ipfragfails;
  u32_t ipfragcreates;
  u32_t ipreasmreqds;
  u32_t ipforwdatagrams;
  u32_t ipinreceives;


  u32_t tcpactiveopens;
  u32_t tcppassiveopens;
  u32_t tcpattemptfails;
  u32_t tcpestabresets;
  u32_t tcpoutsegs;
  u32_t tcpretranssegs;
  u32_t tcpinsegs;
  u32_t tcpinerrs;
  u32_t tcpoutrsts;


  u32_t udpindatagrams;
  u32_t udpnoports;
  u32_t udpinerrors;
  u32_t udpoutdatagrams;


  u32_t icmpinmsgs;
  u32_t icmpinerrors;
  u32_t icmpindestunreachs;
  u32_t icmpintimeexcds;
  u32_t icmpinparmprobs;
  u32_t icmpinsrcquenchs;
  u32_t icmpinredirects;
  u32_t icmpinechos;
  u32_t icmpinechoreps;
  u32_t icmpintimestamps;
  u32_t icmpintimestampreps;
  u32_t icmpinaddrmasks;
  u32_t icmpinaddrmaskreps;
  u32_t icmpoutmsgs;
  u32_t icmpouterrors;
  u32_t icmpoutdestunreachs;
  u32_t icmpouttimeexcds;
  u32_t icmpoutechos;
  u32_t icmpoutechoreps;
};





struct stats_mib2_netif_ctrs {

  u32_t ifinoctets;


  u32_t ifinucastpkts;


  u32_t ifinnucastpkts;



  u32_t ifindiscards;




  u32_t ifinerrors;






  u32_t ifinunknownprotos;

  u32_t ifoutoctets;



  u32_t ifoutucastpkts;



  u32_t ifoutnucastpkts;



  u32_t ifoutdiscards;



  u32_t ifouterrors;
};


struct stats_ {


  struct stats_proto link;



  struct stats_proto etharp;







  struct stats_proto ip;



  struct stats_proto icmp;



  struct stats_igmp igmp;



  struct stats_proto udp;



  struct stats_proto tcp;



  struct stats_mem mem;



  struct stats_mem *memp[MEMP_MAX];



  struct stats_sys sys;
# 301 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/stats.h"
};


extern struct stats_ lwip_stats;


void stats_init(void);
# 488 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/stats.h"
void stats_netstat(void *ctx);
# 51 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h" 2
# 113 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
enum lwip_internal_netif_client_data_index
{


   LWIP_NETIF_CLIENT_DATA_INDEX_DHCP,





   LWIP_NETIF_CLIENT_DATA_INDEX_IGMP,
# 134 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
   LWIP_NETIF_CLIENT_DATA_INDEX_MAX
};
# 152 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
struct netif;



enum netif_mac_filter_action {

  NETIF_DEL_MAC_FILTER = 0,

  NETIF_ADD_MAC_FILTER = 1
};






typedef err_t (*netif_init_fn)(struct netif *netif);
# 178 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
typedef err_t (*netif_input_fn)(struct pbuf *p, struct netif *inp);
# 189 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
typedef err_t (*netif_output_fn)(struct netif *netif, struct pbuf *p,
       const ip4_addr_t *ipaddr);
# 212 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
typedef err_t (*netif_linkoutput_fn)(struct netif *netif, struct pbuf *p);

typedef void (*netif_status_callback_fn)(struct netif *netif);


typedef err_t (*netif_igmp_mac_filter_fn)(struct netif *netif,
       const ip4_addr_t *group, enum netif_mac_filter_action action);
# 228 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
u8_t netif_alloc_client_data_id(void);
# 244 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
typedef u8_t netif_addr_idx_t;
# 260 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
struct netif {


  struct netif *next;




  ip_addr_t ip_addr;
  ip_addr_t netmask;
  ip_addr_t gw;
# 289 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
  netif_input_fn input;





  netif_output_fn output;




  netif_linkoutput_fn linkoutput;
# 311 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
  netif_status_callback_fn status_callback;




  netif_status_callback_fn link_callback;







  void *state;

  void* client_data[LWIP_NETIF_CLIENT_DATA_INDEX_MAX + 1];



  const char* hostname;





  u16_t mtu;





  u8_t hwaddr[6U];

  u8_t hwaddr_len;

  u8_t flags;

  char name[2];


  u8_t num;






  u8_t rs_count;
# 373 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
  netif_igmp_mac_filter_fn igmp_mac_filter;
# 385 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
  struct pbuf *loop_first;
  struct pbuf *loop_last;




};
# 406 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
extern struct netif *netif_list;



extern struct netif *netif_default;

void netif_init(void);

struct netif *netif_add_noaddr(struct netif *netif, void *state, netif_init_fn init, netif_input_fn input);


struct netif *netif_add(struct netif *netif,
                            const ip4_addr_t *ipaddr, const ip4_addr_t *netmask, const ip4_addr_t *gw,
                            void *state, netif_init_fn init, netif_input_fn input);
void netif_set_addr(struct netif *netif, const ip4_addr_t *ipaddr, const ip4_addr_t *netmask,
                    const ip4_addr_t *gw);



void netif_remove(struct netif * netif);





struct netif *netif_find(const char *name);

void netif_set_default(struct netif *netif);


void netif_set_ipaddr(struct netif *netif, const ip4_addr_t *ipaddr);
void netif_set_netmask(struct netif *netif, const ip4_addr_t *netmask);
void netif_set_gw(struct netif *netif, const ip4_addr_t *gw);
# 457 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
void netif_set_up(struct netif *netif);
void netif_set_down(struct netif *netif);






void netif_set_status_callback(struct netif *netif, netif_status_callback_fn status_callback);





void netif_set_link_up(struct netif *netif);
void netif_set_link_down(struct netif *netif);




void netif_set_link_callback(struct netif *netif, netif_status_callback_fn link_callback);
# 501 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
err_t netif_loop_output(struct netif *netif, struct pbuf *p);
void netif_poll(struct netif *netif);





err_t netif_input(struct pbuf *p, struct netif *inp);
# 552 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
u8_t netif_name_to_index(const char *name);
char * netif_index_to_name(u8_t idx, char *name);
struct netif* netif_get_by_index(u8_t idx);
# 565 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
typedef u16_t netif_nsc_reason_t;
# 595 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
typedef union
{

  struct link_changed_s
  {

    u8_t state;
  } link_changed;

  struct status_changed_s
  {

    u8_t state;
  } status_changed;

  struct ipv4_changed_s
  {

    const ip_addr_t* old_address;
    const ip_addr_t* old_netmask;
    const ip_addr_t* old_gw;
  } ipv4_changed;

  struct ipv6_set_s
  {

    s8_t addr_index;

    const ip_addr_t* old_address;
  } ipv6_set;

  struct ipv6_addr_state_changed_s
  {

    s8_t addr_index;

    u8_t old_state;

    const ip_addr_t* address;
  } ipv6_addr_state_changed;
} netif_ext_callback_args_t;
# 645 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netif.h"
typedef void (*netif_ext_callback_fn)(struct netif* netif, netif_nsc_reason_t reason, const netif_ext_callback_args_t* args);
# 48 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sockets.h" 2

# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/inet.h" 1
# 55 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/inet.h"
typedef u32_t in_addr_t;


struct in_addr {
  in_addr_t s_addr;
};

struct in6_addr {
  union {
    u32_t u32_addr[4];
    u8_t u8_addr[16];
  } un;

};
# 86 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/inet.h"
extern const struct in6_addr in6addr_any;
# 50 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sockets.h" 2
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/errno.h" 1
# 177 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/errno.h"
extern int errno;
# 51 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sockets.h" 2

# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 1 3
# 17 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 3
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 18 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3






# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/strings.h" 1 3
# 44 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/strings.h" 3



# 46 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/strings.h" 3
int bcmp(const void *, const void *, size_t) __attribute__((__pure__));
void bcopy(const void *, void *, size_t);
void bzero(void *, size_t);


void explicit_bzero(void *, size_t);


int ffs(int) __attribute__((__const__));


int ffsl(long) __attribute__((__const__));
int ffsll(long long) __attribute__((__const__));
int fls(int) __attribute__((__const__));
int flsl(long) __attribute__((__const__));
int flsll(long long) __attribute__((__const__));


char *index(const char *, int) __attribute__((__pure__));
char *rindex(const char *, int) __attribute__((__pure__));

int strcasecmp(const char *, const char *) __attribute__((__pure__));
int strncasecmp(const char *, const char *, size_t) __attribute__((__pure__));


int strcasecmp_l (const char *, const char *, locale_t);
int strncasecmp_l (const char *, const char *, size_t, locale_t);


# 25 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3




void * memchr (const void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void * memcpy (void *restrict, const void *restrict, size_t);
void * memmove (void *, const void *, size_t);
void * memset (void *, int, size_t);
char *strcat (char *restrict, const char *restrict);
char *strchr (const char *, int);
int strcmp (const char *, const char *);
int strcoll (const char *, const char *);
char *strcpy (char *restrict, const char *restrict);
size_t strcspn (const char *, const char *);
char *strerror (int);
size_t strlen (const char *);
char *strncat (char *restrict, const char *restrict, size_t);
int strncmp (const char *, const char *, size_t);
char *strncpy (char *restrict, const char *restrict, size_t);
char *strpbrk (const char *, const char *);
char *strrchr (const char *, int);
size_t strspn (const char *, const char *);
char *strstr (const char *, const char *);

char *strtok (char *restrict, const char *restrict);

size_t strxfrm (char *restrict, const char *restrict, size_t);


int strcoll_l (const char *, const char *, locale_t);
char *strerror_l (int, locale_t);
size_t strxfrm_l (char *restrict, const char *restrict, size_t, locale_t);


char *strtok_r (char *restrict, const char *restrict, char **restrict);


int timingsafe_bcmp (const void *, const void *, size_t);
int timingsafe_memcmp (const void *, const void *, size_t);


void * memccpy (void *restrict, const void *restrict, int, size_t);


void * mempcpy (void *, const void *, size_t);
void * memmem (const void *, size_t, const void *, size_t);
void * memrchr (const void *, int, size_t);
void * rawmemchr (const void *, int);


char *stpcpy (char *restrict, const char *restrict);
char *stpncpy (char *restrict, const char *restrict, size_t);


char *strcasestr (const char *, const char *);
char *strchrnul (const char *, int);


char *strdup (const char *) __attribute__((__malloc__)) __attribute__((__warn_unused_result__));

char *_strdup_r (struct _reent *, const char *);

char *strndup (const char *, size_t) __attribute__((__malloc__)) __attribute__((__warn_unused_result__));

char *_strndup_r (struct _reent *, const char *, size_t);






char *strerror_r (int, char *, size_t);
# 112 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 3
char * _strerror_r (struct _reent *, int, int, int *);


size_t strlcat (char *, const char *, size_t);
size_t strlcpy (char *, const char *, size_t);


size_t strnlen (const char *, size_t);


char *strsep (char **, const char *);


char *strnstr(const char *, const char *, size_t) __attribute__((__pure__));



char *strlwr (char *);
char *strupr (char *);



char *strsignal (int __signo);







int strverscmp (const char *, const char *);
# 172 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 3
char *__attribute__((__nonnull__ (1))) basename (const char *) __asm__("" "__gnu_basename");


# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/string.h" 1 3
# 15 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/string.h" 3
static __inline unsigned long __libc_detect_null(unsigned long w)
{
  unsigned long mask = 0x7f7f7f7f;
  if (sizeof (long) == 8)
    mask = ((mask << 16) << 16) | mask;
  return ~(((w & mask) + mask) | w | mask);
}
# 176 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3


# 53 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sockets.h" 2
# 61 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sockets.h"

# 61 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sockets.h"
typedef u8_t sa_family_t;




typedef u16_t in_port_t;




struct sockaddr_in {
  u8_t sin_len;
  sa_family_t sin_family;
  in_port_t sin_port;
  struct in_addr sin_addr;

  char sin_zero[8];
};
# 92 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sockets.h"
struct sockaddr {
  u8_t sa_len;
  sa_family_t sa_family;
  char sa_data[14];
};

struct sockaddr_storage {
  u8_t s2_len;
  sa_family_t ss_family;
  char s2_data1[2];
  u32_t s2_data2[3];



};




typedef u32_t socklen_t;
# 121 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sockets.h"
struct iovec {
  void *iov_base;
  size_t iov_len;
};


struct msghdr {
  void *msg_name;
  socklen_t msg_namelen;
  struct iovec *msg_iov;
  int msg_iovlen;
  void *msg_control;
  socklen_t msg_controllen;
  int msg_flags;
};






struct cmsghdr {
  socklen_t cmsg_len;
  int cmsg_level;
  int cmsg_type;
};
# 183 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sockets.h"
struct ifreq {
  char ifr_name[6];
};
# 226 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sockets.h"
struct linger {
  int l_onoff;
  int l_linger;
};
# 319 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sockets.h"
typedef struct ip_mreq {
    struct in_addr imr_multiaddr;
    struct in_addr imr_interface;
} ip_mreq;



struct in_pktinfo {
  unsigned int ipi_ifindex;
  struct in_addr ipi_addr;
};
# 506 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sockets.h"
typedef unsigned int nfds_t;
struct pollfd
{
  int fd;
  short events;
  short revents;
};
# 529 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sockets.h"
void lwip_socket_thread_init(void);
void lwip_socket_thread_cleanup(void);
# 576 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sockets.h"
int lwip_accept(int s, struct sockaddr *addr, socklen_t *addrlen);
int lwip_bind(int s, const struct sockaddr *name, socklen_t namelen);
int lwip_shutdown(int s, int how);
int lwip_getpeername (int s, struct sockaddr *name, socklen_t *namelen);
int lwip_getsockname (int s, struct sockaddr *name, socklen_t *namelen);
int lwip_getsockopt (int s, int level, int optname, void *optval, socklen_t *optlen);
int lwip_setsockopt (int s, int level, int optname, const void *optval, socklen_t optlen);
 int lwip_close(int s);
int lwip_connect(int s, const struct sockaddr *name, socklen_t namelen);
int lwip_listen(int s, int backlog);
ssize_t lwip_recv(int s, void *mem, size_t len, int flags);
ssize_t lwip_read(int s, void *mem, size_t len);
ssize_t lwip_readv(int s, const struct iovec *iov, int iovcnt);
ssize_t lwip_recvfrom(int s, void *mem, size_t len, int flags,
      struct sockaddr *from, socklen_t *fromlen);
ssize_t lwip_recvmsg(int s, struct msghdr *message, int flags);
ssize_t lwip_send(int s, const void *dataptr, size_t size, int flags);
ssize_t lwip_sendmsg(int s, const struct msghdr *message, int flags);
ssize_t lwip_sendto(int s, const void *dataptr, size_t size, int flags,
    const struct sockaddr *to, socklen_t tolen);
int lwip_socket(int domain, int type, int protocol);
ssize_t lwip_write(int s, const void *dataptr, size_t size);
ssize_t lwip_writev(int s, const struct iovec *iov, int iovcnt);

int lwip_select(int maxfdp1, fd_set *readset, fd_set *writeset, fd_set *exceptset,
                struct timeval *timeout);


int lwip_poll(struct pollfd *fds, nfds_t nfds, int timeout);

int lwip_ioctl(int s, long cmd, void *argp);
int lwip_fcntl(int s, int cmd, int val);
const char *lwip_inet_ntop(int af, const void *src, char *dst, socklen_t size);
int lwip_inet_pton(int af, const char *src, void *dst);
# 11 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/button.h" 2

# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/hardware_config.h" 1
# 13 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/button.h" 2
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/ap.h" 1







# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/yloop.h" 1
# 13 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/yloop.h"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/event_type_code.h" 1
# 14 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/yloop.h" 2
# 102 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/yloop.h"
typedef struct {

    uint32_t time;

    uint16_t type;

    uint16_t code;

    unsigned long value;

    unsigned long extra;
} input_event_t;


typedef void (*aos_event_cb)(input_event_t *event, void *private_data);

typedef void (*aos_call_t)(void *arg);

typedef void (*aos_poll_call_t)(int fd, void *arg);
# 131 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/yloop.h"
int aos_register_event_filter(uint16_t type, aos_event_cb cb, void *priv);
# 142 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/yloop.h"
int aos_unregister_event_filter(uint16_t type, aos_event_cb cb, void *priv);
# 153 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/yloop.h"
int aos_post_event(uint16_t type, uint16_t code, unsigned long value);
# 164 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/yloop.h"
int aos_poll_read_fd(int fd, aos_poll_call_t action, void *param);
# 173 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/yloop.h"
void aos_cancel_poll_read_fd(int fd, aos_poll_call_t action, void *param);
# 184 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/yloop.h"
int aos_post_delayed_action(int ms, aos_call_t action, void *arg);
# 193 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/yloop.h"
void aos_cancel_delayed_action(int ms, aos_call_t action, void *arg);
# 206 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/yloop.h"
int aos_schedule_call(aos_call_t action, void *arg);

typedef void *aos_loop_t;






aos_loop_t aos_loop_init(void);






aos_loop_t aos_current_loop(void);




void aos_loop_run(void);




void aos_loop_exit(void);




void aos_loop_destroy(void);
# 248 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/yloop.h"
int aos_loop_schedule_call(aos_loop_t *loop, aos_call_t action, void *arg);
# 261 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/yloop.h"
void *aos_loop_schedule_work(int ms, aos_call_t action, void *arg1,
                             aos_call_t fini_cb, void *arg2);
# 271 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/yloop.h"
void aos_cancel_work(void *work, aos_call_t action, void *arg1);
# 9 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/ap.h" 2
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h" 1







# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 9 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h" 2
# 22 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    typedef struct
    {
        void *hdl;
    } aos_hdl_t;

    typedef aos_hdl_t aos_task_t;
    typedef aos_hdl_t aos_mutex_t;
    typedef aos_hdl_t aos_sem_t;
    typedef aos_hdl_t aos_queue_t;
    typedef aos_hdl_t aos_timer_t;
    typedef aos_hdl_t aos_work_t;

    typedef struct
    {
        void *hdl;
        void *stk;
    } aos_workqueue_t;

    typedef unsigned int aos_task_key_t;




    void aos_reboot(void);






    int aos_get_hz(void);






    const char *aos_version_get(void);
# 71 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_task_new(const char *name, void (*fn)(void *), void *arg,
                     int stack_size);
# 89 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_task_new_ext(aos_task_t *task, const char *name, void (*fn)(void *),
                         void *arg, int stack_size, int prio);






    void aos_task_exit(int code);






    const char *aos_task_name(void);
# 113 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_task_key_create(aos_task_key_t *key);






    void aos_task_key_delete(aos_task_key_t key);
# 130 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_task_setspecific(aos_task_key_t key, void *vp);






    void *aos_task_getspecific(aos_task_key_t key);
# 148 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_mutex_new(aos_mutex_t *mutex);







    void aos_mutex_free(aos_mutex_t *mutex);
# 167 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_mutex_lock(aos_mutex_t *mutex, unsigned int timeout);
# 177 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_mutex_unlock(aos_mutex_t *mutex);
# 186 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_mutex_is_valid(aos_mutex_t *mutex);
# 197 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_sem_new(aos_sem_t *sem, int count);







    void aos_sem_free(aos_sem_t *sem);
# 216 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_sem_wait(aos_sem_t *sem, unsigned int timeout);







    void aos_sem_signal(aos_sem_t *sem);
# 233 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_sem_is_valid(aos_sem_t *sem);







    void aos_sem_signal_all(aos_sem_t *sem);
# 254 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_queue_new(aos_queue_t *queue, void *buf, unsigned int size,
                      int max_msg);






    void aos_queue_free(aos_queue_t *queue);
# 273 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_queue_send(aos_queue_t *queue, void *msg, unsigned int size);
# 285 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_queue_recv(aos_queue_t *queue, unsigned int ms, void *msg,
                       unsigned int *size);
# 295 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_queue_is_valid(aos_queue_t *queue);
# 304 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    void *aos_queue_buf_ptr(aos_queue_t *queue);
# 317 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_timer_new(aos_timer_t *timer, void (*fn)(void *, void *), void *arg,
                      int ms, int repeat);
# 332 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_timer_new_ext(aos_timer_t *timer, void (*fn)(void *, void *),
                          void *arg, int ms, int repeat,
                          unsigned char auto_run);






    void aos_timer_free(aos_timer_t *timer);
# 350 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_timer_start(aos_timer_t *timer);
# 359 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_timer_stop(aos_timer_t *timer);
# 369 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_timer_change(aos_timer_t *timer, int ms);
# 380 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_workqueue_create(aos_workqueue_t *workqueue, int pri,
                             int stack_size);
# 393 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_work_init(aos_work_t *work, void (*fn)(void *), void *arg, int dly);






    void aos_work_destroy(aos_work_t *work);
# 410 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_work_run(aos_workqueue_t *workqueue, aos_work_t *work);
# 419 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_work_sched(aos_work_t *work);
# 428 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    int aos_work_cancel(aos_work_t *work);
# 438 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    void *aos_realloc(void *mem, unsigned int size);
# 447 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    void *aos_malloc(unsigned int size);
# 457 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    void *aos_calloc(unsigned int nitems, unsigned int size);
# 466 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    void *aos_zalloc(unsigned int size);







    void aos_alloc_trace(void *addr, size_t allocator);






    void aos_free(void *mem);






    long long aos_now(void);






    long long aos_now_ms(void);
# 512 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/yloop/include/aos/kernel.h"
    char *aos_now_time_str(char *buffer, const int len);






    void aos_msleep(int ms);




    void aos_init(void);




    void aos_start(void);
# 10 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/ap.h" 2
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/tcpip.h" 1
# 45 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/tcpip.h"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/timeouts.h" 1
# 44 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/timeouts.h"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sys.h" 1
# 95 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sys.h"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/lwip-port/arch/sys_arch.h" 1
# 37 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/lwip-port/arch/sys_arch.h"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h" 1
# 47 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
struct QueueDefinition;
typedef struct QueueDefinition * QueueHandle_t;






typedef struct QueueDefinition * QueueSetHandle_t;






typedef struct QueueDefinition * QueueSetMemberHandle_t;
# 650 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueueGenericSend( QueueHandle_t xQueue, const void * const pvItemToQueue, TickType_t xTicksToWait, const BaseType_t xCopyPosition ) ;
# 744 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueuePeek( QueueHandle_t xQueue, void * const pvBuffer, TickType_t xTicksToWait ) ;
# 777 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueuePeekFromISR( QueueHandle_t xQueue, void * const pvBuffer ) ;
# 868 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueueReceive( QueueHandle_t xQueue, void * const pvBuffer, TickType_t xTicksToWait ) ;
# 883 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
UBaseType_t uxQueueMessagesWaiting( const QueueHandle_t xQueue ) ;
# 900 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
UBaseType_t uxQueueSpacesAvailable( const QueueHandle_t xQueue ) ;
# 914 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
void vQueueDelete( QueueHandle_t xQueue ) ;
# 1295 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueueGenericSendFromISR( QueueHandle_t xQueue, const void * const pvItemToQueue, BaseType_t * const pxHigherPriorityTaskWoken, const BaseType_t xCopyPosition ) ;
BaseType_t xQueueGiveFromISR( QueueHandle_t xQueue, BaseType_t * const pxHigherPriorityTaskWoken ) ;
# 1385 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueueReceiveFromISR( QueueHandle_t xQueue, void * const pvBuffer, BaseType_t * const pxHigherPriorityTaskWoken ) ;





BaseType_t xQueueIsQueueEmptyFromISR( const QueueHandle_t xQueue ) ;
BaseType_t xQueueIsQueueFullFromISR( const QueueHandle_t xQueue ) ;
UBaseType_t uxQueueMessagesWaitingFromISR( const QueueHandle_t xQueue ) ;
# 1404 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueueCRSendFromISR( QueueHandle_t xQueue, const void *pvItemToQueue, BaseType_t xCoRoutinePreviouslyWoken );
BaseType_t xQueueCRReceiveFromISR( QueueHandle_t xQueue, void *pvBuffer, BaseType_t *pxTaskWoken );
BaseType_t xQueueCRSend( QueueHandle_t xQueue, const void *pvItemToQueue, TickType_t xTicksToWait );
BaseType_t xQueueCRReceive( QueueHandle_t xQueue, void *pvBuffer, TickType_t xTicksToWait );






QueueHandle_t xQueueCreateMutex( const uint8_t ucQueueType ) ;
QueueHandle_t xQueueCreateMutexStatic( const uint8_t ucQueueType, StaticQueue_t *pxStaticQueue ) ;
QueueHandle_t xQueueCreateCountingSemaphore( const UBaseType_t uxMaxCount, const UBaseType_t uxInitialCount ) ;
QueueHandle_t xQueueCreateCountingSemaphoreStatic( const UBaseType_t uxMaxCount, const UBaseType_t uxInitialCount, StaticQueue_t *pxStaticQueue ) ;
BaseType_t xQueueSemaphoreTake( QueueHandle_t xQueue, TickType_t xTicksToWait ) ;
TaskHandle_t xQueueGetMutexHolder( QueueHandle_t xSemaphore ) ;
TaskHandle_t xQueueGetMutexHolderFromISR( QueueHandle_t xSemaphore ) ;





BaseType_t xQueueTakeMutexRecursive( QueueHandle_t xMutex, TickType_t xTicksToWait ) ;
BaseType_t xQueueGiveMutexRecursive( QueueHandle_t xMutex ) ;
# 1458 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
 void vQueueAddToRegistry( QueueHandle_t xQueue, const char *pcQueueName ) ;
# 1472 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
 void vQueueUnregisterQueue( QueueHandle_t xQueue ) ;
# 1487 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
 const char *pcQueueGetName( QueueHandle_t xQueue ) ;
# 1496 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
 QueueHandle_t xQueueGenericCreate( const UBaseType_t uxQueueLength, const UBaseType_t uxItemSize, const uint8_t ucQueueType ) ;
# 1505 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
 QueueHandle_t xQueueGenericCreateStatic( const UBaseType_t uxQueueLength, const UBaseType_t uxItemSize, uint8_t *pucQueueStorage, StaticQueue_t *pxStaticQueue, const uint8_t ucQueueType ) ;
# 1556 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
QueueSetHandle_t xQueueCreateSet( const UBaseType_t uxEventQueueLength ) ;
# 1580 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueueAddToSet( QueueSetMemberHandle_t xQueueOrSemaphore, QueueSetHandle_t xQueueSet ) ;
# 1599 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
BaseType_t xQueueRemoveFromSet( QueueSetMemberHandle_t xQueueOrSemaphore, QueueSetHandle_t xQueueSet ) ;
# 1635 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
QueueSetMemberHandle_t xQueueSelectFromSet( QueueSetHandle_t xQueueSet, const TickType_t xTicksToWait ) ;




QueueSetMemberHandle_t xQueueSelectFromSetFromISR( QueueSetHandle_t xQueueSet ) ;


void vQueueWaitForMessageRestricted( QueueHandle_t xQueue, TickType_t xTicksToWait, const BaseType_t xWaitIndefinitely ) ;
BaseType_t xQueueGenericReset( QueueHandle_t xQueue, BaseType_t xNewQueue ) ;
void vQueueSetQueueNumber( QueueHandle_t xQueue, UBaseType_t uxQueueNumber ) ;
UBaseType_t uxQueueGetQueueNumber( QueueHandle_t xQueue ) ;
uint8_t ucQueueGetQueueType( QueueHandle_t xQueue ) ;
# 38 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/lwip-port/arch/sys_arch.h" 2
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/semphr.h" 1
# 35 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/semphr.h"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h" 1
# 36 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/semphr.h" 2

typedef QueueHandle_t SemaphoreHandle_t;
# 39 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/lwip-port/arch/sys_arch.h" 2





typedef SemaphoreHandle_t sys_sem_t;
typedef SemaphoreHandle_t sys_mutex_t;
typedef QueueHandle_t sys_mbox_t;
typedef TaskHandle_t sys_thread_t;

typedef struct _sys_arch_state_t
{

 char cTaskName[( 16 )];
 unsigned short nStackDepth;
 unsigned short nTaskCount;
} sys_arch_state_t;
# 96 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sys.h" 2


typedef void (*lwip_thread_fn)(void *arg);
# 137 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sys.h"
err_t sys_mutex_new(sys_mutex_t *mutex);





void sys_mutex_lock(sys_mutex_t *mutex);





void sys_mutex_unlock(sys_mutex_t *mutex);





void sys_mutex_free(sys_mutex_t *mutex);
# 164 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sys.h"
int sys_mutex_valid(sys_mutex_t *mutex);
# 174 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sys.h"
void sys_mutex_set_invalid(sys_mutex_t *mutex);
# 195 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sys.h"
err_t sys_sem_new(sys_sem_t *sem, u8_t count);





void sys_sem_signal(sys_sem_t *sem);
# 219 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sys.h"
u32_t sys_arch_sem_wait(sys_sem_t *sem, u32_t timeout);





void sys_sem_free(sys_sem_t *sem);
# 236 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sys.h"
int sys_sem_valid(sys_sem_t *sem);
# 246 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sys.h"
void sys_sem_set_invalid(sys_sem_t *sem);
# 266 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sys.h"
void sys_msleep(u32_t ms);
# 285 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sys.h"
err_t sys_mbox_new(sys_mbox_t *mbox, int size);
# 294 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sys.h"
void sys_mbox_post(sys_mbox_t *mbox, void *msg);
# 304 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sys.h"
err_t sys_mbox_trypost(sys_mbox_t *mbox, void *msg);
# 314 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sys.h"
err_t sys_mbox_trypost_fromisr(sys_mbox_t *mbox, void *msg);
# 336 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sys.h"
u32_t sys_arch_mbox_fetch(sys_mbox_t *mbox, void **msg, u32_t timeout);
# 355 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sys.h"
u32_t sys_arch_mbox_tryfetch(sys_mbox_t *mbox, void **msg);
# 369 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sys.h"
void sys_mbox_free(sys_mbox_t *mbox);
# 379 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sys.h"
int sys_mbox_valid(sys_mbox_t *mbox);
# 389 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sys.h"
void sys_mbox_set_invalid(sys_mbox_t *mbox);
# 420 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sys.h"
sys_thread_t sys_thread_new(const char *name, lwip_thread_fn thread, void *arg, int stacksize, int prio);
# 429 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sys.h"
void sys_init(void);





u32_t sys_jiffies(void);
# 446 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sys.h"
u32_t sys_now(void);
# 492 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/sys.h"
sys_prot_t sys_arch_protect(void);
void sys_arch_unprotect(sys_prot_t pval);
# 45 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/timeouts.h" 2
# 66 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/timeouts.h"
typedef void (* lwip_cyclic_timer_handler)(void);



struct lwip_cyclic_timer {
  u32_t interval_ms;
  lwip_cyclic_timer_handler handler;



};



extern const struct lwip_cyclic_timer lwip_cyclic_timers[];

extern const int lwip_num_cyclic_timers;
# 91 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/timeouts.h"
typedef void (* sys_timeout_handler)(void *arg);

struct sys_timeo {
  struct sys_timeo *next;
  u32_t time;
  sys_timeout_handler h;
  void *arg;



};

void sys_timeouts_init(void);





void sys_timeout(u32_t msecs, sys_timeout_handler handler, void *arg);


void sys_untimeout(sys_timeout_handler handler, void *arg);
void sys_restart_timeouts(void);
void sys_check_timeouts(void);
u32_t sys_timeouts_sleeptime(void);
# 46 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/tcpip.h" 2
# 66 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/tcpip.h"
struct pbuf;
struct netif;


typedef void (*tcpip_init_done_fn)(void *arg);

typedef void (*tcpip_callback_fn)(void *ctx);


struct tcpip_callback_msg;

void tcpip_init(tcpip_init_done_fn tcpip_init_done, void *arg);

err_t tcpip_inpkt(struct pbuf *p, struct netif *inp, netif_input_fn input_fn);
err_t tcpip_input(struct pbuf *p, struct netif *inp);

err_t tcpip_try_callback(tcpip_callback_fn function, void *ctx);
err_t tcpip_callback(tcpip_callback_fn function, void *ctx);





struct tcpip_callback_msg* tcpip_callbackmsg_new(tcpip_callback_fn function, void *ctx);
void tcpip_callbackmsg_delete(struct tcpip_callback_msg* msg);
err_t tcpip_callbackmsg_trycallback(struct tcpip_callback_msg* msg);
err_t tcpip_callbackmsg_trycallback_fromisr(struct tcpip_callback_msg* msg);


err_t pbuf_free_callback(struct pbuf *p);
err_t mem_free_callback(void *m);
# 11 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/ap.h" 2
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/wifi_manager/bl60x_wifi_driver/include/wifi_mgmr_ext.h" 1



# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/wifi_hosal/include/wifi_hosal.h" 1
# 34 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/wifi_hosal/include/wifi_hosal.h"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 35 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/wifi_hosal/include/wifi_hosal.h" 2

# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/include/hosal_adc.h" 1
# 16 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/include/hosal_adc.h"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/include/hosal_dma.h" 1
# 33 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/include/hosal_dma.h"
typedef void (*hosal_dma_irq_t)(void *p_arg, uint32_t flag);




struct hosal_dma_chan {
    uint8_t used;
    hosal_dma_irq_t callback;
    void *p_arg;
};




typedef struct hosal_dma_dev {
    int max_chans;
    struct hosal_dma_chan *used_chan;
    void *priv;
} hosal_dma_dev_t;




typedef int hosal_dma_chan_t;






int hosal_dma_init(void);
# 72 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/include/hosal_dma.h"
hosal_dma_chan_t hosal_dma_chan_request(int flag);
# 81 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/include/hosal_dma.h"
int hosal_dma_chan_release(hosal_dma_chan_t chan);
# 90 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/include/hosal_dma.h"
int hosal_dma_chan_start(hosal_dma_chan_t chan);
# 99 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/include/hosal_dma.h"
int hosal_dma_chan_stop(hosal_dma_chan_t chan);
# 110 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/include/hosal_dma.h"
int hosal_dma_irq_callback_set(hosal_dma_chan_t chan, hosal_dma_irq_t pfn, void *p_arg);
# 119 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/include/hosal_dma.h"
int hosal_dma_finalize(void);
# 17 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/include/hosal_adc.h" 2
# 29 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/include/hosal_adc.h"
typedef enum __ADC_INT_EVENTS__{
    HOSAL_ADC_INT_OV,
    HOSAL_ADC_INT_EOS,
    HOSAL_ADC_INT_DMA_TRH,
    HOSAL_ADC_INT_DMA_TRC,
    HOSAL_ADC_INT_DMA_TRE,
} hosal_adc_event_t;




typedef struct {
    uint32_t size;
    void *data;
} hosal_adc_data_t;




typedef enum {
    HOSAL_ADC_ONE_SHOT,
    HOSAL_ADC_CONTINUE
} hosal_adc_sample_mode_t;




typedef struct {
    uint32_t sampling_freq;
    uint32_t pin;
    hosal_adc_sample_mode_t mode;
    uint8_t sample_resolution;
} hosal_adc_config_t;







typedef void (*hosal_adc_irq_t)(void *parg);




typedef struct {
    uint8_t port;
    hosal_adc_config_t config;
    hosal_dma_chan_t dma_chan;
    hosal_adc_irq_t cb;
    void *p_arg;
    void *priv;
} hosal_adc_dev_t;







typedef void (*hosal_adc_cb_t)(hosal_adc_event_t event, void *data, uint32_t size);
# 100 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/include/hosal_adc.h"
int hosal_adc_init(hosal_adc_dev_t *adc);
# 112 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/include/hosal_adc.h"
int hosal_adc_add_channel(hosal_adc_dev_t *adc, uint32_t channel);
# 124 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/include/hosal_adc.h"
int hosal_adc_remove_channel(hosal_adc_dev_t *adc, uint32_t channel);
# 136 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/include/hosal_adc.h"
int hosal_adc_add_reference_channel(hosal_adc_dev_t *adc, uint32_t refer_channel, float refer_voltage);
# 148 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/include/hosal_adc.h"
int hosal_adc_remove_reference_channel(hosal_adc_dev_t *adc);
# 157 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/include/hosal_adc.h"
hosal_adc_dev_t *hosal_adc_device_get(void);
# 170 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/include/hosal_adc.h"
int hosal_adc_value_get(hosal_adc_dev_t *adc, uint32_t channel, uint32_t timeout);
# 181 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/include/hosal_adc.h"
int hosal_adc_tsen_value_get(hosal_adc_dev_t *adc);
# 196 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/include/hosal_adc.h"
int hosal_adc_sample_cb_reg(hosal_adc_dev_t *adc, hosal_adc_cb_t cb);
# 209 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/include/hosal_adc.h"
int hosal_adc_start(hosal_adc_dev_t *adc, void *data, uint32_t size);
# 220 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/include/hosal_adc.h"
int hosal_adc_stop(hosal_adc_dev_t *adc);
# 231 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/include/hosal_adc.h"
int hosal_adc_finalize(hosal_adc_dev_t *adc);
# 37 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/wifi_hosal/include/wifi_hosal.h" 2
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_pm.h" 1



# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/utils/include/utils_list.h" 1
# 15 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/utils/include/utils_list.h"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 16 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/utils/include/utils_list.h" 2

struct utils_list_hdr
{
    struct utils_list_hdr *next;
};

struct utils_list
{

    struct utils_list_hdr *first;

    struct utils_list_hdr *last;
};
# 41 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/utils/include/utils_list.h"
void utils_list_init(struct utils_list *list);
# 54 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/utils/include/utils_list.h"
void utils_list_pool_init(struct utils_list *list, void *pool, size_t elmt_size, unsigned int elmt_cnt, void *default_value);
# 64 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/utils/include/utils_list.h"
void utils_list_push_back(struct utils_list *list,
                       struct utils_list_hdr *list_hdr);
# 75 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/utils/include/utils_list.h"
void utils_list_push_front(struct utils_list *list, struct utils_list_hdr *list_hdr);
# 85 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/utils/include/utils_list.h"
struct utils_list_hdr *utils_list_pop_front(struct utils_list *list);
# 98 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/utils/include/utils_list.h"
void utils_list_extract(struct utils_list *list, struct utils_list_hdr *list_hdr);
# 110 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/utils/include/utils_list.h"
int utils_list_find(struct utils_list *list, struct utils_list_hdr *list_hdr);
# 127 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/utils/include/utils_list.h"
void utils_list_insert(struct utils_list * const list, struct utils_list_hdr * const element,
        int (*cmp)(struct utils_list_hdr const *elementA,
        struct utils_list_hdr const *elementB));
# 145 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/utils/include/utils_list.h"
void utils_list_insert_after(struct utils_list * const list, struct utils_list_hdr * const prev_element, struct utils_list_hdr * const element);
# 161 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/utils/include/utils_list.h"
void utils_list_insert_before(struct utils_list * const list, struct utils_list_hdr * const next_element, struct utils_list_hdr * const element);
# 173 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/utils/include/utils_list.h"
void utils_list_concat(struct utils_list *list1, struct utils_list *list2);
# 189 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/utils/include/utils_list.h"
void utils_list_remove(struct utils_list *list, struct utils_list_hdr *prev_element, struct utils_list_hdr *element);
# 199 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/utils/include/utils_list.h"
static inline int utils_list_is_empty(const struct utils_list *const list)
{
    return (
# 201 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/utils/include/utils_list.h" 3 4
           ((void *)0) 
# 201 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/utils/include/utils_list.h"
                == list->first);
}
# 213 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/utils/include/utils_list.h"
unsigned int utils_list_cnt(const struct utils_list *const list);
# 224 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/utils/include/utils_list.h"
static inline struct utils_list_hdr *utils_list_pick(const struct utils_list *const list)
{
    return list->first;
}

static inline struct utils_list_hdr *utils_list_pick_last(const struct utils_list *const list)
{
    return list->last;
}

static inline struct utils_list_hdr *utils_list_next(const struct utils_list_hdr *const list_hdr)
{
    return list_hdr->next;
}
# 259 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/utils/include/utils_list.h"
typedef struct utils_dlist_s {
    struct utils_dlist_s *prev;
    struct utils_dlist_s *next;
} utils_dlist_t;

static inline void __utils_dlist_add(utils_dlist_t *node, utils_dlist_t *prev, utils_dlist_t *next)
{
    node->next = next;
    node->prev = prev;

    prev->next = node;
    next->prev = node;
}
# 284 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/utils/include/utils_list.h"
static inline void utils_dlist_add(utils_dlist_t *node, utils_dlist_t *queue)
{
    __utils_dlist_add(node, queue, queue->next);
}

static inline void utils_dlist_add_tail(utils_dlist_t *node, utils_dlist_t *queue)
{
    __utils_dlist_add(node, queue->prev, queue);
}

static inline void utils_dlist_del(utils_dlist_t *node)
{
    utils_dlist_t *prev = node->prev;
    utils_dlist_t *next = node->next;

    prev->next = next;
    next->prev = prev;
}

static inline void utils_dlist_init(utils_dlist_t *node)
{
    node->next = node->prev = node;
}

static inline void INIT_UTILS_DLIST_HEAD(utils_dlist_t *list)
{
    list->next = list;
    list->prev = list;
}

static inline int utils_dlist_empty(const utils_dlist_t *head)
{
    return head->next == head;
}
# 413 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/utils/include/utils_list.h"
static inline int utils_dlist_entry_number(utils_dlist_t *queue)
{
 int num;
 utils_dlist_t *cur = queue;
 for (num=0;cur->next != queue;cur=cur->next, num++)
  ;

 return num;
}
# 441 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/utils/include/utils_list.h"
typedef struct utils_slist_s {
    struct utils_slist_s *next;
} utils_slist_t;

static inline void utils_slist_add(utils_slist_t *node, utils_slist_t *head)
{
    node->next = head->next;
    head->next = node;
}

static inline void utils_slist_add_tail(utils_slist_t *node, utils_slist_t *head)
{
    while (head->next) {
        head = head->next;
    }

    utils_slist_add(node, head);
}

static inline void utils_slist_append(utils_slist_t *l, utils_slist_t *n)
{
    utils_slist_t *node;

    node = l;
    while (node->next) node = node->next;


    node->next = n;
    n->next = 
# 469 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/utils/include/utils_list.h" 3 4
             ((void *)0)
# 469 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/utils/include/utils_list.h"
                 ;
}

static inline void utils_slist_del(utils_slist_t *node, utils_slist_t *head)
{
    while (head->next) {
        if (head->next == node) {
            head->next = node->next;
            break;
        }

        head = head->next;
    }
}

static inline int utils_slist_empty(const utils_slist_t *head)
{
    return !head->next;
}

static inline void utils_slist_init(utils_slist_t *head)
{
    head->next = 0;
}

static inline utils_slist_t* utils_slist_first(utils_slist_t *l)
{
    return l->next;
}

static inline utils_slist_t* utils_slist_tail(utils_slist_t *l)
{
    while (l->next) l = l->next;

    return l;
}

static inline utils_slist_t* utils_slist_next(utils_slist_t *l)
{
    return l->next;
}
# 591 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/utils/include/utils_list.h"
static inline int utils_slist_entry_number(utils_slist_t *queue)
{
 int num;
    utils_slist_t *cur = queue;
    for (num=0;cur->next;cur=cur->next, num++)
  ;

    return num;
}
# 5 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_pm.h" 2
# 14 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_pm.h"
enum PM_EVENT_ABLE {
    PM_DISABLE = 0,
    PM_ENABLE,
};

enum WLAN_CODE_SLEEP_CONTROL {
    WLAN_CODE_PM_NOTIFY_START = 0,
    WLAN_CODE_PM_NOTIFY_STOP,
    WLAN_CODE_PM_START,
    WLAN_CODE_PM_STOP,
};

enum WLAN_CODE_ENTER_SLEEP {
    WLAN_CODE_PM_ENTER_SLEEP_PRE = 0,
    WLAN_CODE_PM_ENTER_SLEEP,
};

enum WLAN_CODE_EXIT_SLEEP {
    WLAN_CODE_PM_ENTER_SLEEP_PRE_FAILED = 0,
    WLAN_CODE_PM_EXIT_SLEEP_PRE,
    WLAN_CODE_PM_EXIT_SLEEP,
};

enum WLAN_CODE_BEACON_LOSS {
    WLAN_CODE_BEACON_LOSS = 0,
};

enum WLAN_CODE_SEND_NULLDATA {
   WLAN_CODE_PM_PAUSE = 0,
   WLAN_CODE_PM_NULLDATA_NOACK,
   WLAN_CODE_PM_NULLDATA_SEND_ERROR,
};

enum BLE_CODE_BLE_CONTROL {
    BLE_CODE_PM_TURNON_RF = 0,
    BLE_CODE_PM_TURNOFF_RF,
};

enum PM_LEVEL{
    PM_MODE_STA_NONE = 0,
    PM_MODE_STA_IDLE,
    PM_MODE_STA_MESH,
    PM_MODE_STA_DOZE,
    PM_MODE_STA_COEX,
    PM_MODE_STA_DOWN,
    PM_MODE_AP_IDLE,
    PM_MODE_MAX,
};

enum PM_EVEMT{
    WLAN_PM_EVENT_CONTROL = 0,
    WLAN_PM_EVENT_ENTER_SLEEP,
    WLAN_PM_EVENT_EXIT_SLEEP,
    WLAN_PM_EVENT_BEACON_LOSS,
    WLAN_PM_EVENT_SEND_NULLDATA,
    BLE_PM_EVENT_CONTROL,
    PM_EVENT_MAX,
};

typedef int (*bl_pm_cb_t)(void *arg);

int bl_pm_init(void);
int bl_pm_event_register(enum PM_EVEMT event, uint32_t code, uint32_t cap_bit, uint16_t pirority, bl_pm_cb_t ops, void *arg, enum PM_EVENT_ABLE enable);
int bl_pm_deinit(void);
int bl_pm_state_run(void);
int bl_pm_capacity_set(enum PM_LEVEL level);
int pm_post_event(enum PM_EVEMT event, uint32_t code, uint32_t *retval);
int bl_pm_event_switch(enum PM_EVEMT event, uint32_t code, enum PM_EVENT_ABLE enable);
# 38 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/wifi_hosal/include/wifi_hosal.h" 2
# 47 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/wifi_hosal/include/wifi_hosal.h"
struct wifi_hosal_funcs
{
  int (*efuse_read_mac)(uint8_t mac[6]);
  int (*rf_turn_on)(void *arg);
  int (*rf_turn_off)(void *arg);
  hosal_adc_dev_t* (*adc_device_get)(void);
  int (*adc_tsen_value_get)(hosal_adc_dev_t *adc);
  int (*pm_init) (void);
  int (*pm_event_register) (enum PM_EVEMT event, uint32_t code, uint32_t cap_bit, uint16_t pirority, bl_pm_cb_t ops, void *arg, enum PM_EVENT_ABLE enable);
  int (*pm_deinit) (void);
  int (*pm_state_run) (void);
  int (*pm_capacity_set) (enum PM_LEVEL level);
  int (*pm_post_event) (enum PM_EVEMT event, uint32_t code, uint32_t *retval);
  int (*pm_event_switch) (enum PM_EVEMT event, uint32_t code, enum PM_EVENT_ABLE enable);
};

typedef struct wifi_hosal_funcs wifi_hosal_funcs_t;





extern wifi_hosal_funcs_t g_wifi_hosal_funcs;






static inline int hosal_wifi_ret_zero(void *arg)
{
  return 0;
}

static inline int hosal_wifi_ret_non_zero(void *arg)
{
  return -1;
}
# 102 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/wifi_hosal/include/wifi_hosal.h"
int wifi_hosal_efuse_read_mac(uint8_t mac[6]);
# 116 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/wifi_hosal/include/wifi_hosal.h"
int wifi_hosal_rf_turn_on(void *arg);
# 130 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/wifi_hosal/include/wifi_hosal.h"
int wifi_hosal_rf_turn_off(void *arg);
# 143 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/wifi_hosal/include/wifi_hosal.h"
hosal_adc_dev_t* wifi_hosal_adc_device_get(void);
# 157 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/wifi_hosal/include/wifi_hosal.h"
int wifi_hosal_adc_tsen_value_get(hosal_adc_dev_t *adc);
# 171 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/wifi_hosal/include/wifi_hosal.h"
int wifi_hosal_pm_init(void);
# 183 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/wifi_hosal/include/wifi_hosal.h"
int wifi_hosal_pm_event_register(enum PM_EVEMT event, uint32_t code, uint32_t cap_bit, uint16_t pirority, bl_pm_cb_t ops, void *arg, enum PM_EVENT_ABLE enable);
# 195 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/wifi_hosal/include/wifi_hosal.h"
int wifi_hosal_pm_deinit(void);
# 207 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/wifi_hosal/include/wifi_hosal.h"
int wifi_hosal_pm_state_run(void);
# 219 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/wifi_hosal/include/wifi_hosal.h"
int wifi_hosal_pm_capacity_set(enum PM_LEVEL level);
# 231 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/wifi_hosal/include/wifi_hosal.h"
int wifi_hosal_pm_post_event(enum PM_EVEMT event, uint32_t code, uint32_t *retval);
# 243 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/wifi_hosal/include/wifi_hosal.h"
int wifi_hosal_pm_event_switch(enum PM_EVEMT event, uint32_t code, enum PM_EVENT_ABLE enable);
# 5 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/wifi_manager/bl60x_wifi_driver/include/wifi_mgmr_ext.h" 2
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/wifi/include/bl60x_fw_api.h" 1





# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_private.h" 1
# 24 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_private.h"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_adapter.h" 1
# 25 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_adapter.h"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 26 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_adapter.h" 2
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdarg.h" 1 3 4
# 27 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_adapter.h" 2
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_type.h" 1
# 35 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_type.h"
typedef void* BL_Timer_t;
typedef void* BL_TaskHandle_t;
typedef void* BL_Sem_t;
typedef void* BL_Mutex_t;
typedef void* BL_MessageQueue_t;
typedef void* BL_EventGroup_t;
typedef void* BL_TimeOut_t;
typedef uint32_t BL_TickType_t;
# 28 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_adapter.h" 2
# 48 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_adapter.h"
struct bl_ops_funcs
{
    int _version;
    void (*_printf)(const char *fmt, ...);
    void (*_puts)(const char *c);
    void (*_assert)(const char *file, int line, const char *func, const char *expr);
    int (*_init)(void);
    uint32_t (*_enter_critical)(void);
    void (*_exit_critical)(uint32_t level);
    int (*_msleep)(long ms);
    int (*_sleep)(unsigned int seconds);
    BL_EventGroup_t (*_event_group_create)(void);
    void (*_event_group_delete)(BL_EventGroup_t event);
    uint32_t (*_event_group_send)(BL_EventGroup_t event, uint32_t bits);
    uint32_t (*_event_group_wait)(BL_EventGroup_t event,
                                  uint32_t bits_to_wait_for,
                                  int clear_on_exit,
                                  int wait_for_all_bits,
                                  uint32_t block_time_tick);
    int (*_event_register)(int type, void *cb, void *arg);
    int (*_event_notify)(int evt, int val);
    int (*_task_create)(const char *name,
                        void *entry,
                        uint32_t stack_depth,
                        void *param,
                        uint32_t prio,
                        BL_TaskHandle_t task_handle);
    void (*_task_delete)(BL_TaskHandle_t task_handle);
    BL_TaskHandle_t (*_task_get_current_task)(void);
    BL_TaskHandle_t (*_task_notify_create)(void);
    void (*_task_notify)(BL_TaskHandle_t task_handle);
    void (*_task_wait)(BL_TaskHandle_t task_handle, uint32_t tick);
    void (*_lock_gaint)(void);
    void (*_unlock_gaint)(void);
    void (*_irq_attach)(int32_t n, void *f, void *arg);
    void (*_irq_enable)(int32_t n);
    void (*_irq_disable)(int32_t n);
    void *(*_workqueue_create)(void);
    int (*_workqueue_submit_hp)(void *work, void *woker, void *argv, long tick);
    int (*_workqueue_submit_lp)(void *work, void *woker, void *argv, long tick);
    BL_Timer_t (*_timer_create)(void *func, void *argv);
    int (*_timer_delete)(BL_Timer_t timerid, uint32_t tick);
    int (*_timer_start_once)(BL_Timer_t timerid, long t_sec, long t_nsec);
    int (*_timer_start_periodic)(BL_Timer_t timerid, long t_sec, long t_nsec);
    BL_Sem_t (*_sem_create)(uint32_t init);
    void (*_sem_delete)(BL_Sem_t semphr);
    int32_t (*_sem_take)(BL_Sem_t semphr, uint32_t tick);
    int32_t (*_sem_give)(BL_Sem_t semphr);
    BL_Mutex_t (*_mutex_create)(void);
    void (*_mutex_delete)(BL_Mutex_t mutex);
    int32_t (*_mutex_lock)(BL_Mutex_t mutex);
    int32_t (*_mutex_unlock)(BL_Mutex_t mutex);
    BL_MessageQueue_t (*_queue_create)(uint32_t queue_len, uint32_t item_size);
    void (*_queue_delete)(BL_MessageQueue_t queue);
    int (*_queue_send_wait)(BL_MessageQueue_t queue, void *item, uint32_t len, uint32_t ticks, int prio);
    int (*_queue_send)(BL_MessageQueue_t queue, void *item, uint32_t len);
    int (*_queue_recv)(BL_MessageQueue_t queue, void *item, uint32_t len, uint32_t tick);
    void *(*_malloc)(unsigned int size);
    void (*_free)(void *p);
    void *(*_zalloc)(unsigned int size);
    uint64_t (*_get_time_ms)(void);
    uint32_t (*_get_tick)(void);
    void (*_log_write)(uint32_t level, const char *tag, const char *file, int line, const char *format, ...);
    int (*_task_notify_isr)(BL_TaskHandle_t task_handle);
    void (*_yield_from_isr)(int xYield);
    unsigned int (*_ms_to_tick)(unsigned int ms);
    BL_TimeOut_t (*_set_timeout)(void);
    int (*_check_timeout)(BL_TimeOut_t xTimeOut, BL_TickType_t *xTicksToWait);
};

typedef struct bl_ops_funcs bl_ops_funcs_t;

extern bl_ops_funcs_t g_bl_ops_funcs;
# 25 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_private.h" 2
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_log.h" 1
# 34 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_log.h"
typedef enum _bl_os_log_leve
{
    LOG_LEVEL_ALL = 0,
    LOG_LEVEL_DEBUG,
    LOG_LEVEL_INFO,
    LOG_LEVEL_WARN,
    LOG_LEVEL_ERROR,
    LOG_LEVEL_ASSERT,
    LOG_LEVEL_NEVER,
} bl_os_log_level_t;
# 26 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_private.h" 2
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_system.h" 1
# 27 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/os/bl_os_adapter/bl_os_adapter/include/bl_os_adapter/bl_os_private.h" 2
# 7 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/wifi/include/bl60x_fw_api.h" 2


typedef enum wifi_fw_task_id
{
    TASK_NONE = (uint8_t) -1,


    TASK_MM = 0,

    TASK_SCAN,

    TASK_SCANU,

    TASK_ME,

    TASK_SM,

    TASK_APM,

    TASK_BAM,

    TASK_RXU,

    TASK_CFG,


    TASK_LAST_EMB = TASK_CFG,


    TASK_API,
    TASK_MAX,
} ke_task_id_t;


typedef enum hw_state_tag
{

    HW_IDLE = 0,

    HW_RESERVED,

    HW_DOZE,

    HW_ACTIVE
} hw_state_tag_t;


typedef enum mm_state_tag
{

    MM_IDLE,

    MM_ACTIVE,

    MM_GOING_TO_IDLE,

    MM_HOST_BYPASSED,

    MM_STATE_MAX
} mm_state_tag_t;
# 81 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/wifi/include/bl60x_fw_api.h"
typedef enum wifi_fw_event_id
{

    MM_RESET_REQ = (((TASK_MM) << 10)),

    MM_RESET_CFM,

    MM_START_REQ,

    MM_START_CFM,

    MM_VERSION_REQ,

    MM_VERSION_CFM,

    MM_ADD_IF_REQ,

    MM_ADD_IF_CFM,

    MM_REMOVE_IF_REQ,

    MM_REMOVE_IF_CFM,

    MM_STA_ADD_REQ,

    MM_STA_ADD_CFM,

    MM_STA_DEL_REQ,

    MM_STA_DEL_CFM,

    MM_SET_CHANNEL_REQ,

    MM_SET_CHANNEL_CFM,

    MM_SET_BEACON_INT_REQ,

    MM_SET_BEACON_INT_CFM,

    MM_SET_BASIC_RATES_REQ,

    MM_SET_BASIC_RATES_CFM,

    MM_SET_BSSID_REQ,

    MM_SET_BSSID_CFM,

    MM_SET_EDCA_REQ,

    MM_SET_EDCA_CFM,

    MM_SET_VIF_STATE_REQ,

    MM_SET_VIF_STATE_CFM,

    MM_SET_IDLE_REQ,

    MM_SET_IDLE_CFM,


    MM_PRIMARY_TBTT_IND,


    MM_SECONDARY_TBTT_IND,


    MM_DENOISE_REQ,

    MM_SET_PS_MODE_REQ,

    MM_SET_PS_MODE_CFM,

    MM_CHAN_CTXT_ADD_REQ,

    MM_CHAN_CTXT_ADD_CFM,

    MM_CHAN_CTXT_DEL_REQ,

    MM_CHAN_CTXT_DEL_CFM,

    MM_CHAN_CTXT_LINK_REQ,

    MM_CHAN_CTXT_LINK_CFM,

    MM_CHAN_CTXT_UNLINK_REQ,

    MM_CHAN_CTXT_UNLINK_CFM,

    MM_CHAN_CTXT_UPDATE_REQ,

    MM_CHAN_CTXT_UPDATE_CFM,

    MM_CHAN_CTXT_SCHED_REQ,

    MM_CHAN_CTXT_SCHED_CFM,

    MM_BCN_CHANGE_REQ,

    MM_BCN_CHANGE_CFM,

    MM_TIM_UPDATE_REQ,

    MM_TIM_UPDATE_CFM,

    MM_CONNECTION_LOSS_IND,

    MM_CHANNEL_SWITCH_IND,

    MM_CHANNEL_PRE_SWITCH_IND,

    MM_REMAIN_ON_CHANNEL_REQ,

    MM_REMAIN_ON_CHANNEL_CFM,

    MM_REMAIN_ON_CHANNEL_EXP_IND,

    MM_PS_CHANGE_IND,

    MM_TRAFFIC_REQ_IND,

    MM_SET_PS_OPTIONS_REQ,

    MM_SET_PS_OPTIONS_CFM,

    MM_P2P_VIF_PS_CHANGE_IND,

    MM_CSA_COUNTER_IND,

    MM_CHANNEL_SURVEY_IND,

    MM_BFMER_ENABLE_REQ,

    MM_SET_P2P_NOA_REQ,

    MM_SET_P2P_OPPPS_REQ,

    MM_SET_P2P_NOA_CFM,

    MM_SET_P2P_OPPPS_CFM,

    MM_P2P_NOA_UPD_IND,

    MM_RSSI_STATUS_IND,

    MM_CSA_FINISH_IND,

    MM_CSA_TRAFFIC_IND,

    MM_MU_GROUP_UPDATE_REQ,

    MM_MU_GROUP_UPDATE_CFM,

    MM_MONITOR_REQ,
    MM_MONITOR_CFM,

    MM_MONITOR_CHANNEL_REQ,
    MM_MONITOR_CHANNEL_CFM,





    MM_FORCE_IDLE_REQ,

    MM_SCAN_CHANNEL_START_IND,

    MM_SCAN_CHANNEL_END_EARLY,

    MM_SCAN_CHANNEL_END_IND,


    MM_MAX,


    CFG_START_REQ = (((TASK_CFG) << 10)),
    CFG_START_CFM,
    CFG_MAX,



    SCAN_START_REQ = (((TASK_SCAN) << 10)),

    SCAN_START_CFM,

    SCAN_DONE_IND,

    SCAN_CANCEL_REQ,

    SCAN_CANCEL_CFM,


    SCAN_ABORT_REQ,
    SCAN_ABORT_CFM,




    SCAN_TIMER,


    SCAN_MAX,


    APM_START_REQ = (((TASK_APM) << 10)),

    APM_START_CFM,

    APM_STOP_REQ,

    APM_STOP_CFM,

    APM_STA_ADD_IND,

    APM_STA_DEL_IND,

    APM_STA_CONNECT_TIMEOUT_IND,

    APM_STA_DEL_REQ,

    APM_STA_DEL_CFM,

    APM_CONF_MAX_STA_REQ,

    APM_CONF_MAX_STA_CFM,

    APM_CHAN_SWITCH_REQ,

    APM_CHAN_SWITCH_CFM,

    APM_MAX,


    BAM_ADD_BA_RSP_TIMEOUT_IND = (((TASK_BAM) << 10)),

    BAM_INACTIVITY_TIMEOUT_IND,


    ME_CONFIG_REQ = (((TASK_ME) << 10)),

    ME_CONFIG_CFM,

    ME_CHAN_CONFIG_REQ,

    ME_CHAN_CONFIG_CFM,

    ME_TKIP_MIC_FAILURE_IND,

    ME_STA_ADD_REQ,

    ME_STA_ADD_CFM,

    ME_STA_DEL_REQ,

    ME_STA_DEL_CFM,

    ME_TX_CREDITS_UPDATE_IND,

    ME_TRAFFIC_IND_REQ,

    ME_TRAFFIC_IND_CFM,

    ME_RC_SET_RATE_REQ,





    ME_SET_ACTIVE_REQ,

    ME_SET_ACTIVE_CFM,

    ME_SET_PS_DISABLE_REQ,

    ME_SET_PS_DISABLE_CFM,

    ME_MAX,


    RXU_MGT_IND = (((TASK_RXU) << 10)),

    RXU_NULL_DATA,


    SCANU_START_REQ = (((TASK_SCANU) << 10)),

    SCANU_START_CFM,

    SCANU_JOIN_REQ,

    SCANU_JOIN_CFM,

    SCANU_RESULT_IND,

    SCANU_RAW_SEND_REQ,

    SCANU_RAW_SEND_CFM,


    SCANU_MAX,


    SM_CONNECT_REQ = (((TASK_SM) << 10)),

    SM_CONNECT_CFM,

    SM_CONNECT_IND,

    SM_DISCONNECT_REQ,

    SM_DISCONNECT_CFM,

    SM_DISCONNECT_IND,

    SM_RSP_TIMEOUT_IND,

    SM_CONNECT_ABORT_REQ,

    SM_CONNECT_ABORT_CFM,

    SM_SA_QUERY_TIMEOUT_IND,

    SM_MAX,
} ke_msg_id_t;
# 454 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/wifi/include/bl60x_fw_api.h"
void bl60x_fw_xtal_capcode_set(uint8_t cap_in, uint8_t cap_out, uint8_t enable, uint8_t cap_in_max, uint8_t cap_out_max);
void bl60x_fw_xtal_capcode_update(uint8_t cap_in, uint8_t cap_out);
void bl60x_fw_xtal_capcode_restore(void);
void bl60x_fw_xtal_capcode_autofit(void);
void bl60x_fw_xtal_capcode_get(uint8_t *cap_in, uint8_t *cap_out);

int bl60x_fw_password_hash(char *password, char *ssid, int ssidlength, char *output);
void bl60x_fw_rf_table_set(uint32_t* channel_div_table_in, uint16_t* channel_cnt_table_in,
                                                uint16_t lo_fcal_div);

void bl60x_fw_dump_data(void);
void bl60x_fw_dump_statistic(int forced);

int bl60x_check_mac_status(int *is_ok);

enum {

    API_AC_BK = 0,

    API_AC_BE,

    API_AC_VI,

    API_AC_VO,

    API_AC_MAX
};

int bl60x_edca_get(int ac, uint8_t *aifs, uint8_t *cwmin, uint8_t *cwmax, uint16_t *txop);


void wifi_main(void *param);

void bl_tpc_update_power_table(int8_t power_table_config[38]);
void bl_tpc_update_power_table_rate(int8_t power_table[24]);
void bl_tpc_update_power_table_channel_offset(int8_t power_table[14]);
void bl_tpc_update_power_rate_11b(int8_t power_rate_table[4]);
void bl_tpc_update_power_rate_11g(int8_t power_rate_table[8]);
void bl_tpc_update_power_rate_11n(int8_t power_rate_table[8]);
void bl_tpc_power_table_get(int8_t power_table_config[38]);

void phy_cli_register(void);



enum task_mm_cfg {
    TASK_MM_CFG_KEEP_ALIVE_STATUS_ENABLED,
    TASK_MM_CFG_KEEP_ALIVE_TIME_LAST_RECEIVED,
    TASK_MM_CFG_KEEP_ALIVE_PACKET_COUNTER,
};

enum task_sm_cfg {
    TASK_SM_CFG_AUTH_ASSOC_RETRY_LIMIT,
};

enum task_scan_cfg {
    TASK_SCAN_CFG_DURATION_SCAN_PASSIVE,
    TASK_SCAN_CFG_DURATION_SCAN_ACTIVE,
    TASK_SCAN_CFG_DURATION_SCAN_JOIN_ACTIVE,
};

typedef enum{

    SM_CONNECTION_DATA_TLV_ID_VERSION,

    SM_CONNECTION_DATA_TLV_ID_STATUS_CODE,
    SM_CONNECTION_DATA_TLV_ID_DHCPSTATUS,

    SM_CONNECTION_DATA_TLV_ID_AUTH_1,
    SM_CONNECTION_DATA_TLV_ID_AUTH_2,
    SM_CONNECTION_DATA_TLV_ID_AUTH_3,
    SM_CONNECTION_DATA_TLV_ID_AUTH_4,
    SM_CONNECTION_DATA_TLV_ID_ASSOC_REQ,
    SM_CONNECTION_DATA_TLV_ID_ASSOC_RSP,
    SM_CONNECTION_DATA_TLV_ID_4WAY_1,
    SM_CONNECTION_DATA_TLV_ID_4WAY_2,
    SM_CONNECTION_DATA_TLV_ID_4WAY_3,
    SM_CONNECTION_DATA_TLV_ID_4WAY_4,
    SM_CONNECTION_DATA_TLV_ID_2WAY_1,
    SM_CONNECTION_DATA_TLV_ID_2WAY_2,
    SM_CONNECTION_DATA_TLV_ID_DEAUTH,

    SM_CONNECTION_DATA_TLV_ID_STRIPED_AUTH_1,
    SM_CONNECTION_DATA_TLV_ID_STRIPED_AUTH_2,
    SM_CONNECTION_DATA_TLV_ID_STRIPED_AUTH_3,
    SM_CONNECTION_DATA_TLV_ID_STRIPED_AUTH_4,
    SM_CONNECTION_DATA_TLV_ID_STRIPED_AUTH_UNVALID,
    SM_CONNECTION_DATA_TLV_ID_STRIPED_ASSOC_REQ,
    SM_CONNECTION_DATA_TLV_ID_STRIPED_ASSOC_RSP,
    SM_CONNECTION_DATA_TLV_ID_STRIPED_DEAUTH_FROM_REMOTE,
    SM_CONNECTION_DATA_TLV_ID_STRIPED_DEASSOC_FROM_REMOTE,
    SM_CONNECTION_DATA_TLV_ID_RESERVED,
} sm_connection_data_tlv_id_t;


struct sm_tlv_list_hdr
{
    struct sm_tlv_list_hdr *next;
};


struct sm_tlv_list
{
    struct sm_tlv_list_hdr *first;
    struct sm_tlv_list_hdr *last;
};





struct sm_connect_tlv_desc {
    struct sm_tlv_list_hdr list_hdr;
    sm_connection_data_tlv_id_t id;
    uint16_t len;
    uint8_t data[0];
};
# 6 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/wifi_manager/bl60x_wifi_driver/include/wifi_mgmr_ext.h" 2





enum ap_info_type {





    AP_INFO_TYPE_SUGGEST,





    AP_INFO_TYPE_PRESIST,
};

struct ap_info {
    enum ap_info_type type;




    int time_to_live;


    uint8_t *bssid;


    uint8_t band;


    uint16_t freq;

    uint8_t use_dhcp;
};


struct ap_connect_adv {

    char *psk;


    struct ap_info ap_info;
# 61 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/wifi_manager/bl60x_wifi_driver/include/wifi_mgmr_ext.h"
    uint32_t flags;
};

typedef struct ap_connect_adv ap_connect_adv_t;

struct bl_rx_info {
    int8_t rssi;
};
typedef struct bl_rx_info bl_rx_info_t;

typedef enum {
    WM_WIFI_CIPHER_NONE = 0,
    WM_WIFI_CIPHER_WEP,
    WM_WIFI_CIPHER_AES,
    WM_WIFI_CIPHER_TKIP,
    WM_WIFI_CIPHER_TKIP_AES,
    WM_WIFI_CIPHER_MAX,
} wifi_mgmr_ap_cipher_t;

typedef enum {
    WM_WIFI_AUTH_UNKNOWN = 0,
    WM_WIFI_AUTH_OPEN,
    WM_WIFI_AUTH_WEP,
    WM_WIFI_AUTH_WPA_PSK,
    WM_WIFI_AUTH_WPA2_PSK,
    WM_WIFI_AUTH_WPA_WPA2_PSK,
    WM_WIFI_AUTH_WPA_ENTERPRISE,
    WM_WIFI_AUTH_WPA3_SAE,
    WM_WIFI_AUTH_WPA2_PSK_WPA3_SAE,
    WM_WIFI_AUTH_MAX,
} wifi_mgmr_ap_auth_mode_t;

typedef struct wifi_mgmr_ap_item {
    char ssid[32];
    char ssid_tail[1];
    uint32_t ssid_len;
    uint8_t bssid[6];
    uint8_t channel;
    uint8_t auth;
    uint8_t cipher;
    int8_t rssi;
} wifi_mgmr_ap_item_t;

typedef struct wifi_mgmr_sta_connect_ind_stat_info {
    uint16_t status_code;

    uint8_t type_ind;
    char ssid[32];
    char passphr[65];
    char psk[64];
    uint8_t bssid[6];
    uint8_t chan_id;
    uint8_t chan_band;
} wifi_mgmr_sta_connect_ind_stat_info_t;

typedef struct wifi_sta_basic_info {
    uint8_t sta_idx;
    uint8_t is_used;
    uint8_t sta_mac[6];
    uint32_t tsfhi;
    uint32_t tsflo;
    int rssi;
    uint8_t data_rate;
} wifi_sta_basic_info_t;

typedef struct wifi_sta_ps_conf {

    int listen_interval;

    uint16_t wifi_active_period;
}wifi_sta_ps_conf_t;

typedef void *wifi_interface_t;
typedef void (*sniffer_cb_t)(void *env, uint8_t *pkt, int len, bl_rx_info_t *info);
typedef void (*sniffer_cb_adv_t)(void *env, void *pkt_wrap, bl_rx_info_t *info);
typedef void (*scan_item_cb_t)(wifi_mgmr_ap_item_t *env, uint32_t *param1, wifi_mgmr_ap_item_t *item);
typedef void (*scan_complete_cb_t)(void *data, void *param);


enum
{

    PS_MODE_OFF,

    PS_MODE_ON,

    PS_MODE_ON_DYN,
};

enum WIFI_STATE_ENUM_LIST {
    WIFI_STATE_UNKNOWN = 0x00,
    WIFI_STATE_IDLE = 0x01,
    WIFI_STATE_CONNECTING = 0x02,
    WIFI_STATE_CONNECTED_IP_GETTING = 0x03,
    WIFI_STATE_CONNECTED_IP_GOT = 0x04,
    WIFI_STATE_DISCONNECT = 0x05,
    WIFI_STATE_WITH_AP_IDLE = 0x11,
    WIFI_STATE_WITH_AP_CONNECTING = 0x12,
    WIFI_STATE_WITH_AP_CONNECTED_IP_GETTING = 0x13,
    WIFI_STATE_WITH_AP_CONNECTED_IP_GOT = 0x14,
    WIFI_STATE_WITH_AP_DISCONNECT = 0x15,
    WIFI_STATE_IFDOWN = 0x06,
    WIFI_STATE_SNIFFER = 0x07,
    WIFI_STATE_PSK_ERROR = 0x08,
    WIFI_STATE_NO_AP_FOUND = 0x09,
};


enum WIFI_SCAN_DONE_EVENT_TYPE {
    WIFI_SCAN_DONE_EVENT_OK = 0x00,
    WIFI_SCAN_DONE_EVENT_BUSY = 0x01,
};

enum WIFI_COEX_PM_LEVEL {
    WIFI_COEX_PM_STA_NONE = PM_MODE_STA_NONE,
    WIFI_COEX_PM_STA_IDLE = PM_MODE_STA_IDLE,
    WIFI_COEX_PM_STA_MESH = PM_MODE_STA_MESH,
    WIFI_COEX_PM_STA_DOZE = PM_MODE_STA_DOZE,
    WIFI_COEX_PM_STA_COEX = PM_MODE_STA_COEX,
    WIFI_COEX_PM_STA_DOWN = PM_MODE_STA_DOWN,
    WIFI_COEX_PM_AP_IDLE = PM_MODE_AP_IDLE,
    WIFI_COEX_PM_MAX = PM_MODE_MAX,
};

typedef struct wifi_conf {
    char country_code[3];
    int channel_nums;
} wifi_conf_t;


int wifi_mgmr_psk_cal(char *password, char *ssid, int ssid_len, char *output);
int wifi_mgmr_drv_init(wifi_conf_t *conf);
int wifi_mgmr_init(void);
void wifi_mgmr_start(void);
void wifi_mgmr_start_background(wifi_conf_t *conf);
void wifi_mgmr_get_wifi_channel_conf(wifi_conf_t *wifi_chan_conf);

wifi_interface_t wifi_mgmr_sta_enable(void);
int wifi_mgmr_sta_disable(wifi_interface_t *interface);
struct netif *wifi_mgmr_sta_netif_get(void);
struct netif *wifi_mgmr_ap_netif_get(void);
int wifi_mgmr_sta_mac_set(uint8_t mac[6]);
int wifi_mgmr_sta_mac_get(uint8_t mac[6]);
int wifi_mgmr_sta_ip_get(uint32_t *ip, uint32_t *gw, uint32_t *mask);
int wifi_mgmr_sta_ip_set(uint32_t ip, uint32_t mask, uint32_t gw, uint32_t dns1, uint32_t dns2);
int wifi_mgmr_sta_dns_get(uint32_t *dns1, uint32_t *dns2);
int wifi_mgmr_sta_ip_unset(void);
int wifi_mgmr_sta_connect_ext(wifi_interface_t *wifi_interface, char *ssid, char *passphr, const ap_connect_adv_t *conn_adv_param);
int wifi_mgmr_sta_connect_mid(wifi_interface_t *wifi_interface, char *ssid, char *psk, char *pmk, uint8_t *mac, uint8_t band, uint8_t chan_id, uint8_t use_dhcp, uint32_t flags);
int wifi_mgmr_sta_connect(wifi_interface_t *wifi_interface, char *ssid, char *psk, char *pmk, uint8_t *mac, uint8_t band, uint8_t chan_id);
int wifi_mgmr_sta_disconnect(void);
int wifi_mgmr_sta_state_get(int *state);
int wifi_sta_ip4_addr_get(uint32_t *addr, uint32_t *mask, uint32_t *gw, uint32_t *dns);
int wifi_mgmr_sta_ps_enter(uint32_t ps_level);
int wifi_mgmr_sta_ps_exit();
int wifi_mgmr_sta_autoconnect_enable(void);
int wifi_mgmr_sta_autoconnect_disable(void);
int wifi_mgmr_sta_autoconnect_set(int interval_second, int repeat_count);
void wifi_mgmr_sta_ssid_set(char *ssid);
void wifi_mgmr_sta_passphr_set(char *passphr);
void wifi_mgmr_sta_psk_set(char *psk) __attribute__ ((deprecated ("use wifi_mgmr_sta_passphr_set instead")));
void wifi_mgmr_sta_connect_ind_stat_get(wifi_mgmr_sta_connect_ind_stat_info_t *wifi_mgmr_ind_stat);

wifi_interface_t wifi_mgmr_ap_enable(void);
int wifi_mgmr_ap_mac_set(uint8_t mac[6]);
int wifi_mgmr_ap_mac_get(uint8_t mac[6]);
int wifi_mgmr_ap_ip_get(uint32_t *ip, uint32_t *gw, uint32_t *mask);
int wifi_mgmr_ap_ip_set(uint32_t ip, uint32_t gw, uint32_t mask);
int wifi_mgmr_ap_dhcp_get(int *enable);
int wifi_mgmr_ap_dhcp_enable(void);
int wifi_mgmr_ap_dhcp_disable(void);
int wifi_mgmr_ap_dhcp_range_get(uint32_t *ip, uint32_t *mask, int *start, int *end);
int wifi_mgmr_ap_dhcp_range_set(uint32_t ip, uint32_t mask, int start, int end);
int wifi_mgmr_ap_stop(wifi_interface_t *interface);
int wifi_mgmr_ap_start(wifi_interface_t *interface, char *ssid, int hidden_ssid, char *passwd, int channel);
int wifi_mgmr_ap_chan_switch(wifi_interface_t *interface, int channel, uint8_t cs_count);
int wifi_mgmr_ap_start_adv(wifi_interface_t *interface, char *ssid, int hidden_ssid, char *passwd, int channel, uint8_t use_dhcp);
int wifi_mgmr_ap_start_atcmd(wifi_interface_t *interface, char *ssid, int hidden_ssid, char *passwd, int channel, int max_sta_supported);
int wifi_mgmr_ap_sta_cnt_get(uint8_t *sta_cnt);
int wifi_mgmr_ap_sta_info_get(struct wifi_sta_basic_info *sta_info, uint8_t idx);
int wifi_mgmr_ap_sta_delete(uint8_t sta_idx);
int wifi_mgmr_ap_set_gateway(char *gateway);
int wifi_mgmr_sniffer_enable(void);
int wifi_mgmr_sniffer_disable(void);
int wifi_mgmr_rate_config(uint16_t config);
int wifi_mgmr_conf_max_sta(uint8_t max_sta_supported);

int wifi_mgmr_sniffer_register(void *env, sniffer_cb_t cb);
int wifi_mgmr_sniffer_unregister(void *env);

int wifi_mgmr_sniffer_register_adv(void *env, sniffer_cb_adv_t cb);
int wifi_mgmr_sniffer_unregister_adv(void *env);
int wifi_mgmr_state_get(int *state);
int wifi_mgmr_detailed_state_get(int *state, int *state_detailed);
int wifi_mgmr_status_code_get(int *s_code);
int wifi_mgmr_rssi_get(int *rssi);
int wifi_mgmr_channel_get(int *channel);
int wifi_mgmr_channel_set(int channel, int use_40Mhz);
int wifi_mgmr_all_ap_scan(wifi_mgmr_ap_item_t **ap_ary, uint32_t *num);
int wifi_mgmr_scan_filter_hidden_ssid(int filter);
int wifi_mgmr_scan(void *data, scan_complete_cb_t cb);
int wifi_mgmr_scan_adv(void *data, scan_complete_cb_t cb, uint16_t *channels, uint16_t channel_num, const uint8_t bssid[6], const char *ssid, uint8_t scan_mode, uint32_t duration_scan);
int wifi_mgmr_cfg_req(uint32_t ops, uint32_t task, uint32_t element, uint32_t type, uint32_t length, uint32_t *buf);
int wifi_mgmr_scan_complete_callback();
int wifi_mgmr_cli_scanlist(void);
int wifi_mgmr_cli_init(void);
int wifi_mgmr_scan_ap(char *ssid, wifi_mgmr_ap_item_t *item);
int wifi_mgmr_scan_ap_all(wifi_mgmr_ap_item_t *env, uint32_t *param1, scan_item_cb_t cb);
int wifi_mgmr_raw_80211_send(uint8_t *pkt, int len);
int wifi_mgmr_set_country_code(char *country_code);
int wifi_mgmr_get_country_code(char *country_code);
int wifi_mgmr_set_hostname(char *hostname);
int wifi_mgmr_ext_dump_needed();
const char* wifi_mgmr_status_code_str(uint16_t status_code);
int wifi_mgmr_beacon_interval_set(uint16_t beacon_int);
void wifi_mgmr_conn_result_get(uint16_t *status_code, uint16_t *reason_code);
int wifi_mgmr_set_wifi_active_time(uint32_t ms);
int wifi_mgmr_set_listen_interval(uint16_t itv);
int wifi_mgmr_pm_ops_register(void);
int wifi_mgmr_fw_affair_ops(void);
int wifi_mgmr_bcnind_auth_to_ext(int auth);
int wifi_mgmr_bcnind_cipher_to_ext(int cipher);
struct sm_connect_tlv_desc* wifi_mgmr_diagnose_tlv_get_ele(void);
void wifi_mgmr_diagnose_tlv_free_ele(struct sm_connect_tlv_desc* ele);
# 12 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/ap.h" 2
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/hal_wifi.h" 1







int hal_wifi_start_firmware_task(void);
# 13 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/ap.h" 2


# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/blog/blog.h" 1
# 35 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/blog/blog.h"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdbool.h" 1 3 4
# 36 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/blog/blog.h" 2





# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/utils/include/utils_log.h" 1
# 56 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/utils/include/utils_log.h"
typedef enum LOG_BUF_OUT_DATA_TYPE {
    LOG_BUF_OUT_DATA_TYPE_HEX,
    LOG_BUF_OUT_DATA_TYPE_INT8,
    LOG_BUF_OUT_DATA_TYPE_UNT8,
} LOG_BUF_OUT_DATA_TYPE_T;
# 127 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/utils/include/utils_log.h"
int log_buf_out(const char *file, int line, const void *inbuf, int len, LOG_BUF_OUT_DATA_TYPE_T type);

void bl_printk(const char *format, ...);
# 42 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/blog/blog.h" 2

# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/blog/blog_type.h" 1
# 34 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/blog/blog_type.h"
typedef enum _blog_leve {
    BLOG_LEVEL_ALL = 0,
    BLOG_LEVEL_DEBUG,
    BLOG_LEVEL_INFO,
    BLOG_LEVEL_WARN,
    BLOG_LEVEL_ERROR,
    BLOG_LEVEL_ASSERT,
    BLOG_LEVEL_NEVER,
} blog_level_t;

typedef struct _blog_info {
    blog_level_t *level;
    char *name;
} blog_info_t;
# 44 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/blog/blog.h" 2
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/blog/blog_cfg.h" 1
# 45 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/blog/blog.h" 2
# 340 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/blog/blog.h"
    void blog_init(void);

    void blog_hexdump_out(const char* name, uint8_t width, uint8_t* buf, uint16_t size);

    int blog_set_level_log_component(char* level, char* component_name);
# 16 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/ap.h" 2
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/http_server.h" 1





# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/event_groups.h" 1
# 36 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/event_groups.h"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/timers.h" 1
# 37 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/event_groups.h" 2
# 81 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/event_groups.h"
struct EventGroupDef_t;
typedef struct EventGroupDef_t * EventGroupHandle_t;
# 92 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/event_groups.h"
typedef TickType_t EventBits_t;
# 147 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/event_groups.h"
 EventGroupHandle_t xEventGroupCreate( void ) ;
# 200 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/event_groups.h"
 EventGroupHandle_t xEventGroupCreateStatic( StaticEventGroup_t *pxEventGroupBuffer ) ;
# 295 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/event_groups.h"
EventBits_t xEventGroupWaitBits( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToWaitFor, const BaseType_t xClearOnExit, const BaseType_t xWaitForAllBits, TickType_t xTicksToWait ) ;
# 352 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/event_groups.h"
EventBits_t xEventGroupClearBits( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToClear ) ;
# 408 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/event_groups.h"
 BaseType_t xEventGroupClearBitsFromISR( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToClear ) ;
# 485 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/event_groups.h"
EventBits_t xEventGroupSetBits( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToSet ) ;
# 560 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/event_groups.h"
 BaseType_t xEventGroupSetBitsFromISR( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToSet, BaseType_t *pxHigherPriorityTaskWoken ) ;
# 689 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/event_groups.h"
EventBits_t xEventGroupSync( EventGroupHandle_t xEventGroup, const EventBits_t uxBitsToSet, const EventBits_t uxBitsToWaitFor, TickType_t xTicksToWait ) ;
# 725 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/event_groups.h"
EventBits_t xEventGroupGetBitsFromISR( EventGroupHandle_t xEventGroup ) ;
# 739 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/event_groups.h"
void vEventGroupDelete( EventGroupHandle_t xEventGroup ) ;


void vEventGroupSetBitsCallback( void *pvEventGroup, const uint32_t ulBitsToSet ) ;
void vEventGroupClearBitsCallback( void *pvEventGroup, const uint32_t ulBitsToClear ) ;



 UBaseType_t uxEventGroupGetNumber( void* xEventGroup ) ;
 void vEventGroupSetNumber( void* xEventGroup, UBaseType_t uxEventGroupNumber ) ;
# 7 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/http_server.h" 2



# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netdb.h" 1
# 92 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netdb.h"
struct hostent {
    char *h_name;
    char **h_aliases;

    int h_addrtype;
    int h_length;
    char **h_addr_list;


};

struct addrinfo {
    int ai_flags;
    int ai_family;
    int ai_socktype;
    int ai_protocol;
    socklen_t ai_addrlen;
    struct sockaddr *ai_addr;
    char *ai_canonname;
    struct addrinfo *ai_next;
};






extern int h_errno;


struct hostent *lwip_gethostbyname(const char *name);
int lwip_gethostbyname_r(const char *name, struct hostent *ret, char *buf,
                size_t buflen, struct hostent **result, int *h_errnop);
void lwip_freeaddrinfo(struct addrinfo *ai);
int lwip_getaddrinfo(const char *nodename,
       const char *servname,
       const struct addrinfo *hints,
       struct addrinfo **res);
# 11 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/http_server.h" 2
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/api.h" 1
# 47 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/api.h"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netbuf.h" 1
# 60 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/netbuf.h"
struct netbuf {
  struct pbuf *p, *ptr;
  ip_addr_t addr;
  u16_t port;

  u8_t flags;
  u16_t toport_chksum;




};


struct netbuf * netbuf_new (void);
void netbuf_delete (struct netbuf *buf);
void * netbuf_alloc (struct netbuf *buf, u16_t size);
void netbuf_free (struct netbuf *buf);
err_t netbuf_ref (struct netbuf *buf,
                                   const void *dataptr, u16_t size);
void netbuf_chain (struct netbuf *head, struct netbuf *tail);

err_t netbuf_data (struct netbuf *buf,
                                   void **dataptr, u16_t *len);
s8_t netbuf_next (struct netbuf *buf);
void netbuf_first (struct netbuf *buf);
# 48 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/api.h" 2
# 113 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/api.h"
enum netconn_type {
  NETCONN_INVALID = 0,

  NETCONN_TCP = 0x10,





  NETCONN_UDP = 0x20,

  NETCONN_UDPLITE = 0x21,

  NETCONN_UDPNOCHKSUM = 0x22,
# 138 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/api.h"
  NETCONN_RAW = 0x40




};



enum netconn_state {
  NETCONN_NONE,
  NETCONN_WRITE,
  NETCONN_LISTEN,
  NETCONN_CONNECT,
  NETCONN_CLOSE
};
# 181 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/api.h"
enum netconn_evt {
  NETCONN_EVT_RCVPLUS,
  NETCONN_EVT_RCVMINUS,
  NETCONN_EVT_SENDPLUS,
  NETCONN_EVT_SENDMINUS,
  NETCONN_EVT_ERROR
};



enum netconn_igmp {
  NETCONN_JOIN,
  NETCONN_LEAVE
};
# 207 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/api.h"
struct ip_pcb;
struct tcp_pcb;
struct udp_pcb;
struct raw_pcb;
struct netconn;
struct api_msg;


typedef void (* netconn_callback)(struct netconn *, enum netconn_evt, u16_t len);


struct netconn {

  enum netconn_type type;

  enum netconn_state state;

  union {
    struct ip_pcb *ip;
    struct tcp_pcb *tcp;
    struct udp_pcb *udp;
    struct raw_pcb *raw;
  } pcb;

  err_t pending_err;






  sys_mbox_t recvmbox;



  sys_mbox_t acceptmbox;




  int mbox_threads_waiting;



  int socket;




  s32_t send_timeout;




  u32_t recv_timeout;




  int recv_bufsize;



  int recv_avail;



  s16_t linger;


  u8_t flags;




  struct api_msg *current_msg;


  netconn_callback callback;
};






struct netvector {

  const void *ptr;

  size_t len;
};
# 312 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/api.h"
struct netconn *netconn_new_with_proto_and_callback(enum netconn_type t, u8_t proto,
                                             netconn_callback callback);
err_t netconn_prepare_delete(struct netconn *conn);
err_t netconn_delete(struct netconn *conn);



err_t netconn_getaddr(struct netconn *conn, ip_addr_t *addr,
                        u16_t *port, u8_t local);





err_t netconn_bind(struct netconn *conn, const ip_addr_t *addr, u16_t port);
err_t netconn_bind_if(struct netconn *conn, u8_t if_idx);
err_t netconn_connect(struct netconn *conn, const ip_addr_t *addr, u16_t port);
err_t netconn_disconnect (struct netconn *conn);
err_t netconn_listen_with_backlog(struct netconn *conn, u8_t backlog);


err_t netconn_accept(struct netconn *conn, struct netconn **new_conn);
err_t netconn_recv(struct netconn *conn, struct netbuf **new_buf);
err_t netconn_recv_udp_raw_netbuf(struct netconn *conn, struct netbuf **new_buf);
err_t netconn_recv_udp_raw_netbuf_flags(struct netconn *conn, struct netbuf **new_buf, u8_t apiflags);
err_t netconn_recv_tcp_pbuf(struct netconn *conn, struct pbuf **new_buf);
err_t netconn_recv_tcp_pbuf_flags(struct netconn *conn, struct pbuf **new_buf, u8_t apiflags);
err_t netconn_tcp_recvd(struct netconn *conn, size_t len);
err_t netconn_sendto(struct netconn *conn, struct netbuf *buf,
                             const ip_addr_t *addr, u16_t port);
err_t netconn_send(struct netconn *conn, struct netbuf *buf);
err_t netconn_write_partly(struct netconn *conn, const void *dataptr, size_t size,
                             u8_t apiflags, size_t *bytes_written);
err_t netconn_write_vectors_partly(struct netconn *conn, struct netvector *vectors, u16_t vectorcnt,
                                     u8_t apiflags, size_t *bytes_written);



err_t netconn_close(struct netconn *conn);
err_t netconn_shutdown(struct netconn *conn, u8_t shut_rx, u8_t shut_tx);


err_t netconn_join_leave_group(struct netconn *conn, const ip_addr_t *multiaddr,
                             const ip_addr_t *netif_addr, enum netconn_igmp join_or_leave);
err_t netconn_join_leave_group_netif(struct netconn *conn, const ip_addr_t *multiaddr,
                             u8_t if_idx, enum netconn_igmp join_or_leave);






err_t netconn_gethostbyname(const char *name, ip_addr_t *addr);




err_t netconn_err(struct netconn *conn);
# 418 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/lwip/src/include/lwip/api.h"
void netconn_thread_init(void);
void netconn_thread_cleanup(void);
# 12 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/http_server.h" 2
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/dns_server/include/web_server.h" 1




void web_server2(void *pvParameters);
# 13 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/http_server.h" 2
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/cjson/cJSON.h" 1
# 28 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/cjson/cJSON.h"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/math.h" 1 3






# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/ieeefp.h" 1 3
# 8 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/math.h" 2 3



# 86 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/math.h" 3

# 86 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/math.h" 3
extern double atan (double);
extern double cos (double);
extern double sin (double);
extern double tan (double);
extern double tanh (double);
extern double frexp (double, int *);
extern double modf (double, double *);
extern double ceil (double);
extern double fabs (double);
extern double floor (double);






extern double acos (double);
extern double asin (double);
extern double atan2 (double, double);
extern double cosh (double);
extern double sinh (double);
extern double exp (double);
extern double ldexp (double, int);
extern double log (double);
extern double log10 (double);
extern double pow (double, double);
extern double sqrt (double);
extern double fmod (double, double);




extern int finite (double);
extern int finitef (float);
extern int finitel (long double);
extern int isinff (float);
extern int isnanf (float);





extern int isinf (double);




extern int isnan (double);
# 150 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/math.h" 3
    typedef float float_t;
    typedef double double_t;
# 204 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/math.h" 3
extern int __isinff (float);
extern int __isinfd (double);
extern int __isnanf (float);
extern int __isnand (double);
extern int __fpclassifyf (float);
extern int __fpclassifyd (double);
extern int __signbitf (float);
extern int __signbitd (double);
# 300 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/math.h" 3
extern double infinity (void);
extern double nan (const char *);
extern double copysign (double, double);
extern double logb (double);
extern int ilogb (double);

extern double asinh (double);
extern double cbrt (double);
extern double nextafter (double, double);
extern double rint (double);
extern double scalbn (double, int);

extern double exp2 (double);
extern double scalbln (double, long int);
extern double tgamma (double);
extern double nearbyint (double);
extern long int lrint (double);
extern long long int llrint (double);
extern double round (double);
extern long int lround (double);
extern long long int llround (double);
extern double trunc (double);
extern double remquo (double, double, int *);
extern double fdim (double, double);
extern double fmax (double, double);
extern double fmin (double, double);
extern double fma (double, double, double);


extern double log1p (double);
extern double expm1 (double);



extern double acosh (double);
extern double atanh (double);
extern double remainder (double, double);
extern double gamma (double);
extern double lgamma (double);
extern double erf (double);
extern double erfc (double);
extern double log2 (double);





extern double hypot (double, double);






extern float atanf (float);
extern float cosf (float);
extern float sinf (float);
extern float tanf (float);
extern float tanhf (float);
extern float frexpf (float, int *);
extern float modff (float, float *);
extern float ceilf (float);
extern float fabsf (float);
extern float floorf (float);


extern float acosf (float);
extern float asinf (float);
extern float atan2f (float, float);
extern float coshf (float);
extern float sinhf (float);
extern float expf (float);
extern float ldexpf (float, int);
extern float logf (float);
extern float log10f (float);
extern float powf (float, float);
extern float sqrtf (float);
extern float fmodf (float, float);




extern float exp2f (float);
extern float scalblnf (float, long int);
extern float tgammaf (float);
extern float nearbyintf (float);
extern long int lrintf (float);
extern long long int llrintf (float);
extern float roundf (float);
extern long int lroundf (float);
extern long long int llroundf (float);
extern float truncf (float);
extern float remquof (float, float, int *);
extern float fdimf (float, float);
extern float fmaxf (float, float);
extern float fminf (float, float);
extern float fmaf (float, float, float);

extern float infinityf (void);
extern float nanf (const char *);
extern float copysignf (float, float);
extern float logbf (float);
extern int ilogbf (float);

extern float asinhf (float);
extern float cbrtf (float);
extern float nextafterf (float, float);
extern float rintf (float);
extern float scalbnf (float, int);
extern float log1pf (float);
extern float expm1f (float);


extern float acoshf (float);
extern float atanhf (float);
extern float remainderf (float, float);
extern float gammaf (float);
extern float lgammaf (float);
extern float erff (float);
extern float erfcf (float);
extern float log2f (float);
extern float hypotf (float, float);
# 500 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/math.h" 3
extern long double hypotl (long double, long double);
extern long double sqrtl (long double);
# 513 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/math.h" 3
extern double drem (double, double);
extern float dremf (float, float);



extern double gamma_r (double, int *);
extern double lgamma_r (double, int *);
extern float gammaf_r (float, int *);
extern float lgammaf_r (float, int *);



extern double y0 (double);
extern double y1 (double);
extern double yn (int, double);
extern double j0 (double);
extern double j1 (double);
extern double jn (int, double);



extern float y0f (float);
extern float y1f (float);
extern float ynf (int, float);
extern float j0f (float);
extern float j1f (float);
extern float jnf (int, float);




extern void sincos (double, double *, double *);
extern void sincosf (float, float *, float *);




extern double exp10 (double);


extern double pow10 (double);


extern float exp10f (float);


extern float pow10f (float);
# 575 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/math.h" 3
extern int *__signgam (void);
# 617 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/math.h" 3

# 29 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/cjson/cJSON.h" 2

# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/float.h" 1 3 4
# 31 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/cjson/cJSON.h" 2
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include-fixed/limits.h" 1 3 4
# 32 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/cjson/cJSON.h" 2
# 52 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/cjson/cJSON.h"

# 52 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/stage/cjson/cJSON.h"
typedef struct cJSON {
 struct cJSON *next,*prev;
 struct cJSON *child;

 int type;

 char *valuestring;
 int valueint;
 double valuedouble;

 char *string;
} cJSON;

typedef struct cJSON_Hooks {
      void *(*malloc_fn)(size_t sz);
      void (*free_fn)(void *ptr);
} cJSON_Hooks;


extern void cJSON_InitHooks(cJSON_Hooks* hooks);



extern cJSON *cJSON_Parse(const char *value);

extern char *cJSON_Print(cJSON *item);

extern char *cJSON_PrintUnformatted(cJSON *item);

extern char *cJSON_PrintBuffered(cJSON *item,int prebuffer,int fmt);

extern void cJSON_Delete(cJSON *c);


extern int cJSON_GetArraySize(cJSON *array);

extern cJSON *cJSON_GetArrayItem(cJSON *array,int item);

extern cJSON *cJSON_GetObjectItem(cJSON *object,const char *string);


extern const char *cJSON_GetErrorPtr(void);


extern cJSON *cJSON_CreateNull(void);
extern cJSON *cJSON_CreateTrue(void);
extern cJSON *cJSON_CreateFalse(void);
extern cJSON *cJSON_CreateBool(int b);
extern cJSON *cJSON_CreateNumber(double num);
extern cJSON *cJSON_CreateString(const char *string);
extern cJSON *cJSON_CreateArray(void);
extern cJSON *cJSON_CreateObject(void);


extern cJSON *cJSON_CreateIntArray(const int *numbers,int count);
extern cJSON *cJSON_CreateFloatArray(const float *numbers,int count);
extern cJSON *cJSON_CreateDoubleArray(const double *numbers,int count);
extern cJSON *cJSON_CreateStringArray(const char **strings,int count);


extern void cJSON_AddItemToArray(cJSON *array, cJSON *item);
extern void cJSON_AddItemToObject(cJSON *object,const char *string,cJSON *item);
extern void cJSON_AddItemToObjectCS(cJSON *object,const char *string,cJSON *item);

extern void cJSON_AddItemReferenceToArray(cJSON *array, cJSON *item);
extern void cJSON_AddItemReferenceToObject(cJSON *object,const char *string,cJSON *item);


extern cJSON *cJSON_DetachItemFromArray(cJSON *array,int which);
extern void cJSON_DeleteItemFromArray(cJSON *array,int which);
extern cJSON *cJSON_DetachItemFromObject(cJSON *object,const char *string);
extern void cJSON_DeleteItemFromObject(cJSON *object,const char *string);


extern void cJSON_InsertItemInArray(cJSON *array,int which,cJSON *newitem);
extern void cJSON_ReplaceItemInArray(cJSON *array,int which,cJSON *newitem);
extern void cJSON_ReplaceItemInObject(cJSON *object,const char *string,cJSON *newitem);


extern cJSON *cJSON_Duplicate(cJSON *item,int recurse);





extern cJSON *cJSON_ParseWithOpts(const char *value,const char **return_parse_end,int require_null_terminated);

extern void cJSON_Minify(char *json);
# 14 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/http_server.h" 2
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/ap.h" 1
# 15 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/http_server.h" 2
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/wifi.h" 1
# 14 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/wifi.h"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/hosal/bl602_hal/bl_sys.h" 1





typedef enum {
    BL_RST_POWER_OFF = 0,
    BL_RST_HARDWARE_WATCHDOG,
    BL_RST_FATAL_EXCEPTION,
    BL_RST_SOFTWARE_WATCHDOG,
    BL_RST_SOFTWARE,
} BL_RST_REASON_E;

BL_RST_REASON_E bl_sys_rstinfo_get(void);
int bl_sys_rstinfo_set(BL_RST_REASON_E val);
int bl_sys_rstinfo_getsting(char *info);
void bl_sys_rstinfo_init(void);
int bl_sys_logall_enable(void);
int bl_sys_logall_disable(void);
void bl_sys_mfg_config(void);
int bl_sys_reset_por(void);
void bl_sys_reset_system(void);
int bl_sys_isxipaddr(uint32_t addr);
int bl_sys_early_init(void);
int bl_sys_init(void);
# 15 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/wifi.h" 2




# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/mqtt.h" 1







# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_mqtt/include/mqtt_client.h" 1
# 13 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_mqtt/include/mqtt_client.h"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_common/include/axk_err.h" 1






       



# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/assert.h" 1 3
# 39 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/assert.h" 3

# 39 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/assert.h" 3
void __assert (const char *, int, const char *)
     __attribute__ ((__noreturn__));
void __assert_func (const char *, int, const char *, const char *)
     __attribute__ ((__noreturn__));
# 12 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_common/include/axk_err.h" 2
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_common/include/axk_compiler.h" 1
# 13 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_common/include/axk_err.h" 2






# 18 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_common/include/axk_err.h"
typedef int axk_err_t;
# 57 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_common/include/axk_err.h"
const char *axk_err_to_name(axk_err_t code);
# 75 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_common/include/axk_err.h"
const char *axk_err_to_name_r(axk_err_t code, char *buf, size_t buflen);


void _axk_error_check_failed(axk_err_t rc, const char *file, int line, const char *function, const char *expression) __attribute__((noreturn));


void _axk_error_check_failed_without_abort(axk_err_t rc, const char *file, int line, const char *function, const char *expression);
# 14 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_mqtt/include/mqtt_client.h" 2
# 22 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_mqtt/include/mqtt_client.h"
typedef void *axk_event_loop_handle_t;
typedef void *axk_event_handler_t;


typedef struct axk_mqtt_client *axk_mqtt_client_handle_t;
# 37 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_mqtt/include/mqtt_client.h"
typedef enum {
    MQTT_EVENT_ANY = -1,
    MQTT_EVENT_ERROR = 0,
    MQTT_EVENT_CONNECTED,
    MQTT_EVENT_DISCONNECTED,
    MQTT_EVENT_SUBSCRIBED,




    MQTT_EVENT_UNSUBSCRIBED,
    MQTT_EVENT_PUBLISHED,
    MQTT_EVENT_DATA,
# 65 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_mqtt/include/mqtt_client.h"
    MQTT_EVENT_BEFORE_CONNECT,
    MQTT_EVENT_DELETED,






} axk_mqtt_event_id_t;




typedef enum {
    MQTT_CONNECTION_ACCEPTED = 0,
    MQTT_CONNECTION_REFUSE_PROTOCOL,
    MQTT_CONNECTION_REFUSE_ID_REJECTED,
    MQTT_CONNECTION_REFUSE_SERVER_UNAVAILABLE,
    MQTT_CONNECTION_REFUSE_BAD_USERNAME,
    MQTT_CONNECTION_REFUSE_NOT_AUTHORIZED
} axk_mqtt_connect_return_code_t;




typedef enum {
    MQTT_ERROR_TYPE_NONE = 0,
    MQTT_ERROR_TYPE_TCP_TRANSPORT,
    MQTT_ERROR_TYPE_CONNECTION_REFUSED,
} axk_mqtt_error_type_t;
# 103 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_mqtt/include/mqtt_client.h"
typedef enum {
    MQTT_TRANSPORT_UNKNOWN = 0x0,
    MQTT_TRANSPORT_OVER_TCP,
    MQTT_TRANSPORT_OVER_SSL,
    MQTT_TRANSPORT_OVER_WS,
    MQTT_TRANSPORT_OVER_WSS
} axk_mqtt_transport_t;




typedef enum {
    MQTT_PROTOCOL_UNDEFINED = 0,
    MQTT_PROTOCOL_V_3_1,
    MQTT_PROTOCOL_V_3_1_1
} axk_mqtt_protocol_ver_t;
# 132 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_mqtt/include/mqtt_client.h"
typedef struct axk_mqtt_error_codes {

    axk_err_t axk_tls_last_axk_err;
    int axk_tls_stack_err;
    int axk_tls_cert_verify_flags;

    axk_mqtt_error_type_t error_type;
    axk_mqtt_connect_return_code_t connect_return_code;

    int axk_transport_sock_errno;

} axk_mqtt_error_codes_t;




typedef struct {
    axk_mqtt_event_id_t event_id;
    axk_mqtt_client_handle_t client;
    void *user_context;
    char *data;
    int data_len;
    int total_data_len;
    int current_data_offset;
    char *topic;
    int topic_len;
    int msg_id;
    int session_present;
    axk_mqtt_error_codes_t *error_handle;
    
# 161 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_mqtt/include/mqtt_client.h" 3 4
   _Bool 
# 161 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_mqtt/include/mqtt_client.h"
        retain;
    int qos;
    
# 163 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_mqtt/include/mqtt_client.h" 3 4
   _Bool 
# 163 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_mqtt/include/mqtt_client.h"
        dup;
} axk_mqtt_event_t;

typedef axk_mqtt_event_t *axk_mqtt_event_handle_t;

typedef axk_err_t (* mqtt_event_callback_t)(axk_mqtt_event_handle_t event);




typedef struct {
    mqtt_event_callback_t event_handle;
    axk_event_loop_handle_t event_loop_handle;
    const char *host;
    const char *uri;
    uint32_t port;
    
# 179 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_mqtt/include/mqtt_client.h" 3 4
   _Bool 
# 179 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_mqtt/include/mqtt_client.h"
        set_null_client_id;
    const char *client_id;



    const char *username;
    const char *password;
    const char *lwt_topic;
    const char *lwt_msg;
    int lwt_qos;
    int lwt_retain;
    int lwt_msg_len;
    int disable_clean_session;
    int keepalive;
    
# 193 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_mqtt/include/mqtt_client.h" 3 4
   _Bool 
# 193 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_mqtt/include/mqtt_client.h"
        disable_auto_reconnect;
    void *user_context;
    int task_prio;
    int task_stack;
    int buffer_size;
    const char *cert_pem;
    size_t cert_len;
    const char *client_cert_pem;
    size_t client_cert_len;
    const char *client_key_pem;
    size_t client_key_len;
    axk_mqtt_transport_t transport;
    int refresh_connection_after_ms;
    const struct psk_key_hint *psk_hint_key;
    
# 207 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_mqtt/include/mqtt_client.h" 3 4
   _Bool 
# 207 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_mqtt/include/mqtt_client.h"
                 use_global_ca_store;
    axk_err_t (*crt_bundle_attach)(void *conf);
    int reconnect_timeout_ms;
    const char **alpn_protos;
    const char *clientkey_password;
    int clientkey_password_len;
    axk_mqtt_protocol_ver_t protocol_ver;
    int out_buffer_size;
    
# 215 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_mqtt/include/mqtt_client.h" 3 4
   _Bool 
# 215 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_mqtt/include/mqtt_client.h"
        skip_cert_common_name_check;
    
# 216 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_mqtt/include/mqtt_client.h" 3 4
   _Bool 
# 216 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_mqtt/include/mqtt_client.h"
        use_secure_element;
    void *ds_data;
    int network_timeout_ms;
    
# 219 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_mqtt/include/mqtt_client.h" 3 4
   _Bool 
# 219 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_mqtt/include/mqtt_client.h"
        disable_keepalive;
    const char *path;
    int message_retransmit_timeout;
} axk_mqtt_client_config_t;
# 231 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_mqtt/include/mqtt_client.h"
axk_mqtt_client_handle_t axk_mqtt_client_init(const axk_mqtt_client_config_t *config);
# 242 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_mqtt/include/mqtt_client.h"
axk_err_t axk_mqtt_client_set_uri(axk_mqtt_client_handle_t client, const char *uri);
# 253 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_mqtt/include/mqtt_client.h"
axk_err_t axk_mqtt_client_start(axk_mqtt_client_handle_t client);
# 264 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_mqtt/include/mqtt_client.h"
axk_err_t axk_mqtt_client_reconnect(axk_mqtt_client_handle_t client);
# 274 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_mqtt/include/mqtt_client.h"
axk_err_t axk_mqtt_client_disconnect(axk_mqtt_client_handle_t client);
# 288 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_mqtt/include/mqtt_client.h"
axk_err_t axk_mqtt_client_stop(axk_mqtt_client_handle_t client);
# 307 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_mqtt/include/mqtt_client.h"
int axk_mqtt_client_subscribe(axk_mqtt_client_handle_t client, const char *topic, int qos);
# 322 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_mqtt/include/mqtt_client.h"
int axk_mqtt_client_unsubscribe(axk_mqtt_client_handle_t client, const char *topic);
# 347 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_mqtt/include/mqtt_client.h"
int axk_mqtt_client_publish(axk_mqtt_client_handle_t client, const char *topic, const char *data, int len, int qos, int retain);
# 368 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_mqtt/include/mqtt_client.h"
int axk_mqtt_client_enqueue(axk_mqtt_client_handle_t client, const char *topic, const char *data, int len, int qos, int retain, 
# 368 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_mqtt/include/mqtt_client.h" 3 4
                                                                                                                               _Bool 
# 368 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_mqtt/include/mqtt_client.h"
                                                                                                                                    store);
# 381 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_mqtt/include/mqtt_client.h"
axk_err_t axk_mqtt_client_destroy(axk_mqtt_client_handle_t client);
# 394 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_mqtt/include/mqtt_client.h"
axk_err_t axk_mqtt_set_config(axk_mqtt_client_handle_t client, const axk_mqtt_client_config_t *config);
# 408 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_mqtt/include/mqtt_client.h"
axk_err_t axk_mqtt_client_register_event(axk_mqtt_client_handle_t client, axk_mqtt_event_id_t event, axk_event_handler_t event_handler, void *event_handler_arg);
# 417 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/network/axk_protocol_stack/axk_mqtt/include/mqtt_client.h"
int axk_mqtt_client_get_outbox_size(axk_mqtt_client_handle_t client);
# 9 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/mqtt.h" 2
# 17 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/mqtt.h"
void mqtt_start(void);
void button_task(void *param);
void control_button(cJSON *Switch, cJSON *getctr);
# 20 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/wifi.h" 2
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/http_server.h" 1
# 21 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/wifi.h" 2
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/button.h" 1
# 22 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/wifi.h" 2




typedef struct
{
    uint16_t interval_second;
    uint16_t reconn_count;
} wifi_sta_reconnect_t;

typedef struct
{
    uint32_t ip;
    uint32_t gateway;
    uint32_t netmask;
} wifi_ip_params_t;

typedef enum
{
    WIFI_AUTOCONN_DISABLE = 0,
    WIFI_AUTOCONN_ENABLE,
} wifi_auto_conn;

int wifi_sta_connect(char* ssid, char* password);

void wifi_execute(void *pvParameters);
# 16 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/http_server.h" 2



void http_server_start(void *pvParameters);
# 17 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/ap.h" 2







void event_ap_wifi_event(input_event_t* event, void* private_data);
void wifi_ap_stop();
void wifi_ap_start();
void proc_main_entry(void* pvParameters);
# 14 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/button.h" 2





typedef enum {
    NO_CLICK = 0,
    CLICK,
    CONFIG,
    HOLD_BUTTON,
    HOLD_BUTTON_LONG
} button_states;




uint8_t get_button_status(void);
button_states button_state(void);
void button_manual_task(void *param);

void set_is_config(uint8_t value);
void reset_flag(uint8_t value);
# 5 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/button.c" 2






static uint8_t led_status = 0;
static uint8_t IS_CONFIG = 0;
static uint8_t flag = 0;




void set_is_config(uint8_t value){
    IS_CONFIG = value;
}

void reset_flag(uint8_t value){
    flag = 0;
}

void blink_led_200(void){
    static uint32_t old_tick_ms = 0;

    if(xTaskGetTickCount() - old_tick_ms < 200){
        return;
    }

    old_tick_ms = xTaskGetTickCount();

    led_status = !led_status;
    bl_gpio_output_set(3, led_status);
    old_tick_ms = xTaskGetTickCount();

}

uint8_t get_button_status(void){
    return bl_gpio_input_get_value(21);
}


button_states button_state(void){
    static uint8_t status = NO_CLICK;
    static uint32_t time_to_wait = 0;
    static uint32_t old_tick_ms = 0;
    static uint32_t time_long_click = 0;

    if(xTaskGetTickCount() - old_tick_ms < time_to_wait){
        return 0;
    }

    old_tick_ms = xTaskGetTickCount();
    switch(status){
        case NO_CLICK:
            if(get_button_status() == 0){
                status = HOLD_BUTTON;
                time_to_wait = 50;
            }
            break;

        case CLICK:

            status = NO_CLICK;

            break;

        case CONFIG:

            if(IS_CONFIG == 0){
                status = NO_CLICK;
            }

            break;

        case HOLD_BUTTON:
            if(get_button_status() == 0){
                status = HOLD_BUTTON_LONG;
                time_long_click = xTaskGetTickCount();
            }
            break;

        case HOLD_BUTTON_LONG:
            if(get_button_status() == 1){
                if(xTaskGetTickCount() - time_long_click >= 5000){
                    status = CONFIG;
                    time_long_click = 0;
                }else{
                    status = CLICK;
                    time_long_click = 0;
                }
            }
            break;
    }
    return status;
}


void button_manual_task(void *param){

    bl_gpio_enable_input(21, 1, 0);
    bl_gpio_enable_output(3, 0, 0);

    uint8_t button_status = 0;


    while (1){
        button_status = button_state();
        if(button_status == CLICK){
            printf("\r\nPRINT CLICK\r\n");
            led_status = !led_status;
            bl_gpio_output_set(3, led_status);
        }
        if(button_status == CONFIG){

            IS_CONFIG = 1;
            blink_led_200();
            if(flag == 0){
                wifi_ap_start();

                flag = 1;
            }
# 134 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/config_wifi/button.c"
        }
        vTaskDelay(50);
    }
}
