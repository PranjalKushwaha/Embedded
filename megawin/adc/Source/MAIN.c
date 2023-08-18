// /**
//  ******************************************************************************
//  *
//  * @file        MAIN.C
//  *
//  * @brief       This is the C code format main file.
//  *
//  * @par         Project
//  *              MG82F6D17
//  * @version     v0.02
//  * @date        2020/01/16
//  * @copyright   Copyright (c) 2019 MegaWin Technology Co., Ltd.
//  *              All rights reserved.
//  *
//  ******************************************************************************
//  * @par         Disclaimer
//  *      The Demo software is provided "AS IF"  without any warranty, either
//  *      expressed or implied, including, but not limited to, the implied warranties
//  *      of merchantability and fitness for a particular purpose.  The author will
//  *      not be liable for any special, incidental, consequential or indirect
//  *      damages due to loss of data or any other reason.
//  *      These statements agree with the world wide and local dictated laws about
//  *      authorship and violence against these laws.
//  ******************************************************************************
//  ******************************************************************************
//  */

// #include "MG82F6D17_CONFIG.h"
// #define MCU_SYSCLK		12000000
// #define MCU_CPUCLK		(MCU_SYSCLK)

// void DelayXus(u8 xUs) //
// {
//   while (xUs != 0)
//   {
// #if (MCU_CPUCLK >= 11059200)
//     _nop_();
// #endif
// #if (MCU_CPUCLK >= 14745600)
//     _nop_();
//     _nop_();
//     _nop_();
//     _nop_();
// #endif
// #if (MCU_CPUCLK >= 16000000)
//     _nop_();
// #endif

// #if (MCU_CPUCLK >= 22118400)
//     _nop_();
//     _nop_();
//     _nop_();
//     _nop_();
//     _nop_();
//     _nop_();
// #endif
// #if (MCU_CPUCLK >= 24000000)
//     _nop_();
//     _nop_();
// #endif
// #if (MCU_CPUCLK >= 29491200)
//     _nop_();
//     _nop_();
//     _nop_();
//     _nop_();
//     _nop_();
//     _nop_();
// #endif
// #if (MCU_CPUCLK >= 32000000)
//     _nop_();
//     _nop_();
// #endif

//     xUs--;
//   }
// }
// /*************************************************
// this DelayXms call the previous DelayXus a certin number of time in order to virtully
// make that amout of dely.
// Function:         void DelayXms(u16 xMs)
// Description:    dealy��unit:ms
// Input:                  u16 xMs -> *1ms  (1~65535)
// Output:
// *************************************************/
// void DelayXms(u16 xMs)
// {
//   while (xMs != 0)
//   {
//     DelayXus(200); //  when this function is called the first function in the DelayXus gets executed.
//     DelayXus(200);
//     DelayXus(200);
//     DelayXus(200);
//     DelayXus(200);
//     xMs--; // run this loop until this function reaches zero
//   }
// }
// u16 GetAdcValue()
// {
//   WordTypeDef wAdcValue;
//   __DRV_ADC_Start();             // set ADCS,Start ADC
//   __DRV_ADC_PollForConversion(); // wait ADC complete
//   wAdcValue.B.BHigh = ADCDH;
//   wAdcValue.B.BLow = ADCDL;
//   __DRV_ADC_ClearFlag(); // clear ADCI flag
//   return wAdcValue.W & 0x0FFF;
// }
// void main()
// {

//   System_Init();

// #if 0 // for test ITEA Function
//     __DRV_INT_ITEA_Enable();
// #endif
//   //u32 dwTemp0, dwTemp1;
//   while (1)
//   {
//     printf("Hello ,UART0 Initial with Wizard\r\n");
//     printf("Txd = P31, Rxd = P30, Baud rate = 57600\r\n");
//     printf("0 1 2 3 4 5 6 7 8 9 0\r\n");
//     printf("~ ! @ # $ % ^ & * ( ) _ + = { } [ ] ; : ' ? . , \r\n");
//     printf("a b c d e f g h i j k l m n o p q r s t u v w x y z\r\n");
//     printf("A B C D E F G H I J K L M N O P Q R S T U V W X Y Z\r\n");
//     ADCFG0 |= ADCEN;
//     ADCFG0 |= (ADCKS0 | ADCKS2 | ADRJ);
//     ADCON0 |= (CHS2 | CHS1 | CHS0);

