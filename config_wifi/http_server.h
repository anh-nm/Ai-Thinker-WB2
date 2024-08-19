#ifndef _HTTP_SERVER_H_
#define _HTTP_SERVER_H_

#include "FreeRTOS.h"
#include "portmacro.h"
#include "event_groups.h"
#include "lwip/err.h"
#include "string.h"
#include "lwip/sys.h"
#include "lwip/netdb.h"
#include "lwip/api.h"
#include "web_server.h"
#include "cJSON.h"
#include "ap.h"
#include "wifi.h"
#include "flash.h"


#define SERVER_PORT 1880
void http_server_start(void *pvParameters);
void http_server_stop(struct netconn *conn);
void set_stop_http_server(uint8_t value);

#endif /*_HTTP_SERVER_H_*/