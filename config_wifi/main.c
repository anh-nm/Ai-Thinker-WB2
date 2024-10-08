
//#include "ap.h"
#include "button.h"
#include "wifi.h"
#include <bl_sys.h>
//#include <cJSON.h>


void main()
{
    blog_set_level_log_component(BLOG_LEVEL_WARN, "tcp");
    blog_set_level_log_component(BLOG_LEVEL_WARN, "axk_mqtt");
    blog_set_level_log_component(BLOG_LEVEL_WARN, "tcp_transport"); 
    puts("[OS] Starting TCP/IP Stack...");
    tcpip_init(NULL, NULL);

    puts("[OS] button_manual_task ...");
    xTaskCreate(button_manual_task, "button_manual_task", 1024 * 2, NULL, 15, NULL);
    xTaskCreate(wifi_execute, (char *)"wifi execute", 1024 * 4, NULL, 15, NULL);
}