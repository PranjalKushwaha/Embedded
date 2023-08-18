#ifndef __REG_MG82F6D17_H
#define __REG_MG82F6D17_H

#include <compiler.h> 

#define GF_7         0x80
#define GF_6         0x40
#define GF_5         0x20
#define GF_4         0x10
#define GF_3         0x80
#define GF_2         0x04
#define GF_1         0x02
#define GF_0         0x01

SFR(SP, 0x81);
SFR(DPL, 0x82);
SFR(DPH, 0x83);

SFR(SPSTAT,0x84);
// (bits in SPSTAT)
#define SPIF         0x80
#define WCOL         0x40
#define THRF         0x20
#define SPIBSY       0x10
#define MODF         0x08
#define SPR2         0x01


SFR(SPCON,0x85);

// (bits in SPCON)
#define SSIG         0x80
#define SPEN         0x40
#define DORD         0x20
#define MSTR         0x10
#define CPOL         0x08
#define CPHA         0x04
#define SPR1         0x02
#define SPR0         0x01

SFR(SPDAT,0x86);

SFR(PCON0,0x87);
// (bits in PCON0)
#define SMOD1        0x80
#define SMOD0        0x40
#define POF0         0x10
#define PD           0x02
#define IDL          0x01


SFR(TCON,0x88);
// (bits in TCON)
/*  TCON  */
__sbit __at (0x88) IT0  ;
__sbit __at (0x89) IE0  ;
__sbit __at (0x8A) IT1  ;
__sbit __at (0x8B) IE1  ;
__sbit __at (0x8C) TR0  ;
__sbit __at (0x8D) TF0  ;
__sbit __at (0x8E) TR1  ;
__sbit __at (0x8F) TF1  ;


SFR(TMOD,0x89);
// (bits in TMOD)
#define T1GATE       0x80
#define T1C_T        0x40
#define T1M1         0x20
#define T1M0         0x10
#define T0GATE       0x08
#define T0C_T        0x04
#define T0M1         0x02
#define T0M0         0x01


SFR(TL0,0x8A);
SFR(TL1,0x8B);
SFR(TH0,0x8C);
SFR(TH1,0x8D);

SFR(SFIE,0x8E);
// (bits in SFIE)
#define SIDFIE       0x80
#define RTCFIE       0x10
#define BOF1IE       0x04
#define BOF0IE       0x02
#define WDTFIE       0x01

SFR(XRPS,0x8F);

SFR(P1,0x90);
// (bits in P1)
__sbit __at (0x90) P10 ;
__sbit __at (0x91) P11 ;
__sbit __at (0x92) P12 ;
__sbit __at (0x93) P13 ;
__sbit __at (0x94) P14 ;
__sbit __at (0x95) P15 ;
__sbit __at (0x96) P16 ;
__sbit __at (0x97) P17 ;


SFR(P1M0,0x91);
// (bits in P1M0)
#define P1M07        0x80
#define P1M06        0x40
#define P1M05        0x20
#define P1M01        0x02
#define P1M00        0x01


SFR(P1M1,0x92);
// (bits in P1M1)
#define P1M17        0x80
#define P1M16        0x40
#define P1M15        0x20
#define P1M11        0x02
#define P1M10        0x01


SFR(P2M1,0x92);
// (bits in P2M1)
#define P2M14        0x10
#define P2M12        0x04


SFR(P4M1,0x92);
// (bits in P4M1)
#define P4M17        0x80
#define P4M15        0x20
#define P4M14        0x10


SFR(P6M1,0x92);
// (bits in P6M1)
#define P6M11        0x02
#define P6M10        0x01

SFR(P3FDC,0x92);
SFR(P1FDC,0x92);
SFR(P2FDC,0x92);
SFR(P4FDC,0x92);

SFR(T2MOD1,0x93);
// (bits in T2MOD1)
#define TL2CS        0x80
#define TF2IG        0x40
#define TL2IS        0x20
#define T2CKS        0x10
#define T2MS1        0x08
#define CP2S2        0x04
#define CP2S1        0x02
#define CP2S0        0x01


SFR(T3MOD1,0x93);
// (bits in T3MOD1)
#define TL3CS        0x80
#define TF3IG        0x40
#define T3CKS        0x10
#define T3MS1        0x08
#define CP3S2        0x04
#define CP3S1        0x02
#define CP3S0        0x01


SFR(DMACR0,0x94);
// (bits in DMACR0)
#define DMAE0        0x08
#define DMAS0        0x04
#define DIE0         0x02
#define DCF0         0x01


SFR(DMACG0,0x94);
// (bits in DMACG0)
#define PDMAH        0x80
#define PDMAL        0x40
#define CRCW0        0x20
#define EXTS10       0x08
#define EXTS00       0x04
#define FAEN0        0x02
#define LOOP0        0x01


