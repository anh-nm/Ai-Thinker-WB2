
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
//#include <event_groups.h>


// #define WIFI_CONFIG_MODE_BIT        BIT0;
// //extern button_timer;
// extern void button_timer_callback(TimerHandle_t xTimer);
// extern EventGroupHandler_t event_group;
// extern TimerHandle_t button_timer;

//extern static void event_cb_wifi_event(input_event_t* event, void* private_data);

char ssid[32];
char password[64];

//static EventGroupHandler_t event_group


// static wifi_conf_t conf =
// {
//     country_code = "CN"
// };

// //static void proc_main_entry(void* param);

// static void wifi_sta_connect(void /*char* ssid, char* password*/){
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
//             wifi_sta_connect();
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


// static void proc_main_entry(void* param){
//     aos_register_event_filter(EV_WIFI, event_cb_wifi_event, NULL);
//     hal_wifi_start_firmware_task();
//     aos_post_event(EV_WIFI, CODE_WIFI_ON_INIT_DONE, 0);
//     vTaskDelete(NULL);
// }


// void wifi_config_task(void *param) {
//     uint32_t server_fd, new_socket;
//     struct sockaddr_in address;
//     uint16_t addrlen = sizeof(address);
//     uint8_t opt = 1;

//     EventBits_t bits = xEventGroupWaitBits(event_group, WIFI_CONFIG_MODE_BIT, pdFALSE, pdFALSE, portMAX_DELAY);
//     if (bits & WIFI_CONFIG_MODE_BIT) {
//         printf("Entering Wifi config \r\n");

//         if ((server_fd = socket(AF_INET, SOCK_STREAM, 0)) == 0) {
//             perror("socket failed");
//             return;
//         }
//         if (setsockopt(server_fd, SOL_SOCKET, SO_REUSEADDR | SO_REUSEPORT, &opt, sizeof(opt))) {
//             perror("setsockopt");
//             return;
//         }

//         address.sin_family = AF_INET;
//         address.sin_addr.s_addr = INADDR_ANY;
//         address.sin_port = htons(8080);

//         if (bind(server_fd, (struct sockaddr *)&address, sizeof(address)) < 0) {
//             perror("bind failed");
//             return;
//         }
//         if (listen(server_fd, 3) < 0) {
//             perror("listen");
//             return;
//         }
//         if ((new_socket = accept(server_fd, (struct sockaddr *)&address, (socklen_t *)&addrlen)) < 0) {
//             perror("accept");
//             return;
//         }

//         read(new_socket, ssid, sizeof(ssid));
//         read(new_socket, password, sizeof(password));
//         printf("Received SSID: %s\r\n", ssid);
//         printf("Received Password: %s\r\n", password);

//         // Áp dụng cấu hình wifi
//         aos_register_event_filter(EV_WIFI, event_cb_wifi_event, NULL);
//         hal_wifi_start_firmware_task();
//         aos_post_event(EV_WIFI, CODE_WIFI_ON_INIT_DONE, 0);
//         vTaskDelete(NULL);
//     }
// }