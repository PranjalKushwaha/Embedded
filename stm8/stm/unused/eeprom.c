#include "../inc/stm8.h"
#include "../inc/i2c.h"
#include "../inc/eeprom.h"

void eeprom_init()
{
    i2c_init();
}
void eeprom_write_byte(uint16_t address, uint8_t value)
{
    i2c_set_start_ack();
    i2c_send_address(EEPROM_ADDRESS, I2C_WRITE);
    i2c_send_data((address >> 8));
    i2c_send_data(address & (0b0000000011111111));
    i2c_send_data(value);
    i2c_set_stop();
}

void eeprom_write_page(uint16_t address, uint8_t *data_buffer)
{
    i2c_set_start_ack();
    i2c_send_address(EEPROM_ADDRESS, I2C_WRITE);
    i2c_send_data((address >> 8));
    i2c_send_data(address & (0b0000000011111111));
    for (int i = 0; i < EEPROM_PAGE_SIZE; i++)
    {
        i2c_send_data(data_buffer[i]);
    }
    i2c_set_stop();
}

void eeprom_write(uint16_t address, uint8_t *data_buffer, uint16_t data_len)
{
    for (uint16_t i = 0; i < data_len; i++)
    {
        if ((data_len - i) >= EEPROM_PAGE_SIZE && (address + i) % EEPROM_PAGE_SIZE == 0)
        {
            eeprom_write_page(address + i, &data_buffer[i]);
            i += 63;
        }
        else
        {
            eeprom_write_byte(address + i, data_buffer[i]);
        }
        for (volatile long int j = 4000; j > 0; j--)
            ;
    }
}
uint8_t eeprom_byte_read(uint16_t address)
{
    volatile uint8_t reg;
    i2c_set_start_ack();
    i2c_send_address(EEPROM_ADDRESS, I2C_WRITE);
    i2c_send_data((address >> 8));
    i2c_send_data(address & (0b0000000011111111));
    i2c_set_start();
    // i2c_set_start_ack();
    i2c_send_address(EEPROM_ADDRESS, I2C_READ);
    reg = I2C_SR1;
    reg = I2C_SR3;
    uint8_t x;
    i2c_read(&x);
    i2c_set_stop();
    return x;
}