SFR(DMADS0,0x94);
// (bits in DMADS0)
#define DSS30        0x80
#define DSS20        0x40
#define DSS10        0x20
#define DSS00        0x10
#define DDS30        0x08
#define DDS20        0x04
#define DDS10        0x02
#define DDS00        0x01


SFR(P2M0,0x95);
// (bits in P2M0)
#define P2M04        0x10
#define P2M02        0x04


SFR(TREN0,0x95);
// (bits in TREN0)
#define TR3LE        0x40
#define TR2LE        0x20
#define TR3E         0x08
#define TR2E         0x04
#define TR1E         0x02
#define TR0E         0x01


SFR(TRLC0,0x95);
// (bits in TRLC0)
#define TL3RLC       0x40
#define TL2RLC       0x20
#define T3RLC        0x08
#define T2RLC        0x04
#define T1RLC        0x02
#define T0RLC        0x01


SFR(TSPC0,0x95);
// (bits in TSPC0)
#define TL3SC        0x40
#define TL2SC        0x20
#define T3SC         0x08
#define T2SC         0x04
#define T1SC         0x02
#define T0SC         0x01

SFR(BOREV,0x96);

SFR(PCON1,0x97);
// (bits in PCON1)
#define SWRF         0x80
#define EXRF         0x40
#define RTCF         0x10
#define BOF1         0x04
#define BOF0         0x02
#define WDTF         0x01


SFR(S0CON,0x98);
// (bits in S0CON)
__sbit __at (0x98) RI0   ;
__sbit __at (0x99) TI0   ;
__sbit __at (0x9A) RB80 ;
__sbit __at (0x9B) TB80  ;
__sbit __at (0x9C) REN0 ;
__sbit __at (0x9D) SM20  ;
__sbit __at (0x9E) SM10  ;
__sbit __at (0x9F) SM00  ;


SFR(S1CON,0x98);
// (bits in S1CON)
__sbit __at (0x98) RI1   ;
__sbit __at (0x99) TI1   ;
__sbit __at (0x9A) RB81 ;
__sbit __at (0x9B) TB81  ;
__sbit __at (0x9C) REN1 ;
__sbit __at (0x9D) SM21  ;
__sbit __at (0x9E) SM11  ;
__sbit __at (0x9F) SM01  ;


SFR(S0BUF,0x99);
SFR(S1BUF,0x99);
SFR(S0BRT,0x9A);
SFR(S1BRT,0x9A);
SFR(S0BRC,0x9B);
SFR(S1BRC,0x98);

SFR(S0CFG,0x9C);
// (bits in S0CFG)
#define URTS         0x80
#define SMOD2        0x40
#define URM0X3       0x20
#define SM30         0x10
#define S0DOR        0x08
#define BTI          0x04
#define UTIE         0x02
#define SMOD3        0x01


SFR(S1CFG,0x9C);
// (bits in S1CFG)
#define SM31         0x80
#define S1M0X3       0x40
#define S1DOR        0x20
#define S1TR         0x10
#define S1MOD1       0x08
#define S1TX12       0x04
#define S1CKOE       0x02
#define S1TME        0x01


SFR(S0CFG1,0x9D);
// (bits in S0CFG1)
#define SBF0         0x80
#define TXER0        0x40
#define S0SB16       0x20
#define ATBR0        0x10
#define TXRX0        0x08
#define SYNC0        0x04


SFR(P2,0xA0);
// (bits in P2)
__sbit __at(0xA2)   P22 ;
__sbit __at(0xA4)   P24 ;


SFR(AUXR0,0xA1);
// (bits in AUXR0)
#define P60OC1       0x80
#define P60OC0       0x40
#define P60FD        0x20
#define PBKF         0x10
#define INT1H        0x02
#define INT0H        0x01


SFR(AUXR1,0xA2);
// (bits in AUXR1)
#define CRCDS1       0x20
#define CRCDS0       0x10
#define DPS          0x01


SFR(AUXR2,0xA3);
// (bits in AUXR2)
#define STAF         0x80
#define STOF         0x40
#define T1X12        0x08
#define T0X12        0x04
#define T1CKOE       0x02
#define T0CKOE       0x01


SFR(AUXR3,0xA4);
// (bits in AUXR3)
#define T0PS1        0x80
#define T0PS0        0x40
#define BPOC1        0x20
#define BPOC0        0x10
#define S0PS0        0x08
#define TWIPS1       0x04
#define TWIPS0       0x02
#define T0XL         0x01


SFR(AUXR4,0xA4);
// (bits in AUXR4)
#define T2PS1        0x80
#define T2PS0        0x40
#define T1PS1        0x20
#define T1PS0        0x10


