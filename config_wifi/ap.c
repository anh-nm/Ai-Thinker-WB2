
#include "ap.h"


static wifi_interface_t ap_interface;
/**
 * @brief wifi_ap_ip_set
 *      Set the IP address of soft AP
 * @param ip_addr IPV4 addr
 * @param netmask netmask
 * @param gw DNS
 */

//static TaskHandle_t xHandle = NULL;

static void wifi_ap_ip_set(char* ip_addr, char* netmask, char* gw)
{
    struct netif* ap_netif = netif_find("ap1");
    int i = 0;
    int ap_ipaddr[4] = { 0 };
    int ap_netmask[4] = { 255,255,255,0 };
    int ap_gw_arry[4] = { 0,0,0,0 };

    ap_ipaddr[0] = atoi(strtok(ip_addr, "."));

    for (i = 1;i<4;i++) {
        ap_ipaddr[i] = atoi(strtok(NULL, "."));
    }
    if (netmask) {
        ap_netmask[0] = atoi(strtok(netmask, "."));
        for (i = 1;i<4;i++)
            ap_netmask[i] = atoi(strtok(NULL, "."));
    }
    if (gw) {
        ap_gw_arry[0] = atoi(strtok(gw, "."));
        for (i = 1;i<4;i++)
            ap_gw_arry[i] = atoi(strtok(NULL, "."));
    }

    if (ap_netif) {

        ip_addr_t ap_ip;
        ip_addr_t ap_mask;
        ip_addr_t ap_gw;
        IP4_ADDR(&ap_ip, ap_ipaddr[0], ap_ipaddr[1], ap_ipaddr[2], ap_ipaddr[3]);
        IP4_ADDR(&ap_mask, ap_netmask[0], ap_netmask[1], ap_netmask[2], ap_netmask[3]);
        IP4_ADDR(&ap_gw, ap_gw_arry[0], ap_gw_arry[1], ap_gw_arry[2], ap_gw_arry[3]);

        netif_set_down(ap_netif);
        netif_set_ipaddr(ap_netif, &ap_ip);
        netif_set_netmask(ap_netif, &ap_mask);
        netif_set_gw(ap_netif, &ap_gw);
        netif_set_up(ap_netif);
        blog_info("[softAP]:SSID:%s,PASSWORD:%s,IP addr:%s", AP_SSID, AP_PWD, ip4addr_ntoa(netif_ip4_addr(ap_netif)));
    }
    else
        blog_info("no find netif ap1 ");

}

/**
 * @brief wifi_ap_start
 *
 */
void wifi_ap_start()
{
    ap_interface = wifi_mgmr_ap_enable();
    //wifi_mgmr_conf_max_sta(4);
    wifi_mgmr_ap_start(ap_interface, AP_SSID, 0, AP_PWD, 6);
    wifi_ap_ip_set("192.168.169.1", "255.255.255.0", "192.168.169.1");  //defaut gateway ip is "192.168.169.1",if you want usb other gateway ip ,please change components/network/lwip_dhcpd/dhcp_server_raw.c：42   DHCPD_SERVER_IP 
                                                                        //for example, gateway ip:"192.168.4.1" , change DHCPD_SERVER_IP to "192.168.4.1"  :
                                                                        //wifi_ap_ip_set("192.168.4.1", "255.255.255.0", "192.168.4.1");
                                                                        //components/network/lwip_dhcpd/dhcp_server_raw.c：42   #define DHCPD_SERVER_IP "192.168.4.1"
}

void wifi_ap_stop()
{
    if (ap_interface != NULL)
    {
        wifi_mgmr_ap_stop(ap_interface);
        ap_interface = NULL;  // Reset the interface pointer to NULL after stopping AP
    }
}


