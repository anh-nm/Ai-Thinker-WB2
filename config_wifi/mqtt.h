
#ifndef _MQTT_H_
#define _MQTT_H_

#include <stdio.h>
#include <FreeRTOS.h>
#include <task.h>
#include <mqtt_client.h>
#include <cJSON.h> //Thư viện xử lý JSON
#include <ctype.h>
#include <bl_gpio.h>
#include "blog.h"
#include "hardware_config.h"



void mqtt_start(void);
void button_task(void *param);
void control_button(cJSON *Switch, cJSON *getctr);

#endif /*_MQTT_H_*/