SFR(AUXR5,0xA4);
// (bits in AUXR5)
#define C0IC4S0      0x80
#define C0IC2S0      0x40
#define C0PPS1       0x20
#define C0PPS0       0x10
#define C0PS0        0x04
#define ECIPS0       0x02
#define C0COPS       0x01


SFR(AUXR6,0xA4);
// (bits in AUXR6)
#define KBI4PS1      0x80
#define KBI4PS0      0x40
#define KBI6PS0      0x20
#define KBI2PS0      0x10
#define SnMIPS       0x02
#define S0COPS       0x01


SFR(AUXR7,0xA4);
// (bits in AUXR7)
#define POE5         0x80
#define POE4         0x40
#define C0CKOE       0x20
#define SPI0M0       0x10


SFR(AUXR8,0xA4);
// (bits in AUXR8)
#define POE7         0x80
#define POE6         0x40
#define C0PPS2       0x20
#define KBI0PS0      0x08
#define S1COPS       0x04


SFR(AUXR9,0xA4);
// (bits in AUXR9)
#define T1G1         0x20
#define T0G1         0x10
#define C0FDC1       0x08
#define C0FDC0       0x04
#define S1PS1        0x02
#define S1PS0        0x01


SFR(AUXR10,0xA4);
// (bits in AUXR10)
#define SPIPS0       0x10
#define S0PS1        0x08
#define TWICF        0x02
#define PAA          0x01


SFR(AUXR11,0xA4);
// (bits in AUXR11)
#define P30AM        0x80
#define C0M0         0x02
#define C0OFS        0x01


SFR(EIE2,0xA5);
// (bits in EIE2)
#define ET3          0x01


SFR(EIP2L,0xA6);
// (bits in EIP2L)
#define PT3L         0x01


SFR(EIP2H,0xA7);
// (bits in EIP2H)
#define PT3H         0x01


SFR(IE,0xA8);
// (bits in IE)
__sbit __at(0xAF)   EA ;
__sbit __at(0xAE)   EDMA ;
__sbit __at(0xAD)   ET2 ;
__sbit __at(0xAC)   ES0 ;
__sbit __at(0xAB)   ET1 ;
__sbit __at(0xAA)   EX1 ;
__sbit __at(0xA9)   ET0 ;
__sbit __at(0xA8)   EX0 ;


SFR(ADDR,0xA9);

SFR(SFRPI,0xAC);
// (bits in SFRPI)
#define IDX3         0x08
#define IDX2         0x04
#define IDX1         0x02
#define IDX0         0x01


SFR(EIE1,0xAD);
// (bits in EIE1)
#define ETWI0        0x40
#define EKB          0x20
#define ES1          0x10
#define ESF          0x08
#define EPCA         0x04
#define EADC         0x02
#define ESPI         0x01


SFR(EIP1L,0xAE);
// (bits in EIP1L)
#define PTWI0L       0x40
#define PKBL         0x20
#define PS1L         0x10
#define PSFL         0x08
#define PPCAL        0x04
#define PADCL        0x02
#define PSPIL        0x01


SFR(EIP1H,0xAF);
// (bits in EIP1H)
#define PTWI0H       0x40
#define PKBH         0x20
#define PS1H         0x10
#define PSFH         0x08
#define PPCAH        0x04
#define PADCH        0x02
#define PSPIH        0x01


SFR(P3,0xB0);
// (bits in P3)
__sbit __at(0xB5)   P35 ;
__sbit __at(0xB4)   P34 ;
__sbit __at(0xB3)   P33 ;
__sbit __at(0xB1)   P31 ;
__sbit __at(0xB0)   P30 ;


SFR(P3M0,0xB1);
// (bits in P3M0)
#define P3M05        0x20
#define P3M04        0x10
#define P3M03        0x08
#define P3M01        0x02
#define P3M00        0x01


SFR(P3M1,0xB2);
// (bits in P3M1)
#define P3M15        0x20
#define P3M14        0x10
#define P3M13        0x08
#define P3M11        0x02
#define P3M10        0x01


SFR(P4M0,0xB3);
// (bits in P4M0)
#define P4M07        0x80
#define P4M05        0x20
#define P4M04        0x10


SFR(PDRVC0,0xB4);
// (bits in PDRVC0)
#define P3DC1        0x80
#define P3DC0        0x40
#define P2DC1        0x20
#define P2DC0        0x10
#define P1DC1        0x08
#define P1DC0        0x04


SFR(PDRVC1,0xB4);
// (bits in PDRVC1)
#define P4DC1        0x02


SFR(P6M0,0xB5);
// (bits in P6M0)
#define P6M01        0x02
#define P6M00        0x01


