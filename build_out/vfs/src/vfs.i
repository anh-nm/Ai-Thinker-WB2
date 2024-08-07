# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/applications/get-started/config_wifi/build_out/vfs//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"




# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h" 1
# 34 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 143 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4

# 143 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef int ptrdiff_t;
# 209 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef unsigned int size_t;
# 321 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 3 4
typedef int wchar_t;
# 35 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h" 2
# 49 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h"
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
# 50 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/FreeRTOS.h" 2






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
# 6 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 2
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/semphr.h" 1
# 35 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/semphr.h"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h" 1
# 40 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h"
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
# 41 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/queue.h" 2






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
# 36 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/platform/soc/bl602/freertos_riscv_ram/config/semphr.h" 2

typedef QueueHandle_t SemaphoreHandle_t;
# 7 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 2
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/include/vfs_conf.h" 1
# 8 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 2
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/include/vfs_err.h" 1
# 12 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/include/vfs_err.h"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/errno.h" 1 3





# 5 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/errno.h" 3
typedef int error_t;



# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/errno.h" 1 3
# 11 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/errno.h" 3
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 1 3
# 13 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/reent.h" 3
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






# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_default_types.h" 1 3
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
# 8 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/_types.h" 2 3
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
# 12 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/errno.h" 2 3



extern int *__errno (void);




extern const char * const _sys_errlist[];
extern int _sys_nerr;
# 10 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/errno.h" 2 3
# 13 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/include/vfs_err.h" 2
# 9 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 2
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/include/vfs_inode.h" 1







# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdbool.h" 1 3 4
# 9 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/include/vfs_inode.h" 2

# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/stat.h" 1 3
# 9 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/stat.h" 3
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/time.h" 1 3
# 10 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/time.h" 3
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/_ansi.h" 1 3
# 11 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/time.h" 2 3
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/cdefs.h" 1 3
# 47 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/cdefs.h" 3
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 48 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/cdefs.h" 2 3
# 12 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/time.h" 2 3




# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 17 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/time.h" 2 3


# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/machine/time.h" 1 3
# 20 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/time.h" 2 3
# 28 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/time.h" 3
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
# 29 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/time.h" 2 3



# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_locale.h" 1 3
# 9 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/_locale.h" 3
struct __locale_t;
typedef struct __locale_t *locale_t;
# 33 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/time.h" 2 3




struct tm
{
  int tm_sec;
  int tm_min;
  int tm_hour;
  int tm_mday;
  int tm_mon;
  int tm_year;
  int tm_wday;
  int tm_yday;
  int tm_isdst;






};

clock_t clock (void);
double difftime (time_t _time2, time_t _time1);
time_t mktime (struct tm *_timeptr);
time_t time (time_t *_timer);

char *asctime (const struct tm *_tblock);
char *ctime (const time_t *_time);
struct tm *gmtime (const time_t *_timer);
struct tm *localtime (const time_t *_timer);

size_t strftime (char *restrict _s,
        size_t _maxsize, const char *restrict _fmt,
        const struct tm *restrict _t);


extern size_t strftime_l (char *restrict _s, size_t _maxsize,
     const char *restrict _fmt,
     const struct tm *restrict _t, locale_t _l);


char *asctime_r (const struct tm *restrict,
     char *restrict);
char *ctime_r (const time_t *, char *);
struct tm *gmtime_r (const time_t *restrict,
     struct tm *restrict);
struct tm *localtime_r (const time_t *restrict,
     struct tm *restrict);








char *strptime (const char *restrict,
     const char *restrict,
     struct tm *restrict);


char *strptime_l (const char *restrict, const char *restrict,
    struct tm *restrict, locale_t);



void tzset (void);

void _tzset_r (struct _reent *);
# 134 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/time.h" 3
extern long _timezone;
extern int _daylight;


extern char *_tzname[2];
# 10 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/stat.h" 2 3
# 27 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/stat.h" 3
struct stat
{
  dev_t st_dev;
  ino_t st_ino;
  mode_t st_mode;
  nlink_t st_nlink;
  uid_t st_uid;
  gid_t st_gid;
  dev_t st_rdev;
  off_t st_size;





  struct timespec st_atim;
  struct timespec st_mtim;
  struct timespec st_ctim;
  blksize_t st_blksize;
  blkcnt_t st_blocks;

  long st_spare4[2];


};
# 137 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/sys/stat.h" 3
int chmod (const char *__path, mode_t __mode );
int fchmod (int __fd, mode_t __mode);
int fstat (int __fd, struct stat *__sbuf );
int mkdir (const char *_path, mode_t __mode );
int mkfifo (const char *__path, mode_t __mode );
int stat (const char *restrict __path, struct stat *restrict __sbuf );
mode_t umask (mode_t __mask );







int fchmodat (int, const char *, mode_t, int);
int fstatat (int, const char *restrict , struct stat *restrict, int);
int mkdirat (int, const char *, mode_t);
int mkfifoat (int, const char *, mode_t);
int mknodat (int, const char *, mode_t, dev_t);
int utimensat (int, const char *, const struct timespec *, int);


