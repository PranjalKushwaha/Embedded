#include "../inc/stm8.h"

void i2c_init()
{
    I2C_CR1 = 0;
    I2C_FREQR = 16;
    I2C_CCRH = 0x00;
    I2C_CCRL = 0x50;
    I2C_OARH |= I2C_OARH_ADDCONF;
    I2C_OARH &= ~I2C_OARH_ADDMODE;
    I2C_TRISER = 0x11;
    // I2C_ITR |= (I2C_ITR_ITBUFEN|I2C_ITR_ITERREN|I2C_ITR_ITEVTEN);
    I2C_CR1 |= I2C_CR1_PE;
}
void i2c_set_start_ack()
{
    I2C_CR2 = I2C_CR2_ACK | I2C_CR2_START;
    while ((I2C_SR1 & I2C_SR1_SB) == 0)
        ;
}
void i2c_set_start()
{
    I2C_CR2 = (1 << 0); // set start
    while ((I2C_SR1 & I2C_SR1_SB) == 0)
        ;
}
void i2c_set_stop()
{
    I2C_CR2 |= I2C_CR2_STOP;
}
void i2c_send_address(uint8_t address, uint8_t mode)
{
    volatile int reg;
    reg = I2C_SR1;
    I2C_DR = (address << 1) | mode;
    if (mode == 1)
    {
        I2C_OARL = 0;
        I2C_OARH = 0;
    }
    while ((I2C_SR1 & I2C_SR1_ADDR) == 0)
        ;
    if (mode == 1)
        I2C_SR1 &= ~I2C_SR1_ADDR;
}

void i2c_send_data(uint8_t data)
{
    volatile int reg;
    reg = I2C_SR1;
    reg = I2C_SR3;
    I2C_DR = data;
    while ((I2C_SR1 & I2C_SR1_TXE) == 0)
        ;
}

void i2c_read(uint8_t *x)
{
    while ((I2C_SR1 & I2C_SR1_RXNE) == 0)
        ;
    *x = I2C_DR;
}