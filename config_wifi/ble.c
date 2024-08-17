

#include "ble.h"

extern void set_is_config_ble(uint8_t value);
extern void reset_flag_ble(uint8_t value);



static struct bt_conn *conn_cur;
ble_gatt_conn_cb_t conn_cb;
ble_gatt_conn_cb_t disconn_cb;


static const struct bt_data salve_adv[] = {
    BT_DATA_BYTES(BT_DATA_FLAGS, (BT_LE_AD_GENERAL | BT_LE_AD_NO_BREDR)),
    BT_DATA(BT_DATA_NAME_COMPLETE, BLE_SLAVE_NAME, sizeof(BLE_SLAVE_NAME) - 1),

};

static ssize_t ble_uuid1_write_val(struct bt_conn *conn, const struct bt_gatt_attr *attr,
                                   const void *buf, u16_t len, u16_t offset, u8_t flags);
static ssize_t ble_uuid2_write_val(struct bt_conn *conn, const struct bt_gatt_attr *attr,
                                   const void *buf, u16_t len, u16_t offset, u8_t flags);
static void ble_ccc_cfg_changed(const struct bt_gatt_attr *attr,
                                u16_t value);

static struct bt_gatt_attr salve_uuid1_server[] = {
    /* Primary Service */
    BT_GATT_PRIMARY_SERVICE(UUID1_USER_SER),

    /* Characteristic && Characteristic User Declaration */
    BT_GATT_CHARACTERISTIC(UUID1_USER_TXD,
                           BT_GATT_CHRC_NOTIFY,
                           BT_GATT_PERM_READ, NULL, NULL,
                           NULL),
    BT_GATT_CCC(ble_ccc_cfg_changed, BT_GATT_PERM_READ | BT_GATT_PERM_WRITE),

    /* Characteristic && Characteristic User Declaration */
    BT_GATT_CHARACTERISTIC(UUID1_USER_RXD,
                           BT_GATT_CHRC_WRITE_WITHOUT_RESP,
                           BT_GATT_PERM_WRITE, NULL, ble_uuid1_write_val,
                           NULL),
};

// static struct bt_gatt_attr salve_uuid2_server[] = {
//     /* Primary Service */
//     BT_GATT_PRIMARY_SERVICE(UUID2_USER_SER),

//     /* Characteristic && Characteristic User Declaration */
//     BT_GATT_CHARACTERISTIC(UUID2_USER_TXD,
//                            BT_GATT_CHRC_NOTIFY,
//                            BT_GATT_PERM_READ, NULL, NULL,
//                            NULL),
//     BT_GATT_CCC(ble_ccc_cfg_changed, BT_GATT_PERM_READ | BT_GATT_PERM_WRITE),

//     /* Characteristic && Characteristic User Declaration */
//     BT_GATT_CHARACTERISTIC(UUID2_USER_RXD,
//                            BT_GATT_CHRC_WRITE_WITHOUT_RESP,
//                            BT_GATT_PERM_WRITE, NULL, ble_uuid2_write_val,
//                            NULL),
// };


static struct bt_gatt_service ble_uuid1_server = BT_GATT_SERVICE(salve_uuid1_server);
//static struct bt_gatt_service ble_uuid2_server = BT_GATT_SERVICE(salve_uuid2_server);



static ssize_t ble_uuid1_write_val(struct bt_conn *conn, const struct bt_gatt_attr *attr,
                                   const void *buf, u16_t len, u16_t offset,
                                   u8_t flags)
{
    uint8_t *recv_buffer;
    recv_buffer = pvPortMalloc(sizeof(uint8_t) * (len + 1)); /* Them mot byte chua ky tu ket thuc chuoi */
    memcpy(recv_buffer, buf, len);
    recv_buffer[len] = '\0';
    printf("recv ble data len: %d\r\n", len);
    for (size_t i = 0; i < len; i++)
    {
        printf("%c", recv_buffer[i]);
    }
    printf("\r\n");
    handle_data(recv_buffer);
    vPortFree(recv_buffer);
    return len;
}

// static ssize_t ble_uuid2_write_val(struct bt_conn *conn, const struct bt_gatt_attr *attr,
//                                    const void *buf, u16_t len, u16_t offset,
//                                    u8_t flags)
// {
//     uint8_t *recv_buffer;
//     recv_buffer = pvPortMalloc(sizeof(uint8_t) * len);
//     memcpy(recv_buffer, buf, len);
//     printf("recv ble data len: %d\r\n", len);
//     for (size_t i = 0; i < len; i++)
//     {
//         printf("0x%x ", recv_buffer[i]);
//     }
//     printf("\r\n");
//     vPortFree(recv_buffer);
//     return len;
// }

