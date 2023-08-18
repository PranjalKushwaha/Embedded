#define _MAIN_C

#include <Intrins.h>
#include <Absacc.h>

//#include <stdio.h>  // for printf

#include "./REG_MG82F6D17.h"
#include "./TYPEDEF.h"
#include "./MG82F6D17_CONFIG.h"

#define TWI0_CLK_SYSCLK_32	2	// SYSCLK/32
#define MCU_SYSCLK		12000000
#define MCU_CPUCLK		(MCU_SYSCLK)

#define TIMER_1T_1ms_TH	((65536-(u16)(float)(1000*((float)(MCU_SYSCLK)/(float)(1000000)))) /256) 			
#define TIMER_1T_1ms_TL	((65536-(u16)(float)(1000*((float)(MCU_SYSCLK)/(float)(1000000)))) %256)

#define TIMER_12T_1ms_TH	((65536-(u16)(float)(1000*((float)(MCU_SYSCLK)/(float)(12000000)))) /256) 			
#define TIMER_12T_1ms_TL	((65536-(u16)(float)(1000*((float)(MCU_SYSCLK)/(float)(12000000)))) %256)

#define TIMER_12T_10ms_TH	((65536-(u16)(float)(10000*((float)(MCU_SYSCLK)/(float)(12000000)))) /256) 			
#define TIMER_12T_10ms_TL	((65536-(u16)(float)(10000*((float)(MCU_SYSCLK)/(float)(12000000)))) %256)


#define PORT_SetP4OpenDrainPu(x)			P4M0=P4M0|(x); SFRPI=2;P4M1=P4M1|(x) ;SFRPI=0 
#define PORT_SetP2PushPull(x)				P2M0=P2M0|(x); SFRPI=1;P2M1=P2M1&(~(x));SFRPI=0
#define CLK_SetCKCON0(x)					CKCON0=x 
#define TWI0_Clear()				SICON=0
#define TWI0_SetClock(x)			SICON=(SICON&B01111100)|((x&0x03)|((x<<5)&B10000000))
#define TWI0_SetUseP40P41()			SFRPI=0;AUXR3=(AUXR3&(~(TWIPS1|TWIPS0)))
#define TWI0_Enable()						SICON=SICON|(ENSI)
#define TM_SetT0Mode_1_16BIT_TIMER()			TMOD=(TMOD&(~(T0M0|T0M1)))|(T0M0)
#define TM_SetT0Clock_SYSCLKDiv12()				AUXR3=(AUXR3&(~T0XL));AUXR2=(AUXR2&(~T0X12));TMOD=(TMOD&(~T0C_T))
#define TM_SetT0Gate_Disable()					TMOD=TMOD&(~T0GATE)
#define TM_SetT0LowByte(x)			TL0=x
#define TM_SetT0HighByte(x)			TH0=x
#define TM_EnableT0()			TR0=1

BYTE	TWI0OvTime;

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

