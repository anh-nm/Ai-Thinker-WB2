# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/build_out/http-parser//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c"
# 21 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/include/http_parser.h" 1
# 32 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/include/http_parser.h"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 143 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4

# 143 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 209 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 321 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef int wchar_t;
# 33 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/include/http_parser.h" 2
# 45 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/include/http_parser.h"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint.h" 1 3 4
# 11 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint.h" 3 4
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdint-gcc.h" 1 3 4
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
# 46 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/include/http_parser.h" 2
# 66 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/include/http_parser.h"

# 66 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/include/http_parser.h"
typedef struct http_parser http_parser;
typedef struct http_parser_settings http_parser_settings;
# 88 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/include/http_parser.h"
typedef int (*http_data_cb) (http_parser*, const char *at, size_t length);
typedef int (*http_cb) (http_parser*);
# 154 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/include/http_parser.h"
enum http_status
  {

  HTTP_STATUS_CONTINUE = 100, HTTP_STATUS_SWITCHING_PROTOCOLS = 101, HTTP_STATUS_PROCESSING = 102, HTTP_STATUS_OK = 200, HTTP_STATUS_CREATED = 201, HTTP_STATUS_ACCEPTED = 202, HTTP_STATUS_NON_AUTHORITATIVE_INFORMATION = 203, HTTP_STATUS_NO_CONTENT = 204, HTTP_STATUS_RESET_CONTENT = 205, HTTP_STATUS_PARTIAL_CONTENT = 206, HTTP_STATUS_MULTI_STATUS = 207, HTTP_STATUS_ALREADY_REPORTED = 208, HTTP_STATUS_IM_USED = 226, HTTP_STATUS_MULTIPLE_CHOICES = 300, HTTP_STATUS_MOVED_PERMANENTLY = 301, HTTP_STATUS_FOUND = 302, HTTP_STATUS_SEE_OTHER = 303, HTTP_STATUS_NOT_MODIFIED = 304, HTTP_STATUS_USE_PROXY = 305, HTTP_STATUS_TEMPORARY_REDIRECT = 307, HTTP_STATUS_PERMANENT_REDIRECT = 308, HTTP_STATUS_BAD_REQUEST = 400, HTTP_STATUS_UNAUTHORIZED = 401, HTTP_STATUS_PAYMENT_REQUIRED = 402, HTTP_STATUS_FORBIDDEN = 403, HTTP_STATUS_NOT_FOUND = 404, HTTP_STATUS_METHOD_NOT_ALLOWED = 405, HTTP_STATUS_NOT_ACCEPTABLE = 406, HTTP_STATUS_PROXY_AUTHENTICATION_REQUIRED = 407, HTTP_STATUS_REQUEST_TIMEOUT = 408, HTTP_STATUS_CONFLICT = 409, HTTP_STATUS_GONE = 410, HTTP_STATUS_LENGTH_REQUIRED = 411, HTTP_STATUS_PRECONDITION_FAILED = 412, HTTP_STATUS_PAYLOAD_TOO_LARGE = 413, HTTP_STATUS_URI_TOO_LONG = 414, HTTP_STATUS_UNSUPPORTED_MEDIA_TYPE = 415, HTTP_STATUS_RANGE_NOT_SATISFIABLE = 416, HTTP_STATUS_EXPECTATION_FAILED = 417, HTTP_STATUS_MISDIRECTED_REQUEST = 421, HTTP_STATUS_UNPROCESSABLE_ENTITY = 422, HTTP_STATUS_LOCKED = 423, HTTP_STATUS_FAILED_DEPENDENCY = 424, HTTP_STATUS_UPGRADE_REQUIRED = 426, HTTP_STATUS_PRECONDITION_REQUIRED = 428, HTTP_STATUS_TOO_MANY_REQUESTS = 429, HTTP_STATUS_REQUEST_HEADER_FIELDS_TOO_LARGE = 431, HTTP_STATUS_UNAVAILABLE_FOR_LEGAL_REASONS = 451, HTTP_STATUS_INTERNAL_SERVER_ERROR = 500, HTTP_STATUS_NOT_IMPLEMENTED = 501, HTTP_STATUS_BAD_GATEWAY = 502, HTTP_STATUS_SERVICE_UNAVAILABLE = 503, HTTP_STATUS_GATEWAY_TIMEOUT = 504, HTTP_STATUS_HTTP_VERSION_NOT_SUPPORTED = 505, HTTP_STATUS_VARIANT_ALSO_NEGOTIATES = 506, HTTP_STATUS_INSUFFICIENT_STORAGE = 507, HTTP_STATUS_LOOP_DETECTED = 508, HTTP_STATUS_NOT_EXTENDED = 510, HTTP_STATUS_NETWORK_AUTHENTICATION_REQUIRED = 511,

  };
# 207 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/include/http_parser.h"
enum http_method
  {

  HTTP_DELETE = 0, HTTP_GET = 1, HTTP_HEAD = 2, HTTP_POST = 3, HTTP_PUT = 4, HTTP_CONNECT = 5, HTTP_OPTIONS = 6, HTTP_TRACE = 7, HTTP_COPY = 8, HTTP_LOCK = 9, HTTP_MKCOL = 10, HTTP_MOVE = 11, HTTP_PROPFIND = 12, HTTP_PROPPATCH = 13, HTTP_SEARCH = 14, HTTP_UNLOCK = 15, HTTP_BIND = 16, HTTP_REBIND = 17, HTTP_UNBIND = 18, HTTP_ACL = 19, HTTP_REPORT = 20, HTTP_MKACTIVITY = 21, HTTP_CHECKOUT = 22, HTTP_MERGE = 23, HTTP_MSEARCH = 24, HTTP_NOTIFY = 25, HTTP_SUBSCRIBE = 26, HTTP_UNSUBSCRIBE = 27, HTTP_PATCH = 28, HTTP_PURGE = 29, HTTP_MKCALENDAR = 30, HTTP_LINK = 31, HTTP_UNLINK = 32, HTTP_SOURCE = 33,

  };


enum http_parser_type { HTTP_REQUEST, HTTP_RESPONSE, HTTP_BOTH };



enum flags
  { F_CHUNKED = 1 << 0
  , F_CONNECTION_KEEP_ALIVE = 1 << 1
  , F_CONNECTION_CLOSE = 1 << 2
  , F_CONNECTION_UPGRADE = 1 << 3
  , F_TRAILING = 1 << 4
  , F_UPGRADE = 1 << 5
  , F_SKIPBODY = 1 << 6
  , F_CONTENTLENGTH = 1 << 7
  };
# 283 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/include/http_parser.h"
enum http_errno {
  HPE_OK, HPE_CB_message_begin, HPE_CB_url, HPE_CB_header_field, HPE_CB_header_value, HPE_CB_headers_complete, HPE_CB_body, HPE_CB_message_complete, HPE_CB_status, HPE_CB_chunk_header, HPE_CB_chunk_complete, HPE_INVALID_EOF_STATE, HPE_HEADER_OVERFLOW, HPE_CLOSED_CONNECTION, HPE_INVALID_VERSION, HPE_INVALID_STATUS, HPE_INVALID_METHOD, HPE_INVALID_URL, HPE_INVALID_HOST, HPE_INVALID_PORT, HPE_INVALID_PATH, HPE_INVALID_QUERY_STRING, HPE_INVALID_FRAGMENT, HPE_LF_EXPECTED, HPE_INVALID_HEADER_TOKEN, HPE_INVALID_CONTENT_LENGTH, HPE_UNEXPECTED_CONTENT_LENGTH, HPE_INVALID_CHUNK_SIZE, HPE_INVALID_CONSTANT, HPE_INVALID_INTERNAL_STATE, HPE_STRICT, HPE_PAUSED, HPE_UNKNOWN,
};







struct http_parser {

  unsigned int type : 2;
  unsigned int flags : 8;
  unsigned int state : 7;
  unsigned int header_state : 7;
  unsigned int index : 7;
  unsigned int lenient_http_headers : 1;

  uint32_t nread;
  uint64_t content_length;


  unsigned short http_major;
  unsigned short http_minor;
  unsigned int status_code : 16;
  unsigned int method : 8;
  unsigned int http_errno : 7;






  unsigned int upgrade : 1;


  void *data;
};


struct http_parser_settings {
  http_cb on_message_begin;
  http_data_cb on_url;
  http_data_cb on_status;
  http_data_cb on_header_field;
  http_data_cb on_header_value;
  http_cb on_headers_complete;
  http_data_cb on_body;
  http_cb on_message_complete;



  http_cb on_chunk_header;
  http_cb on_chunk_complete;
};


enum http_parser_url_fields
  { UF_SCHEMA = 0
  , UF_HOST = 1
  , UF_PORT = 2
  , UF_PATH = 3
  , UF_QUERY = 4
  , UF_FRAGMENT = 5
  , UF_USERINFO = 6
  , UF_MAX = 7
  };
# 360 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/include/http_parser.h"
struct http_parser_url {
  uint16_t field_set;
  uint16_t port;

  struct {
    uint16_t off;
    uint16_t len;
  } field_data[UF_MAX];
};
# 381 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/include/http_parser.h"
unsigned long http_parser_version(void);

void http_parser_init(http_parser *parser, enum http_parser_type type);




void http_parser_settings_init(http_parser_settings *settings);




size_t http_parser_execute(http_parser *parser,
                           const http_parser_settings *settings,
                           const char *data,
                           size_t len);
# 405 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/include/http_parser.h"
int http_should_keep_alive(const http_parser *parser);


const char *http_method_str(enum http_method m);


const char *http_status_str(enum http_status s);


const char *http_errno_name(enum http_errno err);


const char *http_errno_description(enum http_errno err);


void http_parser_url_init(struct http_parser_url *u);


int http_parser_parse_url(const char *buf, size_t buflen,
                          int is_connect,
                          struct http_parser_url *u);


void http_parser_pause(http_parser *parser, int paused);


int http_body_is_final(const http_parser *parser);


void http_parser_set_max_header_size(uint32_t size);
# 22 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c" 2

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
# 48 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/cdefs.h" 2 3
# 36 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
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

# 24 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c" 2

# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 26 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c" 2
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/ctype.h" 1 3







# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_locale.h" 1 3
# 9 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_locale.h" 3
struct __locale_t;
typedef struct __locale_t *locale_t;
# 9 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/ctype.h" 2 3




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

# 27 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c" 2
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 1 3
# 17 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 3
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 18 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/string.h" 2 3






# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/strings.h" 1 3
# 44 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/strings.h" 3


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


# 28 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c" 2
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
# 29 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c" 2


# 30 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c"
static uint32_t max_header_size = (80*1024);
# 176 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c"
static const char *method_strings[] =
  {

  "DELETE", "GET", "HEAD", "POST", "PUT", "CONNECT", "OPTIONS", "TRACE", "COPY", "LOCK", "MKCOL", "MOVE", "PROPFIND", "PROPPATCH", "SEARCH", "UNLOCK", "BIND", "REBIND", "UNBIND", "ACL", "REPORT", "MKACTIVITY", "CHECKOUT", "MERGE", "M-SEARCH", "NOTIFY", "SUBSCRIBE", "UNSUBSCRIBE", "PATCH", "PURGE", "MKCALENDAR", "LINK", "UNLINK", "SOURCE",

  };
# 191 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c"
static const char tokens[256] = {

        0, 0, 0, 0, 0, 0, 0, 0,

        0, 0, 0, 0, 0, 0, 0, 0,

        0, 0, 0, 0, 0, 0, 0, 0,

        0, 0, 0, 0, 0, 0, 0, 0,

       ' ', '!', 0, '#', '$', '%', '&', '\'',

        0, 0, '*', '+', 0, '-', '.', 0,

       '0', '1', '2', '3', '4', '5', '6', '7',

       '8', '9', 0, 0, 0, 0, 0, 0,

        0, 'a', 'b', 'c', 'd', 'e', 'f', 'g',

       'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o',

       'p', 'q', 'r', 's', 't', 'u', 'v', 'w',

       'x', 'y', 'z', 0, 0, 0, '^', '_',

       '`', 'a', 'b', 'c', 'd', 'e', 'f', 'g',

       'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o',

       'p', 'q', 'r', 's', 't', 'u', 'v', 'w',

       'x', 'y', 'z', 0, '|', 0, '~', 0 };


static const int8_t unhex[256] =
  {-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
  ,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
  ,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
  , 0, 1, 2, 3, 4, 5, 6, 7, 8, 9,-1,-1,-1,-1,-1,-1
  ,-1,10,11,12,13,14,15,-1,-1,-1,-1,-1,-1,-1,-1,-1
  ,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
  ,-1,10,11,12,13,14,15,-1,-1,-1,-1,-1,-1,-1,-1,-1
  ,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
  };
