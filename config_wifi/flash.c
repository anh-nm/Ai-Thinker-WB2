#include "flash.h"

extern int wifi_sta_connect(char* re_ssid, char* re_password);



void write_ssid_password_to_flash(wifi_config *config){

    /* Write new ssid and password */
    blog_info("START WRITTING SSID AND PASSWORD");
    //uint8_t *p_wbuf;
    //char data_to_write[128];

    /* Erase old data from flash */
    hosal_flash_raw_erase(DEMO_HOSAL_FLASH_TEST_ADDR, sizeof(wifi_config));

    // p_wbuf = malloc(sizeof(data_to_write));
    // if(p_wbuf == NULL){
    //     blog_info("Memory not enough");
    //     return;
    // }

    //snprintf((char*)p_wbuf, sizeof(data_to_write), "ssid:%s;password:%s", ssid, password);
    printf("ssid:%s;password:%s\r\n", config->ssid, config->password);

    hosal_flash_raw_write((char*)config, DEMO_HOSAL_FLASH_TEST_ADDR, sizeof(wifi_config));

    blog_info("Write flash done 0x%08x", DEMO_HOSAL_FLASH_TEST_ADDR);
    //read_ssid_password_from_flash();

    //free(p_wbuf);
    
}

void read_ssid_password_from_flash(void) {
    
    uint8_t is_data_empty = 1;
    wifi_config config;
    uint8_t buffer[sizeof(wifi_config)];
    
    blog_info("START READ FLASH");

    /* Read ssid and password from flash */

    hosal_flash_raw_read(buffer, DEMO_HOSAL_FLASH_TEST_ADDR, sizeof(wifi_config));

    // Kiểm tra nếu dữ liệu đọc được có giá trị mặc định (ví dụ 0xFF)
    for (int i = 0; i < sizeof(wifi_config); i++) {
        if (buffer[i] != 0xFF) {
            is_data_empty = 0; // Dữ liệu không trống
            break;
        }
    }

    if( is_data_empty == 0){

        memcpy(&config, buffer, sizeof(wifi_config));
        blog_info("READ SSID: %s", config.ssid);
        blog_info("READ PASSWORD: %s", config.password);
        wifi_sta_connect(config.ssid, config.password);

    }else{
        blog_info("-----------------------------FLASH EMPTY-----------------------------");
    }

}

// void ssid_and_password_handler(char data_read[128]){

//     char *token;
//     char password[67];
//     char ssid[34];
    
//     // Tách SSID
//     token = strtok(data_read, ";");
//     if (token != NULL) {
//         sscanf(token, "ssid:%63s", ssid);
//     }
    
//     // Tách password
//     token = strtok(NULL, ";");
//     if (token != NULL) {
//         sscanf(token, "password:%63s", password);
//     }

//     blog_info("READ SSID: %s", ssid);
//     blog_info("READ Password: %s", password);

//     wifi_sta_connect(ssid, password);
// }