
#include "wifi.h"

#define STA_SSID "RD_Hunonic_Mesh"
#define STA_PASSWORD "66668888"

//static wifi_interface_t g_wifi_sta_interface = NULL;
static int g_wifi_sta_is_connected = 0;
//wifi_sta_reconnect_t sta_reconn_params = {15, 10}; // set connection interval = 15, reconntction times = 10

static wifi_conf_t conf =
{
    .country_code = "CN",
};


int wifi_sta_connect(char* ssid, char* password){

    // g_wifi_sta_interface = wifi_mgmr_sta_enable();

    // if (g_wifi_sta_is_connected == 1)
    // {
    //     printf("sta has connect\n");
    //     return 0;
    // }
    // else
    // {
    //     wifi_mgmr_sta_autoconnect_enable();
    //     printf("connect to wifi %s\n", ssid);
    //     return wifi_mgmr_sta_connect(g_wifi_sta_interface, ssid, password, NULL, NULL, 0, 0);
    // }
    wifi_interface_t wifi_interface;
    wifi_interface = wifi_mgmr_sta_enable();
    wifi_mgmr_sta_connect(wifi_interface, ssid, password, NULL, NULL, 0, 0);
    return 0;
}

// void wifi_stop_connect(void){
//     if(g_wifi_sta_is_connected){
//         wifi_mgmr_sta_disconnect();
//         g_wifi_sta_is_connected = 0;
//         printf("\r\n<<<<<<<<<<<<<<<<<<<<<<<< DISCONNECTED SUCCESSFULLY <<<<<<<<<<<<<<<<<<<<<<<<<<<\r\n");

//     }else{
//         printf("\r\n<<<<<<<<<<<<<<<<< NO ACTIVE WIFI CONNECTTION TO DISCONNECT <<<<<<<<<<<<<<<<<<<\r\n");

//     }
// }



