

#include "mqtt.h"

axk_mqtt_client_handle_t client;

void sent_current_led_state(void){blog_info("Sent current led state");}

int subscribe_topic(char *topic, uint8_t Qos){
    int msg_id = axk_mqtt_client_subscribe(client, topic, Qos);
    blog_info("sent subscribe successful, msg_id=%d", msg_id);
    return msg_id;
}

int unsubscribe_topic(char *topic){
    int msg_id = axk_mqtt_client_unsubscribe(client, topic);
    blog_info("sent unsubscribe successful, msg_id=%d", msg_id);
    return msg_id;
}



static void log_error_if_nonzero(const char *message, int error_code)
{
    if (error_code != 0) {
        blog_error("Last error %s: 0x%x", message, error_code);
    }
}



static axk_err_t event_cb(axk_mqtt_event_handle_t event)
{
    int32_t event_id;
    axk_mqtt_client_handle_t client = event->client;

    event_id = event->event_id;
    blog_debug("Event dispatched, event_id=%d", event_id);
    int msg_id;
    switch ((axk_mqtt_event_id_t)event_id) {
    case MQTT_EVENT_CONNECTED:
        blog_info("MQTT_EVENT_CONNECTED");
        msg_id = subscribe_topic("hunonic/demo/mqtt/sub", 0);
        sent_current_led_state();
        break;

    case MQTT_EVENT_DISCONNECTED:
        blog_info("MQTT_EVENT_DISCONNECTED");
        break;

    case MQTT_EVENT_SUBSCRIBED:
        blog_info("MQTT_EVENT_SUBSCRIBED, msg_id=%d", event->msg_id);

        break;
    case MQTT_EVENT_UNSUBSCRIBED:
        blog_info("MQTT_EVENT_UNSUBSCRIBED, msg_id=%d", event->msg_id);
        break;

    case MQTT_EVENT_PUBLISHED:
        blog_info("MQTT_EVENT_PUBLISHED, msg_id=%d", event->msg_id);
        break;

    case MQTT_EVENT_DATA:
        blog_info("MQTT_EVENT_DATA");

        /*DATA={
            "led": LEDx,
            "ctr": 1         (1-tắt, 2-bật)
        }*/

        printf("TOPIC=%.*s\r\n", event->topic_len, event->topic);
        printf("DATA=%.*s\r\n", event->data_len, event->data);

        //Cho xu ly cac day lenh da cho

        //parse data
        char *json_data = strndup(event->data, event->data_len);
        msg_id = publish_topic(json_data);
        free(json_data);
        break;

    case MQTT_EVENT_ERROR:
        blog_info("MQTT_EVENT_ERROR");
        if (event->error_handle->error_type == MQTT_ERROR_TYPE_TCP_TRANSPORT) {
            log_error_if_nonzero("reported from axk-tls", event->error_handle->axk_tls_last_axk_err);
            log_error_if_nonzero("reported from tls stack", event->error_handle->axk_tls_stack_err);
            log_error_if_nonzero("captured as transport's socket errno",  event->error_handle->axk_transport_sock_errno);
            blog_info("Last errno string (%s)", strerror(event->error_handle->axk_transport_sock_errno));
        }
        break;

    default:
        blog_info("Other event id:%d", event->event_id);
        break;
    }
    return AXK_OK;
}


//Hàm cấu hình và khởi động mqtt
void mqtt_start(void)
{

    axk_mqtt_client_config_t mqtt_cfg = {
        .uri = "mqtt://150.95.113.123",
        .event_handle = event_cb,
        .username = "utest",
        .password = "utest123",
        .port = 1883,
    };
    client = axk_mqtt_client_init(&mqtt_cfg);//Khởi tạo mqtt với c
    axk_err_t rtn = axk_mqtt_client_start(client);
    if(rtn == AXK_OK){
        printf("\r\nAXK ok");
    }else{
        printf("ERROR");
    }
}

void mqtt_stop(void){
    if(client != NULL){
        axk_err_t rtn = axk_mqtt_client_stop(client);
        if (rtn == AXK_OK){
            printf("\r\nMQTT client stopped successfully.\r\n");
        }
        else{
            printf("\r\nError stopping MQTT client.\r\n");
        }
        axk_mqtt_client_destroy(client);
        client = NULL;
        printf("\r\nMQTT client resources destroyed.\r\n");
    }
}


int publish_topic(char *json_data){

    cJSON *json = cJSON_Parse(json_data);

    if(json == NULL){
        blog_error("Error parsing JSON data");
    }else{
        cJSON *LED = cJSON_GetObjectItem(json, "led");
        cJSON *ctr = cJSON_GetObjectItem(json, "ctr");
        if( LED!=NULL && ctr!= NULL){
            control_button(LED, ctr);

            //phan hoi
            cJSON *ret = cJSON_CreateNumber(1);
            cJSON_AddItemToObject(json, "ret", ret);

            //Chuyen JSON sang dang string va publish
            char *update = cJSON_PrintUnformatted(json);
            int msg_id = axk_mqtt_client_publish(client, "hunonic/demo/mqtt/pub", update, 0, 1, 0);
            blog_info("Sent publish successful, msg_id=%d", msg_id);
            printf("\r\nReply\r\n");
            return msg_id;
        }else{
            printf("\r\nValue missing");
        }    
        
    }

    //giai phong bo nho
    cJSON_Delete(json);

    return 0;
}


void control_button(cJSON *Led, cJSON *getctr){

    int led_val = Led->valueint;
    int ctr = getctr->valueint;

    // Mảng ánh xạ các giá trị SWITCH tới các chân GPIO tương ứng
    int led_pins[] = {0, LED1, LED2, LED3, LED4};

    if (led_val >= 1 && led_val <= 4) {
        if(ctr == 1){
            bl_gpio_output_set(led_pins[led_val], 0);
        }else{
            bl_gpio_output_set(led_pins[led_val], 1);
        }
    } else {
        printf("Khong co led nao nhu vay");
    }

}
