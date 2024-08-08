
//#include "ap.h"
#include "button.h"
#include <bl_sys.h>
#include <cJSON.h>


// #define ROUTER_SSID "RD VNPT"
// #define ROUTER_PWD "66668888"

//extern void mqtt_start(void);
//extern void button_task(void *param);
//extern void wifi_config_task(void *param);
//extern void led_task(void *param);



//EventGroupHandler_t event_group;
//TimerHandle_t button_timer;

// static wifi_conf_t conf =
// {
//     .country_code = "CN",
// };

// static void wifi_sta_connect(char* ssid, char* password)
// {
//     wifi_interface_t wifi_interface;

//     wifi_interface = wifi_mgmr_sta_enable();
//     wifi_mgmr_sta_connect(wifi_interface, ssid, password, NULL, NULL, 0, 0);
// }

// static void event_cb_wifi_event(input_event_t* event, void* private_data)
// {
//     switch (event->code)
//     {
//         case CODE_WIFI_ON_INIT_DONE:
//         {
//             blog_info("[APP] [EVT] INIT DONE %lld", aos_now_ms());
//             wifi_mgmr_start_background(&conf);
//         }
//         break;
//         case CODE_WIFI_ON_MGMR_DONE:
//         {
//             blog_info("[APP] [EVT] MGMR DONE %lld", aos_now_ms());
//             wifi_sta_connect(ROUTER_SSID, ROUTER_PWD);
//         }
//         break;
//         case CODE_WIFI_ON_SCAN_DONE:
//         {
//             blog_info("[APP] [EVT] SCAN Done %lld", aos_now_ms());
//         }
//         break;
//         case CODE_WIFI_ON_DISCONNECT:
//         {
//             blog_info("[APP] [EVT] disconnect %lld", aos_now_ms());
//         }
//         break;
//         case CODE_WIFI_ON_CONNECTING:
//         {
//             blog_info("[APP] [EVT] Connecting %lld", aos_now_ms());
//         }
//         break;
//         case CODE_WIFI_CMD_RECONNECT:
//         {
//             blog_info("[APP] [EVT] Reconnect %lld", aos_now_ms());
//         }
//         break;
//         case CODE_WIFI_ON_CONNECTED:
//         {
//             blog_info("[APP] [EVT] connected %lld", aos_now_ms());
//         }
//         break;
//         case CODE_WIFI_ON_PRE_GOT_IP:
//         {
//             blog_info("[APP] [EVT] connected %lld", aos_now_ms());
//         }
//         break;
//         case CODE_WIFI_ON_GOT_IP:
//         {
//             blog_info("[APP] [EVT] GOT IP %lld", aos_now_ms());
//             blog_info("[SYS] Memory left is %d Bytes", xPortGetFreeHeapSize());
//             mqtt_start();
//         }
//         break;
//         case CODE_WIFI_ON_PROV_SSID:
//         break;
//         case CODE_WIFI_ON_PROV_BSSID:
//         {
//             blog_info("[APP] [EVT] [PROV] [BSSID] %lld: %s",
//                    aos_now_ms(),
//                    event->value ? (const char*)event->value : "UNKNOWN");
//             if (event->value)
//             {
//                 vPortFree((void*)event->value);
//             }
//         }
//         break;
//         case CODE_WIFI_ON_PROV_PASSWD:
//         break;
//         case CODE_WIFI_ON_PROV_CONNECT:
//         break;
//         case CODE_WIFI_ON_PROV_DISCONNECT:
//         {
//             blog_info("[APP] [EVT] [PROV] [DISCONNECT] %lld", aos_now_ms());
//         }
//         break;
//         default:
//         {
//             blog_info("[APP] [EVT] Unknown code %u, %lld", event->code, aos_now_ms());
//             /*nothing*/
//         }
//     }
// }

// static void proc_main_entry(void* pvParameters)
// {
//     aos_register_event_filter(EV_WIFI, event_cb_wifi_event, NULL);
//     hal_wifi_start_firmware_task();
//     aos_post_event(EV_WIFI, CODE_WIFI_ON_INIT_DONE, 0);
//     vTaskDelete(NULL);
// }

void main()
{
    blog_set_level_log_component(BLOG_LEVEL_WARN, "tcp");
    blog_set_level_log_component(BLOG_LEVEL_WARN, "axk_mqtt");
    blog_set_level_log_component(BLOG_LEVEL_WARN, "tcp_transport"); 
    puts("[OS] Starting TCP/IP Stack...");
    tcpip_init(NULL, NULL);

    // nvs_flash_init();
    // tcpip_adapter_init();
    // esp_event_loop_create_default();

    // event_group = xEventGroupCreate();
    // button_timer = xTimerCreate("ButtonTimer", pdMS_TO_TICKS(BUTTON_PRESS_TIME_MS), pdFALSE, (void *)0, button_timer_callback);

    puts("[OS] button_manual_task task...");
    //xTaskCreate(proc_main_entry, (char*)"main_entry", 1024, NULL, 15, NULL);
    xTaskCreate(button_manual_task, "button_manual_task", 2048, NULL, 15, NULL);
}