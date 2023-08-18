#include "driver/include/TYPEDEF.h"
#define SPI_CE P33


extern uint8_t SPITransceiver(uint8_t data);
extern void nss_high();
extern void nss_low();
extern void ce_high();
extern void ce_low();