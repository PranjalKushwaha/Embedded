#include "../inc/stm8.h"
#include "../inc/spi.h"


void init_nrf_ce_csn()
{
    // CE
    PD_DDR |= 1 << SPI_CE;
    PD_CR1 |= 1 << SPI_CE;
    PD_ODR &= ~(1 << SPI_CE);

    // CSN
    PA_DDR |= 1 << SPI_NSS;
    PA_CR1 |= 1 << SPI_NSS;
    PA_ODR &= ~(1 << SPI_NSS);
}

// void nrf_ce_high()
// {
//     PD_ODR |= 1 << SPI_CE;
// }

// void nrf_ce_low()
// {
//     PD_ODR &= ~(1 << SPI_CE);
// }

// void nrf_nss_high()
// {
//     PA_ODR |= 1 << SPI_NSS;
// }

// void nrf_nss_low()
// {
//     PA_ODR &= ~(1 << SPI_NSS);
// }

void spi_init()
{
    SPI_CR1 |= SPI_CR1_BR(1);
    SPI_CR1 |= SPI_CR1_SPE;
    SPI_CR1 |= SPI_CR1_MSTR;
    init_nrf_ce_csn();
}

uint8_t spi_transceiver(uint8_t data)
{
    SPI_DR = data;
    while (!(SPI_SR & SPI_SR_RxNE))
        ;
    return SPI_DR;
}
