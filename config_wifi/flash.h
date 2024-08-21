#ifndef _FLASH_H_
#define _FLASH_H_

#include <stdio.h>
#include <hosal_flash.h>
#include <stdlib.h>
#include <blog.h>

//#define DEMO_HOSAL_FLASH_TEST_BLOCK 1024
#define DEMO_HOSAL_FLASH_TEST_ADDR 0x192000
//#define DEMO_HOSAL_FLASH_TEST_LEN  1024
//#define DEMO_HOSAL_FLASH_TEST_BLOCK 1024

typedef struct{

    char ssid[34];
    char password[67];

}wifi_config;

void write_ssid_password_to_flash(wifi_config *config);
void read_ssid_password_from_flash(void);
//void ssid_and_password_handler(char data_read[128]);

#endif /*_FLASH_H_*/