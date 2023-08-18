#include <stdio.h>
#include "HAL/inc/util.h"
#include "HAL/inc/flash.h"
#include "HAL/inc/spi.h"
#include "HAL/inc/stm8.h"

void awu_sleep()
{
    AWU_TBR &= ~(0x0F);
    AWU_TBR |= 0x0D;

    AWU_APR &= ~(0x3F);
    AWU_APR |= 0x3E;
    
    AWU_CSR |= AWU_CSR_AWUEN;
    halt();
    
}

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
    printf("LSI clock enabled.\r\n");

    PC_DDR |= 1 << 3;
    PC_CR1 |= 1 << 3;
    PC_ODR &= ~(1 << 3);

    while (1)
    {
        printf("Enter halt mode.\r\n");

        // PC_ODR |= 1 << 3; // toggle LED directly from main function
        // for (int i = 0; i < 4000; i++)
        //     for (int i = 0; i < 40; i++)
        //         ;
        // PC_ODR &= ~(1 << 3);
        // for (int i = 0; i < 4000; i++)
        //     for (int i = 0; i < 40; i++)
        //         ;
        // PC_ODR ^= (1 << 3);

        PC_ODR ^= (1 << 3);
        awu_sleep();
        // printf("After halt.\r\n");
    }
}

void awu_int(void) __interrupt(1)
{
    volatile uint8_t reg = AWU_CSR;
    // AWU_TBR &= ~(0x0F);
    // AWU_TBR |= 0x0B;
    // AWU_APR &= ~(0x3F);
    // AWU_APR |= 0x3E;
    // AWU_CSR |= AWU_CSR_AWUEN;

    // while (!(CLK_ICKR & 0x02)) // Wait for HSI stabilisation
    //     ;
    // // for(int i = 0; i < 4000; i++)
    // // for(int i = 0; i < 400; i++);
    //  printf("AWU interrupt triggered.\r\n");
}
