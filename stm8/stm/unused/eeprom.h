#ifndef EEPROM_H
#define EEPROM_H

#include "./stm8.h"
#define EEPROM_ADDRESS 0x50
#define EEPROM_PAGE_SIZE 64

void eeprom_init();
void eeprom_write_byte(uint16_t address, uint8_t value);
void eeprom_write_page(uint16_t address, uint8_t *data_buffer);
void eeprom_write(uint16_t address, uint8_t *data_buffer, uint16_t data_len);
uint8_t eeprom_byte_read(uint16_t address);

#endif // !EEPROM_H