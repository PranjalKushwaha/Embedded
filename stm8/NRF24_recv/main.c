#define _MAIN_C

// #include <stdio.h>  // for printf
#include <stdlib.h>
#include "REG_MG82F6D17.h"
#include "TYPEDEF.h"
#include "MG82F6D17_CONFIG.h"
#include "nrf24.h"

#define MCU_SYSCLK 12000000
#define MCU_CPUCLK (MCU_SYSCLK / 2)



#define DEB_LED P35
int count =0;
int putchar(int c)
{
	BOREV = (char)c;
	__bit bES;
	bES = ES0;
	ES0 = 0;

	S0BUF = BOREV;
	while (TI0 == 0)
		;
	TI0 = 0;
	ES0 = bES;
	return 0;
}

void DelayXus(unsigned char xUs)
{
	while (xUs != 0)
	{
#if (MCU_CPUCLK >= 11059200)
		NOP();
#endif
#if (MCU_CPUCLK >= 14745600)
		NOP();
		NOP();
		NOP();
		NOP();
#endif
#if (MCU_CPUCLK >= 16000000)
		NOP();
#endif

#if (MCU_CPUCLK >= 22118400)
		NOP();
		NOP();
		NOP();
		NOP();
		NOP();
		NOP();
#endif
#if (MCU_CPUCLK >= 24000000)
		NOP();
		NOP();
#endif
#if (MCU_CPUCLK >= 29491200)
		NOP();
		NOP();
		NOP();
		NOP();
		NOP();
		NOP();
#endif
#if (MCU_CPUCLK >= 32000000)
		NOP();
		NOP();
#endif

		xUs--;
	}
}

/*************************************************
 *Function:     	void DelayXms(u16 xMs)
 *Description:    dealy,unit:ms
 *Input:     		u16 xMs -> *1ms  (1~65535)
 *Output:
 *************************************************/
void DelayXms(u16 xMs)
{
	while (xMs != 0)
	{
		DelayXus(200);
		DelayXus(200);
		DelayXus(200);
		DelayXus(200);
		DelayXus(200);
		xMs--;
	}
}

#define PORT_SetP2PushPull(x) \
	P2M0 = P2M0 | (x);        \
	SFRPI = 1;                \
	P2M1 = P2M1 & (~(x));     \
	SFRPI = 0
#define PORT_SetP3PushPull(x) \
	P3M0 = P3M0 & (~(x));     \
	P3M1 = P3M1 | (x)
#define PORT_SetP1PushPull(x) \
	P1M0 = P1M0 | (x);        \
	P1M1 = P1M1 & (~(x))
#define PORT_SetP1OpenDrainPu(x) \
	P1M0 = P1M0 | (x);           \
	P1M1 = P1M1 | (x)
void InitPort(void)
{
	PORT_SetP2PushPull(BIT2 | BIT4 | BIT6); // Set P22,P24,P26 as Push-Pull,For LED.

	PORT_SetP3PushPull(BIT3);					   // Set P33 as Push-Pull, For nSS
	PORT_SetP1PushPull(BIT1 | BIT4 | BIT5 | BIT7); // Set P11(ce), P14(nSS),P15(MOSI),P17(SPICLK) as push-pull for output.
	PORT_SetP1OpenDrainPu(BIT6);
}
void InitClock(void)
{
	CKCON0 = 0 | 0x08 | 0 | 0x40 | 0x10;
	DelayXus(100);

	// ISPCR = 0x80;
	// IFADRH = 0x0;
	// IFADRL = 0x40;
	// IFMT = 4;

	// IFD = 0x10 | 0x0C | 0x00;
	// SCMD = 0x46;
	// SCMD = 0xB9;
	//  NOP();
	//  IFMT = 0;
	//  ISPCR = 0x0;
}

void InitSPI(void)
{
	SPCON = SPCON | (0x40);
	SPCON = SPCON | (0x80 | 0x10);
	SPCON = (SPCON & 0xFC) | (1 & 0x03);
	SPSTAT = (1 >> 2);
	SPCON = SPCON & (~0x08);
	SPCON = SPCON & (~0x20);
	SPCON = SPCON & (~0x04);
	SFRPI = 1;
	AUXR4 = AUXR4 & (~0x08);
	SFRPI = 0; // IO Port: nSS/P14,MOSI/P15,MISO/P16,SPICLK/P17
}

unsigned char SPITransceiver(unsigned char SPI_DATA)
{
	SPDAT = SPI_DATA;
	while ((SPSTAT & 0x80) == 0)
		;
	SPSTAT = SPSTAT | 0x80;
	return SPDAT;
}

void SPI_Send(unsigned char *data_pack, uint16_t len)
{
	int i = 0;
	SPI_nSS = 0;
	for (; i < len; i++)
	{
		data_pack[i] = SPITransceiver(data_pack[i]);
	}
	SPI_nSS = 1;
}

// // NRF24   **************************************************************

volatile __xdata uint8_t data_buffer[33];
volatile __xdata uint8_t write_buffer[33];

void nrf24_init()
{
	SPI_CE = 0;
	SPI_nSS = 0;
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
	SPI_CE = 1;
}

void nrf24_stopListening()
{
	SPI_CE = 0;
	nrf24_read_register(CONFIG,1);
	write_buffer[0] = data_buffer[1] & ~(1<<PRIM_RX);
	nrf24_write_register(CONFIG,1);
}
void main()
{
	System_Init();

	DEB_LED = 0;

	InitPort();
	InitClock();
	InitSPI();

	nrf24_init();
	nrf24_setup();

	nrf24_printDetails();

	while (1)
	{
		nrf24_startListening();
		while (!nrf24_available())
		{
			DelayXms(1);
		}
		if (nrf24_getDynamicPayloadSize() == 0)
		{
			continue;
		}

		nrf24_stopListening();
		nrf24_get_data();
	}
}