
//#include <event_groups.h>
//#include "nvs_flash.h"
#include "button.h"

extern int get_g_wifi_sta_is_connected(void);
extern void wifi_stop_connect(void);
extern void read_ssid_password_from_flash(void);
extern void set_stop_http_server(uint8_t value);
extern void listTask(void);

static uint8_t led_status = LED_OFF;
// static uint8_t IS_CONFIG_AP  = 0;
// static uint8_t IS_CONFIG_BLE = 0;
static uint8_t flag_ap = 0;
static uint8_t flag_ble = 0;


// void set_is_config_ap(uint8_t value){
//     IS_CONFIG_AP = value;
// }

// void set_is_config_ble(uint8_t value){
//     IS_CONFIG_BLE = value;
// }

void set_flag_ap(uint8_t value){
    flag_ap = value;
}

void set_flag_ble(uint8_t value){
    flag_ble = value;
}

uint8_t get_led_status(void){
    return led_status;
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

void blink_led_100(void){
    static uint32_t old_tick_ms = 0;

    if(xTaskGetTickCount() - old_tick_ms < 100){
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

        case CONFIG_AP:
            //printf("\r\nCONFIG\r\n");
            //if(IS_CONFIG_AP == 0){
                status = NO_CLICK;
            //}
            //return CONFIG;
            break;

        case CONFIG_BLE:
            //printf("\r\nCONFIG BLUETOOTH");
            //if(IS_CONFIG_BLE == 0){
                printf("\r\nCONFIG DONE\r\n");
                status = NO_CLICK;
            //}
            break;

        case HOLD_BUTTON:
            if(get_button_status() == 0){
                status = HOLD_BUTTON_LONG;
                time_long_click = xTaskGetTickCount();
            }
            break;

        case HOLD_BUTTON_LONG:
            if(xTaskGetTickCount() - time_long_click == TIME_BLE){
                printf("\r\nYOU HOLD BUTTON 10s\r\n");
            }
            if(get_button_status() == 1){
                if(xTaskGetTickCount() - time_long_click >= TIME_AP && xTaskGetTickCount() - time_long_click < TIME_BLE){
                    status = CONFIG_AP;
                    time_long_click = 0;

                }else if(xTaskGetTickCount() - time_long_click >= TIME_BLE){
                    status = CONFIG_BLE;
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

static void check_stop_all_before_ap(void){
    if(get_stop_ble()){
        apps_ble_stop();
        set_stop_ble(0);
        set_start_stop(0);
        flag_ble = 0;
    }
    if(get_g_wifi_sta_is_connected()){
        mqtt_stop();
        wifi_stop_connect();
    }
}

static void check_stop_all_before_ble(void){
    blog_info("get flag stop ap: %d", get_flag_stop_ap())
    if(get_flag_stop_ap()){
        set_stop_http_server(1);
        wifi_ap_stop();
    }
    if(get_g_wifi_sta_is_connected()){
        mqtt_stop();
        wifi_stop_connect();
    }
}


void button_manual_task(void *param){

    enable_hardware();

    uint8_t button_status = 0;
    

    while (1){

        /* check stop ble  */
        if (get_start_stop())
        {
            /* stop */
            apps_ble_stop();
            set_stop_ble(0);
            set_start_stop(0);
            flag_ble = 0;
            read_ssid_password_from_flash();
        }
        button_status = button_state();
        switch(button_status){
            case CLICK:
            {
                printf("\r\nPRINT CLICK\r\n");
                blog_info(" click ");
                led_status = !led_status;
                bl_gpio_output_set(LED3, led_status);
                //listTask();
                break;
            }
            case CONFIG_AP:
            {
                //printf("\r\nGET CONFIG\r\n");
                blog_info(" ap config ");
                //IS_CONFIG_AP = 1;
                //blink_led_200();
                if(flag_ap == 0){
                    check_stop_all_before_ap();
                    wifi_ap_start();
                    //vTaskDelay(500);
                    flag_ap = 1;
                }
                break;
            }
            case CONFIG_BLE:
            {
                //IS_CONFIG_BLE = 1;
                blog_info(" ble config ");
                //blink_led_100();
                if(!flag_ble){
                    //wifi_stop_connect();
                    check_stop_all_before_ble();
                    blog_info(" create ble task ");
                    xTaskCreate(BLE_Task, (char *)"BLE_Task", 1024, NULL, 15, NULL);
                    flag_ble = 1;
                }
                break;

            }
        }
        
        vTaskDelay(50);
    }
}