SFR(RTCTM,0xB6);
// (bits in RTCTM)
#define RTCCS1       0x80
#define RTCCS0       0x40
#define RTCCT5       0x20
#define RTCCT4       0x10
#define RTCCT3       0x08
#define RTCCT2       0x04
#define RTCCT1       0x02
#define RTCCT0       0x01


SFR(IP0H,0xB7);
// (bits in IP0H)
#define PX2H         0x40
#define PT2H         0x20
#define PSH          0x10
#define PT1H         0x08
#define PX1H         0x04
#define PT0H         0x02
#define PX0H         0x01


SFR(IP0L,0xB8);
// (bits in IP0L)
__sbit __at(0xBE)   PX2L ;
__sbit __at(0xBD)   PT2L ;
__sbit __at(0xBC)   PSL  ;
__sbit __at(0xBB)   PT1L ;
__sbit __at(0xBA)   PX1L ;
__sbit __at(0xB9)   PT0L ;
__sbit __at(0xB8)   PX0L ;

SFR(SADEN,0xB9);

SFR(S0CR1,0xB9);
// (bits in S0CR1)
#define S0TR         0x80
#define S0TX12       0x40
#define S0TCK        0x20
#define S0RCK        0x10
#define S0CKOE       0x08
#define ARTE         0x04


SFR(PWMCR,0xBC);
// (bits in PWMCR)
#define PCAE         0x80
#define EXDT         0x40
#define PBKM         0x20
#define PBKE11       0x10
#define PBKE10       0x08
#define PBKE02       0x04
#define PBKE01       0x02
#define PBKE00       0x01


SFR(PDTCRA,0xBC);
// (bits in PDTCRA)
#define DTPS1        0x80
#define DTPS0        0x40
#define DT5          0x20
#define DT4          0x10
#define DT3          0x08
#define DT2          0x04
#define DT1          0x02
#define DT0          0x01

SFR(CRC0DA,0xBD);

SFR(RTCCR,0xBE);
// (bits in RTCCR)
#define RTCE         0x80
#define RTCO         0x40
#define RTCRL5       0x20
#define RTCRL4       0x10
#define RTCRL3       0x08
#define RTCRL2       0x04
#define RTCRL1       0x02
#define RTCRL0       0x01

SFR(CKCON1,0xBF);

SFR(XICON,0xC0);
// (bits in XICON)
__sbit __at(0xC2)   INT2H ;
__sbit __at(0xC2)   EX2 ;
__sbit __at(0xC1)   IE2 ;
__sbit __at(0xC0)   IT2 ;


SFR(XICFG,0xC1);
// (bits in XICFG)
#define INT1IS1      0x80
#define INT1IS0      0x40
#define INT0IS1      0x20
#define INT0IS0      0x10
#define X2FLT        0x04
#define X1FLT        0x02
#define X0FLT        0x01


SFR(XICFG1,0xC1);
// (bits in XICFG1)
#define INT1IS2      0x80
#define INT0IS2      0x40
#define INT2IS1      0x20
#define INT2IS0      0x10
#define X2FLT1       0x04
#define X1FLT1       0x02
#define X0FLT1       0x01


SFR(ADCFG0,0xC3);
// (bits in ADCFG0)
#define ADCKS2       0x80
#define ADCKS1       0x40
#define ADCKS0       0x20
#define ADRJ         0x10
#define ACHS         0x08
#define SMPF         0x04
#define ADTM1        0x02
#define ADTM0        0x01


SFR(ADCFG1,0xC3);
// (bits in ADCFG1)
#define IGADCI       0x80
#define EADCWI       0x40
#define SMPFIE       0x20
#define SIGN         0x10
#define AOS3         0x08
#define AOS2         0x04
#define AOS1         0x02
#define AOS0         0x01


SFR(ADCFG2,0xC3);
// (bits in ADCFG2)
#define SHT7         0x80
#define SHT6         0x40
#define SHT5         0x20
#define SHT4         0x10
#define SHT3         0x08
#define SHT2         0x04
#define SHT1         0x02
#define SHT0         0x01


SFR(ADCFG3,0xC3);
// (bits in ADCFG3)
#define ADPS1        0x80
#define ADPS0        0x40
#define ARES1        0x08
#define ARES0        0x04
#define ADES0        0x02


SFR(ADCFG4,0xC3);
// (bits in ADCFG4)
#define ADWM0        0x40
#define ADTM3        0x20
#define ADTM2        0x10
#define DBSD         0x02
#define DOSD         0x01

SFR(ADCFG5,0xC3);
// (bits in ADCFG5)
#define ASCE7        0x80
#define ASCE6        0x40
#define ASCE5        0x20
#define ASCE4        0x10
#define ASCE3        0x08
#define ASCE2        0x04
#define ASCE1        0x02
#define ASCE0        0x01


