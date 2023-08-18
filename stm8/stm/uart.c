
#include <stdint.h>
#include <stdio.h>
#include "stm8.h"

// printf is part of the stdlib. It uses putchar, which we implement here to
// transmit on the serial line.
int putchar(int c)
{
  // Wait until the TX register is Empty.
  while (!(UART1_SR & UART_SR_TXE))
    ;
  // Then, write the byte to the data register.
  UART1_DR = (char)c;
  return 0;
}
#define SPI_CE 4

void spi_init()
{
  uint8_t y = 0;
  SPI_CR1 |= SPI_CR1_BR(3);
  SPI_CR1 &= ~SPI_CR1_CPOL;
  SPI_CR1 &= ~SPI_CR1_CPHA;
  SPI_CR1 &= ~SPI_CR1_LSBFIRST;
  SPI_CR1 |= SPI_CR1_SPE;
  SPI_CR1 |= SPI_CR1_MSTR;

  // SPI_CR2 |= SPI_CR2_SSM;
  // SPI_CR2 |= (SPI_CR2_SSI);

  PD_DDR |= 1 << SPI_CE;
  PD_CR1 |= 1 << SPI_CE;
  PD_ODR |= 1 << SPI_CE;

  PA_DDR |= 1<<3;
  PA_CR1 |= 1<<3;
  PA_ODR &=~(1<<3);
}

void main(void)
{
  unsigned long i = 0;

  CLK_CKDIVR = 0x00;  // Set the frequency to 16 MHz
  CLK_PCKENR1 = 0xFF; // Enable peripherals

  UART1_CR2 = UART_CR2_TEN;                        // Allow TX and RX
  UART1_CR3 &= ~(UART_CR3_STOP1 | UART_CR3_STOP2); // 1 stop bit
  UART1_BRR2 = 0x03;
  UART1_BRR1 = 0x68; // 9600 baud
  volatile int count = 0;

  spi_init();
  for (;;)
  {

    SPI_DR = count;
    printf("Hello World! %d \r\n", SPI_DR);
    count++;
    for (i = 0; i < 147456; i++)
      ; // Sleep
  }
}