# 245 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c"
static const uint8_t normal_url_char[32] = {

        0 | 0 | 0 | 0 | 0 | 0 | 0 | 0,

        0 | 0 | 0 | 0 | 0 | 0 | 0 | 0,

        0 | 0 | 0 | 0 | 0 | 0 | 0 | 0,

        0 | 0 | 0 | 0 | 0 | 0 | 0 | 0,

        0 | 2 | 4 | 0 | 16 | 32 | 64 | 128,

        1 | 2 | 4 | 8 | 16 | 32 | 64 | 128,

        1 | 2 | 4 | 8 | 16 | 32 | 64 | 128,

        1 | 2 | 4 | 8 | 16 | 32 | 64 | 0,

        1 | 2 | 4 | 8 | 16 | 32 | 64 | 128,

        1 | 2 | 4 | 8 | 16 | 32 | 64 | 128,

        1 | 2 | 4 | 8 | 16 | 32 | 64 | 128,

        1 | 2 | 4 | 8 | 16 | 32 | 64 | 128,

        1 | 2 | 4 | 8 | 16 | 32 | 64 | 128,

        1 | 2 | 4 | 8 | 16 | 32 | 64 | 128,

        1 | 2 | 4 | 8 | 16 | 32 | 64 | 128,

        1 | 2 | 4 | 8 | 16 | 32 | 64 | 0, };



enum state
  { s_dead = 1

  , s_start_req_or_res
  , s_res_or_resp_H
  , s_start_res
  , s_res_H
  , s_res_HT
  , s_res_HTT
  , s_res_HTTP
  , s_res_http_major
  , s_res_http_dot
  , s_res_http_minor
  , s_res_http_end
  , s_res_first_status_code
  , s_res_status_code
  , s_res_status_start
  , s_res_status
  , s_res_line_almost_done

  , s_start_req

  , s_req_method
  , s_req_spaces_before_url
  , s_req_schema
  , s_req_schema_slash
  , s_req_schema_slash_slash
  , s_req_server_start
  , s_req_server
  , s_req_server_with_at
  , s_req_path
  , s_req_query_string_start
  , s_req_query_string
  , s_req_fragment_start
  , s_req_fragment
  , s_req_http_start
  , s_req_http_H
  , s_req_http_HT
  , s_req_http_HTT
  , s_req_http_HTTP
  , s_req_http_I
  , s_req_http_IC
  , s_req_http_major
  , s_req_http_dot
  , s_req_http_minor
  , s_req_http_end
  , s_req_line_almost_done

  , s_header_field_start
  , s_header_field
  , s_header_value_discard_ws
  , s_header_value_discard_ws_almost_done
  , s_header_value_discard_lws
  , s_header_value_start
  , s_header_value
  , s_header_value_lws

  , s_header_almost_done

  , s_chunk_size_start
  , s_chunk_size
  , s_chunk_parameters
  , s_chunk_size_almost_done

  , s_headers_almost_done
  , s_headers_done






  , s_chunk_data
  , s_chunk_data_almost_done
  , s_chunk_data_done

  , s_body_identity
  , s_body_identity_eof

  , s_message_done
  };





enum header_states
  { h_general = 0
  , h_C
  , h_CO
  , h_CON

  , h_matching_connection
  , h_matching_proxy_connection
  , h_matching_content_length
  , h_matching_transfer_encoding
  , h_matching_upgrade

  , h_connection
  , h_content_length
  , h_content_length_num
  , h_content_length_ws
  , h_transfer_encoding
  , h_upgrade

  , h_matching_transfer_encoding_chunked
  , h_matching_connection_token_start
  , h_matching_connection_keep_alive
  , h_matching_connection_close
  , h_matching_connection_upgrade
  , h_matching_connection_token

  , h_transfer_encoding_chunked
  , h_connection_keep_alive
  , h_connection_close
  , h_connection_upgrade
  };

enum http_host_state
  {
    s_http_host_dead = 1
  , s_http_userinfo_start
  , s_http_userinfo
  , s_http_host_start
  , s_http_host_v6_start
  , s_http_host
  , s_http_host_v6
  , s_http_host_v6_end
  , s_http_host_v6_zone_start
  , s_http_host_v6_zone
  , s_http_host_port_start
  , s_http_host_port
};
# 471 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c"
static struct {
  const char *name;
  const char *description;
} http_strerror_tab[] = {
  { "HPE_" "OK", "success" }, { "HPE_" "CB_message_begin", "the on_message_begin callback failed" }, { "HPE_" "CB_url", "the on_url callback failed" }, { "HPE_" "CB_header_field", "the on_header_field callback failed" }, { "HPE_" "CB_header_value", "the on_header_value callback failed" }, { "HPE_" "CB_headers_complete", "the on_headers_complete callback failed" }, { "HPE_" "CB_body", "the on_body callback failed" }, { "HPE_" "CB_message_complete", "the on_message_complete callback failed" }, { "HPE_" "CB_status", "the on_status callback failed" }, { "HPE_" "CB_chunk_header", "the on_chunk_header callback failed" }, { "HPE_" "CB_chunk_complete", "the on_chunk_complete callback failed" }, { "HPE_" "INVALID_EOF_STATE", "stream ended at an unexpected time" }, { "HPE_" "HEADER_OVERFLOW", "too many header bytes seen; overflow detected" }, { "HPE_" "CLOSED_CONNECTION", "data received after completed connection: close message" }, { "HPE_" "INVALID_VERSION", "invalid HTTP version" }, { "HPE_" "INVALID_STATUS", "invalid HTTP status code" }, { "HPE_" "INVALID_METHOD", "invalid HTTP method" }, { "HPE_" "INVALID_URL", "invalid URL" }, { "HPE_" "INVALID_HOST", "invalid host" }, { "HPE_" "INVALID_PORT", "invalid port" }, { "HPE_" "INVALID_PATH", "invalid path" }, { "HPE_" "INVALID_QUERY_STRING", "invalid query string" }, { "HPE_" "INVALID_FRAGMENT", "invalid fragment" }, { "HPE_" "LF_EXPECTED", "LF character expected" }, { "HPE_" "INVALID_HEADER_TOKEN", "invalid character in header" }, { "HPE_" "INVALID_CONTENT_LENGTH", "invalid character in content-length header" }, { "HPE_" "UNEXPECTED_CONTENT_LENGTH", "unexpected content-length header" }, { "HPE_" "INVALID_CHUNK_SIZE", "invalid character in chunk size header" }, { "HPE_" "INVALID_CONSTANT", "invalid constant string" }, { "HPE_" "INVALID_INTERNAL_STATE", "encountered unexpected internal state" }, { "HPE_" "STRICT", "strict mode assertion failed" }, { "HPE_" "PAUSED", "parser is paused" }, { "HPE_" "UNKNOWN", "an unknown error occurred" },
};


int http_message_needs_eof(const http_parser *parser);
# 492 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c"
static enum state
parse_url_char(enum state s, const char ch)
{
  if (ch == ' ' || ch == '\r' || ch == '\n') {
    return s_dead;
  }


  if (ch == '\t' || ch == '\f') {
    return s_dead;
  }


  switch (s) {
    case s_req_spaces_before_url:




      if (ch == '/' || ch == '*') {
        return s_req_path;
      }

      if (((unsigned char)(ch | 0x20) >= 'a' && (unsigned char)(ch | 0x20) <= 'z')) {
        return s_req_schema;
      }

      break;

    case s_req_schema:
      if (((unsigned char)(ch | 0x20) >= 'a' && (unsigned char)(ch | 0x20) <= 'z')) {
        return s;
      }

      if (ch == ':') {
        return s_req_schema_slash;
      }

      break;

    case s_req_schema_slash:
      if (ch == '/') {
        return s_req_schema_slash_slash;
      }

      break;

    case s_req_schema_slash_slash:
      if (ch == '/') {
        return s_req_server_start;
      }

      break;

    case s_req_server_with_at:
      if (ch == '@') {
        return s_dead;
      }


    case s_req_server_start:
    case s_req_server:
      if (ch == '/') {
        return s_req_path;
      }

      if (ch == '?') {
        return s_req_query_string_start;
      }

      if (ch == '@') {
        return s_req_server_with_at;
      }

      if (((((unsigned char)(ch | 0x20) >= 'a' && (unsigned char)(ch | 0x20) <= 'z') || ((ch) >= '0' && (ch) <= '9')) || ((ch) == '-' || (ch) == '_' || (ch) == '.' || (ch) == '!' || (ch) == '~' || (ch) == '*' || (ch) == '\'' || (ch) == '(' || (ch) == ')') || (ch) == '%' || (ch) == ';' || (ch) == ':' || (ch) == '&' || (ch) == '=' || (ch) == '+' || (ch) == '$' || (ch) == ',') || ch == '[' || ch == ']') {
        return s_req_server;
      }

      break;

    case s_req_path:
      if (((!!((unsigned int) (normal_url_char)[(unsigned int) ((unsigned char)ch) >> 3] & (1 << ((unsigned int) ((unsigned char)ch) & 7)))))) {
        return s;
      }

      switch (ch) {
        case '?':
          return s_req_query_string_start;

        case '#':
          return s_req_fragment_start;
      }

      break;

    case s_req_query_string_start:
    case s_req_query_string:
      if (((!!((unsigned int) (normal_url_char)[(unsigned int) ((unsigned char)ch) >> 3] & (1 << ((unsigned int) ((unsigned char)ch) & 7)))))) {
        return s_req_query_string;
      }

      switch (ch) {
        case '?':

          return s_req_query_string;

        case '#':
          return s_req_fragment_start;
      }

      break;

    case s_req_fragment_start:
      if (((!!((unsigned int) (normal_url_char)[(unsigned int) ((unsigned char)ch) >> 3] & (1 << ((unsigned int) ((unsigned char)ch) & 7)))))) {
        return s_req_fragment;
      }

      switch (ch) {
        case '?':
          return s_req_fragment;

        case '#':
          return s;
      }

      break;

    case s_req_fragment:
      if (((!!((unsigned int) (normal_url_char)[(unsigned int) ((unsigned char)ch) >> 3] & (1 << ((unsigned int) ((unsigned char)ch) & 7)))))) {
        return s;
      }

      switch (ch) {
        case '?':
        case '#':
          return s;
      }

      break;

    default:
      break;
  }


  return s_dead;
}

