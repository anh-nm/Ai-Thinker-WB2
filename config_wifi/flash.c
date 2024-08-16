
#include "flash.h"

extern int wifi_sta_connect(char* re_ssid, char* re_password);

void write_ssid_password_from_flash(char* ssid, char* password){

    /* Write new ssid and password */
    blog_info("START WRITTING SSID AND PASSWORD");
    uint8_t *p_wbuf;
    char data_to_write[128];

    /* Erase old data from flash */
    hosal_flash_raw_erase(DEMO_HOSAL_FLASH_TEST_ADDR, sizeof(data_to_write));

    p_wbuf = malloc(sizeof(data_to_write));
    if(p_wbuf == NULL){
        blog_info("Memory not enough");
        return;
    }

    snprintf((char*)p_wbuf, sizeof(data_to_write), "ssid:%s;password:%s", ssid, password);

    hosal_flash_raw_write(p_wbuf, DEMO_HOSAL_FLASH_TEST_ADDR, sizeof(data_to_write));

    blog_info("Write flash done 0x%08x", DEMO_HOSAL_FLASH_TEST_ADDR);

    free(p_wbuf);
    
}

void read_ssid_password_from_flash(void) {
    uint8_t *p_rbuf;
    char data_read[128];

    uint8_t is_data_empty = 1;

    p_rbuf = malloc(sizeof(data_read));

    if(p_rbuf == NULL){
        blog_info("Memory not enough");
        return;
    }

    blog_info("START READ FLASH");

    /* Read ssid and password from flash */

    hosal_flash_raw_read(p_rbuf, DEMO_HOSAL_FLASH_TEST_ADDR, sizeof(data_read));

    // Kiểm tra nếu dữ liệu đọc được có giá trị mặc định (ví dụ 0xFF)
    for (int i = 0; i < sizeof(data_read); i++) {
        if (p_rbuf[i] != 0xFF) {
            is_data_empty = 0; // Dữ liệu không trống
            break;
        }
    }

    if( is_data_empty == 0){
        // Copy dữ liệu đọc được vào chuỗi data_read
        strncpy(data_read, (char*)p_rbuf, sizeof(data_read) - 1);
        ssid_and_password_handler(data_read);
    }else{
        blog_info("-----------------------------FLASH EMPTY-----------------------------");
    }

    //blog_info("SSID và password đã đọc từ flash tại địa chỉ 0x%08x: %s", DEMO_HOSAL_FLASH_TEST_ADDR, p_rbuf);

    // Giải phóng bộ nhớ
    free(p_rbuf);

}

void ssid_and_password_handler(char data_read[128]){

    char *token;
    char password[67];
    char ssid[34];
    
    // Tách SSID
    token = strtok(data_read, ";");
    if (token != NULL) {
        sscanf(token, "ssid:%63s", ssid);
    }
    
    // Tách password
    token = strtok(NULL, ";");
    if (token != NULL) {
        sscanf(token, "password:%63s", password);
    }

    blog_info("READ SSID: %s", ssid);
    blog_info("READ Password: %s", password);

    wifi_sta_connect(ssid, password);
}