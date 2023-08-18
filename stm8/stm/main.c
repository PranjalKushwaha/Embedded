#include <stdio.h>
#include "HAL/inc/util.h"
#include "HAL/inc/nrf24.h"
#include "HAL/inc/stm8.h"

int main()
{
    int count = 0;
    // unsigned long i = 0;
    CLK_CKDIVR = 0x00;  // Set the frequency to 16 MHz
    CLK_PCKENR1 = 0xFF; // Enable peripherals
    CLK_PCKENR2 = 0xFF;
    CLK_ICKR |= (1 << 3); // enable LSI clock
    while ((CLK_ICKR & (1 << 4)) == 0)
        ;
    UART1_CR2 = UART_CR2_TEN;                        // Allow TX and RX
    UART1_CR3 &= ~(UART_CR3_STOP1 | UART_CR3_STOP2); // 1 stop bit
    UART1_BRR2 = 0x03;
    UART1_BRR1 = 0x68; // 9600 baud
                       // printf("LSI clock enabled. %d \r\n", sizeof(uint32_t));

    while (1)
    {
        radio_init();
        radio_power_up();
        awu_sleep((uint32_t)5e7);
    }
}

void awu_int(void) __interrupt(1)
{
    volatile uint8_t reg = AWU_CSR;
}