SFR(ADCFG11,0xC3);
// (bits in ADCFG11)
#define WHB3         0x80
#define WHB2         0x40
#define WHB1         0x20
#define WHB0         0x10


SFR(ADCFG12,0xC3);
// (bits in ADCFG12)
#define WHB11        0x80
#define WHB10        0x40
#define WHB9         0x20
#define WHB8         0x10
#define WHB7         0x08
#define WHB6         0x04
#define WHB5         0x02
#define WHB4         0x01


SFR(ADCFG13,0xC3);
// (bits in ADCFG13)
#define WLB3         0x80
#define WLB2         0x40
#define WLB1         0x20
#define WLB0         0x10


SFR(ADCFG14,0xC3);
// (bits in ADCFG14)
#define WLB11        0x80
#define WLB10        0x40
#define WLB9         0x20
#define WLB8         0x10
#define WLB7         0x08
#define WLB6         0x04
#define WLB5         0x02
#define WLB4         0x01


SFR(ADCON0,0xC4);
// (bits in ADCON0)
#define ADCEN        0x80
#define ADCWI        0x40
#define CHS3         0x20
#define ADCI         0x10
#define ADCS         0x08
#define CHS2         0x04
#define CHS1         0x02
#define CHS0         0x01


SFR(ADCDL,0xC5);
// (bits in ADCDL)
#define ADCV3        0x80
#define ADCV2        0x40
#define ADCV1        0x20
#define ADCV0        0x10


SFR(ADCDH,0xC6);
// (bits in ADCDH)
#define ADCV11       0x80
#define ADCV10       0x40
#define ADCV9        0x20
#define ADCV8        0x10
#define ADCV7        0x08
#define ADCV6        0x04
#define ADCV5        0x02
#define ADCV4        0x01


SFR(CKCON0,0xC7);
// (bits in CKCON0)
#define AFS          0x80
#define ENCKM        0x40
#define CKMIS1       0x20
#define CKMIS0       0x10
#define CCKS         0x08
#define SCKS2        0x04
#define SCKS1        0x02
#define SCKS0        0x01


SFR(T2CON,0xC8);
// (bits in T2CON)
__sbit __at(0xCF)   TF2 ;
__sbit __at(0xCE)   EXF2;
__sbit __at(0xCD)   RCLK_TF2L ;
__sbit __at(0xCC)   TCLK_TL2IE ;
__sbit __at(0xCB)   EXEN2 ;
__sbit __at(0xCA)   TR2;
__sbit __at(0xC9)   C_T2 ;
__sbit __at(0xC8)   CP_RL2 ;



SFR(T3CON,0xC8);
// (bits in T3CON)
__sbit __at(0xCF)   TF3 ;
__sbit __at(0xCE)   EXF3;
__sbit __at(0xCD)   TF3L ;
__sbit __at(0xCC)   TL3IE ;
__sbit __at(0xCB)   EXEN3 ;
__sbit __at(0xCA)   TR3;
__sbit __at(0xC9)   C_T3 ;
__sbit __at(0xC8)   CP_RL3 ;


SFR(T5CON,0xC8);
// (bits in T5CON)
__sbit __at(0xCF)   TF5 ;
__sbit __at(0xCD)   T5CKS1;
__sbit __at(0xCC)   T5CKS0 ;
__sbit __at(0xCB)   T51E ;
__sbit __at(0xCA)   TR5;
__sbit __at(0xC9)   T5GAT1 ;
__sbit __at(0xC8)   T5GAT0 ;


SFR(T6CON,0xC8);
// (bits in T6CON)
__sbit __at(0xCF)   TF6 ;
__sbit __at(0xCD)   T6CKS1;
__sbit __at(0xCC)   T6CKS0 ;
__sbit __at(0xCB)   T61E ;
__sbit __at(0xCA)   TR6;
__sbit __at(0xC9)   T6GAT1 ;
__sbit __at(0xC8)   T6GAT0 ;



SFR(T2MOD,0xC9);
// (bits in T2MOD)
#define T2SPL        0x80
#define TL2X12       0x40
#define T2EXH        0x20
#define T2X12        0x10
#define TR2L         0x08
#define TR2LC        0x04
#define T2OE         0x02
#define T2MS0        0x01


SFR(T3MOD,0xC9);
// (bits in T3MOD)
#define T3SPL        0x80
#define TL3X12       0x40
#define T3EXH        0x20
#define T3X12        0x10
#define TR3L         0x08
#define TR3LC        0x04
#define T3OE         0x02
#define T3MS0        0x01

