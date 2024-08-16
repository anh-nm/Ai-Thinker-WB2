
#include "uart.h"

hosal_uart_dev_t uart_dev_log = {
    .config = {
        .uart_id = 0,
        .tx_pin = 16, // TXD GPIO
        .rx_pin = 7,  // RXD GPIO
        .cts_pin = 255,
        .rts_pin = 255,
        .baud_rate = 115200,
        .data_width = HOSAL_DATA_WIDTH_8BIT,
        .parity = HOSAL_NO_PARITY,
        .stop_bits = HOSAL_STOP_BITS_1,
        .mode = HOSAL_UART_MODE_POLL,
    },
};


void TaskUart(void *param)
{
    uint8_t data[32] = {0};
    int ret;

    hosal_uart_init(&uart_dev_log);

    while (1)
    {
        /* Uart receive poll */
        ret = hosal_uart_receive(&uart_dev_log, data, sizeof(data));
        if (ret > 0)
        {
            UUID1_SendNotify(strlen((char *)data), data);
        }
        vTaskDelay(50);
    }
}