size_t http_parser_execute (http_parser *parser,
                            const http_parser_settings *settings,
                            const char *data,
                            size_t len)
{
  char c, ch;
  int8_t unhex_val;
  const char *p = data;
  const char *header_field_mark = 0;
  const char *header_value_mark = 0;
  const char *url_mark = 0;
  const char *body_mark = 0;
  const char *status_mark = 0;
  enum state p_state = (enum state) parser->state;
  const unsigned int lenient = parser->lenient_http_headers;
  uint32_t nread = parser->nread;


  if (((enum http_errno) (parser)->http_errno) != HPE_OK) {
    return 0;
  }

  if (len == 0) {
    switch (p_state) {
      case s_body_identity_eof:



        do { do{if(!(((enum http_errno) (parser)->http_errno) == HPE_OK)){printf("%s:%d %s","http_parser.c",668,"HTTP_PARSER_ERRNO(parser) == HPE_OK");while(1);}}while(0); if (__builtin_expect(!!(settings->on_message_complete), 1)) { parser->state = p_state; if (__builtin_expect(!!(0 != settings->on_message_complete(parser)), 0)) { do { parser->nread = nread; parser->http_errno = (HPE_CB_message_complete); } while(0); } p_state = (enum state) (parser->state);; if (__builtin_expect(!!(((enum http_errno) (parser)->http_errno) != HPE_OK), 0)) { return (p - data); } } } while (0);
        return 0;

      case s_dead:
      case s_start_req_or_res:
      case s_start_res:
      case s_start_req:
        return 0;

      default:
        do { parser->nread = nread; parser->http_errno = (HPE_INVALID_EOF_STATE); } while(0);
        return 1;
    }
  }


  if (p_state == s_header_field)
    header_field_mark = data;
  if (p_state == s_header_value)
    header_value_mark = data;
  switch (p_state) {
  case s_req_path:
  case s_req_schema:
  case s_req_schema_slash:
  case s_req_schema_slash_slash:
  case s_req_server_start:
  case s_req_server:
  case s_req_server_with_at:
  case s_req_query_string_start:
  case s_req_query_string:
  case s_req_fragment_start:
  case s_req_fragment:
    url_mark = data;
    break;
  case s_res_status:
    status_mark = data;
    break;
  default:
    break;
  }

  for (p=data; p != data + len; p++) {
    ch = *p;

    if ((p_state <= s_headers_done))
      do { nread += (uint32_t)(1); if (__builtin_expect(!!(nread > max_header_size), 0)) { do { parser->nread = nread; parser->http_errno = (HPE_HEADER_OVERFLOW); } while(0); goto error; } } while (0);

reexecute:
    switch (p_state) {

      case s_dead:



        if (__builtin_expect(!!(ch == '\r' || ch == '\n'), 1))
          break;

        do { parser->nread = nread; parser->http_errno = (HPE_CLOSED_CONNECTION); } while(0);
        goto error;

      case s_start_req_or_res:
      {
        if (ch == '\r' || ch == '\n')
          break;
        parser->flags = 0;
        parser->content_length = 
# 733 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c" 3 4
                                (0x7fffffffffffffffLL * 2ULL + 1ULL)
# 733 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c"
                                          ;

        if (ch == 'H') {
          p_state = (enum state) (s_res_or_resp_H);;

          do { do{if(!(((enum http_errno) (parser)->http_errno) == HPE_OK)){printf("%s:%d %s","http_parser.c",738,"HTTP_PARSER_ERRNO(parser) == HPE_OK");while(1);}}while(0); if (__builtin_expect(!!(settings->on_message_begin), 1)) { parser->state = p_state; if (__builtin_expect(!!(0 != settings->on_message_begin(parser)), 0)) { do { parser->nread = nread; parser->http_errno = (HPE_CB_message_begin); } while(0); } p_state = (enum state) (parser->state);; if (__builtin_expect(!!(((enum http_errno) (parser)->http_errno) != HPE_OK), 0)) { return (p - data + 1); } } } while (0);
        } else {
          parser->type = HTTP_REQUEST;
          p_state = (enum state) (s_start_req);;
          goto reexecute;;
        }

        break;
      }

      case s_res_or_resp_H:
        if (ch == 'T') {
          parser->type = HTTP_RESPONSE;
          p_state = (enum state) (s_res_HT);;
        } else {
          if (__builtin_expect(!!(ch != 'E'), 0)) {
            do { parser->nread = nread; parser->http_errno = (HPE_INVALID_CONSTANT); } while(0);
            goto error;
          }

          parser->type = HTTP_REQUEST;
          parser->method = HTTP_HEAD;
          parser->index = 2;
          p_state = (enum state) (s_req_method);;
        }
        break;

      case s_start_res:
      {
        if (ch == '\r' || ch == '\n')
          break;
        parser->flags = 0;
        parser->content_length = 
# 770 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c" 3 4
                                (0x7fffffffffffffffLL * 2ULL + 1ULL)
# 770 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c"
                                          ;

        if (ch == 'H') {
          p_state = (enum state) (s_res_H);;
        } else {
          do { parser->nread = nread; parser->http_errno = (HPE_INVALID_CONSTANT); } while(0);
          goto error;
        }

        do { do{if(!(((enum http_errno) (parser)->http_errno) == HPE_OK)){printf("%s:%d %s","http_parser.c",779,"HTTP_PARSER_ERRNO(parser) == HPE_OK");while(1);}}while(0); if (__builtin_expect(!!(settings->on_message_begin), 1)) { parser->state = p_state; if (__builtin_expect(!!(0 != settings->on_message_begin(parser)), 0)) { do { parser->nread = nread; parser->http_errno = (HPE_CB_message_begin); } while(0); } p_state = (enum state) (parser->state);; if (__builtin_expect(!!(((enum http_errno) (parser)->http_errno) != HPE_OK), 0)) { return (p - data + 1); } } } while (0);
        break;
      }

      case s_res_H:
        do { if (ch != 'T') { do { parser->nread = nread; parser->http_errno = (HPE_STRICT); } while(0); goto error; } } while (0);
        p_state = (enum state) (s_res_HT);;
        break;

      case s_res_HT:
        do { if (ch != 'T') { do { parser->nread = nread; parser->http_errno = (HPE_STRICT); } while(0); goto error; } } while (0);
        p_state = (enum state) (s_res_HTT);;
        break;

      case s_res_HTT:
        do { if (ch != 'P') { do { parser->nread = nread; parser->http_errno = (HPE_STRICT); } while(0); goto error; } } while (0);
        p_state = (enum state) (s_res_HTTP);;
        break;

      case s_res_HTTP:
        do { if (ch != '/') { do { parser->nread = nread; parser->http_errno = (HPE_STRICT); } while(0); goto error; } } while (0);
        p_state = (enum state) (s_res_http_major);;
        break;

      case s_res_http_major:
        if (__builtin_expect(!!(!((ch) >= '0' && (ch) <= '9')), 0)) {
          do { parser->nread = nread; parser->http_errno = (HPE_INVALID_VERSION); } while(0);
          goto error;
        }

        parser->http_major = ch - '0';
        p_state = (enum state) (s_res_http_dot);;
        break;

      case s_res_http_dot:
      {
        if (__builtin_expect(!!(ch != '.'), 0)) {
          do { parser->nread = nread; parser->http_errno = (HPE_INVALID_VERSION); } while(0);
          goto error;
        }

        p_state = (enum state) (s_res_http_minor);;
        break;
      }

      case s_res_http_minor:
        if (__builtin_expect(!!(!((ch) >= '0' && (ch) <= '9')), 0)) {
          do { parser->nread = nread; parser->http_errno = (HPE_INVALID_VERSION); } while(0);
          goto error;
        }

        parser->http_minor = ch - '0';
        p_state = (enum state) (s_res_http_end);;
        break;

      case s_res_http_end:
      {
        if (__builtin_expect(!!(ch != ' '), 0)) {
          do { parser->nread = nread; parser->http_errno = (HPE_INVALID_VERSION); } while(0);
          goto error;
        }

        p_state = (enum state) (s_res_first_status_code);;
        break;
      }

      case s_res_first_status_code:
      {
        if (!((ch) >= '0' && (ch) <= '9')) {
          if (ch == ' ') {
            break;
          }

          do { parser->nread = nread; parser->http_errno = (HPE_INVALID_STATUS); } while(0);
          goto error;
        }
        parser->status_code = ch - '0';
        p_state = (enum state) (s_res_status_code);;
        break;
      }

      case s_res_status_code:
      {
        if (!((ch) >= '0' && (ch) <= '9')) {
          switch (ch) {
            case ' ':
              p_state = (enum state) (s_res_status_start);;
              break;
            case '\r':
            case '\n':
              p_state = (enum state) (s_res_status_start);;
              goto reexecute;;
              break;
            default:
              do { parser->nread = nread; parser->http_errno = (HPE_INVALID_STATUS); } while(0);
              goto error;
          }
          break;
        }

        parser->status_code *= 10;
        parser->status_code += ch - '0';

        if (__builtin_expect(!!(parser->status_code > 999), 0)) {
          do { parser->nread = nread; parser->http_errno = (HPE_INVALID_STATUS); } while(0);
          goto error;
        }

        break;
      }

      case s_res_status_start:
      {
        do { if (!status_mark) { status_mark = p; } } while (0);
        p_state = (enum state) (s_res_status);;
        parser->index = 0;

        if (ch == '\r' || ch == '\n')
          goto reexecute;;

        break;
      }

      case s_res_status:
        if (ch == '\r') {
          p_state = (enum state) (s_res_line_almost_done);;
          do { do{if(!(((enum http_errno) (parser)->http_errno) == HPE_OK)){printf("%s:%d %s","http_parser.c",905,"HTTP_PARSER_ERRNO(parser) == HPE_OK");while(1);}}while(0); if (status_mark) { if (__builtin_expect(!!(settings->on_status), 1)) { parser->state = p_state; if (__builtin_expect(!!(0 != settings->on_status(parser, status_mark, (p - status_mark))), 0)) { do { parser->nread = nread; parser->http_errno = (HPE_CB_status); } while(0); } p_state = (enum state) (parser->state);; if (__builtin_expect(!!(((enum http_errno) (parser)->http_errno) != HPE_OK), 0)) { return (p - data + 1); } } status_mark = 
# 905 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c" 3 4
         ((void *)0)
# 905 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c"
         ; } } while (0);
          break;
        }

        if (ch == '\n') {
          p_state = (enum state) (s_header_field_start);;
          do { do{if(!(((enum http_errno) (parser)->http_errno) == HPE_OK)){printf("%s:%d %s","http_parser.c",911,"HTTP_PARSER_ERRNO(parser) == HPE_OK");while(1);}}while(0); if (status_mark) { if (__builtin_expect(!!(settings->on_status), 1)) { parser->state = p_state; if (__builtin_expect(!!(0 != settings->on_status(parser, status_mark, (p - status_mark))), 0)) { do { parser->nread = nread; parser->http_errno = (HPE_CB_status); } while(0); } p_state = (enum state) (parser->state);; if (__builtin_expect(!!(((enum http_errno) (parser)->http_errno) != HPE_OK), 0)) { return (p - data + 1); } } status_mark = 
# 911 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c" 3 4
         ((void *)0)
# 911 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c"
         ; } } while (0);
          break;
        }

        break;

      case s_res_line_almost_done:
        do { if (ch != '\n') { do { parser->nread = nread; parser->http_errno = (HPE_STRICT); } while(0); goto error; } } while (0);
        p_state = (enum state) (s_header_field_start);;
        break;

      case s_start_req:
      {
        if (ch == '\r' || ch == '\n')
          break;
        parser->flags = 0;
        parser->content_length = 
# 927 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c" 3 4
                                (0x7fffffffffffffffLL * 2ULL + 1ULL)
# 927 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c"
                                          ;

        if (__builtin_expect(!!(!((unsigned char)(ch | 0x20) >= 'a' && (unsigned char)(ch | 0x20) <= 'z')), 0)) {
          do { parser->nread = nread; parser->http_errno = (HPE_INVALID_METHOD); } while(0);
          goto error;
        }

        parser->method = (enum http_method) 0;
        parser->index = 1;
        switch (ch) {
          case 'A': parser->method = HTTP_ACL; break;
          case 'B': parser->method = HTTP_BIND; break;
          case 'C': parser->method = HTTP_CONNECT; break;
          case 'D': parser->method = HTTP_DELETE; break;
          case 'G': parser->method = HTTP_GET; break;
          case 'H': parser->method = HTTP_HEAD; break;
          case 'L': parser->method = HTTP_LOCK; break;
          case 'M': parser->method = HTTP_MKCOL; break;
          case 'N': parser->method = HTTP_NOTIFY; break;
          case 'O': parser->method = HTTP_OPTIONS; break;
          case 'P': parser->method = HTTP_POST;

            break;
          case 'R': parser->method = HTTP_REPORT; break;
          case 'S': parser->method = HTTP_SUBSCRIBE; break;
          case 'T': parser->method = HTTP_TRACE; break;
          case 'U': parser->method = HTTP_UNLOCK; break;
          default:
            do { parser->nread = nread; parser->http_errno = (HPE_INVALID_METHOD); } while(0);
            goto error;
        }
        p_state = (enum state) (s_req_method);;

        do { do{if(!(((enum http_errno) (parser)->http_errno) == HPE_OK)){printf("%s:%d %s","http_parser.c",960,"HTTP_PARSER_ERRNO(parser) == HPE_OK");while(1);}}while(0); if (__builtin_expect(!!(settings->on_message_begin), 1)) { parser->state = p_state; if (__builtin_expect(!!(0 != settings->on_message_begin(parser)), 0)) { do { parser->nread = nread; parser->http_errno = (HPE_CB_message_begin); } while(0); } p_state = (enum state) (parser->state);; if (__builtin_expect(!!(((enum http_errno) (parser)->http_errno) != HPE_OK), 0)) { return (p - data + 1); } } } while (0);

        break;
      }

      case s_req_method:
      {
        const char *matcher;
        if (__builtin_expect(!!(ch == '\0'), 0)) {
          do { parser->nread = nread; parser->http_errno = (HPE_INVALID_METHOD); } while(0);
          goto error;
        }

        matcher = method_strings[parser->method];
        if (ch == ' ' && matcher[parser->index] == '\0') {
          p_state = (enum state) (s_req_spaces_before_url);;
        } else if (ch == matcher[parser->index]) {
          ;
        } else if ((ch >= 'A' && ch <= 'Z') || ch == '-') {

          switch (parser->method << 16 | parser->index << 8 | ch) {




            case (HTTP_POST << 16 | 1 << 8 | 'U'): parser->method = HTTP_PUT; break;
            case (HTTP_POST << 16 | 1 << 8 | 'A'): parser->method = HTTP_PATCH; break;
            case (HTTP_POST << 16 | 1 << 8 | 'R'): parser->method = HTTP_PROPFIND; break;
            case (HTTP_PUT << 16 | 2 << 8 | 'R'): parser->method = HTTP_PURGE; break;
            case (HTTP_CONNECT << 16 | 1 << 8 | 'H'): parser->method = HTTP_CHECKOUT; break;
            case (HTTP_CONNECT << 16 | 2 << 8 | 'P'): parser->method = HTTP_COPY; break;
            case (HTTP_MKCOL << 16 | 1 << 8 | 'O'): parser->method = HTTP_MOVE; break;
            case (HTTP_MKCOL << 16 | 1 << 8 | 'E'): parser->method = HTTP_MERGE; break;
            case (HTTP_MKCOL << 16 | 1 << 8 | '-'): parser->method = HTTP_MSEARCH; break;
            case (HTTP_MKCOL << 16 | 2 << 8 | 'A'): parser->method = HTTP_MKACTIVITY; break;
            case (HTTP_MKCOL << 16 | 3 << 8 | 'A'): parser->method = HTTP_MKCALENDAR; break;
            case (HTTP_SUBSCRIBE << 16 | 1 << 8 | 'E'): parser->method = HTTP_SEARCH; break;
            case (HTTP_SUBSCRIBE << 16 | 1 << 8 | 'O'): parser->method = HTTP_SOURCE; break;
            case (HTTP_REPORT << 16 | 2 << 8 | 'B'): parser->method = HTTP_REBIND; break;
            case (HTTP_PROPFIND << 16 | 4 << 8 | 'P'): parser->method = HTTP_PROPPATCH; break;
            case (HTTP_LOCK << 16 | 1 << 8 | 'I'): parser->method = HTTP_LINK; break;
            case (HTTP_UNLOCK << 16 | 2 << 8 | 'S'): parser->method = HTTP_UNSUBSCRIBE; break;
            case (HTTP_UNLOCK << 16 | 2 << 8 | 'B'): parser->method = HTTP_UNBIND; break;
            case (HTTP_UNLOCK << 16 | 3 << 8 | 'I'): parser->method = HTTP_UNLINK; break;

            default:
              do { parser->nread = nread; parser->http_errno = (HPE_INVALID_METHOD); } while(0);
              goto error;
          }
        } else {
          do { parser->nread = nread; parser->http_errno = (HPE_INVALID_METHOD); } while(0);
          goto error;
        }

        ++parser->index;
        break;
      }

      case s_req_spaces_before_url:
      {
        if (ch == ' ') break;

        do { if (!url_mark) { url_mark = p; } } while (0);
        if (parser->method == HTTP_CONNECT) {
          p_state = (enum state) (s_req_server_start);;
        }

        p_state = (enum state) (parse_url_char(p_state, ch));;
        if (__builtin_expect(!!(p_state == s_dead), 0)) {
          do { parser->nread = nread; parser->http_errno = (HPE_INVALID_URL); } while(0);
          goto error;
        }

        break;
      }

      case s_req_schema:
      case s_req_schema_slash:
      case s_req_schema_slash_slash:
      case s_req_server_start:
      {
        switch (ch) {

          case ' ':
          case '\r':
          case '\n':
            do { parser->nread = nread; parser->http_errno = (HPE_INVALID_URL); } while(0);
            goto error;
          default:
            p_state = (enum state) (parse_url_char(p_state, ch));;
            if (__builtin_expect(!!(p_state == s_dead), 0)) {
              do { parser->nread = nread; parser->http_errno = (HPE_INVALID_URL); } while(0);
              goto error;
            }
        }

        break;
      }

      case s_req_server:
      case s_req_server_with_at:
      case s_req_path:
      case s_req_query_string_start:
      case s_req_query_string:
      case s_req_fragment_start:
      case s_req_fragment:
      {
        switch (ch) {
          case ' ':
            p_state = (enum state) (s_req_http_start);;
            do { do{if(!(((enum http_errno) (parser)->http_errno) == HPE_OK)){printf("%s:%d %s","http_parser.c",1070,"HTTP_PARSER_ERRNO(parser) == HPE_OK");while(1);}}while(0); if (url_mark) { if (__builtin_expect(!!(settings->on_url), 1)) { parser->state = p_state; if (__builtin_expect(!!(0 != settings->on_url(parser, url_mark, (p - url_mark))), 0)) { do { parser->nread = nread; parser->http_errno = (HPE_CB_url); } while(0); } p_state = (enum state) (parser->state);; if (__builtin_expect(!!(((enum http_errno) (parser)->http_errno) != HPE_OK), 0)) { return (p - data + 1); } } url_mark = 
# 1070 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c" 3 4
           ((void *)0)
# 1070 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c"
           ; } } while (0);
            break;
          case '\r':
          case '\n':
            parser->http_major = 0;
            parser->http_minor = 9;
            p_state = (enum state) ((ch == '\r') ? s_req_line_almost_done : s_header_field_start);

                                   ;
            do { do{if(!(((enum http_errno) (parser)->http_errno) == HPE_OK)){printf("%s:%d %s","http_parser.c",1079,"HTTP_PARSER_ERRNO(parser) == HPE_OK");while(1);}}while(0); if (url_mark) { if (__builtin_expect(!!(settings->on_url), 1)) { parser->state = p_state; if (__builtin_expect(!!(0 != settings->on_url(parser, url_mark, (p - url_mark))), 0)) { do { parser->nread = nread; parser->http_errno = (HPE_CB_url); } while(0); } p_state = (enum state) (parser->state);; if (__builtin_expect(!!(((enum http_errno) (parser)->http_errno) != HPE_OK), 0)) { return (p - data + 1); } } url_mark = 
# 1079 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c" 3 4
           ((void *)0)
# 1079 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c"
           ; } } while (0);
            break;
          default:
            p_state = (enum state) (parse_url_char(p_state, ch));;
            if (__builtin_expect(!!(p_state == s_dead), 0)) {
              do { parser->nread = nread; parser->http_errno = (HPE_INVALID_URL); } while(0);
              goto error;
            }
        }
        break;
      }

      case s_req_http_start:
        switch (ch) {
          case ' ':
            break;
          case 'H':
            p_state = (enum state) (s_req_http_H);;
            break;
          case 'I':
            if (parser->method == HTTP_SOURCE) {
              p_state = (enum state) (s_req_http_I);;
              break;
            }

          default:
            do { parser->nread = nread; parser->http_errno = (HPE_INVALID_CONSTANT); } while(0);
            goto error;
        }
        break;

      case s_req_http_H:
        do { if (ch != 'T') { do { parser->nread = nread; parser->http_errno = (HPE_STRICT); } while(0); goto error; } } while (0);
        p_state = (enum state) (s_req_http_HT);;
        break;

      case s_req_http_HT:
        do { if (ch != 'T') { do { parser->nread = nread; parser->http_errno = (HPE_STRICT); } while(0); goto error; } } while (0);
        p_state = (enum state) (s_req_http_HTT);;
        break;

      case s_req_http_HTT:
        do { if (ch != 'P') { do { parser->nread = nread; parser->http_errno = (HPE_STRICT); } while(0); goto error; } } while (0);
        p_state = (enum state) (s_req_http_HTTP);;
        break;

      case s_req_http_I:
        do { if (ch != 'C') { do { parser->nread = nread; parser->http_errno = (HPE_STRICT); } while(0); goto error; } } while (0);
        p_state = (enum state) (s_req_http_IC);;
        break;

      case s_req_http_IC:
        do { if (ch != 'E') { do { parser->nread = nread; parser->http_errno = (HPE_STRICT); } while(0); goto error; } } while (0);
        p_state = (enum state) (s_req_http_HTTP);;
        break;

      case s_req_http_HTTP:
        do { if (ch != '/') { do { parser->nread = nread; parser->http_errno = (HPE_STRICT); } while(0); goto error; } } while (0);
        p_state = (enum state) (s_req_http_major);;
        break;

      case s_req_http_major:
        if (__builtin_expect(!!(!((ch) >= '0' && (ch) <= '9')), 0)) {
          do { parser->nread = nread; parser->http_errno = (HPE_INVALID_VERSION); } while(0);
          goto error;
        }

        parser->http_major = ch - '0';
        p_state = (enum state) (s_req_http_dot);;
        break;

      case s_req_http_dot:
      {
        if (__builtin_expect(!!(ch != '.'), 0)) {
          do { parser->nread = nread; parser->http_errno = (HPE_INVALID_VERSION); } while(0);
          goto error;
        }

        p_state = (enum state) (s_req_http_minor);;
        break;
      }

      case s_req_http_minor:
        if (__builtin_expect(!!(!((ch) >= '0' && (ch) <= '9')), 0)) {
          do { parser->nread = nread; parser->http_errno = (HPE_INVALID_VERSION); } while(0);
          goto error;
        }

        parser->http_minor = ch - '0';
        p_state = (enum state) (s_req_http_end);;
        break;

      case s_req_http_end:
      {
        if (ch == '\r') {
          p_state = (enum state) (s_req_line_almost_done);;
          break;
        }

        if (ch == '\n') {
          p_state = (enum state) (s_header_field_start);;
          break;
        }

        do { parser->nread = nread; parser->http_errno = (HPE_INVALID_VERSION); } while(0);
        goto error;
        break;
      }


      case s_req_line_almost_done:
      {
        if (__builtin_expect(!!(ch != '\n'), 0)) {
          do { parser->nread = nread; parser->http_errno = (HPE_LF_EXPECTED); } while(0);
          goto error;
        }

        p_state = (enum state) (s_header_field_start);;
        break;
      }

      case s_header_field_start:
      {
        if (ch == '\r') {
          p_state = (enum state) (s_headers_almost_done);;
          break;
        }

        if (ch == '\n') {


          p_state = (enum state) (s_headers_almost_done);;
          goto reexecute;;
        }

        c = ((ch == ' ') ? 0 : tokens[(unsigned char)ch]);

        if (__builtin_expect(!!(!c), 0)) {
          do { parser->nread = nread; parser->http_errno = (HPE_INVALID_HEADER_TOKEN); } while(0);
          goto error;
        }

        do { if (!header_field_mark) { header_field_mark = p; } } while (0);

        parser->index = 0;
        p_state = (enum state) (s_header_field);;

        switch (c) {
          case 'c':
            parser->header_state = h_C;
            break;

          case 'p':
            parser->header_state = h_matching_proxy_connection;
            break;

          case 't':
            parser->header_state = h_matching_transfer_encoding;
            break;

          case 'u':
            parser->header_state = h_matching_upgrade;
            break;

          default:
            parser->header_state = h_general;
            break;
        }
        break;
      }

      case s_header_field:
      {
        const char* start = p;
        for (; p != data + len; p++) {
          ch = *p;
          c = ((ch == ' ') ? 0 : tokens[(unsigned char)ch]);

          if (!c)
            break;

          switch (parser->header_state) {
            case h_general: {
              size_t left = data + len - p;
              const char* pe = p + ((left) < (max_header_size) ? (left) : (max_header_size));
              while (p+1 < pe && ((p[1] == ' ') ? 0 : tokens[(unsigned char)p[1]])) {
                p++;
              }
              break;
            }

            case h_C:
              parser->index++;
              parser->header_state = (c == 'o' ? h_CO : h_general);
              break;

            case h_CO:
              parser->index++;
              parser->header_state = (c == 'n' ? h_CON : h_general);
              break;

            case h_CON:
              parser->index++;
              switch (c) {
                case 'n':
                  parser->header_state = h_matching_connection;
                  break;
                case 't':
                  parser->header_state = h_matching_content_length;
                  break;
                default:
                  parser->header_state = h_general;
                  break;
              }
              break;



            case h_matching_connection:
              parser->index++;
              if (parser->index > sizeof("connection")-1
                  || c != "connection"[parser->index]) {
                parser->header_state = h_general;
              } else if (parser->index == sizeof("connection")-2) {
                parser->header_state = h_connection;
              }
              break;



            case h_matching_proxy_connection:
              parser->index++;
              if (parser->index > sizeof("proxy-connection")-1
                  || c != "proxy-connection"[parser->index]) {
                parser->header_state = h_general;
              } else if (parser->index == sizeof("proxy-connection")-2) {
                parser->header_state = h_connection;
              }
              break;



            case h_matching_content_length:
              parser->index++;
              if (parser->index > sizeof("content-length")-1
                  || c != "content-length"[parser->index]) {
                parser->header_state = h_general;
              } else if (parser->index == sizeof("content-length")-2) {
                parser->header_state = h_content_length;
              }
              break;



            case h_matching_transfer_encoding:
              parser->index++;
              if (parser->index > sizeof("transfer-encoding")-1
                  || c != "transfer-encoding"[parser->index]) {
                parser->header_state = h_general;
              } else if (parser->index == sizeof("transfer-encoding")-2) {
                parser->header_state = h_transfer_encoding;
              }
              break;



            case h_matching_upgrade:
              parser->index++;
              if (parser->index > sizeof("upgrade")-1
                  || c != "upgrade"[parser->index]) {
                parser->header_state = h_general;
              } else if (parser->index == sizeof("upgrade")-2) {
                parser->header_state = h_upgrade;
              }
              break;

            case h_connection:
            case h_content_length:
            case h_transfer_encoding:
            case h_upgrade:
              if (ch != ' ') parser->header_state = h_general;
              break;

            default:
              do{if(!(0 && "Unknown header_state")){printf("%s:%d %s","http_parser.c",1363,"0 && \"Unknown header_state\"");while(1);}}while(0);
              break;
          }
        }

        if (p == data + len) {
          --p;
          do { nread += (uint32_t)(p - start); if (__builtin_expect(!!(nread > max_header_size), 0)) { do { parser->nread = nread; parser->http_errno = (HPE_HEADER_OVERFLOW); } while(0); goto error; } } while (0);
          break;
        }

        do { nread += (uint32_t)(p - start); if (__builtin_expect(!!(nread > max_header_size), 0)) { do { parser->nread = nread; parser->http_errno = (HPE_HEADER_OVERFLOW); } while(0); goto error; } } while (0);

        if (ch == ':') {
          p_state = (enum state) (s_header_value_discard_ws);;
          do { do{if(!(((enum http_errno) (parser)->http_errno) == HPE_OK)){printf("%s:%d %s","http_parser.c",1378,"HTTP_PARSER_ERRNO(parser) == HPE_OK");while(1);}}while(0); if (header_field_mark) { if (__builtin_expect(!!(settings->on_header_field), 1)) { parser->state = p_state; if (__builtin_expect(!!(0 != settings->on_header_field(parser, header_field_mark, (p - header_field_mark))), 0)) { do { parser->nread = nread; parser->http_errno = (HPE_CB_header_field); } while(0); } p_state = (enum state) (parser->state);; if (__builtin_expect(!!(((enum http_errno) (parser)->http_errno) != HPE_OK), 0)) { return (p - data + 1); } } header_field_mark = 
# 1378 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c" 3 4
         ((void *)0)
# 1378 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c"
         ; } } while (0);
          break;
        }

        do { parser->nread = nread; parser->http_errno = (HPE_INVALID_HEADER_TOKEN); } while(0);
        goto error;
      }

      case s_header_value_discard_ws:
        if (ch == ' ' || ch == '\t') break;

        if (ch == '\r') {
          p_state = (enum state) (s_header_value_discard_ws_almost_done);;
          break;
        }

        if (ch == '\n') {
          p_state = (enum state) (s_header_value_discard_lws);;
          break;
        }



      case s_header_value_start:
      {
        do { if (!header_value_mark) { header_value_mark = p; } } while (0);

        p_state = (enum state) (s_header_value);;
        parser->index = 0;

        c = (unsigned char)(ch | 0x20);

        switch (parser->header_state) {
          case h_upgrade:
            parser->flags |= F_UPGRADE;
            parser->header_state = h_general;
            break;

          case h_transfer_encoding:

            if ('c' == c) {
              parser->header_state = h_matching_transfer_encoding_chunked;
            } else {
              parser->header_state = h_general;
            }
            break;

          case h_content_length:
            if (__builtin_expect(!!(!((ch) >= '0' && (ch) <= '9')), 0)) {
              do { parser->nread = nread; parser->http_errno = (HPE_INVALID_CONTENT_LENGTH); } while(0);
              goto error;
            }

            if (parser->flags & F_CONTENTLENGTH) {
              do { parser->nread = nread; parser->http_errno = (HPE_UNEXPECTED_CONTENT_LENGTH); } while(0);
              goto error;
            }

            parser->flags |= F_CONTENTLENGTH;
            parser->content_length = ch - '0';
            parser->header_state = h_content_length_num;
            break;



          case h_content_length_ws:
            break;

          case h_connection:

            if (c == 'k') {
              parser->header_state = h_matching_connection_keep_alive;

            } else if (c == 'c') {
              parser->header_state = h_matching_connection_close;
            } else if (c == 'u') {
              parser->header_state = h_matching_connection_upgrade;
            } else {
              parser->header_state = h_matching_connection_token;
            }
            break;


          case h_matching_connection_token_start:
            break;

          default:
            parser->header_state = h_general;
            break;
        }
        break;
      }

      case s_header_value:
      {
        const char* start = p;
        enum header_states h_state = (enum header_states) parser->header_state;
        for (; p != data + len; p++) {
          ch = *p;
          if (ch == '\r') {
            p_state = (enum state) (s_header_almost_done);;
            parser->header_state = h_state;
            do { do{if(!(((enum http_errno) (parser)->http_errno) == HPE_OK)){printf("%s:%d %s","http_parser.c",1480,"HTTP_PARSER_ERRNO(parser) == HPE_OK");while(1);}}while(0); if (header_value_mark) { if (__builtin_expect(!!(settings->on_header_value), 1)) { parser->state = p_state; if (__builtin_expect(!!(0 != settings->on_header_value(parser, header_value_mark, (p - header_value_mark))), 0)) { do { parser->nread = nread; parser->http_errno = (HPE_CB_header_value); } while(0); } p_state = (enum state) (parser->state);; if (__builtin_expect(!!(((enum http_errno) (parser)->http_errno) != HPE_OK), 0)) { return (p - data + 1); } } header_value_mark = 
# 1480 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c" 3 4
           ((void *)0)
# 1480 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c"
           ; } } while (0);
            break;
          }

          if (ch == '\n') {
            p_state = (enum state) (s_header_almost_done);;
            do { nread += (uint32_t)(p - start); if (__builtin_expect(!!(nread > max_header_size), 0)) { do { parser->nread = nread; parser->http_errno = (HPE_HEADER_OVERFLOW); } while(0); goto error; } } while (0);
            parser->header_state = h_state;
            do { do{if(!(((enum http_errno) (parser)->http_errno) == HPE_OK)){printf("%s:%d %s","http_parser.c",1488,"HTTP_PARSER_ERRNO(parser) == HPE_OK");while(1);}}while(0); if (header_value_mark) { if (__builtin_expect(!!(settings->on_header_value), 1)) { parser->state = p_state; if (__builtin_expect(!!(0 != settings->on_header_value(parser, header_value_mark, (p - header_value_mark))), 0)) { do { parser->nread = nread; parser->http_errno = (HPE_CB_header_value); } while(0); } p_state = (enum state) (parser->state);; if (__builtin_expect(!!(((enum http_errno) (parser)->http_errno) != HPE_OK), 0)) { return (p - data); } } header_value_mark = 
# 1488 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c" 3 4
           ((void *)0)
# 1488 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c"
           ; } } while (0);
            goto reexecute;;
          }

          if (!lenient && !(ch == '\r' || ch == '\n' || ch == 9 || ((unsigned char)ch > 31 && ch != 127))) {
            do { parser->nread = nread; parser->http_errno = (HPE_INVALID_HEADER_TOKEN); } while(0);
            goto error;
          }

          c = (unsigned char)(ch | 0x20);

          switch (h_state) {
            case h_general:
              {
                size_t left = data + len - p;
                const char* pe = p + ((left) < (max_header_size) ? (left) : (max_header_size));

                for (; p != pe; p++) {
                  ch = *p;
                  if (ch == '\r' || ch == '\n') {
                    --p;
                    break;
                  }
                  if (!lenient && !(ch == '\r' || ch == '\n' || ch == 9 || ((unsigned char)ch > 31 && ch != 127))) {
                    do { parser->nread = nread; parser->http_errno = (HPE_INVALID_HEADER_TOKEN); } while(0);
                    goto error;
                  }
                }
                if (p == data + len)
                  --p;
                break;
              }

            case h_connection:
            case h_transfer_encoding:
              do{if(!(0 && "Shouldn't get here.")){printf("%s:%d %s","http_parser.c",1523,"0 && \"Shouldn't get here.\"");while(1);}}while(0);
              break;

            case h_content_length:
              if (ch == ' ') break;
              h_state = h_content_length_num;


            case h_content_length_num:
            {
              uint64_t t;

              if (ch == ' ') {
                h_state = h_content_length_ws;
                break;
              }

              if (__builtin_expect(!!(!((ch) >= '0' && (ch) <= '9')), 0)) {
                do { parser->nread = nread; parser->http_errno = (HPE_INVALID_CONTENT_LENGTH); } while(0);
                parser->header_state = h_state;
                goto error;
              }

              t = parser->content_length;
              t *= 10;
              t += ch - '0';


              if (__builtin_expect(!!((
# 1551 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c" 3 4
                 (0x7fffffffffffffffLL * 2ULL + 1ULL) 
# 1551 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c"
                 - 10) / 10 < parser->content_length), 0)) {
                do { parser->nread = nread; parser->http_errno = (HPE_INVALID_CONTENT_LENGTH); } while(0);
                parser->header_state = h_state;
                goto error;
              }

              parser->content_length = t;
              break;
            }

            case h_content_length_ws:
              if (ch == ' ') break;
              do { parser->nread = nread; parser->http_errno = (HPE_INVALID_CONTENT_LENGTH); } while(0);
              parser->header_state = h_state;
              goto error;


            case h_matching_transfer_encoding_chunked:
              parser->index++;
              if (parser->index > sizeof("chunked")-1
                  || c != "chunked"[parser->index]) {
                h_state = h_general;
              } else if (parser->index == sizeof("chunked")-2) {
                h_state = h_transfer_encoding_chunked;
              }
              break;

            case h_matching_connection_token_start:

              if (c == 'k') {
                h_state = h_matching_connection_keep_alive;

              } else if (c == 'c') {
                h_state = h_matching_connection_close;
              } else if (c == 'u') {
                h_state = h_matching_connection_upgrade;
              } else if (((c == ' ') ? 0 : tokens[(unsigned char)c])) {
                h_state = h_matching_connection_token;
              } else if (c == ' ' || c == '\t') {

              } else {
                h_state = h_general;
              }
              break;


            case h_matching_connection_keep_alive:
              parser->index++;
              if (parser->index > sizeof("keep-alive")-1
                  || c != "keep-alive"[parser->index]) {
                h_state = h_matching_connection_token;
              } else if (parser->index == sizeof("keep-alive")-2) {
                h_state = h_connection_keep_alive;
              }
              break;


            case h_matching_connection_close:
              parser->index++;
              if (parser->index > sizeof("close")-1 || c != "close"[parser->index]) {
                h_state = h_matching_connection_token;
              } else if (parser->index == sizeof("close")-2) {
                h_state = h_connection_close;
              }
              break;


            case h_matching_connection_upgrade:
              parser->index++;
              if (parser->index > sizeof("upgrade") - 1 ||
                  c != "upgrade"[parser->index]) {
                h_state = h_matching_connection_token;
              } else if (parser->index == sizeof("upgrade")-2) {
                h_state = h_connection_upgrade;
              }
              break;

            case h_matching_connection_token:
              if (ch == ',') {
                h_state = h_matching_connection_token_start;
                parser->index = 0;
              }
              break;

            case h_transfer_encoding_chunked:
              if (ch != ' ') h_state = h_general;
              break;

            case h_connection_keep_alive:
            case h_connection_close:
            case h_connection_upgrade:
              if (ch == ',') {
                if (h_state == h_connection_keep_alive) {
                  parser->flags |= F_CONNECTION_KEEP_ALIVE;
                } else if (h_state == h_connection_close) {
                  parser->flags |= F_CONNECTION_CLOSE;
                } else if (h_state == h_connection_upgrade) {
                  parser->flags |= F_CONNECTION_UPGRADE;
                }
                h_state = h_matching_connection_token_start;
                parser->index = 0;
              } else if (ch != ' ') {
                h_state = h_matching_connection_token;
              }
              break;

            default:
              p_state = (enum state) (s_header_value);;
              h_state = h_general;
              break;
          }
        }
        parser->header_state = h_state;

        if (p == data + len)
          --p;

        do { nread += (uint32_t)(p - start); if (__builtin_expect(!!(nread > max_header_size), 0)) { do { parser->nread = nread; parser->http_errno = (HPE_HEADER_OVERFLOW); } while(0); goto error; } } while (0);
        break;
      }

      case s_header_almost_done:
      {
        if (__builtin_expect(!!(ch != '\n'), 0)) {
          do { parser->nread = nread; parser->http_errno = (HPE_LF_EXPECTED); } while(0);
          goto error;
        }

        p_state = (enum state) (s_header_value_lws);;
        break;
      }

      case s_header_value_lws:
      {
        if (ch == ' ' || ch == '\t') {
          if (parser->header_state == h_content_length_num) {

              parser->header_state = h_content_length_ws;
          }
          p_state = (enum state) (s_header_value_start);;
          goto reexecute;;
        }


        switch (parser->header_state) {
          case h_connection_keep_alive:
            parser->flags |= F_CONNECTION_KEEP_ALIVE;
            break;
          case h_connection_close:
            parser->flags |= F_CONNECTION_CLOSE;
            break;
          case h_transfer_encoding_chunked:
            parser->flags |= F_CHUNKED;
            break;
          case h_connection_upgrade:
            parser->flags |= F_CONNECTION_UPGRADE;
            break;
          default:
            break;
        }

        p_state = (enum state) (s_header_field_start);;
        goto reexecute;;
      }

      case s_header_value_discard_ws_almost_done:
      {
        do { if (ch != '\n') { do { parser->nread = nread; parser->http_errno = (HPE_STRICT); } while(0); goto error; } } while (0);
        p_state = (enum state) (s_header_value_discard_lws);;
        break;
      }

      case s_header_value_discard_lws:
      {
        if (ch == ' ' || ch == '\t') {
          p_state = (enum state) (s_header_value_discard_ws);;
          break;
        } else {
          switch (parser->header_state) {
            case h_connection_keep_alive:
              parser->flags |= F_CONNECTION_KEEP_ALIVE;
              break;
            case h_connection_close:
              parser->flags |= F_CONNECTION_CLOSE;
              break;
            case h_connection_upgrade:
              parser->flags |= F_CONNECTION_UPGRADE;
              break;
            case h_transfer_encoding_chunked:
              parser->flags |= F_CHUNKED;
              break;
            case h_content_length:

              do { parser->nread = nread; parser->http_errno = (HPE_INVALID_CONTENT_LENGTH); } while(0);
              goto error;
              break;
            default:
              break;
          }


          do { if (!header_value_mark) { header_value_mark = p; } } while (0);
          p_state = (enum state) (s_header_field_start);;
          do { do{if(!(((enum http_errno) (parser)->http_errno) == HPE_OK)){printf("%s:%d %s","http_parser.c",1754,"HTTP_PARSER_ERRNO(parser) == HPE_OK");while(1);}}while(0); if (header_value_mark) { if (__builtin_expect(!!(settings->on_header_value), 1)) { parser->state = p_state; if (__builtin_expect(!!(0 != settings->on_header_value(parser, header_value_mark, (p - header_value_mark))), 0)) { do { parser->nread = nread; parser->http_errno = (HPE_CB_header_value); } while(0); } p_state = (enum state) (parser->state);; if (__builtin_expect(!!(((enum http_errno) (parser)->http_errno) != HPE_OK), 0)) { return (p - data); } } header_value_mark = 
# 1754 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c" 3 4
         ((void *)0)
# 1754 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c"
         ; } } while (0);
          goto reexecute;;
        }
      }

      case s_headers_almost_done:
      {
        do { if (ch != '\n') { do { parser->nread = nread; parser->http_errno = (HPE_STRICT); } while(0); goto error; } } while (0);

        if (parser->flags & F_TRAILING) {

          p_state = (enum state) (s_message_done);;
          do { do{if(!(((enum http_errno) (parser)->http_errno) == HPE_OK)){printf("%s:%d %s","http_parser.c",1766,"HTTP_PARSER_ERRNO(parser) == HPE_OK");while(1);}}while(0); if (__builtin_expect(!!(settings->on_chunk_complete), 1)) { parser->state = p_state; if (__builtin_expect(!!(0 != settings->on_chunk_complete(parser)), 0)) { do { parser->nread = nread; parser->http_errno = (HPE_CB_chunk_complete); } while(0); } p_state = (enum state) (parser->state);; if (__builtin_expect(!!(((enum http_errno) (parser)->http_errno) != HPE_OK), 0)) { return (p - data); } } } while (0);
          goto reexecute;;
        }



        if ((parser->flags & F_CHUNKED) &&
            (parser->flags & F_CONTENTLENGTH)) {
          do { parser->nread = nread; parser->http_errno = (HPE_UNEXPECTED_CONTENT_LENGTH); } while(0);
          goto error;
        }

        p_state = (enum state) (s_headers_done);;


        if ((parser->flags & F_UPGRADE) &&
            (parser->flags & F_CONNECTION_UPGRADE)) {




          parser->upgrade =
              (parser->type == HTTP_REQUEST || parser->status_code == 101);
        } else {
          parser->upgrade = (parser->method == HTTP_CONNECT);
        }
# 1802 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c"
        if (settings->on_headers_complete) {
          switch (settings->on_headers_complete(parser)) {
            case 0:
              break;

            case 2:
              parser->upgrade = 1;


            case 1:
              parser->flags |= F_SKIPBODY;
              break;

            default:
              do { parser->nread = nread; parser->http_errno = (HPE_CB_headers_complete); } while(0);
              do { parser->nread = nread; parser->state = p_state; return (p - data); } while (0);;
          }
        }

        if (((enum http_errno) (parser)->http_errno) != HPE_OK) {
          do { parser->nread = nread; parser->state = p_state; return (p - data); } while (0);;
        }

        goto reexecute;;
      }

      case s_headers_done:
      {
        int hasBody;
        do { if (ch != '\n') { do { parser->nread = nread; parser->http_errno = (HPE_STRICT); } while(0); goto error; } } while (0);

        parser->nread = 0;
        nread = 0;

        hasBody = parser->flags & F_CHUNKED ||
          (parser->content_length > 0 && parser->content_length != 
# 1837 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c" 3 4
                                                                  (0x7fffffffffffffffLL * 2ULL + 1ULL)
# 1837 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c"
                                                                            );
        if (parser->upgrade && (parser->method == HTTP_CONNECT ||
                                (parser->flags & F_SKIPBODY) || !hasBody)) {

          p_state = (enum state) ((http_should_keep_alive(parser) ? (parser->type == HTTP_REQUEST ? s_start_req : s_start_res) : s_dead));;
          do { do{if(!(((enum http_errno) (parser)->http_errno) == HPE_OK)){printf("%s:%d %s","http_parser.c",1842,"HTTP_PARSER_ERRNO(parser) == HPE_OK");while(1);}}while(0); if (__builtin_expect(!!(settings->on_message_complete), 1)) { parser->state = p_state; if (__builtin_expect(!!(0 != settings->on_message_complete(parser)), 0)) { do { parser->nread = nread; parser->http_errno = (HPE_CB_message_complete); } while(0); } p_state = (enum state) (parser->state);; if (__builtin_expect(!!(((enum http_errno) (parser)->http_errno) != HPE_OK), 0)) { return (p - data + 1); } } } while (0);
          do { parser->nread = nread; parser->state = p_state; return ((p - data) + 1); } while (0);;
        }

        if (parser->flags & F_SKIPBODY) {
          p_state = (enum state) ((http_should_keep_alive(parser) ? (parser->type == HTTP_REQUEST ? s_start_req : s_start_res) : s_dead));;
          do { do{if(!(((enum http_errno) (parser)->http_errno) == HPE_OK)){printf("%s:%d %s","http_parser.c",1848,"HTTP_PARSER_ERRNO(parser) == HPE_OK");while(1);}}while(0); if (__builtin_expect(!!(settings->on_message_complete), 1)) { parser->state = p_state; if (__builtin_expect(!!(0 != settings->on_message_complete(parser)), 0)) { do { parser->nread = nread; parser->http_errno = (HPE_CB_message_complete); } while(0); } p_state = (enum state) (parser->state);; if (__builtin_expect(!!(((enum http_errno) (parser)->http_errno) != HPE_OK), 0)) { return (p - data + 1); } } } while (0);
        } else if (parser->flags & F_CHUNKED) {

          p_state = (enum state) (s_chunk_size_start);;
        } else {
          if (parser->content_length == 0) {

            p_state = (enum state) ((http_should_keep_alive(parser) ? (parser->type == HTTP_REQUEST ? s_start_req : s_start_res) : s_dead));;
            do { do{if(!(((enum http_errno) (parser)->http_errno) == HPE_OK)){printf("%s:%d %s","http_parser.c",1856,"HTTP_PARSER_ERRNO(parser) == HPE_OK");while(1);}}while(0); if (__builtin_expect(!!(settings->on_message_complete), 1)) { parser->state = p_state; if (__builtin_expect(!!(0 != settings->on_message_complete(parser)), 0)) { do { parser->nread = nread; parser->http_errno = (HPE_CB_message_complete); } while(0); } p_state = (enum state) (parser->state);; if (__builtin_expect(!!(((enum http_errno) (parser)->http_errno) != HPE_OK), 0)) { return (p - data + 1); } } } while (0);
          } else if (parser->content_length != 
# 1857 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c" 3 4
                                              (0x7fffffffffffffffLL * 2ULL + 1ULL)
# 1857 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c"
                                                        ) {

            p_state = (enum state) (s_body_identity);;
          } else {
            if (!http_message_needs_eof(parser)) {

              p_state = (enum state) ((http_should_keep_alive(parser) ? (parser->type == HTTP_REQUEST ? s_start_req : s_start_res) : s_dead));;
              do { do{if(!(((enum http_errno) (parser)->http_errno) == HPE_OK)){printf("%s:%d %s","http_parser.c",1864,"HTTP_PARSER_ERRNO(parser) == HPE_OK");while(1);}}while(0); if (__builtin_expect(!!(settings->on_message_complete), 1)) { parser->state = p_state; if (__builtin_expect(!!(0 != settings->on_message_complete(parser)), 0)) { do { parser->nread = nread; parser->http_errno = (HPE_CB_message_complete); } while(0); } p_state = (enum state) (parser->state);; if (__builtin_expect(!!(((enum http_errno) (parser)->http_errno) != HPE_OK), 0)) { return (p - data + 1); } } } while (0);
            } else {

              p_state = (enum state) (s_body_identity_eof);;
            }
          }
        }

        break;
      }

      case s_body_identity:
      {
        uint64_t to_read = ((parser->content_length) < ((uint64_t) ((data + len) - p)) ? (parser->content_length) : ((uint64_t) ((data + len) - p)))
                                                             ;

        do{if(!(parser->content_length != 0 && parser->content_length != 
# 1880 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c" 3 4
       (0x7fffffffffffffffLL * 2ULL + 1ULL)
# 1880 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c"
       )){printf("%s:%d %s","http_parser.c",1880,"parser->content_length != 0 && parser->content_length != ULLONG_MAX");while(1);}}while(0)
                                                    ;






        do { if (!body_mark) { body_mark = p; } } while (0);
        parser->content_length -= to_read;
        p += to_read - 1;

        if (parser->content_length == 0) {
          p_state = (enum state) (s_message_done);;
# 1904 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c"
          do { do{if(!(((enum http_errno) (parser)->http_errno) == HPE_OK)){printf("%s:%d %s","http_parser.c",1904,"HTTP_PARSER_ERRNO(parser) == HPE_OK");while(1);}}while(0); if (body_mark) { if (__builtin_expect(!!(settings->on_body), 1)) { parser->state = p_state; if (__builtin_expect(!!(0 != settings->on_body(parser, body_mark, (p - body_mark + 1))), 0)) { do { parser->nread = nread; parser->http_errno = (HPE_CB_body); } while(0); } p_state = (enum state) (parser->state);; if (__builtin_expect(!!(((enum http_errno) (parser)->http_errno) != HPE_OK), 0)) { return (p - data); } } body_mark = 
# 1904 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c" 3 4
         ((void *)0)
# 1904 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c"
         ; } } while (0);
          goto reexecute;;
        }

        break;
      }


      case s_body_identity_eof:
        do { if (!body_mark) { body_mark = p; } } while (0);
        p = data + len - 1;

        break;

      case s_message_done:
        p_state = (enum state) ((http_should_keep_alive(parser) ? (parser->type == HTTP_REQUEST ? s_start_req : s_start_res) : s_dead));;
        do { do{if(!(((enum http_errno) (parser)->http_errno) == HPE_OK)){printf("%s:%d %s","http_parser.c",1920,"HTTP_PARSER_ERRNO(parser) == HPE_OK");while(1);}}while(0); if (__builtin_expect(!!(settings->on_message_complete), 1)) { parser->state = p_state; if (__builtin_expect(!!(0 != settings->on_message_complete(parser)), 0)) { do { parser->nread = nread; parser->http_errno = (HPE_CB_message_complete); } while(0); } p_state = (enum state) (parser->state);; if (__builtin_expect(!!(((enum http_errno) (parser)->http_errno) != HPE_OK), 0)) { return (p - data + 1); } } } while (0);
        if (parser->upgrade) {

          do { parser->nread = nread; parser->state = p_state; return ((p - data) + 1); } while (0);;
        }
        break;

      case s_chunk_size_start:
      {
        do{if(!(nread == 1)){printf("%s:%d %s","http_parser.c",1929,"nread == 1");while(1);}}while(0);
        do{if(!(parser->flags & F_CHUNKED)){printf("%s:%d %s","http_parser.c",1930,"parser->flags & F_CHUNKED");while(1);}}while(0);

        unhex_val = unhex[(unsigned char)ch];
        if (__builtin_expect(!!(unhex_val == -1), 0)) {
          do { parser->nread = nread; parser->http_errno = (HPE_INVALID_CHUNK_SIZE); } while(0);
          goto error;
        }

        parser->content_length = unhex_val;
        p_state = (enum state) (s_chunk_size);;
        break;
      }

      case s_chunk_size:
      {
        uint64_t t;

        do{if(!(parser->flags & F_CHUNKED)){printf("%s:%d %s","http_parser.c",1947,"parser->flags & F_CHUNKED");while(1);}}while(0);

        if (ch == '\r') {
          p_state = (enum state) (s_chunk_size_almost_done);;
          break;
        }

        unhex_val = unhex[(unsigned char)ch];

        if (unhex_val == -1) {
          if (ch == ';' || ch == ' ') {
            p_state = (enum state) (s_chunk_parameters);;
            break;
          }

          do { parser->nread = nread; parser->http_errno = (HPE_INVALID_CHUNK_SIZE); } while(0);
          goto error;
        }

        t = parser->content_length;
        t *= 16;
        t += unhex_val;


        if (__builtin_expect(!!((
# 1971 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c" 3 4
           (0x7fffffffffffffffLL * 2ULL + 1ULL) 
# 1971 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c"
           - 16) / 16 < parser->content_length), 0)) {
          do { parser->nread = nread; parser->http_errno = (HPE_INVALID_CONTENT_LENGTH); } while(0);
          goto error;
        }

        parser->content_length = t;
        break;
      }

      case s_chunk_parameters:
      {
        do{if(!(parser->flags & F_CHUNKED)){printf("%s:%d %s","http_parser.c",1982,"parser->flags & F_CHUNKED");while(1);}}while(0);

        if (ch == '\r') {
          p_state = (enum state) (s_chunk_size_almost_done);;
          break;
        }
        break;
      }

      case s_chunk_size_almost_done:
      {
        do{if(!(parser->flags & F_CHUNKED)){printf("%s:%d %s","http_parser.c",1993,"parser->flags & F_CHUNKED");while(1);}}while(0);
        do { if (ch != '\n') { do { parser->nread = nread; parser->http_errno = (HPE_STRICT); } while(0); goto error; } } while (0);

        parser->nread = 0;
        nread = 0;

        if (parser->content_length == 0) {
          parser->flags |= F_TRAILING;
          p_state = (enum state) (s_header_field_start);;
        } else {
          p_state = (enum state) (s_chunk_data);;
        }
        do { do{if(!(((enum http_errno) (parser)->http_errno) == HPE_OK)){printf("%s:%d %s","http_parser.c",2005,"HTTP_PARSER_ERRNO(parser) == HPE_OK");while(1);}}while(0); if (__builtin_expect(!!(settings->on_chunk_header), 1)) { parser->state = p_state; if (__builtin_expect(!!(0 != settings->on_chunk_header(parser)), 0)) { do { parser->nread = nread; parser->http_errno = (HPE_CB_chunk_header); } while(0); } p_state = (enum state) (parser->state);; if (__builtin_expect(!!(((enum http_errno) (parser)->http_errno) != HPE_OK), 0)) { return (p - data + 1); } } } while (0);
        break;
      }

      case s_chunk_data:
      {
        uint64_t to_read = ((parser->content_length) < ((uint64_t) ((data + len) - p)) ? (parser->content_length) : ((uint64_t) ((data + len) - p)))
                                                             ;

        do{if(!(parser->flags & F_CHUNKED)){printf("%s:%d %s","http_parser.c",2014,"parser->flags & F_CHUNKED");while(1);}}while(0);
        do{if(!(parser->content_length != 0 && parser->content_length != 
# 2015 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c" 3 4
       (0x7fffffffffffffffLL * 2ULL + 1ULL)
# 2015 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c"
       )){printf("%s:%d %s","http_parser.c",2015,"parser->content_length != 0 && parser->content_length != ULLONG_MAX");while(1);}}while(0)
                                                    ;




        do { if (!body_mark) { body_mark = p; } } while (0);
        parser->content_length -= to_read;
        p += to_read - 1;

        if (parser->content_length == 0) {
          p_state = (enum state) (s_chunk_data_almost_done);;
        }

        break;
      }

      case s_chunk_data_almost_done:
        do{if(!(parser->flags & F_CHUNKED)){printf("%s:%d %s","http_parser.c",2033,"parser->flags & F_CHUNKED");while(1);}}while(0);
        do{if(!(parser->content_length == 0)){printf("%s:%d %s","http_parser.c",2034,"parser->content_length == 0");while(1);}}while(0);
        do { if (ch != '\r') { do { parser->nread = nread; parser->http_errno = (HPE_STRICT); } while(0); goto error; } } while (0);
        p_state = (enum state) (s_chunk_data_done);;
        do { do{if(!(((enum http_errno) (parser)->http_errno) == HPE_OK)){printf("%s:%d %s","http_parser.c",2037,"HTTP_PARSER_ERRNO(parser) == HPE_OK");while(1);}}while(0); if (body_mark) { if (__builtin_expect(!!(settings->on_body), 1)) { parser->state = p_state; if (__builtin_expect(!!(0 != settings->on_body(parser, body_mark, (p - body_mark))), 0)) { do { parser->nread = nread; parser->http_errno = (HPE_CB_body); } while(0); } p_state = (enum state) (parser->state);; if (__builtin_expect(!!(((enum http_errno) (parser)->http_errno) != HPE_OK), 0)) { return (p - data + 1); } } body_mark = 
# 2037 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c" 3 4
       ((void *)0)
# 2037 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c"
       ; } } while (0);
        break;

      case s_chunk_data_done:
        do{if(!(parser->flags & F_CHUNKED)){printf("%s:%d %s","http_parser.c",2041,"parser->flags & F_CHUNKED");while(1);}}while(0);
        do { if (ch != '\n') { do { parser->nread = nread; parser->http_errno = (HPE_STRICT); } while(0); goto error; } } while (0);
        parser->nread = 0;
        nread = 0;
        p_state = (enum state) (s_chunk_size_start);;
        do { do{if(!(((enum http_errno) (parser)->http_errno) == HPE_OK)){printf("%s:%d %s","http_parser.c",2046,"HTTP_PARSER_ERRNO(parser) == HPE_OK");while(1);}}while(0); if (__builtin_expect(!!(settings->on_chunk_complete), 1)) { parser->state = p_state; if (__builtin_expect(!!(0 != settings->on_chunk_complete(parser)), 0)) { do { parser->nread = nread; parser->http_errno = (HPE_CB_chunk_complete); } while(0); } p_state = (enum state) (parser->state);; if (__builtin_expect(!!(((enum http_errno) (parser)->http_errno) != HPE_OK), 0)) { return (p - data + 1); } } } while (0);
        break;

      default:
        do{if(!(0 && "unhandled state")){printf("%s:%d %s","http_parser.c",2050,"0 && \"unhandled state\"");while(1);}}while(0);
        do { parser->nread = nread; parser->http_errno = (HPE_INVALID_INTERNAL_STATE); } while(0);
        goto error;
    }
  }
# 2066 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c"
  do{if(!(((header_field_mark ? 1 : 0) + (header_value_mark ? 1 : 0) + (url_mark ? 1 : 0) + (body_mark ? 1 : 0) + (status_mark ? 1 : 0)) <= 1)){printf("%s:%d %s","http_parser.c",2066,"((header_field_mark ? 1 : 0) + (header_value_mark ? 1 : 0) + (url_mark ? 1 : 0) + (body_mark ? 1 : 0) + (status_mark ? 1 : 0)) <= 1");while(1);}}while(0)



                                      ;

  do { do{if(!(((enum http_errno) (parser)->http_errno) == HPE_OK)){printf("%s:%d %s","http_parser.c",2072,"HTTP_PARSER_ERRNO(parser) == HPE_OK");while(1);}}while(0); if (header_field_mark) { if (__builtin_expect(!!(settings->on_header_field), 1)) { parser->state = p_state; if (__builtin_expect(!!(0 != settings->on_header_field(parser, header_field_mark, (p - header_field_mark))), 0)) { do { parser->nread = nread; parser->http_errno = (HPE_CB_header_field); } while(0); } p_state = (enum state) (parser->state);; if (__builtin_expect(!!(((enum http_errno) (parser)->http_errno) != HPE_OK), 0)) { return (p - data); } } header_field_mark = 
# 2072 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c" 3 4
 ((void *)0)
# 2072 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c"
 ; } } while (0);
  do { do{if(!(((enum http_errno) (parser)->http_errno) == HPE_OK)){printf("%s:%d %s","http_parser.c",2073,"HTTP_PARSER_ERRNO(parser) == HPE_OK");while(1);}}while(0); if (header_value_mark) { if (__builtin_expect(!!(settings->on_header_value), 1)) { parser->state = p_state; if (__builtin_expect(!!(0 != settings->on_header_value(parser, header_value_mark, (p - header_value_mark))), 0)) { do { parser->nread = nread; parser->http_errno = (HPE_CB_header_value); } while(0); } p_state = (enum state) (parser->state);; if (__builtin_expect(!!(((enum http_errno) (parser)->http_errno) != HPE_OK), 0)) { return (p - data); } } header_value_mark = 
# 2073 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c" 3 4
 ((void *)0)
# 2073 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c"
 ; } } while (0);
  do { do{if(!(((enum http_errno) (parser)->http_errno) == HPE_OK)){printf("%s:%d %s","http_parser.c",2074,"HTTP_PARSER_ERRNO(parser) == HPE_OK");while(1);}}while(0); if (url_mark) { if (__builtin_expect(!!(settings->on_url), 1)) { parser->state = p_state; if (__builtin_expect(!!(0 != settings->on_url(parser, url_mark, (p - url_mark))), 0)) { do { parser->nread = nread; parser->http_errno = (HPE_CB_url); } while(0); } p_state = (enum state) (parser->state);; if (__builtin_expect(!!(((enum http_errno) (parser)->http_errno) != HPE_OK), 0)) { return (p - data); } } url_mark = 
# 2074 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c" 3 4
 ((void *)0)
# 2074 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c"
 ; } } while (0);
  do { do{if(!(((enum http_errno) (parser)->http_errno) == HPE_OK)){printf("%s:%d %s","http_parser.c",2075,"HTTP_PARSER_ERRNO(parser) == HPE_OK");while(1);}}while(0); if (body_mark) { if (__builtin_expect(!!(settings->on_body), 1)) { parser->state = p_state; if (__builtin_expect(!!(0 != settings->on_body(parser, body_mark, (p - body_mark))), 0)) { do { parser->nread = nread; parser->http_errno = (HPE_CB_body); } while(0); } p_state = (enum state) (parser->state);; if (__builtin_expect(!!(((enum http_errno) (parser)->http_errno) != HPE_OK), 0)) { return (p - data); } } body_mark = 
# 2075 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c" 3 4
 ((void *)0)
# 2075 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c"
 ; } } while (0);
  do { do{if(!(((enum http_errno) (parser)->http_errno) == HPE_OK)){printf("%s:%d %s","http_parser.c",2076,"HTTP_PARSER_ERRNO(parser) == HPE_OK");while(1);}}while(0); if (status_mark) { if (__builtin_expect(!!(settings->on_status), 1)) { parser->state = p_state; if (__builtin_expect(!!(0 != settings->on_status(parser, status_mark, (p - status_mark))), 0)) { do { parser->nread = nread; parser->http_errno = (HPE_CB_status); } while(0); } p_state = (enum state) (parser->state);; if (__builtin_expect(!!(((enum http_errno) (parser)->http_errno) != HPE_OK), 0)) { return (p - data); } } status_mark = 
# 2076 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c" 3 4
 ((void *)0)
# 2076 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c"
 ; } } while (0);

  do { parser->nread = nread; parser->state = p_state; return (len); } while (0);;

error:
  if (((enum http_errno) (parser)->http_errno) == HPE_OK) {
    do { parser->nread = nread; parser->http_errno = (HPE_UNKNOWN); } while(0);
  }

  do { parser->nread = nread; parser->state = p_state; return (p - data); } while (0);;
}