SFR(RCAP2L,0xCA);
SFR(RCAP3L,0xCA);
SFR(TLR5,0xCA);
SFR(TLR6,0xCA);
SFR(RCAP2H,0xCB);
SFR(RCAP3H,0xCB);
SFR(THR5,0xCB);
SFR(THR6,0xCB);
SFR(TL2,0xCC);
SFR(TL3,0xCC);
SFR(TL5,0xCC);
SFR(TL6,0xCC);
SFR(TH2,0xCD);
SFR(TH3,0xCD);
SFR(TH5,0xCD);
SFR(TH6,0xCD);
SFR(CLRL,0xCE);
SFR(CHRL,0xCF);

SFR(PSW,0xD0);
// (bits in PSW)
__sbit __at(0xD7)   CY ;
__sbit __at(0xD6)   AC ;
__sbit __at(0xD5)   F0;
__sbit __at(0xD4)   RS1 ;
__sbit __at(0xD3)   RS0 ;
__sbit __at(0xD2)   OV;
__sbit __at(0xD1)   F1 ;
__sbit __at(0xD0)   P ;


SFR(SIADR,0xD1);
// (bits in SIADR)
#define GC           0x01

SFR(SIDAT,0xD2);
SFR(SISTA,0xD3);

SFR(SICON,0xD4);
// (bits in SICON)
#define CR2          0x80
#define ENSI         0x40
#define STA          0x20
#define STO          0x10
#define SI           0x08
#define AA           0x04
#define CR1          0x02
#define CR0          0x01

SFR(KBPATN,0xD5);

SFR(KBCON,0xD6);
// (bits in KBCON)
#define KBCS1        0x80
#define KBCS0        0x40
#define KBES         0x20
#define PATN_SEL     0x02
#define KBIF         0x01

SFR(KBMASK,0xD7);

SFR(CCON,0xD8);
// (bits in CCON)
__sbit __at(0xDF)   CF ;
__sbit __at(0xDE)   CR ;
__sbit __at(0xDD)   CCF5 ;
__sbit __at(0xDC)   CCF4 ;
__sbit __at(0xDB)   CCF3 ;
__sbit __at(0xDA)   CCF2 ;
__sbit __at(0xD9)   CCF1 ;
__sbit __at(0xD8)   CCF0 ;


SFR(CMOD,0xD9);
// (bits in CMOD)
#define CIDL         0x80
#define BME4         0x40
#define BME2         0x20
#define BME0         0x10
#define CPS2         0x08
#define CPS1         0x04
#define CPS0         0x02
#define ECF          0x01


SFR(CCAPM0,0xDA);
// (bits in CCAPM0)
#define DTE0         0x80
#define ECOM0        0x40
#define CAPP0        0x20
#define CAPN0        0x10
#define MAT0         0x08
#define TOG0         0x04
#define PWM0         0x02
#define ECCF0        0x01


SFR(CCAPM6,0xDA);
// (bits in CCAPM6)
#define BME6         0x80
#define ECOM6        0x40
#define CAPN6        0x10
#define MAT6         0x08
#define TOG6         0x04
#define PWM6         0x02
#define ECCF6        0x01


SFR(CCAPM1,0xDB);
// (bits in CCAPM1)
#define ECOM1        0x40
#define CAPP1        0x20
#define CAPN1        0x10
#define MAT1         0x08
#define TOG1         0x04
#define PWM1         0x02
#define ECCF1        0x01


SFR(CCAPM7,0xDB);
// (bits in CCAPM7)
#define ECOM7        0x40
#define CAPN7        0x10
#define MAT7         0x08
#define TOG7         0x04
#define PWM7         0x02
#define ECCF7        0x01


SFR(CCAPM2,0xDC);
// (bits in CCAPM2)
#define DTE2         0x80
#define ECOM2        0x40
#define CAPP2        0x20
#define CAPN2        0x10
#define MAT2         0x08
#define TOG2         0x04
#define PWM2         0x02
#define ECCF2        0x01


SFR(CCAPM3,0xDD);
// (bits in CCAPM3)
#define ECOM3        0x40
#define CAPP3        0x20
#define CAPN3        0x10
#define MAT3         0x08
#define TOG3         0x04
#define PWM3         0x02
#define ECCF3        0x01


SFR(CCAPM4,0xDE);
// (bits in CCAPM4)
#define DTE4         0x80
#define ECOM4        0x40
#define CAPP4        0x20
#define CAPN4        0x10
#define MAT4         0x08
#define TOG4         0x04
#define PWM4         0x02
#define ECCF4        0x01


SFR(CCAPM5,0xDF);
// (bits in CCAPM5)
#define ECOM5        0x40
#define CAPP5        0x20
#define CAPN5        0x10
#define MAT5         0x08
#define TOG5         0x04
#define PWM5         0x02
#define ECCF5        0x01


