
#include "wifi.h"


static wifi_interface_t g_wifi_sta_interface = NULL;
static int g_wifi_sta_is_connected = 0;
static uint8_t is_start = 1;

static wifi_conf_t conf =
{
    .country_code = "CN",
};

static char* ssid[SSID_LEN];
static char* password[PASSWORD_LEN];

int get_g_wifi_sta_is_connected(void){
    return g_wifi_sta_is_connected;
}

void get_ssid_password(char* re_ssid, char* re_password){
    memset(ssid, 0, SSID_LEN);
    memset(password, 0, PASSWORD_LEN);

    memcpy(ssid, re_ssid, strlen(re_ssid));
    memcpy(password, re_password, strlen(re_password));
}


int wifi_sta_connect(char* re_ssid, char* re_password){

    wifi_mgmr_sta_autoconnect_enable();
    g_wifi_sta_interface = wifi_mgmr_sta_enable();
    wifi_mgmr_sta_connect(g_wifi_sta_interface, re_ssid, re_password, NULL, NULL, 0, 0);
    g_wifi_sta_is_connected = 1;
    printf("\r\n<<<<<<<<<<<<<<<<<<<<<<<< CONNECTED SUCCESSFULLY <<<<<<<<<<<<<<<<<<<<<<<<<<<\r\n");
    return 0;
}

void wifi_stop_connect(void){
    int i;
    int state;

    if (g_wifi_sta_interface)
    {
        wifi_mgmr_sta_autoconnect_disable();
        /*XXX Must make sure sta is already disconnect, otherwise sta disable won't work*/
        vTaskDelay(1000);

        wifi_mgmr_sta_disconnect();
        for (i = 0; i < 200; i++)
        {
            wifi_mgmr_state_get(&state);
            if (state == WIFI_STATE_IDLE || state == WIFI_STATE_WITH_AP_IDLE ||
                state == WIFI_STATE_DISCONNECT || state == WIFI_STATE_WITH_AP_DISCONNECT)
                break;
            vTaskDelay(100);
        }

        wifi_mgmr_sta_disable(NULL);
        for (i = 0; i < 200; i++)
        {
            wifi_mgmr_state_get(&state);
            if (state == WIFI_STATE_IDLE || state == WIFI_STATE_WITH_AP_IDLE)
                break;
            vTaskDelay(100);
        }

        //mqtt_stop();

        printf("\r\n                DONE                \r\n");
        g_wifi_sta_interface = NULL;
        // g_wifi_sta_is_connected = 0;
    }
    listTask();
}

void wifi_reconnect(void);



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
        BaseType_t result = xTaskCreate(http_server_start, (char *)"http server", 1024 * 4, NULL, 15, NULL);

        if (result == pdPASS) {
            blog_info("Task created successfully");
        } else {
            blog_error("Task creation failed with error code %d", result);
        }

        break;

    case CODE_WIFI_ON_AP_STOPPED:
        printf("[APP] [EVT] AP STOP DONE %lld\r\n", aos_now_ms());
        printf("\r\n<<<<<<<<<<<<<<<<<<<<<<<< STOP SOFT AP OK <<<<<<<<<<<<<<<<<<<<<\r\n");
        set_is_config_ap(0);
        reset_flag_ap(0); 
        break;

    case CODE_WIFI_ON_AP_STA_ADD:
        blog_info("<<<<<<<<< station connent ap <<<<<<<<<<<");
        printf("\r\n<<<<<<<<<<<<<<<<<<<<<<<< CONNECT AP <<<<<<<<<<<<<<<<<<<<\r\n");

        break;

    case CODE_WIFI_ON_AP_STA_DEL:
        blog_info("<<<<<<<<< station disconnet ap <<<<<<<<<<<");
        printf("\r\n<<<<<<<<<<<<<<<<<<<<<<<< DISCONNECT AP <<<<<<<<<<<<<<<<<<<<\r\n");
        break;

    case CODE_WIFI_ON_INIT_DONE:
        printf("[APP] [EVT] INIT DONE %lld\r\n", aos_now_ms());
        wifi_mgmr_start_background(&conf);
        // if(is_start){
        //     read_ssid_password_from_flash();
        //     is_start = 0;
        // }

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
        printf("\r\n<<<<<<<<<<<<<<<<<<<<<< wifi sta disconnected <<<<<<<<<<<<<<<<<<<<<\r\n");
        printf("[APP] [EVT] disconnect %lld\r\n", aos_now_ms());
        mqtt_stop();
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
        /* start mqtt */
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
    blog_info("Wi-Fi init successful");
    hal_wifi_start_firmware_task();
    /*Trigger to start Wi-Fi*/
    aos_post_event(EV_WIFI, CODE_WIFI_ON_INIT_DONE, 0);

    vTaskDelete(NULL);
}


void listTask(void){
    UBaseType_t uxArraySize, x;
    TaskStatus_t *pxTaskStatusArray;
    volatile UBaseType_t uxTaskNum;

    uxArraySize = uxTaskGetNumberOfTasks();
    pxTaskStatusArray = pvPortMalloc(uxArraySize * sizeof(TaskStatus_t));

    if (pxTaskStatusArray != NULL) {
        // Lấy trạng thái hệ thống và số lượng task
        uxTaskNum = uxTaskGetSystemState(pxTaskStatusArray, uxArraySize, NULL);

        // In thông tin của từng task
        for (x = 0; x < uxTaskNum; x++) {
            printf("Task Name: %s, Task State: %d, Task Priority: %u, Stack High Water Mark: %u\r\n",
                pxTaskStatusArray[x].pcTaskName,
                pxTaskStatusArray[x].eCurrentState,
                (unsigned int)pxTaskStatusArray[x].uxCurrentPriority,
                (unsigned int)pxTaskStatusArray[x].usStackHighWaterMark);
        }

        // Giải phóng bộ nhớ sau khi dùng xong
        vPortFree(pxTaskStatusArray);
    } else {
        printf("\r\n\tKhông đủ bộ nhớ để lấy thông tin task.\t\r\n");
    }
}