int futimens (int, const struct timespec *);
# 11 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/include/vfs_inode.h" 2

# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/include/vfs_dir.h" 1




# 4 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/include/vfs_dir.h"
struct statfs {
    long f_type;
    long f_bsize;
    long f_blocks;
    long f_bfree;
    long f_bavail;
    long f_files;
    long f_ffree;
    long f_fsid;
    long f_namelen;
};

typedef struct {
    int d_ino;
    uint8_t d_type;
    char d_name[];
} aos_dirent_t;

typedef struct {
    int dd_vfs_fd;
    int dd_rsv;
} aos_dir_t;
# 13 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/include/vfs_inode.h" 2





enum {
    VFS_TYPE_NOT_INIT,
    VFS_TYPE_CHAR_DEV,
    VFS_TYPE_BLOCK_DEV,
    VFS_TYPE_FS_DEV
};
# 44 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/include/vfs_inode.h"
typedef const struct file_ops file_ops_t;
typedef const struct fs_ops fs_ops_t;

union inode_ops_t {
    const file_ops_t *i_ops;
    const fs_ops_t *i_fops;
};


typedef struct {
    union inode_ops_t ops;
    void *i_arg;
    char *i_name;
    int i_flags;
    uint8_t type;
    uint8_t refs;
} inode_t;

typedef struct {
    inode_t *node;
    void *f_arg;
    size_t offset;
    int fd;
} file_t;

struct pollfd;
typedef void (*poll_notify_t)(struct pollfd *fd, void *arg);
struct file_ops {
    int (*open) (inode_t *node, file_t *fp);
    int (*close) (file_t *fp);
    ssize_t (*read) (file_t *fp, void *buf, size_t nbytes);
    ssize_t (*write) (file_t *fp, const void *buf, size_t nbytes);
    int (*ioctl) (file_t *fp, int cmd, unsigned long arg);

    int (*poll) (file_t *fp, 
# 78 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/include/vfs_inode.h" 3 4
                                 _Bool 
# 78 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/include/vfs_inode.h"
                                      flag, poll_notify_t notify, struct pollfd *fd, void *arg);

    int (*sync) (file_t *fp);
};

struct fs_ops {
    int (*open) (file_t *fp, const char *path, int flags);
    int (*close) (file_t *fp);
    ssize_t (*read) (file_t *fp, char *buf, size_t len);
    ssize_t (*write) (file_t *fp, const char *buf, size_t len);
    off_t (*lseek) (file_t *fp, off_t off, int whence);
    int (*sync) (file_t *fp);
    int (*stat) (file_t *fp, const char *path, struct stat *st);
    int (*unlink) (file_t *fp, const char *path);
    int (*rename) (file_t *fp, const char *oldpath, const char *newpath);
    aos_dir_t *(*opendir) (file_t *fp, const char *path);
    aos_dirent_t *(*readdir) (file_t *fp, aos_dir_t *dir);
    int (*closedir) (file_t *fp, aos_dir_t *dir);
    int (*mkdir) (file_t *fp, const char *path);
    int (*rmdir) (file_t *fp, const char *path);
    void (*rewinddir)(file_t *fp, aos_dir_t *dir);
    long (*telldir) (file_t *fp, aos_dir_t *dir);
    void (*seekdir) (file_t *fp, aos_dir_t *dir, long loc);
    int (*ioctl) (file_t *fp, int cmd, unsigned long arg);
    int (*statfs) (file_t *fp, const char *path, struct statfs *suf);
    int (*access) (file_t *fp, const char *path, int amode);
};

int inode_init(void);
int inode_alloc(inode_t **node);
int inode_del(inode_t *node);
inode_t *inode_open(const char *path);
int inode_ptr_get(int fd, inode_t **node);
int inode_avail_count(void);
void inode_ref(inode_t *);
void inode_unref(inode_t *);
int inode_busy(inode_t *);
int inode_reserve(const char *path, inode_t **inode);
int inode_release(const char *path);
int inode_forearch_name(int (*cb)(void *arg, inode_t *node), void *arg);
# 10 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 2
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h" 1
# 11 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/include/vfs_inode.h" 1
# 12 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h" 2
# 44 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
int vfs_init(void);
# 54 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
int aos_open(const char *path, int flags);
# 63 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
int aos_close(int fd);
# 74 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
ssize_t aos_read(int fd, void *buf, size_t nbytes);
# 85 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
ssize_t aos_write(int fd, const void *buf, size_t nbytes);
# 96 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
int aos_ioctl(int fd, int cmd, unsigned long arg);
# 108 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
int aos_poll(struct pollfd *fds, int nfds, int timeout);
# 119 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
int aos_fcntl(int fd, int cmd, int val);
# 133 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
off_t aos_lseek(int fd, off_t offset, int whence);
# 142 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
int aos_sync(int fd);
# 152 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
int aos_stat(const char *path, struct stat *st);
# 161 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
int aos_unlink(const char *path);
# 171 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
int aos_rename(const char *oldpath, const char *newpath);
# 180 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
aos_dir_t *aos_opendir(const char *path);
# 189 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
int aos_closedir(aos_dir_t *dir);
# 198 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
aos_dirent_t *aos_readdir(aos_dir_t *dir);
# 207 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
int aos_mkdir(const char *path);
# 216 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
int aos_rmdir(const char *path);
# 225 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
void aos_rewinddir(aos_dir_t *dir);
# 234 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
long aos_telldir(aos_dir_t *dir);
# 244 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
void aos_seekdir(aos_dir_t *dir, long loc);
# 254 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
int aos_statfs(const char *path, struct statfs *buf);
# 264 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/include/vfs.h"
int aos_access(const char *path, int amode);
# 11 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 2
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 1 3
# 36 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stddef.h" 1 3 4
# 37 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3



# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdarg.h" 1 3 4
# 40 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdarg.h" 3 4

# 40 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/lib/gcc/riscv64-unknown-elf/10.2.0/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 41 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 2 3





typedef __gnuc_va_list va_list;
# 63 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/toolchain/riscv/Linux/riscv64-unknown-elf/include/stdio.h" 3



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

# 12 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 2
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
# 13 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 2
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


# 14 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 2
# 1 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/include/vfs_file.h" 1
# 12 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/include/vfs_file.h"

# 12 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/include/vfs_file.h"
int file_init(void);

int get_fd(file_t *file);

file_t *get_file(int fd);

size_t get_all_file (file_t **file, int size);

file_t *new_file(inode_t *node);

void del_file(file_t *file);
# 15 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 2
# 24 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
SemaphoreHandle_t g_vfs_mutex = 
# 24 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
                               ((void *)0)
# 24 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                                   ;

int vfs_init(void)
{
    int ret = 0u;

    if (
# 30 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
       ((void *)0) 
# 30 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
            != g_vfs_mutex) {
        goto exit;
    }

    if (
# 34 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
       ((void *)0) 
# 34 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
            == (g_vfs_mutex = xQueueCreateMutex( ( ( uint8_t ) 1U ) ))) {
        ret = -1;
        goto exit;
    }

    if (0 != inode_init() || 0 != file_init()) {
        vQueueDelete( ( QueueHandle_t ) ( g_vfs_mutex ) );
        g_vfs_mutex = 
# 41 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
                     ((void *)0)
# 41 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                         ;
        ret = -1;
        goto exit;
    }

exit:
    return ret;
}

int aos_open(const char *path, int flags)
{
    file_t *file;
    inode_t *node;
    size_t len = 0;
    int ret = 0u;

    if (path == 
# 57 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
               ((void *)0)
# 57 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                   ) {
        return -
# 58 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
               22
# 58 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                     ;
    }

    len = strlen(path);
    if (len > 
# 62 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
             1024
# 62 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                     ) {
        return -
# 63 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
               91
# 63 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                           ;
    }

    if (( ( BaseType_t ) 1 ) != xQueueSemaphoreTake( ( g_vfs_mutex ), ( ( TickType_t ) 0xffffffffUL ) )) {
        ret = -1;
        return ret;
    }

    node = inode_open(path);

    if (node == 
# 73 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
               ((void *)0)
# 73 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                   ) {
        xQueueGenericSend( ( QueueHandle_t ) ( g_vfs_mutex ), 
# 74 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
       ((void *)0)
# 74 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
       , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );




        return -
# 79 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
               2
# 79 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                     ;

    }

    node->i_flags = flags;
    file = new_file(node);

    xQueueGenericSend( ( QueueHandle_t ) ( g_vfs_mutex ), 
# 86 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
   ((void *)0)
# 86 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
   , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );

    if (file == 
# 88 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
               ((void *)0)
# 88 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                   ) {
        return -
# 89 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
               23
# 89 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                     ;
    }

    if (((node)->type == (VFS_TYPE_FS_DEV))) {
        if ((node->ops.i_fops->open) != 
# 93 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
                                       ((void *)0)
# 93 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                                           ) {
            ret = (node->ops.i_fops->open)(file, path, flags);
        }

    } else {
        if ((node->ops.i_ops->open) != 
# 98 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
                                      ((void *)0)
# 98 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                                          ) {
            ret = (node->ops.i_ops->open)(node, file);
        }
    }

    if (ret != 0u) {
        del_file(file);
        return ret;
    }

    return get_fd(file);
}

int aos_close(int fd)
{
    int ret = 0u;
    file_t *f;
    inode_t *node;

    f = get_file(fd);

    if (f == 
# 119 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
            ((void *)0)
# 119 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                ) {



        return -
# 123 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
               2
# 123 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                     ;

    }

    node = f->node;

    if (((node)->type == (VFS_TYPE_FS_DEV))) {
        if ((node->ops.i_fops->close) != 
# 130 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
                                        ((void *)0)
# 130 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                                            ) {
            ret = (node->ops.i_fops->close)(f);
        }

    } else {

        if ((node->ops.i_ops->close) != 
# 136 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
                                       ((void *)0)
# 136 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                                           ) {
            ret = (node->ops.i_ops->close)(f);
        }
    }

    if ((( ( BaseType_t ) 1 ) != xQueueSemaphoreTake( ( g_vfs_mutex ), ( ( TickType_t ) 0xffffffffUL ) ))) {
        ret = -1;
        return ret;
    }

    del_file(f);

    xQueueGenericSend( ( QueueHandle_t ) ( g_vfs_mutex ), 
# 148 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
   ((void *)0)
# 148 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
   , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );

    return ret;
}

