
//#include <event_groups.h>
//#include "nvs_flash.h"
#include "button.h"


//extern EventGroupHandler_t event_group;
//extern TimerHandle_t button_timer;
TaskHandle_t mainTaskHandle = NULL;

static uint8_t led_status = LED_OFF;
static uint8_t IS_CONFIG  = 0;

void button_interrupt_handler(void *arg);

void button_manual_task(void *param);

//uint8_t button_state();



// void button_interrupt_handler(void *arg){

//     EventBits_t bits = xEventGroupGetBitsFromISR(event_group);
//     if(!(bits & WIFI_CONFIG_MODE_BIT)){
//         xTimerStartFromISR(button_timer, NULL);
//     }
// }

// void button_timer_callback(TimerHandle_t xTimer){
//     xEventGroupSetBits(event_group, WIFI_CONFIG_MODE_BIT);
// }

// void led_task(void *param) {
//     bl_gpio_enable_input(BUTTON3, 1, 0); //Khi không nhấn, trạng thái nút luôn ở mức cao
//     bl_gpio_enable_output(LED3, 0, 0);

//     while (1) {
//         EventBits_t bits = xEventGroupWaitBits(event_group, WIFI_CONFIG_MODE_BIT, pdFALSE, pdFALSE, portMAX_DELAY);
//         if (bits & WIFI_CONFIG_MODE_BIT) {
//             bl_gpio_output_set(LED3, 1);
//             vTaskDelay(pdMS_TO_TICKS(100));
//             bl_gpio_output_set(LED3, 0);
//             vTaskDelay(pdMS_TO_TICKS(100));
//         }
//     }
// }

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

    bl_gpio_enable_input(BUTTON3, 1, 0);
    bl_gpio_enable_output(LED3, 0, 0);

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

            // aos_register_event_filter(EV_WIFI, event_cb_wifi_event, NULL);
            // hal_wifi_start_firmware_task();
            // aos_post_event(EV_WIFI, CODE_WIFI_ON_INIT_DONE, 0);
            // vTaskDelete(NULL);
            if(mainTaskHandle == NULL){
                xTaskCreate(proc_main_entry, (char*)"main_entry", 1024, NULL, 15, &mainTaskHandle);
            }    
        }
        vTaskDelay(50);
    }
}