//     while (1)
//     {
//       DelayXms(50);
//       printf("Hello there123\n");
//       __DRV_ADC_PinMux_Select(AIN7);
//       printf("Hello there456\n");
//       GetAdcValue();
//       printf("Hello there789\n");

//       printf("%d\n", ADCDH);
//       printf("%d\n", ADCDL);
//     }
//   }
// }

/*********************************************************************
	Project:MG82F6D17-DEMO
	Author:YZY
			MG82F6D17 SSOP20_V10 EV Board (TH194A)
			CpuCLK=12MHz, SysCLK=12MHz
	Description:
			Through the IVREF 1.4v, calculate the P10 input voltage
	Note:

	Creat time::
	Modify::

*********************************************************************/
#include "MG82F6D17_CONFIG.h"

#define MCU_SYSCLK 12000000
#define MCU_CPUCLK (MCU_SYSCLK)
#define LED_G_0 P33
#define LED_R P34
#define LED_G_1 P35

/*************************************************
Function: 		char putchar (char c)
Description: 	send for printf
Input:    		char c
Output:
*************************************************/
char putchar(char c)
{
	bit bES;
	bES = ES0;
	ES0 = 0;
	S0BUF = c;
	while (TI0 == 0)
		;
	TI0 = 0;
	ES0 = bES;
	return 0;
}

/*************************************************
Function:     	void DelayXus(u16 xUs)
Description:   	dealy��unit:us
Input:     			u8 Us -> *1us  (1~255)
Output:
*************************************************/
void DelayXus(u8 xUs)
{
	while (xUs != 0)
	{
#if (MCU_CPUCLK >= 11059200)
		_nop_();
#endif
#if (MCU_CPUCLK >= 14745600)
		_nop_();
		_nop_();
		_nop_();
		_nop_();
#endif
#if (MCU_CPUCLK >= 16000000)
		_nop_();
#endif

#if (MCU_CPUCLK >= 22118400)
		_nop_();
		_nop_();
		_nop_();
		_nop_();
		_nop_();
		_nop_();
#endif
#if (MCU_CPUCLK >= 24000000)
		_nop_();
		_nop_();
#endif
#if (MCU_CPUCLK >= 29491200)
		_nop_();
		_nop_();
		_nop_();
		_nop_();
		_nop_();
		_nop_();
#endif
#if (MCU_CPUCLK >= 32000000)
		_nop_();
		_nop_();
#endif

		xUs--;
	}
}

/*************************************************
Function:     	void DelayXms(u16 xMs)
Description:    dealy��unit:ms
Input:     			u16 xMs -> *1ms  (1~65535)
Output:
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

/***********************************************************************************
Function:   	u16 GetAdcData()
Description:	read ADC result of the current channel
Input:
Output:   		u16 :ADC Value
*************************************************************************************/
u16 GetAdcValue()
{
	WordTypeDef wAdcValue;
	ADCON0 = ADCON0|ADCS;						// set ADCS,Start ADC
    while((ADCON0&ADCI)==0);            		// wait ADC complete
    wAdcValue.B.BHigh=ADCDH;
	//printf("ADCL\r\n  %u", ADCDL);
	printf("ADCH  %u\r\n", ADCDH);
    wAdcValue.B.BLow=ADCDL;
 	ADCON0 = ADCON0&(~ADCI);		            // clear ADCI flag
 	return wAdcValue.W&0x0FFF;
}


void main()
{
	u16 wADCValue;
	u32 dwTemp0, dwTemp1;

	System_Init();

	__DRV_IVREF_Cmd(ENABLE); // Eanble IVREF 1.4V

	LED_G_0 = 0;
	LED_G_1 = 0;
	LED_R = 0;
	DelayXms(1000);
	LED_G_0 = 1;
	LED_G_1 = 1;
	LED_R = 1;
	__DRV_ADC_Enable();
	__DRV_ADC_ClockSource_Select(ADC_SYSCLK_DIV_32);
	while (1)
	{
		DelayXms(2000);
		LED_R = !LED_R;

		// __DRV_ADC_PinMux_Select(INTERNAL_VERF); // Set the ADC channel to IVR 1.4v

		// dwTemp0 = GetAdcValue(); // read ADC value

		ADCON0=(ADCON0&(~(CHS3|CHS2|CHS1|CHS0)))|(CHS2|CHS1|CHS0); // Set the ADC channel to AIN0
		dwTemp1 = GetAdcValue();	   // read ADC value
		// calculate the P10(AIN0) input voltage
		wADCValue = (dwTemp1 * 1400L);
		// Output the result by UART
	}
}