void event_cb_wifi_event(input_event_t* event, void* private_data)
{
    static char *ssid;
    static char *password;

    printf("[APP] [EVT] event->code %d\r\n", event->code);

    printf("[SYS] Memory left is %d Bytes\r\n", xPortGetFreeHeapSize());

    switch (event->code)
    {
    case CODE_WIFI_ON_AP_STARTED:   
        printf("[APP] [EVT] AP INIT DONE %lld\r\n", aos_now_ms());
        printf("\r\n<<<<<<<<<<<<<<<<<<<<<<<< START SOFT AP OK <<<<<<<<<<<<<<<<<<<<\r\n");
        //xTaskCreate(http_server_start, (char *)"http server", 1024 * 4, NULL, 15, NULL);
        break;

    case CODE_WIFI_ON_AP_STOPPED:
        printf("[APP] [EVT] AP STOP DONE %lld\r\n", aos_now_ms());
        printf("\r\n<<<<<<<<<<<<<<<<<<<<<<<< STOP SOFT AP OK <<<<<<<<<<<<<<<<<<<<<\r\n");
        set_is_config(0);
        reset_flag(0); 
        break;

    case CODE_WIFI_ON_AP_STA_ADD:
        blog_info("<<<<<<<<< station connent ap <<<<<<<<<<<");
        printf("\r\n<<<<<<<<<<<<<<<<<<<<<<<< CONNECT AP <<<<<<<<<<<<<<<<<<<<\r\n");
        xTaskCreate(http_server_start, (char *)"http server", 1024 * 4, NULL, 15, NULL);
        break;

    case CODE_WIFI_ON_AP_STA_DEL:
        blog_info("<<<<<<<<< station disconnet ap <<<<<<<<<<<");
        printf("\r\n<<<<<<<<<<<<<<<<<<<<<<<< DISCONNECT AP <<<<<<<<<<<<<<<<<<<<\r\n");
        break;

    case CODE_WIFI_ON_INIT_DONE:
        printf("[APP] [EVT] INIT DONE %lld\r\n", aos_now_ms());
        wifi_mgmr_start_background(&conf);
        //wifi_sta_connect(STA_SSID, STA_PASSWORD);  
        break;

    case CODE_WIFI_ON_MGMR_DONE:
        printf("[APP] [EVT] MGMR DONE %lld\r\n", aos_now_ms());
        break;

    case CODE_WIFI_ON_SCAN_DONE:
        printf("[APP] [EVT] SCAN Done %lld\r\n", aos_now_ms());
        // wifi_mgmr_cli_scanlist();
        break;

    case CODE_WIFI_ON_DISCONNECT:
        //g_wifi_sta_is_connected = 0;
        printf("wifi sta disconnected\n");
        printf("[APP] [EVT] disconnect %lld\r\n", aos_now_ms());
        break;

    case CODE_WIFI_ON_CONNECTING:
        printf("[APP] [EVT] Connecting %lld\r\n", aos_now_ms());  
        break;

    case CODE_WIFI_CMD_RECONNECT:
        printf("[APP] [EVT] Reconnect %lld\r\n", aos_now_ms());
        break;

    case CODE_WIFI_ON_CONNECTED:
        printf("wifi sta connected\n");
        printf("[APP] [EVT] connected %lld\r\n", aos_now_ms());
        break;

    case CODE_WIFI_ON_PRE_GOT_IP:
        printf("[APP] [EVT] connected %lld\r\n", aos_now_ms());
        break;

    case CODE_WIFI_ON_GOT_IP:
        printf("WIFI STA GOT IP\n");
        printf("[APP] [EVT] GOT IP %lld\r\n", aos_now_ms());
        /* create http server task */
        //wifi_ap_stop();
        mqtt_start();
    
        break;

    case CODE_WIFI_ON_PROV_SSID:
        // printf("[APP] [EVT] [PROV] [SSID] %lld: %s\r\n",
        //        aos_now_ms(),
        //        event->value ? (const char *)event->value : "UNKNOWN");
        // if (ssid)
        // {
        //     vPortFree(ssid);
        //     ssid = NULL;
        // }
        // ssid = (char *)event->value;
        break;

    case CODE_WIFI_ON_PROV_BSSID:
        printf("[APP] [EVT] [PROV] [BSSID] %lld: %s\r\n",
               aos_now_ms(),
               event->value ? (const char *)event->value : "UNKNOWN");
        if (event->value)
        {
            vPortFree((void *)event->value);
        }
        break;

    case CODE_WIFI_ON_PROV_PASSWD: 
        // printf("[APP] [EVT] [PROV] [PASSWD] %lld: %s\r\n", aos_now_ms(),
        //        event->value ? (const char *)event->value : "UNKNOWN");
        // if (password)
        // {
        //     vPortFree(password);
        //     password = NULL;
        // }
        // password = (char *)event->value;    
        break;

    case CODE_WIFI_ON_PROV_CONNECT:
        printf("connecting to %s:%s...\r\n", ssid, password);
        break;

    case CODE_WIFI_ON_PROV_DISCONNECT:
        printf("[APP] [EVT] [PROV] [DISCONNECT] %lld\r\n", aos_now_ms());
        break;

    default:
        printf("[APP] [EVT] Unknown code %u, %lld\r\n", event->code, aos_now_ms());
        /*nothing*/
    
    }
}


// static void proc_main_entry(void* param){
//     aos_register_event_filter(EV_WIFI, event_cb_wifi_event, NULL);
//     hal_wifi_start_firmware_task();
//     aos_post_event(EV_WIFI, CODE_WIFI_ON_INIT_DONE, 0);
//     vTaskDelete(NULL);
// }

void wifi_execute(void *pvParameters)
{
    aos_register_event_filter(EV_WIFI, event_cb_wifi_event, NULL);
    // static uint8_t stack_wifi_init = 0;

    // if (1 == stack_wifi_init)
    // {
    //     printf("Wi-Fi Stack Started already!!!\r\n");
    //     return;
    // }
    // stack_wifi_init = 1;
    printf("Wi-Fi init successful\r\n");
    hal_wifi_start_firmware_task();
    /*Trigger to start Wi-Fi*/
    aos_post_event(EV_WIFI, CODE_WIFI_ON_INIT_DONE, 0);

    vTaskDelete(NULL);
}