static void ble_ccc_cfg_changed(const struct bt_gatt_attr *attr,
                                u16_t value)
{
    char *str = "disabled";

    if (value == BT_GATT_CCC_NOTIFY)
    {
        str = "notify";
    }
    else if (value == BT_GATT_CCC_INDICATE)
    {
        str = "indicate";
    }

    printf("[BLE] ccc change %s", str);
}


static void _connected(struct bt_conn *conn, u8_t err)
{
    if (conn_cb)
    {
        if (conn_cb(conn, err) != 0)
        {
            return;
        }
    }

    if (conn->type != BT_CONN_TYPE_LE)
    {
        return;
    }

    conn_cur = conn;

    blog_info("[BLE] connected \r\n");
    //s_time_connect = aos_now_ms();
    BleSetMtu();
    return;
}

static void _disconnected(struct bt_conn *conn, u8_t reason)
{
    if (disconn_cb)
    {
        if (disconn_cb(conn, reason) != 0)
        {
            return;
        }
    }

    if (conn->type != BT_CONN_TYPE_LE)
    {
        return;
    }

    conn_cur = NULL;

    printf("[BLE] disconnected, reason:%d \r\n", reason);
}

static bool _le_param_req(struct bt_conn *conn,
                          struct bt_le_conn_param *param)
{
    printf("[BLE] conn param request: int 0x%04x-0x%04x lat %d to %d \r\n",
           param->interval_min,
           param->interval_max,
           param->latency,
           param->timeout);

    return true;
}

static void _le_param_updated(struct bt_conn *conn, u16_t interval,
                              u16_t latency, u16_t timeout)
{
    printf("[BLE] conn param updated: int 0x%04x lat %d to %d \r\n", interval, latency, timeout);
}

static void _le_phy_updated(struct bt_conn *conn, u8_t tx_phy, u8_t rx_phy)
{
    printf("[BLE] phy updated: rx_phy %d, rx_phy %d \r\n", tx_phy, rx_phy);
}

static struct bt_conn_cb conn_callbacks = {
    .connected = _connected,
    .disconnected = _disconnected,
    .le_param_req = _le_param_req,
    .le_param_updated = _le_param_updated,
    .le_phy_updated = _le_phy_updated,
};

static void ble_disconnect_all(struct bt_conn *conn, void *data)
{
    printf("[BLE]: BLE disconnect all start\r\n");
    if (conn->state == BT_CONN_CONNECTED)
    {
        printf("[BLE] disconn id:%d \r\n", conn->id);
        bt_conn_disconnect(conn, BT_HCI_ERR_REMOTE_USER_TERM_CONN);
    }
}

static void _ble_mtu_changed_cb(struct bt_conn *conn, int mtu)
{
    printf("[BLE] mtu updated:%d \r\n", mtu);
}

struct bt_conn *ble_get_conn_cur(void)
{
    return conn_cur;
}

int ble_regist_conn(ble_gatt_conn_cb_t cb)
{
    conn_cb = cb;

    return 0;
}

int ble_regist_disconn(ble_gatt_conn_cb_t cb)
{
    disconn_cb = cb;

    return 0;
}

static int ble_salve_conn_cb(struct bt_conn *conn, uint8_t code)
{
    int err;

    struct bt_le_conn_param param;
    param.interval_max = 24;
    param.interval_min = 24;
    param.latency = 0;
    param.timeout = 600;
    err = bt_conn_le_param_update(conn, &param);

    return 0;
}

static int ble_salve_disconn_cb(struct bt_conn *conn, uint8_t code)
{
    if (set_adv_enable(true))
    {
        printf("[BLE] Restart adv fail. \r\n");
    }
    else
    {
        printf("[BLE] Restart adv success. \r\n");
    }

    return 0;
}

int ble_salve_adv()
{
    int err = -1;
    err = bt_le_adv_start(BT_LE_ADV_CONN, salve_adv, ARRAY_SIZE(salve_adv), NULL, 0);
    if (err)
    {
        printf("[BLE] adv fail(err %d) \r\n", err);
        return -1;
    }

    return 0;
}

