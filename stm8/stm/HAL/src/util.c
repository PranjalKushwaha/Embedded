#include "../inc/stm8.h"
#include "../inc/util.h"
#include <stdio.h>

int putchar(int c)
{
  // Wait until the TX register is Empty.
  while (!(UART1_SR & UART_SR_TXE))
    ;
  // Then, write the byte to the data register.
  UART1_DR = (char)c;
  // Wait till the transmission is complete to ensure no garbage after AWU.
  while (!(UART1_SR & UART_SR_TC))
    ;
  return 0;
}

uint8_t awu_get_timebase(uint32_t time, uint32_t freq) // time in microseconds
{
  float f = (float)freq / 1e6;
  f = f * time;
  if (f < 64)
  {
    return 1;
  }
  uint32_t counter = 128;
  uint8_t val = 2;
  for (int i = 0; i < 16; i++)
  {
    if (f <= counter)
      return val;
    else
    {
      counter = counter << 1;
      val = val + 1;
    }
  }
  return 0;
}

void awu_set_regs(uint8_t tbr, uint8_t apr)
{
  AWU_TBR &= ~(0x0F);
  AWU_TBR |= tbr;
  AWU_APR &= ~(0x3F);
  AWU_APR |= apr;
  AWU_CSR |= AWU_CSR_AWUEN;
  halt();
}

void awu_sleep(uint32_t time) // microseconds
{
  uint32_t LSI_FREQUENCY = 128000;
  if (time <= (uint32_t)(1e6 * (uint32_t)2048 * 128 / (float)LSI_FREQUENCY))
  {
    uint8_t tbr = awu_get_timebase(time, LSI_FREQUENCY);
    uint8_t apr = ((((float)time) / 1e6) * LSI_FREQUENCY) / (1 << (tbr - 1));
    awu_set_regs(tbr, apr - 2);
  }
  else
  {
    uint32_t mul = (uint32_t)2048 * 128;
    while (time > (uint32_t)(1e6 * (uint32_t)2048 * 128 / (float)LSI_FREQUENCY))
    {
      awu_set_regs(13, 62);
      time -= (uint32_t)(mul * 1e6 / LSI_FREQUENCY);
    }
    awu_sleep(time);
  }
}