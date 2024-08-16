#ifndef _BUTTON_H_
#define _BUTTON_H_

/*Include*/
#include <bl_gpio.h>
#include <stdio.h>
#include <FreeRTOS.h>
#include <task.h>
#include <timers.h>
#include <lwip/sockets.h>

#include "hardware_config.h"
#include "ap.h"
#include "mqtt.h"
#include "uart.h"

#define LED_ON                      1
#define LED_OFF                     0
#define F_BLINK_LED                 200

typedef enum {
    NO_CLICK = 0,
    CLICK,
    CONFIG_AP,
    CONFIG_BLE,
    HOLD_BUTTON,
    HOLD_BUTTON_LONG
} button_states;

#define WIFI_CONFIG_MODE_BIT                BIT0
#define TIME_AP                             5000
#define TIME_BLE                            10000

uint8_t get_button_status(void);
uint8_t get_led_status(void);

button_states button_state(void);
void button_manual_task(void *param);

void set_is_config_ap(uint8_t value);
void set_is_config_ble(uint8_t value);
void reset_flag_ap(uint8_t value);

#endif /*_BUTTON_H_*/