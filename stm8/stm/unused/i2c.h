#include "./stm8.h"
void i2c_init();
void i2c_set_start_ack();
void i2c_set_start();
void i2c_set_stop();
void i2c_send_address(uint8_t address, uint8_t mode);
void i2c_send_data(uint8_t data);
void i2c_read(uint8_t *x);