#include <stdio.h>
#include "HAL/inc/util.h"
#include "HAL/inc/nrf24.h"
#include "HAL/inc/eeprom.h"

#include "HAL/inc/stm8.h"

int main()
{
    int count = 0;
    unsigned long i = 0;
    CLK_CKDIVR = 0x00;  // Set the frequency to 16 MHz
    CLK_PCKENR1 = 0xFF; // Enable peripherals
    CLK_PCKENR2 = 0xFF;

    UART1_CR2 = UART_CR2_TEN;                        // Allow TX and RX
    UART1_CR3 &= ~(UART_CR3_STOP1 | UART_CR3_STOP2); // 1 stop bit
    UART1_BRR2 = 0x03;
    UART1_BRR1 = 0x68; // 9600 baud

    nrf24_init();
    nrf24_printDetails();

    while (1)
    {
        nrf24_tx_write(&count,2);
        count++;
       // nrf24_printDetails();
        for(volatile long int i = 400;i>0;i--);
    }
}