int
http_message_needs_eof (const http_parser *parser)
{
  if (parser->type == HTTP_REQUEST) {
    return 0;
  }


  if (parser->status_code / 100 == 1 ||
      parser->status_code == 204 ||
      parser->status_code == 304 ||
      parser->flags & F_SKIPBODY) {
    return 0;
  }

  if ((parser->flags & F_CHUNKED) || parser->content_length != 
# 2105 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c" 3 4
                                                              (0x7fffffffffffffffLL * 2ULL + 1ULL)
# 2105 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/3rdparty/http-parser/src/http_parser.c"
                                                                        ) {
    return 0;
  }

  return 1;
}


int
http_should_keep_alive (const http_parser *parser)
{
  if (parser->http_major > 0 && parser->http_minor > 0) {

    if (parser->flags & F_CONNECTION_CLOSE) {
      return 0;
    }
  } else {

    if (!(parser->flags & F_CONNECTION_KEEP_ALIVE)) {
      return 0;
    }
  }

  return !http_message_needs_eof(parser);
}


const char *
http_method_str (enum http_method m)
{
  return ((unsigned int) (m) < (sizeof(method_strings) / sizeof((method_strings)[0])) ? (method_strings)[(m)] : ("<unknown>"));
}

const char *
http_status_str (enum http_status s)
{
  switch (s) {

    case HTTP_STATUS_CONTINUE: return "Continue"; case HTTP_STATUS_SWITCHING_PROTOCOLS: return "Switching Protocols"; case HTTP_STATUS_PROCESSING: return "Processing"; case HTTP_STATUS_OK: return "OK"; case HTTP_STATUS_CREATED: return "Created"; case HTTP_STATUS_ACCEPTED: return "Accepted"; case HTTP_STATUS_NON_AUTHORITATIVE_INFORMATION: return "Non-Authoritative Information"; case HTTP_STATUS_NO_CONTENT: return "No Content"; case HTTP_STATUS_RESET_CONTENT: return "Reset Content"; case HTTP_STATUS_PARTIAL_CONTENT: return "Partial Content"; case HTTP_STATUS_MULTI_STATUS: return "Multi-Status"; case HTTP_STATUS_ALREADY_REPORTED: return "Already Reported"; case HTTP_STATUS_IM_USED: return "IM Used"; case HTTP_STATUS_MULTIPLE_CHOICES: return "Multiple Choices"; case HTTP_STATUS_MOVED_PERMANENTLY: return "Moved Permanently"; case HTTP_STATUS_FOUND: return "Found"; case HTTP_STATUS_SEE_OTHER: return "See Other"; case HTTP_STATUS_NOT_MODIFIED: return "Not Modified"; case HTTP_STATUS_USE_PROXY: return "Use Proxy"; case HTTP_STATUS_TEMPORARY_REDIRECT: return "Temporary Redirect"; case HTTP_STATUS_PERMANENT_REDIRECT: return "Permanent Redirect"; case HTTP_STATUS_BAD_REQUEST: return "Bad Request"; case HTTP_STATUS_UNAUTHORIZED: return "Unauthorized"; case HTTP_STATUS_PAYMENT_REQUIRED: return "Payment Required"; case HTTP_STATUS_FORBIDDEN: return "Forbidden"; case HTTP_STATUS_NOT_FOUND: return "Not Found"; case HTTP_STATUS_METHOD_NOT_ALLOWED: return "Method Not Allowed"; case HTTP_STATUS_NOT_ACCEPTABLE: return "Not Acceptable"; case HTTP_STATUS_PROXY_AUTHENTICATION_REQUIRED: return "Proxy Authentication Required"; case HTTP_STATUS_REQUEST_TIMEOUT: return "Request Timeout"; case HTTP_STATUS_CONFLICT: return "Conflict"; case HTTP_STATUS_GONE: return "Gone"; case HTTP_STATUS_LENGTH_REQUIRED: return "Length Required"; case HTTP_STATUS_PRECONDITION_FAILED: return "Precondition Failed"; case HTTP_STATUS_PAYLOAD_TOO_LARGE: return "Payload Too Large"; case HTTP_STATUS_URI_TOO_LONG: return "URI Too Long"; case HTTP_STATUS_UNSUPPORTED_MEDIA_TYPE: return "Unsupported Media Type"; case HTTP_STATUS_RANGE_NOT_SATISFIABLE: return "Range Not Satisfiable"; case HTTP_STATUS_EXPECTATION_FAILED: return "Expectation Failed"; case HTTP_STATUS_MISDIRECTED_REQUEST: return "Misdirected Request"; case HTTP_STATUS_UNPROCESSABLE_ENTITY: return "Unprocessable Entity"; case HTTP_STATUS_LOCKED: return "Locked"; case HTTP_STATUS_FAILED_DEPENDENCY: return "Failed Dependency"; case HTTP_STATUS_UPGRADE_REQUIRED: return "Upgrade Required"; case HTTP_STATUS_PRECONDITION_REQUIRED: return "Precondition Required"; case HTTP_STATUS_TOO_MANY_REQUESTS: return "Too Many Requests"; case HTTP_STATUS_REQUEST_HEADER_FIELDS_TOO_LARGE: return "Request Header Fields Too Large"; case HTTP_STATUS_UNAVAILABLE_FOR_LEGAL_REASONS: return "Unavailable For Legal Reasons"; case HTTP_STATUS_INTERNAL_SERVER_ERROR: return "Internal Server Error"; case HTTP_STATUS_NOT_IMPLEMENTED: return "Not Implemented"; case HTTP_STATUS_BAD_GATEWAY: return "Bad Gateway"; case HTTP_STATUS_SERVICE_UNAVAILABLE: return "Service Unavailable"; case HTTP_STATUS_GATEWAY_TIMEOUT: return "Gateway Timeout"; case HTTP_STATUS_HTTP_VERSION_NOT_SUPPORTED: return "HTTP Version Not Supported"; case HTTP_STATUS_VARIANT_ALSO_NEGOTIATES: return "Variant Also Negotiates"; case HTTP_STATUS_INSUFFICIENT_STORAGE: return "Insufficient Storage"; case HTTP_STATUS_LOOP_DETECTED: return "Loop Detected"; case HTTP_STATUS_NOT_EXTENDED: return "Not Extended"; case HTTP_STATUS_NETWORK_AUTHENTICATION_REQUIRED: return "Network Authentication Required";

    default: return "<unknown>";
  }
}

