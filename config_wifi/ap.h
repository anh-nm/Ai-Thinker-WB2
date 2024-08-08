#ifndef _AP_H_
#define _AP_H_

#include <FreeRTOS.h>
#include <task.h>
#include <stdio.h>
#include <string.h>
#include <aos/yloop.h>
#include <aos/kernel.h>
#include <lwip/tcpip.h>
#include <wifi_mgmr_ext.h>
#include <hal_wifi.h>
#include <lwip/netif.h>
#include <lwip/inet.h>
#include <blog.h>

#define AP_SSID "ai-thinker"
#define AP_PWD "12345678"

#define TAG "softAP"


void event_cb_wifi_event(input_event_t* event, void* private_data);
void proc_main_entry(void* pvParameters);


#endif /*_AP_H_*/