#include "nrf24.h"
#include "driver/include/TYPEDEF.h"

extern uint8_t SPITransceiver(uint8_t data);
extern void nss_high();
extern void nss_low();
extern void ce_high();
extern void ce_low();

volatile uint8_t data_buffer[33];
volatile uint8_t write_buffer[33];


void SPI_Send(unsigned char *data_pack, uint16_t len)
{
	int i = 0;
	nss_low();
	for (; i < len; i++)
	{
		data_pack[i] = SPITransceiver(data_pack[i]);
	}
	nss_high();
}

// // NRF24   **************************************************************

void nrf24_init()
{
	ce_low();
	nss_low();
}

void nrf24_read_register(uint8_t reg, uint8_t len)
{
	int i;
	data_buffer[0] = R_REGISTER | (REGISTER_MASK & reg);
	for (i = 1; i <= len; i++)
	{
		data_buffer[i] = NRF24_NOP;
	}
	SPI_Send(data_buffer, len + 1);
}

void nrf24_write_register(uint8_t reg, uint8_t len)
{
	int i;
	data_buffer[0] = W_REGISTER | (REGISTER_MASK & reg);
	for (i = 1; i <= len; i++)
	{
		data_buffer[i] = write_buffer[i - 1];
	}
	SPI_Send(data_buffer, len + 1);
}


void nrf24_printDetails()
{
	int i;
	nrf24_read_register(RF_CH, 1);
	printf("RF_CH : %02X\r\n", data_buffer[1] & 0xFFFF);

	nrf24_read_register(RF_SETUP, 1);
	printf("RF_SETUP : %02X\r\n", data_buffer[1] & 0xFFFF);

	nrf24_read_register(STATUS, 1);
	printf("Status : %02X\r\n", data_buffer[0] & 0xFFFF);

	nrf24_read_register(EN_AA, 1);
	printf("EN_AA : %02X\r\n", data_buffer[1] & 0xFFFF);

	nrf24_read_register(DYNPD, 1);
	printf("DYNPD : %02X\r\n", data_buffer[1] & 0xFFFF);

	nrf24_read_register(FEATURE, 1);
	printf("FEATURE : %02X\r\n", data_buffer[1] & 0xFFFF);

	nrf24_read_register(RX_ADDR_P1, 5);
	printf("RX_ADDR_P1 : ");
	for (i = 0; i < 5; i++)
	{
		printf("%02X", data_buffer[i + 1] & 0xFFFF);
	}
	printf("\r\n");

	nrf24_read_register(TX_ADDR, 5);
	printf("TX_ADDR : ");
	for (i = 0; i < 5; i++)
	{
		printf("%02X", data_buffer[i + 1] & 0xFFFF);
	}
	printf("\r\n");

	nrf24_read_register(RX_PW_P1, 1);
	printf("RX_PW_P1 : %02X\r\n", data_buffer[1] & 0xFFFF);

	nrf24_read_register(EN_RXADDR, 1);
	printf("EN_RXADDR : %02X\r\n", data_buffer[1] & 0xFFFF);

	nrf24_read_register(CONFIG, 1);
	printf("CONFIG : %02X\r\n", data_buffer[1] & 0xFFFF);

	nrf24_read_register(RPD, 1);
	printf("RPD : %02X\r\n", data_buffer[1] & 0xFFFF);
}

void nrf24_listen()
{
}

void nrf24_setup()
{
	/*
	Set up nrf24 with following config
	payload - 32
	channel - 2
	data rate - 250kbps
	power - pa_max
	autoack - true
	dynamicpayload - true
	ackpayload - true
	*/
	int i;
	uint8_t rx_addr[] = {0xE0, 0xE0, 0xF1, 0xF1, 0xE0};
	uint8_t tx_addr[] = {0xF1, 0xF1, 0xF0, 0xF0, 0xE0};

	// Set radio channel
	write_buffer[0] = 90;
	nrf24_write_register(RF_CH, 1);

	// Set data rate 250KBps and output power to max
	write_buffer[0] = 36;
	nrf24_write_register(RF_SETUP, 1);

	// Enable auto ack on all pipes
	write_buffer[0] = 0x3f;
	nrf24_write_register(EN_AA, 1);

	// Enabling dynamic payloads
	write_buffer[0] = 0x3f;
	nrf24_write_register(DYNPD, 1);

	write_buffer[0] = 0x06;
	nrf24_write_register(FEATURE, 1);

	// setting tx and rx addressses
	for (i = 0; i < 5; i++)
	{
		write_buffer[i] = rx_addr[4 - i];
	}
	nrf24_write_register(RX_ADDR_P1, 5);
	for (i = 0; i < 5; i++)
	{
		write_buffer[i] = tx_addr[4 - i];
	}
	nrf24_write_register(TX_ADDR, 5);

	// Set rx recieve payload size
	write_buffer[0] = 32;
	nrf24_write_register(RX_PW_P1, 1);

	// Enable recieve pipe
	write_buffer[0] = 0x03;
	nrf24_write_register(EN_RXADDR, 1);

	// Enable 8 bit CRC and set to reciever, power up the controller
	write_buffer[0] = 11;
	nrf24_write_register(CONFIG, 1);
}

void nrf24_get_data()
{
	int i;
	data_buffer[0] = R_RX_PAYLOAD;
	for (i = 1; i <= 33; i++)
	{
		data_buffer[i] = NRF24_NOP;
	}
	SPI_Send(data_buffer, 33);

	for (i = 0; i < 33; i++)
	{
		printf("%02X ", data_buffer[i] & 0xFFFF);
	}
	printf("\r\n");
}

uint8_t nrf24_available()
{
	uint8_t result = 0;
	nrf24_read_register(STATUS, 1);
	if (data_buffer[0] & (1 << 6) || (data_buffer[0] & 0x0E != 0x0E))
		result = 1;

	nrf24_read_register(STATUS, 1);
	if (data_buffer[0] & (1 << 5))
	{
		write_buffer[0] = (1 << 5);
		nrf24_write_register(STATUS, 1);
	}
	return result;
}

uint8_t nrf24_getDynamicPayloadSize()
{
	data_buffer[0] = R_RX_PL_WID;
	data_buffer[1] = NRF24_NOP;
	SPI_Send(data_buffer, 2);
	return data_buffer[1];
}
void nrf24_startListening()
{
	nrf24_read_register(CONFIG,1);
	write_buffer[0] = data_buffer[1] | (1<<PRIM_RX);
	nrf24_write_register(CONFIG,1);
	write_buffer[0] = (1<<6) | (1<<5)|(1<<4);
	nrf24_write_register(STATUS, 1);
	ce_high();
}

void nrf24_stopListening()
{
	ce_low();
	nrf24_read_register(CONFIG,1);
	write_buffer[0] = data_buffer[1] & ~(1<<PRIM_RX);
	nrf24_write_register(CONFIG,1);
}