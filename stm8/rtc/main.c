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
int count = 0;
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

#define ISP_WRITE_P 4 // P Write
#define ISP_READ_P 5

#define RTC_SetReload(x) RTCCR = (RTCCR & (0xC0)) | (x)

#define RTC_SetCounter(x) RTCTM = (RTCTM & (0xC0)) | (x)

#define RTC_ClearRTCF() PCON1 = RTCF
#define RTC_Enable() RTCCR = RTCCR | RTCE
#define RTC_SetClock_Div_32()          \
	RTCTM = (RTCTM & (0x3F)); \
	ISPCR = 0x80;                      \
	IFADRH = 0x0;                      \
	IFADRL = CKCON4_P;                 \
	IFMT = ISP_READ_P;                 \
	SCMD = 0x46;                       \
	SCMD = 0xB9;                       \
	NOP();                             \
	IFD = (IFD & (0xFC));     \
	IFADRH = 0x0;                      \
	IFADRL = CKCON4_P;                 \
	IFMT = ISP_WRITE_P;                \
	SCMD = 0x46;                       \
	SCMD = 0xB9;                       \
	NOP();                             \
	IFMT = 0;                          \
	ISPCR = 0x0

#define RTC_SetClock_ILRCO()          \
	ISPCR = 0x80;                     \
	IFADRH = 0x0;                     \
	IFADRL = CKCON4_P;                \
	IFMT = ISP_READ_P;                \
	SCMD = 0x46;                      \
	SCMD = 0xB9;                      \
	NOP();                            \
	IFD = (IFD & (0x1F)) | (RCSS0_P); \
	IFADRH = 0x0;                     \
	IFADRL = CKCON4_P;                \
	IFMT = ISP_WRITE_P;               \
	SCMD = 0x46;                      \
	SCMD = 0xB9;                      \
	NOP();                            \
	IFMT = 0;                         \
	ISPCR = 0x0

void InitClock(void)
{
	CKCON0 = 0 | 0x08 | 0 | 0x40 | 0x10;
	DelayXus(100);
	RTC_SetClock_ILRCO();	// RTC Clock source: ILRCO 32KHz
	RTC_SetClock_Div_32();	// RTC Clock prescale: 32
	RTC_SetReload(0); // RTC Reload Value: (64-10)=54
	RTC_SetCounter(0);

	// RTC_EnRTCO_OutP45();		// Enable RTC output on P45

	RTC_ClearRTCF(); // clear RTCF
	RTC_Enable();
}

#define INT_EnSF_RTC() SFIE = SFIE | RTCFIE
#define INT_EnSF() EIE1 = EIE1 | ESF

#define INT_EnAll() EA = 1
void initrtc()
{
	INT_EnSF_RTC();
	INT_EnSF();
	INT_EnAll();
}
void INT_SF(void) __interrupt(10)
{
	if((PCON1&WDTF)!=0)
	{
		PCON1=WDTF;
	}
	if((PCON1&BOF0)!=0)
	{
		PCON1=BOF0;
	}
	if((PCON1&BOF1)!=0)
	{
		PCON1=BOF1;
	}
	if((PCON1&RTCF)!=0)
	{
		PCON1=RTCF;
		printf("Here in rtc \r\n");
	}
}

void main()
{
	System_Init();
	InitClock();
	initrtc();
	while (1)
	{
		DelayXms(1000);
		//printf("Hello there\r\n");
	}
}