void DelayXus(u8 xUs)
{
	while(xUs!=0)
	{
#if (MCU_CPUCLK>=11059200)
		_nop_();
#endif
#if (MCU_CPUCLK>=14745600)
		_nop_();
		_nop_();
		_nop_();
		_nop_();
#endif
#if (MCU_CPUCLK>=16000000)
		_nop_();
#endif

#if (MCU_CPUCLK>=22118400)
		_nop_();
		_nop_();
		_nop_();
		_nop_();
		_nop_();
		_nop_();
#endif
#if (MCU_CPUCLK>=24000000)
		_nop_();
		_nop_();
#endif		
#if (MCU_CPUCLK>=29491200)
		_nop_();
		_nop_();
		_nop_();
		_nop_();
		_nop_();
		_nop_();
#endif
#if (MCU_CPUCLK>=32000000)
		_nop_();
		_nop_();
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
	while(xMs!=0)
	{
		DelayXus(200);
		DelayXus(200);
		DelayXus(200);
		DelayXus(200);
		DelayXus(200);
		xMs--;
		
	}
}

BYTE TWI0_WriteBuf(BYTE DevAddr,u16 RegStartAddr,BYTE *pBuf,BYTE Len)
{
	BYTE i;
	BYTE Flag;
	Flag=1;

	SICON |=STA;						// Send START
	TWI0OvTime=5;
	SICON &=~SI;			
	while((SICON&SI)!=SI){if(TWI0OvTime==0) goto TWI0_WRITE_ERR;}		// wait completed, if time overflow,then return fail.
	SICON &=~STA;

	SICON=SICON|(AA);	   

	Flag++;
	SIDAT = DevAddr&0xFE;				// send Slave Device address 
	TWI0OvTime=5;
	SICON &=~SI;			
	while((SICON&SI)!=SI){if(TWI0OvTime==0) goto TWI0_WRITE_ERR;}		// wait completed, if time overflow,then return fail.

	Flag++;
	SIDAT = HIBYTE(RegStartAddr);		// send Slave Data address high
	TWI0OvTime=5;
	SICON &=~SI;			
	while((SICON&SI)!=SI){if(TWI0OvTime==0) goto TWI0_WRITE_ERR;}		// wait completed, if time overflow,then return fail.

	Flag++;
	SIDAT = LOBYTE(RegStartAddr);		// send Slave Data address low
	TWI0OvTime=5;
	SICON &=~SI;			
	while((SICON&SI)!=SI){if(TWI0OvTime==0) goto TWI0_WRITE_ERR;}		// wait completed, if time overflow,then return fail.


	Flag++;
	i=0;
	while(i<Len)
	{
		if(i==(Len-1))
		{
			SICON=SICON&(~AA);	   
		}
		else
		{
			SICON=SICON|(AA);	   
		}
		SIDAT=pBuf[i];			// send data
		TWI0OvTime=5;
		SICON &=~SI;			
		while((SICON&SI)!=SI){if(TWI0OvTime==0) goto TWI0_WRITE_ERR;}		// wait completed, if time overflow,then return fail.
		i++;
	}
	
	Flag++;
	SICON |= STO;				// send STOP
	TWI0OvTime=5;
	SICON &=~SI;			
	while((SICON&STO)==STO){if(TWI0OvTime==0) goto TWI0_WRITE_ERR;}		// wait completed, if time overflow,then return fail.
	SICON &=~STO;

	SICON = SICON &(~SI);		// clear interrupt flag

	return 0;
	
TWI0_WRITE_ERR:
	return Flag;
}


/***********************************************************************************
*Function:   	BYTE TWI0_ReadBuf(BYTE DevAddr,u16 RegStartAddr,BYTE *pBuf,BYTE Len)
*Description:
*				I2C Read data from Slave
*Input: 
*				BYTE DevAddr: Slave Device address
*				u16 RegStartAddr: Slave data address
*				BYTE *pBuf: Address of the buffer to be save
*				BYTE Len: Data length
*Output:
*				BYTE: 0->succeed, other->failure
*************************************************************************************/
BYTE TWI0_ReadBuf(BYTE DevAddr,u16 RegStartAddr,BYTE *pBuf,BYTE Len)
{
	BYTE i;
	BYTE Flag;
	Flag=1;
	
	SICON |=STA;				// send START
	TWI0OvTime=5;
	SICON &=~SI;			
	while((SICON&SI)!=SI){if(TWI0OvTime==0) goto TWI0_READ_ERR;}		// wait completed, if time overflow,then return fail.
	SICON &=~STA;

	Flag++;
	SICON=SICON|(AA);	   

	SIDAT = DevAddr&0xFE;		// send Slave Device address 
	TWI0OvTime=5;
	SICON &=~SI;			
	while((SICON&SI)!=SI){if(TWI0OvTime==0) goto TWI0_READ_ERR;}		// wait completed, if time overflow,then return fail.

	Flag++;
	SIDAT = HIBYTE(RegStartAddr);		// send Slave Data address high
	TWI0OvTime=5;
	SICON &=~SI;			
	while((SICON&SI)!=SI){if(TWI0OvTime==0) goto TWI0_READ_ERR;}		// wait completed, if time overflow,then return fail.

	Flag++;
	SIDAT = LOBYTE(RegStartAddr);		// send Slave Data address low
	TWI0OvTime=5;
	SICON &=~SI;			
	while((SICON&SI)!=SI){if(TWI0OvTime==0) goto TWI0_READ_ERR;}		// wait completed, if time overflow,then return fail.

	Flag++;
	SICON |= STA;				// send START again
	TWI0OvTime=5;
	SICON &=~SI;			
	while((SICON&SI)!=SI){if(TWI0OvTime==0) goto TWI0_READ_ERR;}		// wait completed, if time overflow,then return fail.
	SICON &=~STA;

	Flag++;
	SIDAT = DevAddr|0x01;		// send Slave Device address ,enter read mode
	TWI0OvTime=5;
	SICON &=~SI;			
	while((SICON&SI)!=SI){if(TWI0OvTime==0) goto TWI0_READ_ERR;}		// wait completed, if time overflow,then return fail.

	Flag++;
	i=0;
	while(i<Len)
	{
		if(i==(Len-1))
		{
			SICON=SICON&(~AA);	   
		}
		else
		{
			SICON=SICON|(AA);	   
		}
		TWI0OvTime=5;
		SICON &=~SI;			
		while((SICON&SI)!=SI){if(TWI0OvTime==0) goto TWI0_READ_ERR;}		// wait completed, if time overflow,then return fail.
		pBuf[i] = SIDAT; 			// read data
		i++;
	}
	
	Flag++;
	SICON |= STO;				// send STOP
	TWI0OvTime=5;
	SICON &=~SI;			
	while((SICON&STO)==STO){if(TWI0OvTime==0) goto TWI0_READ_ERR;}		// wait completed, if time overflow,then return fail.
	SICON &=~STO;

	SICON = SICON &(~SI);		// clear interrupt flag

	return 0;
	
TWI0_READ_ERR:
	SICON |= STO;				// send STOP
	SICON = SICON &(~SI);		// clear interrupt flag
	return Flag;
}

void InitPort(void)
{
	PORT_SetP2PushPull(BIT2|BIT4|BIT6);					// Set P22,P24,P26 as Push-Pull,For LED.
	PORT_SetP4OpenDrainPu(BIT0|BIT1);					// Set P40,P41as open-drain with pull-high,For I2C
}
void InitClock(void)
{
#if (MCU_SYSCLK==11059200)
#if (MCU_CPUCLK==MCU_SYSCLK)
	// SysClk=11.0592MHz CpuClk=11.0592MHz
	CLK_SetCKCON0(IHRCO_110592MHz|CPUCLK_SYSCLK_DIV_1|SYSCLK_MCKDO_DIV_1);
	
#else
	// SysClk=11.0592MHz CpuClk=5.5296MHz
	CLK_SetCKCON0(IHRCO_110592MHz|CPUCLK_SYSCLK_DIV_2|SYSCLK_MCKDO_DIV_1);
#endif
#endif

#if (MCU_SYSCLK==12000000)
#if (MCU_CPUCLK==MCU_SYSCLK)
	// SysClk=12MHz CpuClk=12MHz
	CLK_SetCKCON0(IHRCO_12MHz|CPUCLK_SYSCLK_DIV_1|SYSCLK_MCKDO_DIV_1);
	
#else
	// SysClk=12MHz CpuClk=6MHz
	CLK_SetCKCON0(IHRCO_12MHz|CPUCLK_SYSCLK_DIV_2|SYSCLK_MCKDO_DIV_1);
#endif
#endif

#if (MCU_SYSCLK==22118400)
#if (MCU_CPUCLK==MCU_SYSCLK)
	// SysClk=22.1184MHz CpuClk=22.1184MHz
	CLK_SetCKCON0(IHRCO_110592MHz|CPUCLK_SYSCLK_DIV_1|SYSCLK_MCKDO_DIV_1|ENABLE_CKM|CKM_OSCIN_DIV_2);
	DelayXus(100);
	// IHRCO, MCK=CKMIx4, OSCin=IHRCO
	CLK_SetCKCON2(ENABLE_IHRCO|MCK_CKMI_X4|OSCIn_IHRCO);
#else
	// SysClk=22.1184MHz CpuClk=11.0592MHz
	CLK_SetCKCON0(IHRCO_110592MHz|CPUCLK_SYSCLK_DIV_2|SYSCLK_MCKDO_DIV_1|ENABLE_CKM|CKM_OSCIN_DIV_2);
	DelayXus(100);
	// IHRCO, MCK=CKMIx4, OSCin=IHRCO
	CLK_SetCKCON2(ENABLE_IHRCO|MCK_CKMI_X4|OSCIn_IHRCO);
#endif
#endif

#if (MCU_SYSCLK==24000000)
#if (MCU_CPUCLK==MCU_SYSCLK)
	// SysClk=24MHz CpuClk=24MHz
	CLK_SetCKCON0(IHRCO_12MHz|CPUCLK_SYSCLK_DIV_1|SYSCLK_MCKDO_DIV_1|ENABLE_CKM|CKM_OSCIN_DIV_2);
	DelayXus(100);
	// IHRCO, MCK=CKMIx4, OSCin=IHRCO
	CLK_SetCKCON2(ENABLE_IHRCO|MCK_CKMI_X4|OSCIn_IHRCO);
#else
	// SysClk=24MHz CpuClk=12MHz
	CLK_SetCKCON0(IHRCO_12MHz|CPUCLK_SYSCLK_DIV_2|SYSCLK_MCKDO_DIV_1|ENABLE_CKM|CKM_OSCIN_DIV_2);
	DelayXus(100);
	// IHRCO, MCK=CKMIx4, OSCin=IHRCO
	CLK_SetCKCON2(ENABLE_IHRCO|MCK_CKMI_X4|OSCIn_IHRCO);
#endif
#endif

#if (MCU_SYSCLK==29491200)
#if (MCU_CPUCLK==MCU_SYSCLK)
	// Cpuclk high speed
	CLK_SetCpuCLK_HighSpeed();
	// SysClk=29.491200MHz CpuClk=29.491200MHz
	CLK_SetCKCON0(IHRCO_110592MHz|CPUCLK_SYSCLK_DIV_1|SYSCLK_MCKDO_DIV_1|ENABLE_CKM|CKM_OSCIN_DIV_2);
	DelayXus(100);
	// IHRCO, MCK=CKMIx5.33, OSCin=IHRCO
	CLK_SetCKCON2(ENABLE_IHRCO|MCK_CKMI_X533|OSCIn_IHRCO);
#else
	// SysClk=29.491200MHz CpuClk=14.7456MHz
	CLK_SetCKCON0(IHRCO_110592MHz|CPUCLK_SYSCLK_DIV_2|SYSCLK_MCKDO_DIV_1|ENABLE_CKM|CKM_OSCIN_DIV_2);
	DelayXus(100);
	// IHRCO, MCK=CKMIx5.33, OSCin=IHRCO
	CLK_SetCKCON2(ENABLE_IHRCO|MCK_CKMI_X533|OSCIn_IHRCO);
#endif
#endif

#if (MCU_SYSCLK==32000000)
#if (MCU_CPUCLK==MCU_SYSCLK)
	// Cpuclk high speed
	CLK_SetCpuCLK_HighSpeed();
	// SysClk=32MHz CpuClk=32MHz
	CLK_SetCKCON0(IHRCO_12MHz|CPUCLK_SYSCLK_DIV_1|SYSCLK_MCKDO_DIV_1|ENABLE_CKM|CKM_OSCIN_DIV_2);
	DelayXus(100);
	// IHRCO, MCK=CKMIx5.33, OSCin=IHRCO
	CLK_SetCKCON2(ENABLE_IHRCO|MCK_CKMI_X533|OSCIn_IHRCO);
#else
	// SysClk=32MHz CpuClk=16MHz
	CLK_SetCKCON0(IHRCO_12MHz|CPUCLK_SYSCLK_DIV_2|SYSCLK_MCKDO_DIV_1|ENABLE_CKM|CKM_OSCIN_DIV_2);
	DelayXus(100);
	// IHRCO, MCK=CKMIx5.33, OSCin=IHRCO
	CLK_SetCKCON2(ENABLE_IHRCO|MCK_CKMI_X533|OSCIn_IHRCO);
#endif
#endif

#if (MCU_SYSCLK==44236800)
	// SysClk=44.2368MHz CpuClk=22.1184MHz
	CLK_SetCKCON0(IHRCO_110592MHz|CPUCLK_SYSCLK_DIV_1|SYSCLK_MCKDO_DIV_1|ENABLE_CKM|CKM_OSCIN_DIV_2);
	DelayXus(100);
	// IHRCO, MCK=CKMIx8, OSCin=IHRCO
	CLK_SetCKCON2(ENABLE_IHRCO|MCK_CKMI_X8|OSCIn_IHRCO);
#endif

#if (MCU_SYSCLK==48000000)
	// SysClk=48MHz CpuClk=24MHz
	CLK_SetCKCON0(IHRCO_12MHz|CPUCLK_SYSCLK_DIV_2|SYSCLK_MCKDO_DIV_1|ENABLE_CKM|CKM_OSCIN_DIV_2);
	DelayXus(100);
	// IHRCO, MCK=CKMIx8, OSCin=IHRCO
	CLK_SetCKCON2(ENABLE_IHRCO|MCK_CKMI_X8|OSCIn_IHRCO);
#endif

	// P60 Output MCK/4
	//CLK_P60OC_MCKDiv4();
}

void InitTWI0()
{
	TWI0_Clear();
	TWI0_SetClock(TWI0_CLK_SYSCLK_32);
	TWI0_SetUseP40P41();
	TWI0_Enable();
}

void InitTimer0(void)
{
	TM_SetT0Mode_1_16BIT_TIMER();			// TIMER0 Mode: 16-bit
	TM_SetT0Clock_SYSCLKDiv12();			// TIMER0 Clock source: SYSCLK/12
	TM_SetT0Gate_Disable();					// TIMER0 disable gate
	
	TM_SetT0LowByte(TIMER_12T_1ms_TL);		// Sets TL0 value
	TM_SetT0HighByte(TIMER_12T_1ms_TH);		// Sets TH0 value
	
	TM_EnableT0();							// Enable TIMER0
}


void main()
{
	System_Init();
	InitPort();
	//InitClock();
	InitTWI0();
	//InitTimer0();
	//__DRV_URT0_Mode_Easy_Select(UART0_8BIT_CONFIG18);
	while(1)
	{
		DelayXms(500);
		printf("hello there");
	}
}