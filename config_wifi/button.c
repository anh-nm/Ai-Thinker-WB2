
//#include <event_groups.h>
//#include "nvs_flash.h"
#include "button.h"


static uint8_t led_status = LED_OFF;
static uint8_t IS_CONFIG  = 0;
static uint8_t flag = 0;

extern int get_g_wifi_sta_is_connected(void);
extern void wifi_stop_connect(void);

void set_is_config(uint8_t value){
    IS_CONFIG = value;
}

void reset_flag(uint8_t value){
    flag = 0;
}

static void enable_hardware(void){

    bl_gpio_enable_input(BUTTON3, 1, 0);

    bl_gpio_enable_output(LED1, 0, 0);
    bl_gpio_enable_output(LED2, 0, 0);
    bl_gpio_enable_output(LED3, 0, 0);
    bl_gpio_enable_output(LED4, 0, 0);
}

void blink_led_200(void){
    static uint32_t old_tick_ms = 0;

    if(xTaskGetTickCount() - old_tick_ms < F_BLINK_LED){
        return;
    }

    old_tick_ms = xTaskGetTickCount();

    led_status = !led_status;
    bl_gpio_output_set(LED3, led_status);
    old_tick_ms = xTaskGetTickCount();
    
}

uint8_t get_button_status(void){
    return bl_gpio_input_get_value(BUTTON3);
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
            //printf("\r\nCLICK\r\n");
            status = NO_CLICK;
            //return CLICK;
            break;

        case CONFIG:
            //printf("\r\nCONFIG\r\n");
            if(IS_CONFIG == 0){
                status = NO_CLICK;
            }
            //return CONFIG;
            break;

        case HOLD_BUTTON:
            if(get_button_status() == 0){
                status = HOLD_BUTTON_LONG;
                time_long_click = xTaskGetTickCount();
            }
            break;

        case HOLD_BUTTON_LONG:
            if(get_button_status() == 1){
                if(xTaskGetTickCount() - time_long_click >= TIME_BUTTON_PRESS_CONFIG){
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

    enable_hardware();

    uint8_t button_status = 0;
    

    while (1){
        button_status = button_state();
        if(button_status == CLICK){
            printf("\r\nPRINT CLICK\r\n");
            led_status = !led_status;
            bl_gpio_output_set(LED3, led_status);
        }
        if(button_status == CONFIG){
            //printf("\r\nGET CONFIG\r\n");
            IS_CONFIG = 1;
            blink_led_200();
            if(flag == 0){
                if(get_g_wifi_sta_is_connected()){
                    mqtt_stop();
                    wifi_stop_connect();
                }
                wifi_ap_start();
                //vTaskDelay(500);
                flag = 1;
            }
            
        }
        vTaskDelay(50);
    }
}