void
http_parser_init (http_parser *parser, enum http_parser_type t)
{
  void *data = parser->data;
  memset(parser, 0, sizeof(*parser));
  parser->data = data;
  parser->type = t;
  parser->state = (t == HTTP_REQUEST ? s_start_req : (t == HTTP_RESPONSE ? s_start_res : s_start_req_or_res));
  parser->http_errno = HPE_OK;
}

void
http_parser_settings_init(http_parser_settings *settings)
{
  memset(settings, 0, sizeof(*settings));
}

const char *
http_errno_name(enum http_errno err) {
  do{if(!(((size_t) err) < (sizeof(http_strerror_tab) / sizeof((http_strerror_tab)[0])))){printf("%s:%d %s","http_parser.c",2168,"((size_t) err) < ARRAY_SIZE(http_strerror_tab)");while(1);}}while(0);
  return http_strerror_tab[err].name;
}

const char *
http_errno_description(enum http_errno err) {
  do{if(!(((size_t) err) < (sizeof(http_strerror_tab) / sizeof((http_strerror_tab)[0])))){printf("%s:%d %s","http_parser.c",2174,"((size_t) err) < ARRAY_SIZE(http_strerror_tab)");while(1);}}while(0);
  return http_strerror_tab[err].description;
}

static enum http_host_state
http_parse_host_char(enum http_host_state s, const char ch) {
  switch(s) {
    case s_http_userinfo:
    case s_http_userinfo_start:
      if (ch == '@') {
        return s_http_host_start;
      }

      if (((((unsigned char)(ch | 0x20) >= 'a' && (unsigned char)(ch | 0x20) <= 'z') || ((ch) >= '0' && (ch) <= '9')) || ((ch) == '-' || (ch) == '_' || (ch) == '.' || (ch) == '!' || (ch) == '~' || (ch) == '*' || (ch) == '\'' || (ch) == '(' || (ch) == ')') || (ch) == '%' || (ch) == ';' || (ch) == ':' || (ch) == '&' || (ch) == '=' || (ch) == '+' || (ch) == '$' || (ch) == ',')) {
        return s_http_userinfo;
      }
      break;

    case s_http_host_start:
      if (ch == '[') {
        return s_http_host_v6_start;
      }

      if (((((unsigned char)(ch | 0x20) >= 'a' && (unsigned char)(ch | 0x20) <= 'z') || ((ch) >= '0' && (ch) <= '9')) || (ch) == '.' || (ch) == '-')) {
        return s_http_host;
      }

      break;

    case s_http_host:
      if (((((unsigned char)(ch | 0x20) >= 'a' && (unsigned char)(ch | 0x20) <= 'z') || ((ch) >= '0' && (ch) <= '9')) || (ch) == '.' || (ch) == '-')) {
        return s_http_host;
      }


    case s_http_host_v6_end:
      if (ch == ':') {
        return s_http_host_port_start;
      }

      break;

    case s_http_host_v6:
      if (ch == ']') {
        return s_http_host_v6_end;
      }


    case s_http_host_v6_start:
      if ((((ch) >= '0' && (ch) <= '9') || ((unsigned char)(ch | 0x20) >= 'a' && (unsigned char)(ch | 0x20) <= 'f')) || ch == ':' || ch == '.') {
        return s_http_host_v6;
      }

      if (s == s_http_host_v6 && ch == '%') {
        return s_http_host_v6_zone_start;
      }
      break;

    case s_http_host_v6_zone:
      if (ch == ']') {
        return s_http_host_v6_end;
      }


    case s_http_host_v6_zone_start:

      if ((((unsigned char)(ch | 0x20) >= 'a' && (unsigned char)(ch | 0x20) <= 'z') || ((ch) >= '0' && (ch) <= '9')) || ch == '%' || ch == '.' || ch == '-' || ch == '_' ||
          ch == '~') {
        return s_http_host_v6_zone;
      }
      break;

    case s_http_host_port:
    case s_http_host_port_start:
      if (((ch) >= '0' && (ch) <= '9')) {
        return s_http_host_port;
      }

      break;

    default:
      break;
  }
  return s_http_host_dead;
}

