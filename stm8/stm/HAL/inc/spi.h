#define SPI_CE 4 // Set PD4 as NRF24_CE
#define SPI_NSS 3 // Set PA3 as NRF24_CSN
//#define FLASH_CE 3 // PC3

#define nrf_ce_high() PD_ODR |= 1 << SPI_CE
#define nrf_ce_low()  PD_ODR &= ~(1 << SPI_CE)
#define nrf_nss_high()   PA_ODR |= 1 << SPI_NSS
#define nrf_nss_low()  PA_ODR &= ~(1 << SPI_NSS)

#include "stm8.h"
void spi_init();
uint8_t spi_transceiver(uint8_t data);
//void nrf_nss_high();
//void nrf_nss_low();
//void nrf_ce_high();
//void nrf_ce_low();