static void bt_enable_cb(int err)
{
    printf("START BT_ENABLE_cb\r\n");
    if (!err)
    {
        bt_addr_le_t bt_addr;
        bt_get_local_public_address(&bt_addr);
        bt_addr.a.val[5] = 0x88;
        bt_addr.a.val[4] = 0x88;
        bt_addr.a.val[3] = 0x88;
        bt_addr.a.val[2] = 0x88;
        bt_addr.a.val[1] = 0x88;
        bt_addr.a.val[0] = 0x88;
        printf("BD_ADDR:(MSB)%02x:%02x:%02x:%02x:%02x:%02x(LSB) \r\n",
               bt_addr.a.val[5], bt_addr.a.val[4], bt_addr.a.val[3], bt_addr.a.val[2], bt_addr.a.val[1], bt_addr.a.val[0]);
    }
}

void ble_reverse_byte(uint8_t *arr, uint32_t size)
{
    uint8_t i, tmp;

    for (i = 0; i < size / 2; i++)
    {
        tmp = arr[i];
        arr[i] = arr[size - 1 - i];
        arr[size - 1 - i] = tmp;
    }
}

int ble_uuid1_notify_data(void *handle, void *data, uint16_t length)
{
    int ret;
    uint16_t mtu;
    uint16_t offset;
    uint16_t send_len;

    offset = 0;
    mtu = bt_gatt_get_mtu(handle) - 3;
    while (length > 0)
    {
        /* calculate send_len */
        send_len = length > mtu ? mtu : length;
        /* send data */
        ret = bt_gatt_notify(handle, &salve_uuid1_server[SALVE_CMD_SERVER_TX_INDEX], data + offset, send_len);
        /* set offset */
        offset += send_len;
        length -= send_len;

        printf("[BLE] notify len:%d \r\n", send_len);

        if (ret != 0)
        {
            break;
        }
    }

    return ret;
}


// int ble_uuid2_notify_data(void *handle, void *data, uint16_t length)
// {
//     int ret;
//     uint16_t mtu;
//     uint16_t offset;
//     uint16_t send_len;

//     offset = 0;
//     mtu = bt_gatt_get_mtu(handle) - 3;
//     while (length > 0)
//     {
//         /* calculate send_len */
//         send_len = length > mtu ? mtu : length;
//         /* send data */
//         ret = bt_gatt_notify(handle, &salve_uuid2_server[SALVE_CMD_SERVER_TX_INDEX], data + offset, send_len);
//         /* set offset */
//         offset += send_len;
//         length -= send_len;

//         printf("[BLE] notify len:%d \r\n", send_len);

//         if (ret != 0)
//         {
//             break;
//         }
//     }

//     return ret;
// }

int UUID1_SendNotify(uint16_t len, uint8_t *data)
{
    int ret;
    struct bt_conn *conn;

    conn = ble_get_conn_cur();
    if (conn == NULL)
    {
        return -1;
    }

    ret = ble_uuid1_notify_data(conn, (void *)data, len);
    if (ret != 0)
    {
        return -4;
    }

    return len;
}


// int UUID2_SendNotify(uint16_t len, uint8_t *data)
// {
//     int ret;
//     struct bt_conn *conn;

//     conn = ble_get_conn_cur();
//     if (conn == NULL)
//     {
//         return -1;
//     }

//     ret = ble_uuid2_notify_data(conn, (void *)data, len);
//     if (ret != 0)
//     {
//         return -4;
//     }

//     return len;
// }


static void exchange_func(struct bt_conn *conn, u8_t err,
                          struct bt_gatt_exchange_params *params)
{
    if (conn)
    {
        printf("[BLE] Exchange %s MTU Size =%d \r\n", err == 0U ? "successful" : "failed", bt_gatt_get_mtu(conn));
    }
}

static struct bt_gatt_exchange_params exchange_params;

uint8_t BleSetMtu()
{
    int ret = -1;
    if (conn_cur == NULL)
    {
        return 1;
    }

    exchange_params.func = exchange_func;
    ret = bt_gatt_exchange_mtu(conn_cur, &exchange_params);
    if (ret != 0)
    {
        return 1;
    }

    return 0;
}

int ble_slave_init()
{

    ble_regist_conn(ble_salve_conn_cb);
    ble_regist_disconn(ble_salve_disconn_cb);

    ble_server_init();
    ble_salve_adv();

    return 0;
}

int ble_slave_deinit(void)
{
    /* comment out gatt server deinit as it may cause crash */
    bt_le_adv_stop();
    ble_regist_conn(NULL);
    ble_regist_disconn(NULL);

    //ble_server_deinit();

    return 0;
}

