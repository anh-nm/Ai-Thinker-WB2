
#ifndef _UART_H_
#define _UART_H_

#include "ble.h"
#include <bl_sys.h>
#include "ble_lib_api.h"
#include <hosal_uart.h>
#include <blog.h>
#include <hosal_timer.h>

void TaskUart(void *param);

#endif /*_UART_H_*/