ssize_t aos_read(int fd, void *buf, size_t nbytes)
{
    ssize_t nread = -1;
    file_t *f;
    inode_t *node;

    f = get_file(fd);

    if (f == 
# 161 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
            ((void *)0)
# 161 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                ) {



        return -
# 165 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
               2
# 165 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                     ;

    }

    node = f->node;

    if (((node)->type == (VFS_TYPE_FS_DEV))) {
        if ((node->ops.i_fops->read) != 
# 172 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
                                       ((void *)0)
# 172 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                                           ) {
            nread = (node->ops.i_fops->read)(f, buf, nbytes);
        }
    } else {
        if ((node->ops.i_ops->read) != 
# 176 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
                                      ((void *)0)
# 176 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                                          ) {
            nread = (node->ops.i_ops->read)(f, buf, nbytes);
        }
    }

    return nread;
}

ssize_t aos_write(int fd, const void *buf, size_t nbytes)
{
    ssize_t nwrite = -1;
    file_t *f;
    inode_t *node;

    f = get_file(fd);

    if (f == 
# 192 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
            ((void *)0)
# 192 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                ) {



        return -
# 196 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
               2
# 196 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                     ;

    }

    node = f->node;

    if (((node)->type == (VFS_TYPE_FS_DEV))) {
        if ((node->ops.i_fops->write) != 
# 203 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
                                        ((void *)0)
# 203 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                                            ) {
            nwrite = (node->ops.i_fops->write)(f, buf, nbytes);
        }
    } else {
        if ((node->ops.i_ops->write) != 
# 207 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
                                       ((void *)0)
# 207 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                                           ) {
            nwrite = (node->ops.i_ops->write)(f, buf, nbytes);
        }
    }

    return nwrite;
}

int aos_ioctl(int fd, int cmd, unsigned long arg)
{
    int ret = -
# 217 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
              88
# 217 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                    ;
    file_t *f;
    inode_t *node;

    if (fd < 0) {
        return -
# 222 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
               22
# 222 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                     ;
    }

    f = get_file(fd);

    if (f == 
# 227 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
            ((void *)0)
# 227 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                ) {
        return -
# 228 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
               2
# 228 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                     ;
    }

    node = f->node;

    if (((node)->type == (VFS_TYPE_FS_DEV))) {
        if ((node->ops.i_fops->ioctl) != 
# 234 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
                                        ((void *)0)
# 234 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                                            ) {
            ret = (node->ops.i_fops->ioctl)(f, cmd, arg);
        }
    } else {
        if ((node->ops.i_ops->ioctl) != 
# 238 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
                                       ((void *)0)
# 238 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                                           ) {
            ret = (node->ops.i_ops->ioctl)(f, cmd, arg);
        }
    }

    return ret;
}

off_t aos_lseek(int fd, off_t offset, int whence)
{
    file_t *f;
    inode_t *node;
    int ret = -
# 250 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
              88
# 250 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                    ;

    f = get_file(fd);

    if (f == 
# 254 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
            ((void *)0)
# 254 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                ) {
        return -
# 255 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
               2
# 255 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                     ;
    }

    node = f->node;

    if (((node)->type == (VFS_TYPE_FS_DEV))) {
        if ((node->ops.i_fops->lseek) != 
# 261 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
                                        ((void *)0)
# 261 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                                            ) {
            ret = (node->ops.i_fops->lseek)(f, offset, whence);
        }
    }

    return ret;
}

int aos_sync(int fd)
{
    file_t *f;
    inode_t *node;
    int ret = -
# 273 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
              88
# 273 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                    ;

    f = get_file(fd);

    if (f == 
# 277 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
            ((void *)0)
# 277 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                ) {
        return -
# 278 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
               2
# 278 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                     ;
    }

    node = f->node;

    if (((node)->type == (VFS_TYPE_FS_DEV))) {
        if ((node->ops.i_fops->sync) != 
# 284 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
                                       ((void *)0)
# 284 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                                           ) {
            ret = (node->ops.i_fops->sync)(f);
        }
    } else {
        if ((node->ops.i_ops->sync) != 
# 288 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
                                      ((void *)0)
# 288 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                                          ) {
            ret = (node->ops.i_ops->sync)(f);
        }
    }

    return ret;
}

