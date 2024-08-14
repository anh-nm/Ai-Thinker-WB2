
#ifndef _WIFI_H_
#define _WIFI_H_

#include <FreeRTOS.h>
#include <task.h>
#include <stdio.h>  
#include <string.h>
#include <aos/yloop.h>
#include <aos/kernel.h>
#include <lwip/tcpip.h>
#include <wifi_mgmr_ext.h>
#include <hal_wifi.h>
#include <bl_sys.h>
#include <timers.h>
#include <stdlib.h>
#include <queue.h>
#include "blog.h"
#include "mqtt.h"
#include "http_server.h"
#include "button.h"
#include "flash.h"

#define WIFI_RECONN_INTERVAL_SEC 15
#define WIFI_RECONN_REPEAT_TIMES 10

#define SSID_LEN        34
#define PASSWORD_LEN    67

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
//void event_cb_wifi_event(input_event_t* event, void* private_data);
void wifi_execute(void *pvParameters);
void listTask(void);

#endif /*_WIFI_H_*/