SFR(ACC,0xE0);
// (bits in ACC)
__sbit __at(0xE7)   ACC7 ;
__sbit __at(0xE6)   ACC6 ;
__sbit __at(0xE5)   ACC5 ;
__sbit __at(0xE4)   ACC4 ;
__sbit __at(0xE3)   ACC3 ;
__sbit __at(0xE2)   ACC2 ;
__sbit __at(0xE1)   ACC1 ;
__sbit __at(0xE0)   ACC0 ;


SFR(WDTCR,0xE1);
// (bits in WDTCR)
#define WREN         0x80
#define NSW          0x40
#define ENW          0x20
#define CLRW         0x10
#define WIDL         0x08
#define PS2          0x04
#define PS1          0x02
#define PS0          0x01

SFR(IFD,0xE2);
SFR(IFADRH,0xE3);
SFR(IFADRL,0xE4);

SFR(IFMT,0xE5);
// (bits in IFMT)
#define MS7          0x80
#define MS2          0x04
#define MS1          0x02
#define MS0          0x01

SFR(SCMD,0xE6);

SFR(ISPCR,0xE7);
// (bits in ISPCR)
#define ISPEN        0x80
#define SWBS         0x40
#define SRST         0x20
#define CFAIL        0x10


SFR(P4,0xE8);
// (bits in P4)
__sbit __at(0xEF)   P47 ;
__sbit __at(0xED)   P45;
__sbit __at(0xEC)   P44 ;


SFR(CL,0xE9);
SFR(CCAP0L,0xEA);
SFR(CCAP6L,0xEA);
SFR(CCAP1L,0xEB);
SFR(CCAP7L,0xEB);
SFR(CCAP2L,0xEC);
SFR(CCAP3L,0xED);
SFR(CCAP4L,0xEE);
SFR(CCAP5L,0xEF);

SFR(B,0xF0);
// (bits in B)
__sbit __at(0xF7)   B7 ;
__sbit __at(0xF6)   B6 ;
__sbit __at(0xF5)   B5 ;
__sbit __at(0xF4)   B4 ;
__sbit __at(0xF3)   B3 ;
__sbit __at(0xF2)   B2 ;
__sbit __at(0xF1)   B1 ;
__sbit __at(0xF0)   B0 ;


SFR(PAOE,0xF1);
// (bits in PAOE)
#define POE3         0x80
#define POE2B        0x40
#define POE2A        0x20
#define POE2         0x10
#define POE1         0x08
#define POE0B        0x04
#define POE0A        0x02
#define POE0         0x01


SFR(PCAPWM0,0xF2);
// (bits in PCAPWM0)
#define P0RS1        0x80
#define P0RS0        0x40
#define P0INV        0x04
#define ECAP0H       0x02
#define ECAP0L       0x01


SFR(PCAPWM6,0xF2);
// (bits in PCAPWM6)
#define P6RS1        0x80
#define P6RS0        0x40
#define CCF6         0x08
#define P6INV        0x04
#define ECAP6H       0x02
#define ECAP6L       0x01


SFR(PCAPWM1,0xF3);
// (bits in PCAPWM1)
#define P1RS1        0x80
#define P1RS0        0x40
#define P1INV        0x04
#define ECAP1H       0x02
#define ECAP1L       0x01


SFR(PCAPWM7,0xF3);
// (bits in PCAPWM7)
#define P7RS1        0x80
#define P7RS0        0x40
#define CCF7         0x08
#define P7INV        0x04
#define ECAP7H       0x02
#define ECAP7L       0x01


SFR(PCAPWM2,0xF4);
// (bits in PCAPWM2)
#define P2RS1        0x80
#define P2RS0        0x40
#define P2INV        0x04
#define ECAP2H       0x02
#define ECAP2L       0x01


SFR(PCAPWM3,0xF5);
// (bits in PCAPWM3)
#define P3RS1        0x80
#define P3RS0        0x40
#define P3INV        0x04
#define ECAP3H       0x02
#define ECAP3L       0x01


SFR(PCAPWM4,0xF6);
// (bits in PCAPWM4)
#define P4RS1        0x80
#define P4RS0        0x40
#define P4INV        0x04
#define ECAP4H       0x02
#define ECAP4L       0x01


SFR(PCAPWM5,0xF7);
// (bits in PCAPWM5)
#define P5RS1        0x80
#define P5RS0        0x40
#define P5INV        0x04
#define ECAP5H       0x02
#define ECAP5L       0x01


SFR(P6,0xF8);
// (bits in P6)
__sbit __at(0xF9)   P61 ;
__sbit __at(0xF8)   P60 ;