static int
http_parse_host(const char * buf, struct http_parser_url *u, int found_at) {
  enum http_host_state s;

  const char *p;
  size_t buflen = u->field_data[UF_HOST].off + u->field_data[UF_HOST].len;

  do{if(!(u->field_set & (1 << UF_HOST))){printf("%s:%d %s","http_parser.c",2267,"u->field_set & (1 << UF_HOST)");while(1);}}while(0);

  u->field_data[UF_HOST].len = 0;

  s = found_at ? s_http_userinfo_start : s_http_host_start;

  for (p = buf + u->field_data[UF_HOST].off; p < buf + buflen; p++) {
    enum http_host_state new_s = http_parse_host_char(s, *p);

    if (new_s == s_http_host_dead) {
      return 1;
    }

    switch(new_s) {
      case s_http_host:
        if (s != s_http_host) {
          u->field_data[UF_HOST].off = (uint16_t)(p - buf);
        }
        u->field_data[UF_HOST].len++;
        break;

      case s_http_host_v6:
        if (s != s_http_host_v6) {
          u->field_data[UF_HOST].off = (uint16_t)(p - buf);
        }
        u->field_data[UF_HOST].len++;
        break;

      case s_http_host_v6_zone_start:
      case s_http_host_v6_zone:
        u->field_data[UF_HOST].len++;
        break;

      case s_http_host_port:
        if (s != s_http_host_port) {
          u->field_data[UF_PORT].off = (uint16_t)(p - buf);
          u->field_data[UF_PORT].len = 0;
          u->field_set |= (1 << UF_PORT);
        }
        u->field_data[UF_PORT].len++;
        break;

      case s_http_userinfo:
        if (s != s_http_userinfo) {
          u->field_data[UF_USERINFO].off = (uint16_t)(p - buf);
          u->field_data[UF_USERINFO].len = 0;
          u->field_set |= (1 << UF_USERINFO);
        }
        u->field_data[UF_USERINFO].len++;
        break;

      default:
        break;
    }
    s = new_s;
  }


  switch (s) {
    case s_http_host_start:
    case s_http_host_v6_start:
    case s_http_host_v6:
    case s_http_host_v6_zone_start:
    case s_http_host_v6_zone:
    case s_http_host_port_start:
    case s_http_userinfo:
    case s_http_userinfo_start:
      return 1;
    default:
      break;
  }

  return 0;
}

