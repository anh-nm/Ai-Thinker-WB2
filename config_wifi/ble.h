#ifndef _BLE_H_
#define _BLE_H_


#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <FreeRTOS.h>
#include <semphr.h>

#include "bluetooth.h"
#include "hci_driver.h"
#include "hci_core.h"
#include "ble_lib_api.h"
#include "conn.h"
#include "conn_internal.h"
#include "gatt.h"

#include <aos/kernel.h>
#include <blog.h>


#define UUID1_USER_SER BT_UUID_DECLARE_128(BT_UUID_128_ENCODE(0x55535343, 0xfe7d, 0x4ae5, 0x8fa9, 0x9fafd205e455))
#define UUID1_USER_TXD BT_UUID_DECLARE_128(BT_UUID_128_ENCODE(0x49535343, 0x8841, 0x43f4, 0xa8d4, 0xecbe34729bb3))
#define UUID1_USER_RXD BT_UUID_DECLARE_128(BT_UUID_128_ENCODE(0x49535343, 0x1e4d, 0x4bd9, 0xba61, 0x23c647249616))

// #define UUID2_USER_SER BT_UUID_DECLARE_128(BT_UUID_128_ENCODE(0x10190d0c, 0x0b0a, 0x0908, 0x0706, 0x050403020100))
// #define UUID2_USER_TXD BT_UUID_DECLARE_128(BT_UUID_128_ENCODE(0x102B0d0c, 0x0b0a, 0x0908, 0x0706, 0x050403020100))
// #define UUID2_USER_RXD BT_UUID_DECLARE_128(BT_UUID_128_ENCODE(0x102B0d0d, 0x0b0a, 0x0908, 0x0706, 0x050403020100))

#define SALVE_CMD_SERVER_TX_INDEX 2

#define BLE_SLAVE_NAME  "Ai-WB2-12F"

typedef int (*ble_gatt_conn_cb_t)(struct bt_conn *conn, uint8_t code);

void ble_reverse_byte(uint8_t *arr, uint32_t size);
int ble_server_init();
int ble_server_deinit(void);
void ble_stack_start(void);
int ble_uuid1_notify_data(void *handle, void *data, uint16_t length);
//int ble_uuid2_notify_data(void *handle, void *data, uint16_t length);

struct bt_conn *ble_get_conn_cur(void);
int ble_regist_conn(ble_gatt_conn_cb_t cb);
int ble_regist_disconn(ble_gatt_conn_cb_t cb);
int UUID1_SendNotify(uint16_t len, uint8_t *data);
//int UUID2_SendNotify(uint16_t len, uint8_t *data);
int ble_slave_init();
int ble_slave_deinit(void);
int ble_salve_adv();
void apps_ble_stop();
void apps_ble_start();
uint8_t BleSetMtu();
void BLE_Task(void *param);

uint8_t get_stop_ble(void);
uint8_t get_start_stop(void);
void set_stop_ble(uint8_t time);
void set_start_stop(uint8_t value);
uint8_t handle_data(uint8_t *recv_buffer);


#endif /*_BLE_H_*/