SFR(CH,0xF9);
SFR(CCAP0H,0xFA);
SFR(CCAP6H,0xFA);
SFR(CCAP1H,0xFB);
SFR(CCAP7H,0xFB);
SFR(CCAP2H,0xFC);
SFR(CCAP3H,0xFD);
SFR(CCAP4H,0xFE);
SFR(CCAP5H,0xFF);

//===== Page P =====//

#define IAPLB_P      0x03
// (bits in IAPLB)
#define IAPLB6_P     0x80
#define IAPLB5_P     0x40
#define IAPLB4_P     0x20
#define IAPLB3_P     0x10
#define IAPLB2_P     0x08
#define IAPLB1_P     0x04
#define IAPLB0_P     0x02


#define CKCON2_P     0x40
// (bits in CKCON2)
#define IHRCOE_P     0x10
#define MCKS1_P      0x08
#define MCKS0_P      0x04
#define OSCS1_P      0x02
#define OSCS0_P      0x01


#define CKCON3_P     0x41
// (bits in CKCON3)
#define WDTCS1_P     0x80
#define WDTCS0_P     0x40
#define FWKP_P       0x20
#define WDTFS_P      0x10
#define MCKD1_P      0x08
#define MCKD0_P      0x04


#define CKCON4_P     0x42
// (bits in CKCON4)
#define RCSS2_P      0x80
#define RCSS1_P      0x40
#define RCSS0_P      0x20
#define RPSC2_P      0x10
#define RPSC1_P      0x08
#define RPSC0_P      0x04
#define RTCCS3_P     0x02
#define RTCCS2_P     0x01


#define CKCON5_P     0x43
// (bits in CKCON5)
#define CKMS0_P      0x01


#define PCON2_P      0x44
// (bits in PCON2)
#define AWBOD1_P     0x80
#define AWBOD0_P     0x40
#define BO1S1_P      0x20
#define BO1S0_P      0x10
#define BO1RE_P      0x08
#define EBOD1_P      0x04
#define BO0RE_P      0x02


#define PCON3_P      0x45
// (bits in PCON3)
#define IVREN_P      0x80


#define SPCON0_P     0x48
// (bits in SPCON0)
#define P6CTL_P      0x40
#define P4CTL_P      0x20
#define WRCTL_P      0x10
#define CKCTL0_P     0x04
#define PWCTL1_P     0x02
#define PWCTL0_P     0x01


#define DCON0_P      0x4C
// (bits in DCON0)
#define HSE_P        0x80
#define IAPO_P       0x40
#define HSE1_P       0x20
#define IORCTL_P     0x04
#define RSTIO_P      0x02
#define OCDE_P       0x01


#define RTCCR_P      0x54
// (bits in RTCCR)
#define RTCE_P       0x80
#define RTCO_P       0x40
#define RTCRL5_P     0x20
#define RTCRL4_P     0x10
#define RTCRL3_P     0x08
#define RTCRL2_P     0x04
#define RTCRL1_P     0x02
#define RTCRL0_P     0x01


#define RTCTM_P      0x55
// (bits in RTCTM)
#define RTCCS1_P     0x80
#define RTCCS0_P     0x40
#define RTCCT5_P     0x20
#define RTCCT4_P     0x10
#define RTCCT3_P     0x08
#define RTCCT2_P     0x04
#define RTCCT1_P     0x02
#define RTCCT0_P     0x01


#define PCON0_P      0x80
// (bits in PCON0)
#define SMOD1_P      0x80
#define SMOD0_P      0x40
#define POF0_P       0x10
#define PD_P         0x02
#define IDL_P        0x01


#define PCON1_P      0x97
// (bits in PCON1)
#define SWRF_P       0x80
#define EXRF_P       0x40
#define RTCF_P       0x10
#define BOF1_P       0x04
#define BOF0_P       0x02
#define WDTF_P       0x01


#define CKCON0_P     0xC7
// (bits in CKCON0)
#define AFS_P        0x80
#define ENCKM_P      0x40
#define CKMIS1_P     0x20
#define CKMIS0_P     0x10
#define CCKS_P       0x08
#define SCKS2_P      0x04
#define SCKS1_P      0x02
#define SCKS0_P      0x01


#define WDTCR_P      0xE1
// (bits in WDTCR)
#define WREN_P       0x80
#define NSW_P        0x40
#define ENW_P        0x20
#define CLRW_P       0x10
#define WIDL_P       0x08
#define PS2_P        0x04
#define PS1_P        0x02
#define PS0_P        0x01


#define P4_P         0xE8
// (bits in P4)
#define P47_P        0x80
#define P45_P        0x20
#define P44_P        0x10


#define P6_P         0xF8
// (bits in P6)
#define P61_P        0x02
#define P60_P        0x01

#endif