void
http_parser_url_init(struct http_parser_url *u) {
  memset(u, 0, sizeof(*u));
}

int
http_parser_parse_url(const char *buf, size_t buflen, int is_connect,
                      struct http_parser_url *u)
{
  enum state s;
  const char *p;
  enum http_parser_url_fields uf, old_uf;
  int found_at = 0;

  if (buflen == 0) {
    return 1;
  }

  u->port = u->field_set = 0;
  s = is_connect ? s_req_server_start : s_req_spaces_before_url;
  old_uf = UF_MAX;

  for (p = buf; p < buf + buflen; p++) {
    s = parse_url_char(s, *p);


    switch (s) {
      case s_dead:
        return 1;


      case s_req_schema_slash:
      case s_req_schema_slash_slash:
      case s_req_server_start:
      case s_req_query_string_start:
      case s_req_fragment_start:
        continue;

      case s_req_schema:
        uf = UF_SCHEMA;
        break;

      case s_req_server_with_at:
        found_at = 1;


      case s_req_server:
        uf = UF_HOST;
        break;

      case s_req_path:
        uf = UF_PATH;
        break;

      case s_req_query_string:
        uf = UF_QUERY;
        break;

      case s_req_fragment:
        uf = UF_FRAGMENT;
        break;

      default:
        do{if(!(!"Unexpected state")){printf("%s:%d %s","http_parser.c",2405,"!\"Unexpected state\"");while(1);}}while(0);
        return 1;
    }


    if (uf == old_uf) {
      u->field_data[uf].len++;
      continue;
    }

    u->field_data[uf].off = (uint16_t)(p - buf);
    u->field_data[uf].len = 1;

    u->field_set |= (1 << uf);
    old_uf = uf;
  }