int aos_stat(const char *path, struct stat *st)
{
    file_t *file;
    inode_t *node;
    int err = 0, ret = -
# 300 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
                       88
# 300 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                             ;

    if (path == 
# 302 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
               ((void *)0)
# 302 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                   ) {
        return -
# 303 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
               22
# 303 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                     ;
    }

    if ((( ( BaseType_t ) 1 ) != xQueueSemaphoreTake( ( g_vfs_mutex ), ( ( TickType_t ) 0xffffffffUL ) ))) {
        err = -1;
        return err;
    }

    node = inode_open(path);

    if (node == 
# 313 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
               ((void *)0)
# 313 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                   ) {
        xQueueGenericSend( ( QueueHandle_t ) ( g_vfs_mutex ), 
# 314 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
       ((void *)0)
# 314 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
       , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
        return -
# 315 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
               19
# 315 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                     ;
    }

    file = new_file(node);

    xQueueGenericSend( ( QueueHandle_t ) ( g_vfs_mutex ), 
# 320 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
   ((void *)0)
# 320 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
   , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );

    if (file == 
# 322 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
               ((void *)0)
# 322 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                   ) {
        return -
# 323 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
               2
# 323 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                     ;
    }

    if (((node)->type == (VFS_TYPE_FS_DEV))) {
        if ((node->ops.i_fops->stat) != 
# 327 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
                                       ((void *)0)
# 327 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                                           ) {
            ret = (node->ops.i_fops->stat)(file, path, st);
        }
    }

    if ((( ( BaseType_t ) 1 ) != xQueueSemaphoreTake( ( g_vfs_mutex ), ( ( TickType_t ) 0xffffffffUL ) ))) {
        err = -1;
        return err;
    }

    del_file(file);

    xQueueGenericSend( ( QueueHandle_t ) ( g_vfs_mutex ), 
# 339 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
   ((void *)0)
# 339 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
   , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
    return ret;
}

int aos_unlink(const char *path)
{
    file_t *f;
    inode_t *node;
    int err, ret = -
# 347 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
                   88
# 347 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                         ;

    if (path == 
# 349 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
               ((void *)0)
# 349 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                   ) {
        return -
# 350 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
               22
# 350 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                     ;
    }

    if ((( ( BaseType_t ) 1 ) != xQueueSemaphoreTake( ( g_vfs_mutex ), ( ( TickType_t ) 0xffffffffUL ) ))) {
        err = -1;
        return err;
    }

    node = inode_open(path);

    if (node == 
# 360 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
               ((void *)0)
# 360 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                   ) {
        xQueueGenericSend( ( QueueHandle_t ) ( g_vfs_mutex ), 
# 361 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
       ((void *)0)
# 361 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
       , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
        return -
# 362 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
               19
# 362 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                     ;
    }

    f = new_file(node);

    xQueueGenericSend( ( QueueHandle_t ) ( g_vfs_mutex ), 
# 367 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
   ((void *)0)
# 367 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
   , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );

    if (f == 
# 369 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
            ((void *)0)
# 369 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                ) {
        return -
# 370 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
               2
# 370 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                     ;
    }

    if (((node)->type == (VFS_TYPE_FS_DEV))) {
        if ((node->ops.i_fops->unlink) != 
# 374 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
                                         ((void *)0)
# 374 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                                             ) {
            ret = (node->ops.i_fops->unlink)(f, path);
        }
    }

    if ((( ( BaseType_t ) 1 ) != xQueueSemaphoreTake( ( g_vfs_mutex ), ( ( TickType_t ) 0xffffffffUL ) ))) {
        err = -1;
        return err;
    }

    del_file(f);

    xQueueGenericSend( ( QueueHandle_t ) ( g_vfs_mutex ), 
# 386 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
   ((void *)0)
# 386 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
   , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
    return ret;
}

int aos_rename(const char *oldpath, const char *newpath)
{
    file_t *f;
    inode_t *node;
    int err, ret = -
# 394 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
                   88
# 394 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                         ;

    if (oldpath == 
# 396 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
                  ((void *)0) 
# 396 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                       || newpath == 
# 396 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
                                     ((void *)0)
# 396 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                                         ) {
        return -
# 397 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
               22
# 397 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                     ;
    }

    if ((( ( BaseType_t ) 1 ) != xQueueSemaphoreTake( ( g_vfs_mutex ), ( ( TickType_t ) 0xffffffffUL ) ))) {
        err = -1;
        return err;
    }

    node = inode_open(oldpath);

    if (node == 
# 407 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
               ((void *)0)
# 407 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                   ) {
        xQueueGenericSend( ( QueueHandle_t ) ( g_vfs_mutex ), 
# 408 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
       ((void *)0)
# 408 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
       , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
        return -
# 409 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
               19
# 409 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                     ;
    }

    f = new_file(node);

    xQueueGenericSend( ( QueueHandle_t ) ( g_vfs_mutex ), 
# 414 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
   ((void *)0)
# 414 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
   , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );

    if (f == 
# 416 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
            ((void *)0)
# 416 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                ) {
        return -
# 417 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
               2
# 417 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                     ;
    }

    if (((node)->type == (VFS_TYPE_FS_DEV))) {
        if ((node->ops.i_fops->rename) != 
# 421 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
                                         ((void *)0)
# 421 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                                             ) {
            ret = (node->ops.i_fops->rename)(f, oldpath, newpath);
        }
    }

    if ((( ( BaseType_t ) 1 ) != xQueueSemaphoreTake( ( g_vfs_mutex ), ( ( TickType_t ) 0xffffffffUL ) ))) {
        err = -1;
        return err;
    }

    del_file(f);

    xQueueGenericSend( ( QueueHandle_t ) ( g_vfs_mutex ), 
# 433 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
   ((void *)0)
# 433 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
   , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
    return ret;
}

aos_dir_t *aos_opendir(const char *path)
{
    file_t *file;
    inode_t *node;
    aos_dir_t *dp = 
# 441 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
                   ((void *)0)
# 441 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                       ;

    if (path == 
# 443 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
               ((void *)0)
# 443 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                   ) {
        return 
# 444 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
              ((void *)0)
# 444 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                  ;
    }

    if (( ( BaseType_t ) 1 ) != xQueueSemaphoreTake( ( g_vfs_mutex ), ( ( TickType_t ) 0xffffffffUL ) )) {
        return 
# 448 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
              ((void *)0)
# 448 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                  ;
    }

    node = inode_open(path);

    if (node == 
# 453 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
               ((void *)0)
# 453 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                   ) {
        xQueueGenericSend( ( QueueHandle_t ) ( g_vfs_mutex ), 
# 454 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
       ((void *)0)
# 454 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
       , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
        return 
# 455 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
              ((void *)0)
# 455 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                  ;
    }

    file = new_file(node);

    xQueueGenericSend( ( QueueHandle_t ) ( g_vfs_mutex ), 
# 460 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
   ((void *)0)
# 460 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
   , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );

    if (file == 
# 462 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
               ((void *)0)
# 462 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                   ) {
        return 
# 463 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
              ((void *)0)
# 463 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                  ;
    }

    if (((node)->type == (VFS_TYPE_FS_DEV))) {
        if ((node->ops.i_fops->opendir) != 
# 467 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
                                          ((void *)0)
# 467 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                                              ) {
            dp = (node->ops.i_fops->opendir)(file, path);
        }
    }

    if (dp == 
# 472 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
             ((void *)0)
# 472 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                 ) {
        if (( ( BaseType_t ) 1 ) != xQueueSemaphoreTake( ( g_vfs_mutex ), ( ( TickType_t ) 0xffffffffUL ) )) {
            return 
# 474 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
                  ((void *)0)
# 474 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                      ;
        }

        del_file(file);

        xQueueGenericSend( ( QueueHandle_t ) ( g_vfs_mutex ), 
# 479 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
       ((void *)0)
# 479 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
       , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
        return 
# 480 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
              ((void *)0)
# 480 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                  ;
    }

    dp->dd_vfs_fd = get_fd(file);
    return dp;
}

int aos_closedir(aos_dir_t *dir)
{
    file_t *f;
    inode_t *node;
    int err, ret = -
# 491 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
                   88
# 491 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                         ;

    if (dir == 
# 493 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
              ((void *)0)
# 493 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                  ) {
        return -
# 494 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
               22
# 494 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                     ;
    }

    f = get_file(dir->dd_vfs_fd);

    if (f == 
# 499 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
            ((void *)0)
# 499 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                ) {
        return -
# 500 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
               2
# 500 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                     ;
    }

    node = f->node;

    if (((node)->type == (VFS_TYPE_FS_DEV))) {
        if ((node->ops.i_fops->closedir) != 
# 506 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
                                           ((void *)0)
# 506 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                                               ) {
            ret = (node->ops.i_fops->closedir)(f, dir);
        }
    }

    if ((( ( BaseType_t ) 1 ) != xQueueSemaphoreTake( ( g_vfs_mutex ), ( ( TickType_t ) 0xffffffffUL ) ))) {
        err = -1;
        return err;
    }

    del_file(f);

    xQueueGenericSend( ( QueueHandle_t ) ( g_vfs_mutex ), 
# 518 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
   ((void *)0)
# 518 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
   , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );

    return ret;
}

aos_dirent_t *aos_readdir(aos_dir_t *dir)
{
    file_t *f;
    inode_t *node;
    aos_dirent_t *ret = 
# 527 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
                       ((void *)0)
# 527 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                           ;

    if (dir == 
# 529 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
              ((void *)0)
# 529 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                  ) {
        return 
# 530 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
              ((void *)0)
# 530 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                  ;
    }

    f = get_file(dir->dd_vfs_fd);
    if (f == 
# 534 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
            ((void *)0)
# 534 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                ) {
        return 
# 535 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
              ((void *)0)
# 535 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                  ;
    }

    node = f->node;

    if (((node)->type == (VFS_TYPE_FS_DEV))) {
        if ((node->ops.i_fops->readdir) != 
# 541 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
                                          ((void *)0)
# 541 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                                              ) {
            ret = (node->ops.i_fops->readdir)(f, dir);
        }
    }

    if (ret != 
# 546 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
              ((void *)0)
# 546 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                  ) {
        return ret;
    }

    return 
# 550 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
          ((void *)0)
# 550 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
              ;
}

int aos_mkdir(const char *path)
{
    file_t *file;
    inode_t *node;
    int err, ret = -
# 557 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
                   88
# 557 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                         ;

    if (path == 
# 559 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
               ((void *)0)
# 559 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                   ) {
        return -
# 560 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
               22
# 560 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                     ;
    }

    if ((( ( BaseType_t ) 1 ) != xQueueSemaphoreTake( ( g_vfs_mutex ), ( ( TickType_t ) 0xffffffffUL ) ))) {
        err = -1;
        return err;
    }

    node = inode_open(path);

    if (node == 
# 570 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
               ((void *)0)
# 570 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                   ) {
        xQueueGenericSend( ( QueueHandle_t ) ( g_vfs_mutex ), 
# 571 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
       ((void *)0)
# 571 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
       , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
        return -
# 572 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
               19
# 572 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                     ;
    }

    file = new_file(node);

    xQueueGenericSend( ( QueueHandle_t ) ( g_vfs_mutex ), 
# 577 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
   ((void *)0)
# 577 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
   , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );

    if (file == 
# 579 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
               ((void *)0)
# 579 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                   ) {
        return -
# 580 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
               2
# 580 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                     ;
    }

    if (((node)->type == (VFS_TYPE_FS_DEV))) {
        if ((node->ops.i_fops->mkdir) != 
# 584 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
                                        ((void *)0)
# 584 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                                            ) {
            ret = (node->ops.i_fops->mkdir)(file, path);
        }
    }

    if ((( ( BaseType_t ) 1 ) != xQueueSemaphoreTake( ( g_vfs_mutex ), ( ( TickType_t ) 0xffffffffUL ) ))) {
        err = -1;
        return err;
    }

    del_file(file);

    xQueueGenericSend( ( QueueHandle_t ) ( g_vfs_mutex ), 
# 596 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
   ((void *)0)
# 596 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
   , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
    return ret;
}

int aos_rmdir(const char *path)
{
    file_t *file;
    inode_t *node;
    int err = -
# 604 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
              88
# 604 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                    ;
    int ret = -
# 605 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
              88
# 605 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                    ;

    if (path == 
# 607 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
               ((void *)0)
# 607 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                   ) {
        return -
# 608 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
               22
# 608 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                     ;
    }

    if ((( ( BaseType_t ) 1 ) != xQueueSemaphoreTake( ( g_vfs_mutex ), ( ( TickType_t ) 0xffffffffUL ) ))) {
        err = -1;
        return err;
    }

    node = inode_open(path);

    if (node == 
# 618 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
               ((void *)0)
# 618 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                   ) {
        xQueueGenericSend( ( QueueHandle_t ) ( g_vfs_mutex ), 
# 619 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
       ((void *)0)
# 619 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
       , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
        return -
# 620 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
               19
# 620 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                     ;
    }

    file = new_file(node);

    xQueueGenericSend( ( QueueHandle_t ) ( g_vfs_mutex ), 
# 625 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
   ((void *)0)
# 625 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
   , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );

    if (file == 
# 627 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
               ((void *)0)
# 627 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                   ) {
        return -
# 628 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
               2
# 628 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                     ;
    }

    if (((node)->type == (VFS_TYPE_FS_DEV))) {
        if ((node->ops.i_fops->rmdir) != 
# 632 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
                                        ((void *)0)
# 632 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                                            ) {
            ret = (node->ops.i_fops->rmdir)(file, path);
        }
    }

    if ((( ( BaseType_t ) 1 ) != xQueueSemaphoreTake( ( g_vfs_mutex ), ( ( TickType_t ) 0xffffffffUL ) ))) {
        err = -1;
        return err;
    }

    del_file(file);

    xQueueGenericSend( ( QueueHandle_t ) ( g_vfs_mutex ), 
# 644 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
   ((void *)0)
# 644 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
   , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
    return ret;
}

void aos_rewinddir(aos_dir_t *dir)
{
    file_t *f;
    inode_t *node;

    if (dir == 
# 653 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
              ((void *)0)
# 653 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                  ) {
        return;
    }

    f = get_file(dir->dd_vfs_fd);

    if (f == 
# 659 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
            ((void *)0)
# 659 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                ) {
        return;
    }

    node = f->node;

    if (((node)->type == (VFS_TYPE_FS_DEV))) {
        if ((node->ops.i_fops->rewinddir) != 
# 666 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
                                            ((void *)0)
# 666 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                                                ) {
            (node->ops.i_fops->rewinddir)(f, dir);
        }
    }

    return;
}

long aos_telldir(aos_dir_t *dir)
{
    file_t *f;
    inode_t *node;
    long ret = 0;

    if (dir == 
# 680 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
              ((void *)0)
# 680 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                  ) {
        return -
# 681 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
               22
# 681 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                     ;
    }

    f = get_file(dir->dd_vfs_fd);

    if (f == 
# 686 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
            ((void *)0)
# 686 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                ) {
        return -
# 687 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
               2
# 687 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                     ;
    }

    node = f->node;

    if (((node)->type == (VFS_TYPE_FS_DEV))) {
        if ((node->ops.i_fops->telldir) != 
# 693 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
                                          ((void *)0)
# 693 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                                              ) {
            ret = (node->ops.i_fops->telldir)(f, dir);
        }
    }
    return ret;
}

void aos_seekdir(aos_dir_t *dir, long loc)
{
    file_t *f;
    inode_t *node;

    if (dir == 
# 705 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
              ((void *)0)
# 705 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                  ) {
        return;
    }

    f = get_file(dir->dd_vfs_fd);

    if (f == 
# 711 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
            ((void *)0)
# 711 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                ) {
        return;
    }

    node = f->node;

    if (((node)->type == (VFS_TYPE_FS_DEV))) {
        if ((node->ops.i_fops->seekdir) != 
# 718 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
                                          ((void *)0)
# 718 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                                              ) {
            (node->ops.i_fops->seekdir)(f, dir, loc);
        }
    }
}

int aos_statfs(const char *path, struct statfs *buf)
{
    file_t *file;
    inode_t *node;
    int err = -
# 728 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
              88
# 728 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                    ;
    int ret = -
# 729 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
              88
# 729 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                    ;

    if (path == 
# 731 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
               ((void *)0)
# 731 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                   ) {
        return -
# 732 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
               22
# 732 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                     ;
    }

    if ((err = xQueueSemaphoreTake( ( g_vfs_mutex ), ( ( TickType_t ) 0xffffffffUL ) )) != 0) {
        return err;
    }

    node = inode_open(path);

    if (node == 
# 741 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
               ((void *)0)
# 741 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                   ) {
        xQueueGenericSend( ( QueueHandle_t ) ( g_vfs_mutex ), 
# 742 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
       ((void *)0)
# 742 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
       , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
        return -
# 743 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
               19
# 743 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                     ;
    }

    file = new_file(node);

    xQueueGenericSend( ( QueueHandle_t ) ( g_vfs_mutex ), 
# 748 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
   ((void *)0)
# 748 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
   , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );

    if (file == 
# 750 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
               ((void *)0)
# 750 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                   ) {
        return -
# 751 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
               2
# 751 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                     ;
    }

    if (((node)->type == (VFS_TYPE_FS_DEV))) {
        if ((node->ops.i_fops->statfs) != 
# 755 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
                                         ((void *)0)
# 755 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                                             ) {
            ret = (node->ops.i_fops->statfs)(file, path, buf);
        }
    }

    if ((err = xQueueSemaphoreTake( ( g_vfs_mutex ), ( ( TickType_t ) 0xffffffffUL ) )) != 0) {
        return err;
    }

    del_file(file);

    xQueueGenericSend( ( QueueHandle_t ) ( g_vfs_mutex ), 
# 766 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
   ((void *)0)
# 766 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
   , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );

    return ret;
}

int aos_access(const char *path, int amode)
{
    file_t *file;
    inode_t *node;
    int err = -
# 775 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
              88
# 775 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                    ;
    int ret = -
# 776 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
              88
# 776 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                    ;

    if (path == 
# 778 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
               ((void *)0)
# 778 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                   ) {
        return -
# 779 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
               22
# 779 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                     ;
    }

    if ((( ( BaseType_t ) 1 ) != xQueueSemaphoreTake( ( g_vfs_mutex ), ( ( TickType_t ) 0xffffffffUL ) )) != 0) {
        return err;
    }

    node = inode_open(path);

    if (node == 
# 788 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
               ((void *)0)
# 788 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                   ) {
        xQueueGenericSend( ( QueueHandle_t ) ( g_vfs_mutex ), 
# 789 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
       ((void *)0)
# 789 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
       , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
        return -
# 790 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
               19
# 790 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                     ;
    }

    file = new_file(node);

    xQueueGenericSend( ( QueueHandle_t ) ( g_vfs_mutex ), 
# 795 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
   ((void *)0)
# 795 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
   , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );

    if (file == 
# 797 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
               ((void *)0)
# 797 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                   ) {
        return -
# 798 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3
               2
# 798 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                     ;
    }

    if (((node)->type == (VFS_TYPE_FS_DEV))) {
        if ((node->ops.i_fops->access) != 
# 802 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
                                         ((void *)0)
# 802 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
                                             ) {
            ret = (node->ops.i_fops->access)(file, path, amode);
        }
    }

    if ((( ( BaseType_t ) 1 ) != xQueueSemaphoreTake( ( g_vfs_mutex ), ( ( TickType_t ) 0xffffffffUL ) )) != 0) {
        return err;
    }

    del_file(file);

    xQueueGenericSend( ( QueueHandle_t ) ( g_vfs_mutex ), 
# 813 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c" 3 4
   ((void *)0)
# 813 "/home/anh/Desktop/wb2/Ai-Thinker-WB2/components/fs/vfs/src/vfs.c"
   , ( ( TickType_t ) 0U ), ( ( BaseType_t ) 0 ) );
    return ret;
}
