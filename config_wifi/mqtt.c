

#include "mqtt.h"

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
        // msg_id = axk_mqtt_client_publish(client, "hunonic/demo/mqtt/sub", "data_3", 0, 1, 0);
        // blog_info("sent publish successful, msg_id=%d", msg_id);

        msg_id = axk_mqtt_client_subscribe(client, "hunonic/demo/mqtt/sub", 0);
        blog_info("sent subscribe successful, msg_id=%d", msg_id);

        // msg_id = axk_mqtt_client_subscribe(client, "/topic", 1);
        // blog_info("sent subscribe successful, msg_id=%d", msg_id);

        // msg_id = axk_mqtt_client_unsubscribe(client, "/topic/qos1");
        // blog_info("sent unsubscribe successful, msg_id=%d", msg_id);
        break;
    case MQTT_EVENT_DISCONNECTED:
        blog_info("MQTT_EVENT_DISCONNECTED");
        break;

    case MQTT_EVENT_SUBSCRIBED:
        blog_info("MQTT_EVENT_SUBSCRIBED, msg_id=%d", event->msg_id);

        // //Sau khi sub thanh cong---------------------------------------------

        // // Tao mot doi tuong json moi
        // cJSON *root = cJSON_CreateObject();

        // // Tao cac muc
        // cJSON *Switch = cJSON_CreateNumber(100);
        // cJSON *online = cJSON_CreateNumber(0);

        // //Them vao json
        // cJSON_AddItemToObject(root, "switch", Switch);
        // cJSON_AddItemToObject(root, "online", online);

        // //json->chuoi

        // char *json_string = cJSON_Print(root);

        // msg_id = axk_mqtt_client_publish(client, "hunonic/demo/mqtt/pub", json_string, 0, 0, 0);
        // blog_info("\r\n\t\t\tSent publish successful, msg_id=%d", msg_id);

        // free(json_string);
        // cJSON_Delete(root);
        break;
    case MQTT_EVENT_UNSUBSCRIBED:
        blog_info("MQTT_EVENT_UNSUBSCRIBED, msg_id=%d", event->msg_id);
        break;
    case MQTT_EVENT_PUBLISHED:
        blog_info("MQTT_EVENT_PUBLISHED, msg_id=%d", event->msg_id);
        break;
    case MQTT_EVENT_DATA:
        blog_info("MQTT_EVENT_DATA");
        printf("TOPIC=%.*s\r\n", event->topic_len, event->topic);
        printf("DATA=%.*s\r\n", event->data_len, event->data);

        //Cho xu ly cac day lenh da cho

        //parse data
        char *json_data = strndup(event->data, event->data_len);
        cJSON *json = cJSON_Parse(json_data);

        if(json == NULL){
            blog_error("Error parsing JSON data");
        }else{
            cJSON *cmd = cJSON_GetObjectItem(json, "cmd");
            printf("\r\ncmd: %d\r\n", cmd->valueint);
            int cmd_value = cmd->valueint;
            if(cmd_value == 200){
                cJSON *version =cJSON_GetObjectItem(json, "version");
                int arr_version_size = cJSON_GetArraySize(version);
                printf("version: \r\n");


                for (int i = 0; i < arr_version_size; i++){
                    cJSON *version_item = cJSON_GetArrayItem(version, i);
                    if(i==0){
                        cJSON *hwver = cJSON_GetObjectItem(version_item, "hwver");
                        cJSON *build = cJSON_GetObjectItem(version_item, "build");
                        printf("Hardware: %d\tbuild: %d\r\n", hwver->valueint, build->valueint);

                    }
                    else{
                        cJSON *swver = cJSON_GetObjectItem(version_item, "swver");
                        cJSON *build = cJSON_GetObjectItem(version_item, "build");
                        printf("Software: %d\tbuild: %s\r\n", swver->valueint, build->valuestring);
                    }
                }
                //phan hoi
                cJSON *ret = cJSON_CreateNumber(1);
                cJSON_AddItemToObject(json, "ret", ret);
                //Chuyen JSON sang dang string va publish
                char *update = cJSON_PrintUnformatted(json);
                msg_id = axk_mqtt_client_publish(client, "hunonic/demo/mqtt/pub", update, 0, 1, 0);
                blog_info("sent publish successful, msg_id=%d", msg_id);
                printf("\r\nReply\r\n");
            }
            else if(cmd_value == 201){
                cJSON *id = cJSON_GetObjectItem(json, "id");
                cJSON *src = cJSON_GetObjectItem(json, "src");
                printf("id: %s,\tsrc: %d", id->valuestring, src->valueint);

                //phan hoi
                cJSON *ret = cJSON_CreateNumber(1);
                cJSON_AddItemToObject(json, "ret", ret);
                //Chuyen JSON sang dang string va publish
                char *update = cJSON_PrintUnformatted(json);
                msg_id = axk_mqtt_client_publish(client, "hunonic/demo/mqtt/pub", update, 0, 1, 0);
                blog_info("sent publish successful, msg_id=%d", msg_id);
                printf("\r\nReply\r\n");
            }
            else if(cmd_value == 203){
                cJSON *ls_user = cJSON_GetObjectItem(json, "ls_user");
                cJSON *uid = cJSON_GetObjectItem(json, "uid");
                cJSON *src = cJSON_GetObjectItem(json, "src");

                int ls_arr = cJSON_GetArraySize(ls_user);
                printf("\r\nls_user: %d\r\n", ls_arr);
                for (int i = 0; i<ls_arr; i++){
                    cJSON *item = cJSON_GetArrayItem(ls_user, i);
                    printf("%s, ", item->valuestring);
                }
                printf("\r\n");

                printf("\r\nuid: %d", uid->valueint);
                printf("\r\nuid: %d", src->valueint);

                //phan hoi
                cJSON *ret = cJSON_CreateNumber(1);
                cJSON_AddItemToObject(json, "ret", ret);
                //Chuyen JSON sang dang string va publish
                char *update = cJSON_PrintUnformatted(json);
                msg_id = axk_mqtt_client_publish(client, "hunonic/demo/mqtt/pub", update, 0, 1, 0);
                blog_info("sent publish successful, msg_id=%d", msg_id);
                printf("\r\nReply\r\n");
            }
            else{
                cJSON *SWITCH = cJSON_GetObjectItem(json, "switch");
                cJSON *ctr = cJSON_GetObjectItem(json, "ctr");
                if( SWITCH!=NULL && ctr!= NULL){
                    control_button(SWITCH, ctr);

                    //phan hoi
                    cJSON *ret = cJSON_CreateNumber(1);
                    cJSON_AddItemToObject(json, "ret", ret);
                    //Chuyen JSON sang dang string va publish
                    char *update = cJSON_PrintUnformatted(json);
                    msg_id = axk_mqtt_client_publish(client, "hunonic/demo/mqtt/pub", update, 0, 1, 0);
                    blog_info("sent publish successful, msg_id=%d", msg_id);
                    printf("\r\nReply\r\n");
                }else{
                    printf("\r\nValue missing");
                }
                
            }      
            //Cho xu ly
        }

        //Xu ly dieu khien led
        //parse data
        // char *json_data = strndup(event->data, event->data_len);
        // cJSON *json = cJSON_Parse(json_data);

        // cJSON *SWITCH = cJSON_GetObjectItem(json, "switch");
        // cJSON *ctr = cJSON_GetObjectItem(json, "ctr");

        //printf("\r\nswitch: %d, ctr: %d", SWITCH->valueint, ctr->valueint);
        //int *getswitch = SWITCH->valueint;
        //int *getctr = ctr->valueint;

        //printf("\r\n%d\t%d", getswitch, getctr);
        //control_button(SWITCH, ctr);

        //giai phong bo nho
        cJSON_Delete(json);
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

axk_mqtt_client_handle_t client;
//Hàm cấu hình và khởi động mqtt
void mqtt_start(void)
{
    bl_gpio_enable_output(LED1, 0, 0);
    bl_gpio_enable_output(LED2, 0, 0);
    bl_gpio_enable_output(LED3, 0, 0);
    bl_gpio_enable_output(LED4, 0, 0);

    axk_mqtt_client_config_t mqtt_cfg = {
        .uri = "mqtt://150.95.113.123",
        .event_handle = event_cb,
        .username = "utest",
        .password = "utest123",
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


void control_button(cJSON *Switch, cJSON *getctr){

    int switch_val = Switch->valueint;
    int ctr = getctr->valueint;

    // Mảng ánh xạ các giá trị SWITCH tới các chân GPIO tương ứng
    int switch_pins[] = {0, LED1, LED2, LED3, LED4};

    if (switch_val >= 1 && switch_val <= 4) {
        if(ctr == 1){
            bl_gpio_output_set(switch_pins[switch_val], 0);
        }else{
            bl_gpio_output_set(switch_pins[switch_val], 1);
        }
    } else {
        printf("Khong co switch nao nhu vay");
    }

}