  if ((u->field_set & (1 << UF_SCHEMA)) &&
      (u->field_set & (1 << UF_HOST)) == 0) {
    return 1;
  }

  if (u->field_set & (1 << UF_HOST)) {
    if (http_parse_host(buf, u, found_at) != 0) {
      return 1;
    }
  }


  if (is_connect && u->field_set != ((1 << UF_HOST)|(1 << UF_PORT))) {
    return 1;
  }

  if (u->field_set & (1 << UF_PORT)) {
    uint16_t off;
    uint16_t len;
    const char* p;
    const char* end;
    unsigned long v;

    off = u->field_data[UF_PORT].off;
    len = u->field_data[UF_PORT].len;
    end = buf + off + len;


    do{if(!(off + len <= buflen && "Port number overflow")){printf("%s:%d %s","http_parser.c",2452,"off + len <= buflen && \"Port number overflow\"");while(1);}}while(0);
    v = 0;
    for (p = buf + off; p < end; p++) {
      v *= 10;
      v += *p - '0';


      if (v > 0xffff) {
        return 1;
      }
    }

    u->port = (uint16_t) v;
  }

  return 0;
}

void
http_parser_pause(http_parser *parser, int paused) {




  if (((enum http_errno) (parser)->http_errno) == HPE_OK ||
      ((enum http_errno) (parser)->http_errno) == HPE_PAUSED) {
    uint32_t nread = parser->nread;
    do { parser->nread = nread; parser->http_errno = ((paused) ? HPE_PAUSED : HPE_OK); } while(0);
  } else {
    do{if(!(0 && "Attempting to pause parser in error state")){printf("%s:%d %s","http_parser.c",2481,"0 && \"Attempting to pause parser in error state\"");while(1);}}while(0);
  }
}

int
http_body_is_final(const struct http_parser *parser) {
    return parser->state == s_message_done;
}

unsigned long
http_parser_version(void) {
  return 2 * 0x10000 |
         9 * 0x00100 |
         2 * 0x00001;
}

void
http_parser_set_max_header_size(uint32_t size) {
  max_header_size = size;
}
