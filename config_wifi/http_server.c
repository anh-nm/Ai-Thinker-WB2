#include "http_server.h"

//extern void set_is_config(uint8_t value);
//extern TaskHandle_t mainTaskHandle;

static uint8_t IS_HTTP_DONE = 0;

const static char http_html_hdr[] =
    "HTTP/1.1 200 OK\r\nContent-type: text/html\r\n\r\n";
const static char http_index_hml[] = "<!DOCTYPE html>"
                                     "<html>\n"
                                     "<head>\n"
                                     "  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n"
                                     "  <style type=\"text/css\">\n"
                                     "    html, body, iframe { margin: 0; padding: 0; height: 100%; }\n"
                                     "    iframe { display: block; width: 100%; border: none; }\n"
                                     "  </style>\n"
                                     "<title>HELLO Ai-WB2 module</title>\n"
                                     "</head>\n"
                                     "<body>\n"
                                     "<h1>Hello World, from Ai-WB2 module</h1>\n"
                                     "</body>\n"
                                     "</html>\n";

void web_http_server(struct netconn *conn){

    struct netbuf *inputbuf;
    char *buf;
    u16_t buflen;
    err_t err;

    err = netconn_recv(conn, &inputbuf);
    if (err == ERR_OK)
    {
        netbuf_data(inputbuf, (void **)&buf, &buflen);
        printf("the received data:\n%s\n", buf);
        /* Judge if this is an HTTP GET command */
        if (buflen >= 5 && buf[0] == 'G' && buf[1] == 'E' && buf[2] == 'T' && buf[3] == ' ' && buf[4] == '/')
        {
            netconn_write(conn, http_html_hdr, sizeof(http_html_hdr) - 1, NETCONN_NOCOPY);

            // if (buf[5] == 'h')
            // {
            //     netconn_write(conn, http_index_hml, sizeof(http_index_hml) - 1, NETCONN_NOCOPY);
            // }
            // else if (buf[5] == 'l')
            // {
            //     netconn_write(conn, http_index_hml, sizeof(http_index_hml) - 1, NETCONN_NOCOPY);
            // }
            // else
            // {
            //     netconn_write(conn, http_index_hml, sizeof(http_index_hml) - 1, NETCONN_NOCOPY);
            // }
        }

        /* Judge if this is an HTTP POST command */
        if (buflen >= 6 && buf[0] == 'P' && buf[1] == 'O' && buf[2] == 'S' && buf[3] == 'T' && buf[4] == ' ' && buf[5] == '/')
        {
            if (strstr(buf, "POST /?Wifi_Config=send HTTP/1.1") != NULL) {
                /* Tìm vị trí bắt đầu của payload JSON trong yêu cầu */
                char *json_start = strstr(buf, "\r\n\r\n");
                if (json_start) {
                    json_start += 4; /*Bỏ qua ký tự xuống dòng kép*/

                    cJSON *json = cJSON_Parse(json_start);
                    if (json) {

                        cJSON *ssid = cJSON_GetObjectItem(json, "ssid");
                        cJSON *password = cJSON_GetObjectItem(json, "password");

                        if (ssid && password) {
                            printf("Received SSID: %s\r\n", ssid->valuestring);
                            printf("Received Password: %s\r\n", password->valuestring);
                            wifi_ap_stop();
                            wifi_sta_connect(ssid->valuestring, password->valuestring);
            
                            IS_HTTP_DONE = 1;               
                        }

                        cJSON_Delete(json);
                    }
                }
            }
        }

    }
    netconn_close(conn);
    netbuf_delete(inputbuf);
}


void http_server_start(void *param){

    struct netconn *conn, *newconn;
    err_t err;

    conn = netconn_new(NETCONN_TCP);
    if (conn == NULL) {
        printf("\r\nFailed to create server socket\r\n");
        vTaskDelete(NULL);
    }

    err_t ret = ERR_OK;
    ret = netconn_bind(conn, NULL, SERVER_PORT);
    if (ret != ERR_OK)
    {
        blog_error("bind fail: %d ", ret);
    }
    else
    {
        blog_info(" bind success ");
    }
    netconn_listen(conn);
    //printf("\r\n                LISTEN CONN              \r\n");
    while (1)
    {
        err = netconn_accept(conn, &newconn);
        if (err == ERR_OK)
        {
            web_http_server(newconn);
            netconn_delete(newconn);
            if(IS_HTTP_DONE == 1){
                netconn_close(conn);
                netconn_delete(conn);
                IS_HTTP_DONE = 0;
                printf("/r/n                Close httpserver                /r/n");
                vTaskDelete(NULL);
            }
        }
        else
        {
            printf("\r\n Error accepting connection \r\n");
            netconn_close(conn);
            netconn_delete(conn);
        }
    }

}