int ble_server_init()
{
    int ret = 0;

    ret = bt_gatt_service_register(&ble_uuid1_server);
    //ret |= bt_gatt_service_register(&ble_uuid2_server);

    return ret;
}

int ble_server_deinit(void)
{
    int ret = 0;

    ret = bt_gatt_service_unregister(&ble_uuid1_server);

    blog_info("ret unregist %d ", ret);
    //ret |= bt_gatt_service_unregister(&ble_uuid2_server);

    return ret;
}

void ble_stack_start(void)
{
    // Initialize BLE controller
    ble_controller_init(configMAX_PRIORITIES - 1);
    // Initialize BLE Host stack
    printf("BLE STACK START\r\n");
    int err_log = hci_driver_init();
    printf("[ERR]: %d\r\n", err_log);
    //printf("[BLE] LOG HERE\r\n");
    int err = bt_enable(bt_enable_cb);
    printf("[ERR] %d\r\n", err);
}



static uint8_t s_flag_stop_ble = 0;
static uint8_t s_flag_start_stop = 0;
uint8_t get_stop_ble(void)
{
    return s_flag_stop_ble;
}
uint8_t get_start_stop(void){

    return s_flag_start_stop;
}
void set_stop_ble(uint8_t value)
{
    s_flag_stop_ble = value;
}
void set_start_stop(uint8_t value)
{
    s_flag_start_stop = value;
}



// start ble
void apps_ble_start()
{
    ble_stack_start();
    ble_slave_init();
    bt_gatt_register_mtu_callback(_ble_mtu_changed_cb);
    bt_conn_cb_register(&conn_callbacks);
    s_flag_stop_ble = 1;
    /* avoid callback infinite loop */
    conn_callbacks._next = NULL;
}


// stop ble
void apps_ble_stop()
{
    ble_slave_deinit();

    bt_conn_foreach(BT_CONN_TYPE_ALL, ble_disconnect_all, NULL);
    int disconn_cnt = 0;
    while (le_check_valid_conn() && disconn_cnt++ < 10)
    {
        printf("[BLE] wait for ble_disconnect_all\r\n");
        vTaskDelay(pdMS_TO_TICKS(500));
    }

    //printf("Flags: %x\r\n", bt_dev.flags);

    if(le_check_valid_conn()){
        printf("Valid conn still active\r\n");
    }else{
        printf("Valid conn has beeb stopped\r\n");
    }

    if (atomic_test_bit(bt_dev.flags, BT_DEV_ADVERTISING)) {
        printf("Advertising is still active.\r\n");
    } else {
        printf("Advertising has been stopped.\n\n");
    }

    int err = bt_disable();
    printf("[ERR] %d\r\n", err);
}


void BLE_Task(void *param){
    printf("[BLE] start task BLE\r\n");
    apps_ble_start();
    vTaskDelete(NULL);
}

void handle_data(uint8_t *recv_buffer){

    char ssid[34];
    char password[67];
    uint8_t ssid_found = 0; 
    uint8_t password_found = 0;

    /* Tach ssid */
    char *ssid_start = strstr((char*)recv_buffer, "ssid:");
    if (ssid_start != NULL) {
        ssid_start += 5; // Bỏ qua "ssid:"
        char *ssid_end = strchr(ssid_start, ';');
        if (ssid_end != NULL) {
            int ssid_len = ssid_end - ssid_start;
            if (ssid_len > 0 && ssid_len < sizeof(ssid)) {
                strncpy(ssid, ssid_start, ssid_len);
                ssid[ssid_len] = '\0';
                ssid_found = 1;
            }
        }
    }

    char *pwd_start = strstr((char*)recv_buffer, "password:");
    if (pwd_start != NULL) {
        pwd_start += 9; // Bỏ qua "password:"
        strncpy(password, pwd_start, sizeof(password) - 1);
        password[sizeof(password) - 1] = '\0';
        password_found = 1;
    }

    if(ssid_found != 1 || password_found != 1){
        printf("[BLE] SSID & PASSWORD FAILED");
    }else{
        printf("[BLE] READ SSID: %s\r\n", ssid);
        printf("[BLE] READ PASSWORD: %s\r\n", password);
        //s_time_connect = aos_now_ms();

        /* stop ble */
        s_flag_start_stop = 1;
        //s_flag_stop_ble = 1;

        
        /* set flags */
        //set_is_config_ble(0);
        reset_flag_ble(0);
    }
}








