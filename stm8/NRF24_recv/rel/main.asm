;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _nrf24_stopListening
	.globl _nrf24_startListening
	.globl _nrf24_getDynamicPayloadSize
	.globl _nrf24_available
	.globl _nrf24_get_data
	.globl _nrf24_setup
	.globl _nrf24_listen
	.globl _nrf24_printDetails
	.globl _nrf24_write_register
	.globl _nrf24_read_register
	.globl _nrf24_init
	.globl _SPI_Send
	.globl _SPITransceiver
	.globl _InitSPI
	.globl _InitClock
	.globl _InitPort
	.globl _DelayXms
	.globl _DelayXus
	.globl _System_Init
	.globl _printf
	.globl _P60
	.globl _P61
	.globl _B0
	.globl _B1
	.globl _B2
	.globl _B3
	.globl _B4
	.globl _B5
	.globl _B6
	.globl _B7
	.globl _P44
	.globl _P45
	.globl _P47
	.globl _ACC0
	.globl _ACC1
	.globl _ACC2
	.globl _ACC3
	.globl _ACC4
	.globl _ACC5
	.globl _ACC6
	.globl _ACC7
	.globl _CCF0
	.globl _CCF1
	.globl _CCF2
	.globl _CCF3
	.globl _CCF4
	.globl _CCF5
	.globl _CR
	.globl _CF
	.globl _P
	.globl _F1
	.globl _OV
	.globl _RS0
	.globl _RS1
	.globl _F0
	.globl _AC
	.globl _CY
	.globl _T6GAT0
	.globl _T6GAT1
	.globl _TR6
	.globl _T61E
	.globl _T6CKS0
	.globl _T6CKS1
	.globl _TF6
	.globl _T5GAT0
	.globl _T5GAT1
	.globl _TR5
	.globl _T51E
	.globl _T5CKS0
	.globl _T5CKS1
	.globl _TF5
	.globl _CP_RL3
	.globl _C_T3
	.globl _TR3
	.globl _EXEN3
	.globl _TL3IE
	.globl _TF3L
	.globl _EXF3
	.globl _TF3
	.globl _CP_RL2
	.globl _C_T2
	.globl _TR2
	.globl _EXEN2
	.globl _TCLK_TL2IE
	.globl _RCLK_TF2L
	.globl _EXF2
	.globl _TF2
	.globl _IT2
	.globl _IE2
	.globl _EX2
	.globl _INT2H
	.globl _PX0L
	.globl _PT0L
	.globl _PX1L
	.globl _PT1L
	.globl _PSL
	.globl _PT2L
	.globl _PX2L
	.globl _P30
	.globl _P31
	.globl _P33
	.globl _P34
	.globl _P35
	.globl _EX0
	.globl _ET0
	.globl _EX1
	.globl _ET1
	.globl _ES0
	.globl _ET2
	.globl _EDMA
	.globl _EA
	.globl _P24
	.globl _P22
	.globl _SM01
	.globl _SM11
	.globl _SM21
	.globl _REN1
	.globl _TB81
	.globl _RB81
	.globl _TI1
	.globl _RI1
	.globl _SM00
	.globl _SM10
	.globl _SM20
	.globl _REN0
	.globl _TB80
	.globl _RB80
	.globl _TI0
	.globl _RI0
	.globl _P17
	.globl _P16
	.globl _P15
	.globl _P14
	.globl _P13
	.globl _P12
	.globl _P11
	.globl _P10
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _CCAP5H
	.globl _CCAP4H
	.globl _CCAP3H
	.globl _CCAP2H
	.globl _CCAP7H
	.globl _CCAP1H
	.globl _CCAP6H
	.globl _CCAP0H
	.globl _CH
	.globl _P6
	.globl _PCAPWM5
	.globl _PCAPWM4
	.globl _PCAPWM3
	.globl _PCAPWM2
	.globl _PCAPWM7
	.globl _PCAPWM1
	.globl _PCAPWM6
	.globl _PCAPWM0
	.globl _PAOE
	.globl _B
	.globl _CCAP5L
	.globl _CCAP4L
	.globl _CCAP3L
	.globl _CCAP2L
	.globl _CCAP7L
	.globl _CCAP1L
	.globl _CCAP6L
	.globl _CCAP0L
	.globl _CL
	.globl _P4
	.globl _ISPCR
	.globl _SCMD
	.globl _IFMT
	.globl _IFADRL
	.globl _IFADRH
	.globl _IFD
	.globl _WDTCR
	.globl _ACC
	.globl _CCAPM5
	.globl _CCAPM4
	.globl _CCAPM3
	.globl _CCAPM2
	.globl _CCAPM7
	.globl _CCAPM1
	.globl _CCAPM6
	.globl _CCAPM0
	.globl _CMOD
	.globl _CCON
	.globl _KBMASK
	.globl _KBCON
	.globl _KBPATN
	.globl _SICON
	.globl _SISTA
	.globl _SIDAT
	.globl _SIADR
	.globl _PSW
	.globl _CHRL
	.globl _CLRL
	.globl _TH6
	.globl _TH5
	.globl _TH3
	.globl _TH2
	.globl _TL6
	.globl _TL5
	.globl _TL3
	.globl _TL2
	.globl _THR6
	.globl _THR5
	.globl _RCAP3H
	.globl _RCAP2H
	.globl _TLR6
	.globl _TLR5
	.globl _RCAP3L
	.globl _RCAP2L
	.globl _T3MOD
	.globl _T2MOD
	.globl _T6CON
	.globl _T5CON
	.globl _T3CON
	.globl _T2CON
	.globl _CKCON0
	.globl _ADCDH
	.globl _ADCDL
	.globl _ADCON0
	.globl _ADCFG14
	.globl _ADCFG13
	.globl _ADCFG12
	.globl _ADCFG11
	.globl _ADCFG5
	.globl _ADCFG4
	.globl _ADCFG3
	.globl _ADCFG2
	.globl _ADCFG1
	.globl _ADCFG0
	.globl _XICFG1
	.globl _XICFG
	.globl _XICON
	.globl _CKCON1
	.globl _RTCCR
	.globl _CRC0DA
	.globl _PDTCRA
	.globl _PWMCR
	.globl _S0CR1
	.globl _SADEN
	.globl _IP0L
	.globl _IP0H
	.globl _RTCTM
	.globl _P6M0
	.globl _PDRVC1
	.globl _PDRVC0
	.globl _P4M0
	.globl _P3M1
	.globl _P3M0
	.globl _P3
	.globl _EIP1H
	.globl _EIP1L
	.globl _EIE1
	.globl _SFRPI
	.globl _ADDR
	.globl _IE
	.globl _EIP2H
	.globl _EIP2L
	.globl _EIE2
	.globl _AUXR11
	.globl _AUXR10
	.globl _AUXR9
	.globl _AUXR8
	.globl _AUXR7
	.globl _AUXR6
	.globl _AUXR5
	.globl _AUXR4
	.globl _AUXR3
	.globl _AUXR2
	.globl _AUXR1
	.globl _AUXR0
	.globl _P2
	.globl _S0CFG1
	.globl _S1CFG
	.globl _S0CFG
	.globl _S1BRC
	.globl _S0BRC
	.globl _S1BRT
	.globl _S0BRT
	.globl _S1BUF
	.globl _S0BUF
	.globl _S1CON
	.globl _S0CON
	.globl _PCON1
	.globl _BOREV
	.globl _TSPC0
	.globl _TRLC0
	.globl _TREN0
	.globl _P2M0
	.globl _DMADS0
	.globl _DMACG0
	.globl _DMACR0
	.globl _T3MOD1
	.globl _T2MOD1
	.globl _P4FDC
	.globl _P2FDC
	.globl _P1FDC
	.globl _P3FDC
	.globl _P6M1
	.globl _P4M1
	.globl _P2M1
	.globl _P1M1
	.globl _P1M0
	.globl _P1
	.globl _XRPS
	.globl _SFIE
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON0
	.globl _SPDAT
	.globl _SPCON
	.globl _SPSTAT
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _write_buffer
	.globl _data_buffer
	.globl _nrf24_write_register_PARM_2
	.globl _nrf24_read_register_PARM_2
	.globl _SPI_Send_PARM_2
	.globl _count
	.globl _putchar
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_SPSTAT	=	0x0084
_SPCON	=	0x0085
_SPDAT	=	0x0086
_PCON0	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_SFIE	=	0x008e
_XRPS	=	0x008f
_P1	=	0x0090
_P1M0	=	0x0091
_P1M1	=	0x0092
_P2M1	=	0x0092
_P4M1	=	0x0092
_P6M1	=	0x0092
_P3FDC	=	0x0092
_P1FDC	=	0x0092
_P2FDC	=	0x0092
_P4FDC	=	0x0092
_T2MOD1	=	0x0093
_T3MOD1	=	0x0093
_DMACR0	=	0x0094
_DMACG0	=	0x0094
_DMADS0	=	0x0094
_P2M0	=	0x0095
_TREN0	=	0x0095
_TRLC0	=	0x0095
_TSPC0	=	0x0095
_BOREV	=	0x0096
_PCON1	=	0x0097
_S0CON	=	0x0098
_S1CON	=	0x0098
_S0BUF	=	0x0099
_S1BUF	=	0x0099
_S0BRT	=	0x009a
_S1BRT	=	0x009a
_S0BRC	=	0x009b
_S1BRC	=	0x0098
_S0CFG	=	0x009c
_S1CFG	=	0x009c
_S0CFG1	=	0x009d
_P2	=	0x00a0
_AUXR0	=	0x00a1
_AUXR1	=	0x00a2
_AUXR2	=	0x00a3
_AUXR3	=	0x00a4
_AUXR4	=	0x00a4
_AUXR5	=	0x00a4
_AUXR6	=	0x00a4
_AUXR7	=	0x00a4
_AUXR8	=	0x00a4
_AUXR9	=	0x00a4
_AUXR10	=	0x00a4
_AUXR11	=	0x00a4
_EIE2	=	0x00a5
_EIP2L	=	0x00a6
_EIP2H	=	0x00a7
_IE	=	0x00a8
_ADDR	=	0x00a9
_SFRPI	=	0x00ac
_EIE1	=	0x00ad
_EIP1L	=	0x00ae
_EIP1H	=	0x00af
_P3	=	0x00b0
_P3M0	=	0x00b1
_P3M1	=	0x00b2
_P4M0	=	0x00b3
_PDRVC0	=	0x00b4
_PDRVC1	=	0x00b4
_P6M0	=	0x00b5
_RTCTM	=	0x00b6
_IP0H	=	0x00b7
_IP0L	=	0x00b8
_SADEN	=	0x00b9
_S0CR1	=	0x00b9
_PWMCR	=	0x00bc
_PDTCRA	=	0x00bc
_CRC0DA	=	0x00bd
_RTCCR	=	0x00be
_CKCON1	=	0x00bf
_XICON	=	0x00c0
_XICFG	=	0x00c1
_XICFG1	=	0x00c1
_ADCFG0	=	0x00c3
_ADCFG1	=	0x00c3
_ADCFG2	=	0x00c3
_ADCFG3	=	0x00c3
_ADCFG4	=	0x00c3
_ADCFG5	=	0x00c3
_ADCFG11	=	0x00c3
_ADCFG12	=	0x00c3
_ADCFG13	=	0x00c3
_ADCFG14	=	0x00c3
_ADCON0	=	0x00c4
_ADCDL	=	0x00c5
_ADCDH	=	0x00c6
_CKCON0	=	0x00c7
_T2CON	=	0x00c8
_T3CON	=	0x00c8
_T5CON	=	0x00c8
_T6CON	=	0x00c8
_T2MOD	=	0x00c9
_T3MOD	=	0x00c9
_RCAP2L	=	0x00ca
_RCAP3L	=	0x00ca
_TLR5	=	0x00ca
_TLR6	=	0x00ca
_RCAP2H	=	0x00cb
_RCAP3H	=	0x00cb
_THR5	=	0x00cb
_THR6	=	0x00cb
_TL2	=	0x00cc
_TL3	=	0x00cc
_TL5	=	0x00cc
_TL6	=	0x00cc
_TH2	=	0x00cd
_TH3	=	0x00cd
_TH5	=	0x00cd
_TH6	=	0x00cd
_CLRL	=	0x00ce
_CHRL	=	0x00cf
_PSW	=	0x00d0
_SIADR	=	0x00d1
_SIDAT	=	0x00d2
_SISTA	=	0x00d3
_SICON	=	0x00d4
_KBPATN	=	0x00d5
_KBCON	=	0x00d6
_KBMASK	=	0x00d7
_CCON	=	0x00d8
_CMOD	=	0x00d9
_CCAPM0	=	0x00da
_CCAPM6	=	0x00da
_CCAPM1	=	0x00db
_CCAPM7	=	0x00db
_CCAPM2	=	0x00dc
_CCAPM3	=	0x00dd
_CCAPM4	=	0x00de
_CCAPM5	=	0x00df
_ACC	=	0x00e0
_WDTCR	=	0x00e1
_IFD	=	0x00e2
_IFADRH	=	0x00e3
_IFADRL	=	0x00e4
_IFMT	=	0x00e5
_SCMD	=	0x00e6
_ISPCR	=	0x00e7
_P4	=	0x00e8
_CL	=	0x00e9
_CCAP0L	=	0x00ea
_CCAP6L	=	0x00ea
_CCAP1L	=	0x00eb
_CCAP7L	=	0x00eb
_CCAP2L	=	0x00ec
_CCAP3L	=	0x00ed
_CCAP4L	=	0x00ee
_CCAP5L	=	0x00ef
_B	=	0x00f0
_PAOE	=	0x00f1
_PCAPWM0	=	0x00f2
_PCAPWM6	=	0x00f2
_PCAPWM1	=	0x00f3
_PCAPWM7	=	0x00f3
_PCAPWM2	=	0x00f4
_PCAPWM3	=	0x00f5
_PCAPWM4	=	0x00f6
_PCAPWM5	=	0x00f7
_P6	=	0x00f8
_CH	=	0x00f9
_CCAP0H	=	0x00fa
_CCAP6H	=	0x00fa
_CCAP1H	=	0x00fb
_CCAP7H	=	0x00fb
_CCAP2H	=	0x00fc
_CCAP3H	=	0x00fd
_CCAP4H	=	0x00fe
_CCAP5H	=	0x00ff
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P10	=	0x0090
_P11	=	0x0091
_P12	=	0x0092
_P13	=	0x0093
_P14	=	0x0094
_P15	=	0x0095
_P16	=	0x0096
_P17	=	0x0097
_RI0	=	0x0098
_TI0	=	0x0099
_RB80	=	0x009a
_TB80	=	0x009b
_REN0	=	0x009c
_SM20	=	0x009d
_SM10	=	0x009e
_SM00	=	0x009f
_RI1	=	0x0098
_TI1	=	0x0099
_RB81	=	0x009a
_TB81	=	0x009b
_REN1	=	0x009c
_SM21	=	0x009d
_SM11	=	0x009e
_SM01	=	0x009f
_P22	=	0x00a2
_P24	=	0x00a4
_EA	=	0x00af
_EDMA	=	0x00ae
_ET2	=	0x00ad
_ES0	=	0x00ac
_ET1	=	0x00ab
_EX1	=	0x00aa
_ET0	=	0x00a9
_EX0	=	0x00a8
_P35	=	0x00b5
_P34	=	0x00b4
_P33	=	0x00b3
_P31	=	0x00b1
_P30	=	0x00b0
_PX2L	=	0x00be
_PT2L	=	0x00bd
_PSL	=	0x00bc
_PT1L	=	0x00bb
_PX1L	=	0x00ba
_PT0L	=	0x00b9
_PX0L	=	0x00b8
_INT2H	=	0x00c2
_EX2	=	0x00c2
_IE2	=	0x00c1
_IT2	=	0x00c0
_TF2	=	0x00cf
_EXF2	=	0x00ce
_RCLK_TF2L	=	0x00cd
_TCLK_TL2IE	=	0x00cc
_EXEN2	=	0x00cb
_TR2	=	0x00ca
_C_T2	=	0x00c9
_CP_RL2	=	0x00c8
_TF3	=	0x00cf
_EXF3	=	0x00ce
_TF3L	=	0x00cd
_TL3IE	=	0x00cc
_EXEN3	=	0x00cb
_TR3	=	0x00ca
_C_T3	=	0x00c9
_CP_RL3	=	0x00c8
_TF5	=	0x00cf
_T5CKS1	=	0x00cd
_T5CKS0	=	0x00cc
_T51E	=	0x00cb
_TR5	=	0x00ca
_T5GAT1	=	0x00c9
_T5GAT0	=	0x00c8
_TF6	=	0x00cf
_T6CKS1	=	0x00cd
_T6CKS0	=	0x00cc
_T61E	=	0x00cb
_TR6	=	0x00ca
_T6GAT1	=	0x00c9
_T6GAT0	=	0x00c8
_CY	=	0x00d7
_AC	=	0x00d6
_F0	=	0x00d5
_RS1	=	0x00d4
_RS0	=	0x00d3
_OV	=	0x00d2
_F1	=	0x00d1
_P	=	0x00d0
_CF	=	0x00df
_CR	=	0x00de
_CCF5	=	0x00dd
_CCF4	=	0x00dc
_CCF3	=	0x00db
_CCF2	=	0x00da
_CCF1	=	0x00d9
_CCF0	=	0x00d8
_ACC7	=	0x00e7
_ACC6	=	0x00e6
_ACC5	=	0x00e5
_ACC4	=	0x00e4
_ACC3	=	0x00e3
_ACC2	=	0x00e2
_ACC1	=	0x00e1
_ACC0	=	0x00e0
_P47	=	0x00ef
_P45	=	0x00ed
_P44	=	0x00ec
_B7	=	0x00f7
_B6	=	0x00f6
_B5	=	0x00f5
_B4	=	0x00f4
_B3	=	0x00f3
_B2	=	0x00f2
_B1	=	0x00f1
_B0	=	0x00f0
_P61	=	0x00f9
_P60	=	0x00f8
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_count::
	.ds 2
_SPI_Send_PARM_2:
	.ds 2
_SPI_Send_data_pack_65536_72:
	.ds 3
_nrf24_read_register_PARM_2:
	.ds 1
_nrf24_write_register_PARM_2:
	.ds 1
_nrf24_setup_rx_addr_65536_92:
	.ds 5
_nrf24_setup_tx_addr_65536_92:
	.ds 5
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
	.area	OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_data_buffer::
	.ds 33
_write_buffer::
	.ds 33
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	main.c:16: int count =0;
	clr	a
	mov	_count,a
	mov	(_count + 1),a
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	main.c:17: int putchar(int c)
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	mov	r6,dpl
;	main.c:19: BOREV = (char)c;
	mov	_BOREV,r6
;	main.c:21: bES = ES0;
	mov	c,_ES0
	clr	a
	rlc	a
	mov	r7,a
;	main.c:22: ES0 = 0;
;	assignBit
	clr	_ES0
;	main.c:24: S0BUF = BOREV;
	mov	_S0BUF,_BOREV
;	main.c:25: while (TI0 == 0)
00101$:
;	main.c:27: TI0 = 0;
;	assignBit
	jbc	_TI0,00114$
	sjmp	00101$
00114$:
;	main.c:28: ES0 = bES;
;	assignBit
	mov	a,r7
	add	a,#0xff
	mov	_ES0,c
;	main.c:29: return 0;
	mov	dptr,#0x0000
;	main.c:30: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DelayXus'
;------------------------------------------------------------
;xUs                       Allocated to registers 
;------------------------------------------------------------
;	main.c:32: void DelayXus(unsigned char xUs)
;	-----------------------------------------
;	 function DelayXus
;	-----------------------------------------
_DelayXus:
	mov	r7,dpl
;	main.c:34: while (xUs != 0)
00101$:
	mov	a,r7
	jz	00104$
;	main.c:74: xUs--;
	dec	r7
	sjmp	00101$
00104$:
;	main.c:76: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'DelayXms'
;------------------------------------------------------------
;xMs                       Allocated to registers 
;------------------------------------------------------------
;	main.c:84: void DelayXms(u16 xMs)
;	-----------------------------------------
;	 function DelayXms
;	-----------------------------------------
_DelayXms:
	mov	r6,dpl
	mov	r7,dph
;	main.c:86: while (xMs != 0)
00101$:
	mov	a,r6
	orl	a,r7
	jz	00104$
;	main.c:88: DelayXus(200);
	mov	dpl,#0xc8
	push	ar7
	push	ar6
	lcall	_DelayXus
;	main.c:89: DelayXus(200);
	mov	dpl,#0xc8
	lcall	_DelayXus
;	main.c:90: DelayXus(200);
	mov	dpl,#0xc8
	lcall	_DelayXus
;	main.c:91: DelayXus(200);
	mov	dpl,#0xc8
	lcall	_DelayXus
;	main.c:92: DelayXus(200);
	mov	dpl,#0xc8
	lcall	_DelayXus
	pop	ar6
	pop	ar7
;	main.c:93: xMs--;
	dec	r6
	cjne	r6,#0xff,00116$
	dec	r7
00116$:
	sjmp	00101$
00104$:
;	main.c:95: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'InitPort'
;------------------------------------------------------------
;	main.c:111: void InitPort(void)
;	-----------------------------------------
;	 function InitPort
;	-----------------------------------------
_InitPort:
;	main.c:113: PORT_SetP2PushPull(BIT2 | BIT4 | BIT6); // Set P22,P24,P26 as Push-Pull,For LED.
	orl	_P2M0,#0x54
	mov	_SFRPI,#0x01
	anl	_P2M1,#0xab
	mov	_SFRPI,#0x00
;	main.c:115: PORT_SetP3PushPull(BIT3);					   // Set P33 as Push-Pull, For nSS
	anl	_P3M0,#0xf7
	orl	_P3M1,#0x08
;	main.c:116: PORT_SetP1PushPull(BIT1 | BIT4 | BIT5 | BIT7); // Set P11(ce), P14(nSS),P15(MOSI),P17(SPICLK) as push-pull for output.
	orl	_P1M0,#0xb2
	anl	_P1M1,#0x4d
;	main.c:117: PORT_SetP1OpenDrainPu(BIT6);
	orl	_P1M0,#0x40
	orl	_P1M1,#0x40
;	main.c:118: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'InitClock'
;------------------------------------------------------------
;	main.c:119: void InitClock(void)
;	-----------------------------------------
;	 function InitClock
;	-----------------------------------------
_InitClock:
;	main.c:121: CKCON0 = 0 | 0x08 | 0 | 0x40 | 0x10;
	mov	_CKCON0,#0x58
;	main.c:122: DelayXus(100);
	mov	dpl,#0x64
;	main.c:135: }
	ljmp	_DelayXus
;------------------------------------------------------------
;Allocation info for local variables in function 'InitSPI'
;------------------------------------------------------------
;	main.c:137: void InitSPI(void)
;	-----------------------------------------
;	 function InitSPI
;	-----------------------------------------
_InitSPI:
;	main.c:139: SPCON = SPCON | (0x40);
	orl	_SPCON,#0x40
;	main.c:140: SPCON = SPCON | (0x80 | 0x10);
	orl	_SPCON,#0x90
;	main.c:141: SPCON = (SPCON & 0xFC) | (1 & 0x03);
	mov	a,_SPCON
	anl	a,#0xfc
	orl	a,#0x01
	mov	_SPCON,a
;	main.c:142: SPSTAT = (1 >> 2);
	mov	_SPSTAT,#0x00
;	main.c:143: SPCON = SPCON & (~0x08);
	anl	_SPCON,#0xf7
;	main.c:144: SPCON = SPCON & (~0x20);
	anl	_SPCON,#0xdf
;	main.c:145: SPCON = SPCON & (~0x04);
	anl	_SPCON,#0xfb
;	main.c:146: SFRPI = 1;
	mov	_SFRPI,#0x01
;	main.c:147: AUXR4 = AUXR4 & (~0x08);
	anl	_AUXR4,#0xf7
;	main.c:148: SFRPI = 0; // IO Port: nSS/P14,MOSI/P15,MISO/P16,SPICLK/P17
	mov	_SFRPI,#0x00
;	main.c:149: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SPITransceiver'
;------------------------------------------------------------
;SPI_DATA                  Allocated to registers 
;------------------------------------------------------------
;	main.c:151: unsigned char SPITransceiver(unsigned char SPI_DATA)
;	-----------------------------------------
;	 function SPITransceiver
;	-----------------------------------------
_SPITransceiver:
	mov	_SPDAT,dpl
;	main.c:154: while ((SPSTAT & 0x80) == 0)
00101$:
	mov	a,_SPSTAT
	jnb	acc.7,00101$
;	main.c:156: SPSTAT = SPSTAT | 0x80;
	orl	_SPSTAT,#0x80
;	main.c:157: return SPDAT;
	mov	dpl,_SPDAT
;	main.c:158: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'SPI_Send'
;------------------------------------------------------------
;len                       Allocated with name '_SPI_Send_PARM_2'
;data_pack                 Allocated with name '_SPI_Send_data_pack_65536_72'
;i                         Allocated to registers r3 r4 
;------------------------------------------------------------
;	main.c:160: void SPI_Send(unsigned char *data_pack, uint16_t len)
;	-----------------------------------------
;	 function SPI_Send
;	-----------------------------------------
_SPI_Send:
	mov	_SPI_Send_data_pack_65536_72,dpl
	mov	(_SPI_Send_data_pack_65536_72 + 1),dph
	mov	(_SPI_Send_data_pack_65536_72 + 2),b
;	main.c:163: SPI_nSS = 0;
;	assignBit
	clr	_P33
	mov	r3,#0x00
	mov	r4,#0x00
00103$:
;	main.c:164: for (; i < len; i++)
	mov	ar1,r3
	mov	ar2,r4
	clr	c
	mov	a,r1
	subb	a,_SPI_Send_PARM_2
	mov	a,r2
	subb	a,(_SPI_Send_PARM_2 + 1)
	jnc	00101$
;	main.c:166: data_pack[i] = SPITransceiver(data_pack[i]);
	mov	a,r3
	add	a,_SPI_Send_data_pack_65536_72
	mov	r0,a
	mov	a,r4
	addc	a,(_SPI_Send_data_pack_65536_72 + 1)
	mov	r1,a
	mov	r2,(_SPI_Send_data_pack_65536_72 + 2)
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	lcall	__gptrget
	mov	dpl,a
	push	ar4
	push	ar3
	push	ar2
	push	ar1
	push	ar0
	lcall	_SPITransceiver
	mov	r7,dpl
	pop	ar0
	pop	ar1
	pop	ar2
	pop	ar3
	pop	ar4
	mov	dpl,r0
	mov	dph,r1
	mov	b,r2
	mov	a,r7
	lcall	__gptrput
;	main.c:164: for (; i < len; i++)
	inc	r3
	cjne	r3,#0x00,00103$
	inc	r4
	sjmp	00103$
00101$:
;	main.c:168: SPI_nSS = 1;
;	assignBit
	setb	_P33
;	main.c:169: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_init'
;------------------------------------------------------------
;	main.c:176: void nrf24_init()
;	-----------------------------------------
;	 function nrf24_init
;	-----------------------------------------
_nrf24_init:
;	main.c:178: SPI_CE = 0;
;	assignBit
	clr	_P11
;	main.c:179: SPI_nSS = 0;
;	assignBit
	clr	_P33
;	main.c:180: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_read_register'
;------------------------------------------------------------
;len                       Allocated with name '_nrf24_read_register_PARM_2'
;reg                       Allocated to registers r7 
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	main.c:182: void nrf24_read_register(uint8_t reg, uint8_t len)
;	-----------------------------------------
;	 function nrf24_read_register
;	-----------------------------------------
_nrf24_read_register:
	mov	r7,dpl
;	main.c:185: data_buffer[0] = R_REGISTER | (REGISTER_MASK & reg);
	anl	ar7,#0x1f
	mov	dptr,#_data_buffer
	mov	a,r7
	movx	@dptr,a
;	main.c:186: for (i = 1; i <= len; i++)
	mov	r6,#0x01
	mov	r7,#0x00
00103$:
	mov	r4,_nrf24_read_register_PARM_2
	mov	r5,#0x00
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00101$
;	main.c:188: data_buffer[i] = NRF24_NOP;
	mov	a,r6
	add	a,#_data_buffer
	mov	dpl,a
	mov	a,r7
	addc	a,#(_data_buffer >> 8)
	mov	dph,a
	mov	a,#0xff
	movx	@dptr,a
;	main.c:186: for (i = 1; i <= len; i++)
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00101$:
;	main.c:190: SPI_Send(data_buffer, len + 1);
	mov	a,#0x01
	add	a,r4
	mov	_SPI_Send_PARM_2,a
	clr	a
	addc	a,r5
	mov	(_SPI_Send_PARM_2 + 1),a
	mov	dptr,#_data_buffer
	mov	b,#0x00
;	main.c:191: }
	ljmp	_SPI_Send
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_write_register'
;------------------------------------------------------------
;len                       Allocated with name '_nrf24_write_register_PARM_2'
;reg                       Allocated to registers r7 
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	main.c:193: void nrf24_write_register(uint8_t reg, uint8_t len)
;	-----------------------------------------
;	 function nrf24_write_register
;	-----------------------------------------
_nrf24_write_register:
	mov	r7,dpl
;	main.c:196: data_buffer[0] = W_REGISTER | (REGISTER_MASK & reg);
	mov	a,#0x1f
	anl	a,r7
	orl	a,#0x20
	mov	dptr,#_data_buffer
	movx	@dptr,a
;	main.c:197: for (i = 1; i <= len; i++)
	mov	r6,#0x01
	mov	r7,#0x00
00103$:
	mov	r4,_nrf24_write_register_PARM_2
	mov	r5,#0x00
	clr	c
	mov	a,r4
	subb	a,r6
	mov	a,r5
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00101$
;	main.c:199: data_buffer[i] = write_buffer[i - 1];
	mov	a,r6
	add	a,#_data_buffer
	mov	r2,a
	mov	a,r7
	addc	a,#(_data_buffer >> 8)
	mov	r3,a
	mov	ar1,r6
	dec	r1
	mov	a,r1
	mov	r0,a
	rlc	a
	subb	a,acc
	mov	r1,a
	mov	a,r0
	add	a,#_write_buffer
	mov	dpl,a
	mov	a,r1
	addc	a,#(_write_buffer >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	dpl,r2
	mov	dph,r3
	movx	@dptr,a
;	main.c:197: for (i = 1; i <= len; i++)
	inc	r6
	cjne	r6,#0x00,00103$
	inc	r7
	sjmp	00103$
00101$:
;	main.c:201: SPI_Send(data_buffer, len + 1);
	mov	a,#0x01
	add	a,r4
	mov	_SPI_Send_PARM_2,a
	clr	a
	addc	a,r5
	mov	(_SPI_Send_PARM_2 + 1),a
	mov	dptr,#_data_buffer
	mov	b,#0x00
;	main.c:202: }
	ljmp	_SPI_Send
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_printDetails'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	main.c:205: void nrf24_printDetails()
;	-----------------------------------------
;	 function nrf24_printDetails
;	-----------------------------------------
_nrf24_printDetails:
;	main.c:208: nrf24_read_register(RF_CH, 1);
	mov	_nrf24_read_register_PARM_2,#0x01
	mov	dpl,#0x05
	lcall	_nrf24_read_register
;	main.c:209: printf("RF_CH : %02X\r\n", data_buffer[1] & 0xFFFF);
	mov	dptr,#(_data_buffer + 0x0001)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	a,#___str_0
	push	acc
	mov	a,#(___str_0 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	main.c:211: nrf24_read_register(RF_SETUP, 1);
	mov	_nrf24_read_register_PARM_2,#0x01
	mov	dpl,#0x06
	lcall	_nrf24_read_register
;	main.c:212: printf("RF_SETUP : %02X\r\n", data_buffer[1] & 0xFFFF);
	mov	dptr,#(_data_buffer + 0x0001)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	a,#___str_1
	push	acc
	mov	a,#(___str_1 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	main.c:214: nrf24_read_register(STATUS, 1);
	mov	_nrf24_read_register_PARM_2,#0x01
	mov	dpl,#0x07
	lcall	_nrf24_read_register
;	main.c:215: printf("Status : %02X\r\n", data_buffer[0] & 0xFFFF);
	mov	dptr,#_data_buffer
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	a,#___str_2
	push	acc
	mov	a,#(___str_2 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	main.c:217: nrf24_read_register(EN_AA, 1);
	mov	_nrf24_read_register_PARM_2,#0x01
	mov	dpl,#0x01
	lcall	_nrf24_read_register
;	main.c:218: printf("EN_AA : %02X\r\n", data_buffer[1] & 0xFFFF);
	mov	dptr,#(_data_buffer + 0x0001)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	a,#___str_3
	push	acc
	mov	a,#(___str_3 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	main.c:220: nrf24_read_register(DYNPD, 1);
	mov	_nrf24_read_register_PARM_2,#0x01
	mov	dpl,#0x1c
	lcall	_nrf24_read_register
;	main.c:221: printf("DYNPD : %02X\r\n", data_buffer[1] & 0xFFFF);
	mov	dptr,#(_data_buffer + 0x0001)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	a,#___str_4
	push	acc
	mov	a,#(___str_4 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	main.c:223: nrf24_read_register(FEATURE, 1);
	mov	_nrf24_read_register_PARM_2,#0x01
	mov	dpl,#0x1d
	lcall	_nrf24_read_register
;	main.c:224: printf("FEATURE : %02X\r\n", data_buffer[1] & 0xFFFF);
	mov	dptr,#(_data_buffer + 0x0001)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	a,#___str_5
	push	acc
	mov	a,#(___str_5 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	main.c:226: nrf24_read_register(RX_ADDR_P1, 5);
	mov	_nrf24_read_register_PARM_2,#0x05
	mov	dpl,#0x0b
	lcall	_nrf24_read_register
;	main.c:227: printf("RX_ADDR_P1 : ");
	mov	a,#___str_6
	push	acc
	mov	a,#(___str_6 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:228: for (i = 0; i < 5; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00103$:
;	main.c:230: printf("%02X", data_buffer[i + 1] & 0xFFFF);
	mov	ar5,r6
	inc	r5
	mov	a,r5
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,r5
	add	a,#_data_buffer
	mov	dpl,a
	mov	a,r4
	addc	a,#(_data_buffer >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
;	main.c:228: for (i = 0; i < 5; i++)
	inc	r6
	cjne	r6,#0x00,00127$
	inc	r7
00127$:
	clr	c
	mov	a,r6
	subb	a,#0x05
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00103$
;	main.c:232: printf("\r\n");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:234: nrf24_read_register(TX_ADDR, 5);
	mov	_nrf24_read_register_PARM_2,#0x05
	mov	dpl,#0x10
	lcall	_nrf24_read_register
;	main.c:235: printf("TX_ADDR : ");
	mov	a,#___str_9
	push	acc
	mov	a,#(___str_9 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:236: for (i = 0; i < 5; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00105$:
;	main.c:238: printf("%02X", data_buffer[i + 1] & 0xFFFF);
	mov	ar5,r6
	inc	r5
	mov	a,r5
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,r5
	add	a,#_data_buffer
	mov	dpl,a
	mov	a,r4
	addc	a,#(_data_buffer >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,#___str_7
	push	acc
	mov	a,#(___str_7 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
;	main.c:236: for (i = 0; i < 5; i++)
	inc	r6
	cjne	r6,#0x00,00129$
	inc	r7
00129$:
	clr	c
	mov	a,r6
	subb	a,#0x05
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00105$
;	main.c:240: printf("\r\n");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:242: nrf24_read_register(RX_PW_P1, 1);
	mov	_nrf24_read_register_PARM_2,#0x01
	mov	dpl,#0x12
	lcall	_nrf24_read_register
;	main.c:243: printf("RX_PW_P1 : %02X\r\n", data_buffer[1] & 0xFFFF);
	mov	dptr,#(_data_buffer + 0x0001)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	a,#___str_10
	push	acc
	mov	a,#(___str_10 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	main.c:245: nrf24_read_register(EN_RXADDR, 1);
	mov	_nrf24_read_register_PARM_2,#0x01
	mov	dpl,#0x02
	lcall	_nrf24_read_register
;	main.c:246: printf("EN_RXADDR : %02X\r\n", data_buffer[1] & 0xFFFF);
	mov	dptr,#(_data_buffer + 0x0001)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	a,#___str_11
	push	acc
	mov	a,#(___str_11 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	main.c:248: nrf24_read_register(CONFIG, 1);
	mov	_nrf24_read_register_PARM_2,#0x01
	mov	dpl,#0x00
	lcall	_nrf24_read_register
;	main.c:249: printf("CONFIG : %02X\r\n", data_buffer[1] & 0xFFFF);
	mov	dptr,#(_data_buffer + 0x0001)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	a,#___str_12
	push	acc
	mov	a,#(___str_12 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	main.c:251: nrf24_read_register(RPD, 1);
	mov	_nrf24_read_register_PARM_2,#0x01
	mov	dpl,#0x09
	lcall	_nrf24_read_register
;	main.c:252: printf("RPD : %02X\r\n", data_buffer[1] & 0xFFFF);
	mov	dptr,#(_data_buffer + 0x0001)
	movx	a,@dptr
	mov	r7,a
	mov	r6,#0x00
	push	ar7
	push	ar6
	mov	a,#___str_13
	push	acc
	mov	a,#(___str_13 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
;	main.c:253: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_listen'
;------------------------------------------------------------
;	main.c:255: void nrf24_listen()
;	-----------------------------------------
;	 function nrf24_listen
;	-----------------------------------------
_nrf24_listen:
;	main.c:257: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_setup'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;rx_addr                   Allocated with name '_nrf24_setup_rx_addr_65536_92'
;tx_addr                   Allocated with name '_nrf24_setup_tx_addr_65536_92'
;------------------------------------------------------------
;	main.c:259: void nrf24_setup()
;	-----------------------------------------
;	 function nrf24_setup
;	-----------------------------------------
_nrf24_setup:
;	main.c:272: uint8_t rx_addr[] = {0xE0, 0xE0, 0xF1, 0xF1, 0xE0};
	mov	_nrf24_setup_rx_addr_65536_92,#0xe0
	mov	(_nrf24_setup_rx_addr_65536_92 + 0x0001),#0xe0
	mov	(_nrf24_setup_rx_addr_65536_92 + 0x0002),#0xf1
	mov	(_nrf24_setup_rx_addr_65536_92 + 0x0003),#0xf1
	mov	(_nrf24_setup_rx_addr_65536_92 + 0x0004),#0xe0
;	main.c:273: uint8_t tx_addr[] = {0xF1, 0xF1, 0xF0, 0xF0, 0xE0};
	mov	_nrf24_setup_tx_addr_65536_92,#0xf1
	mov	(_nrf24_setup_tx_addr_65536_92 + 0x0001),#0xf1
	mov	(_nrf24_setup_tx_addr_65536_92 + 0x0002),#0xf0
	mov	(_nrf24_setup_tx_addr_65536_92 + 0x0003),#0xf0
	mov	(_nrf24_setup_tx_addr_65536_92 + 0x0004),#0xe0
;	main.c:276: write_buffer[0] = 90;
	mov	dptr,#_write_buffer
	mov	a,#0x5a
	movx	@dptr,a
;	main.c:277: nrf24_write_register(RF_CH, 1);
	mov	_nrf24_write_register_PARM_2,#0x01
	mov	dpl,#0x05
	lcall	_nrf24_write_register
;	main.c:280: write_buffer[0] = 36;
	mov	dptr,#_write_buffer
	mov	a,#0x24
	movx	@dptr,a
;	main.c:281: nrf24_write_register(RF_SETUP, 1);
	mov	_nrf24_write_register_PARM_2,#0x01
	mov	dpl,#0x06
	lcall	_nrf24_write_register
;	main.c:284: write_buffer[0] = 0x3f;
	mov	dptr,#_write_buffer
	mov	a,#0x3f
	movx	@dptr,a
;	main.c:285: nrf24_write_register(EN_AA, 1);
	mov	_nrf24_write_register_PARM_2,#0x01
	mov	dpl,#0x01
	lcall	_nrf24_write_register
;	main.c:288: write_buffer[0] = 0x3f;
	mov	dptr,#_write_buffer
	mov	a,#0x3f
	movx	@dptr,a
;	main.c:289: nrf24_write_register(DYNPD, 1);
	mov	_nrf24_write_register_PARM_2,#0x01
	mov	dpl,#0x1c
	lcall	_nrf24_write_register
;	main.c:291: write_buffer[0] = 0x06;
	mov	dptr,#_write_buffer
	mov	a,#0x06
	movx	@dptr,a
;	main.c:292: nrf24_write_register(FEATURE, 1);
	mov	_nrf24_write_register_PARM_2,#0x01
	mov	dpl,#0x1d
	lcall	_nrf24_write_register
;	main.c:295: for (i = 0; i < 5; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00103$:
;	main.c:297: write_buffer[i] = rx_addr[4 - i];
	mov	a,r6
	add	a,#_write_buffer
	mov	dpl,a
	mov	a,r7
	addc	a,#(_write_buffer >> 8)
	mov	dph,a
	mov	ar5,r6
	mov	a,#0x04
	clr	c
	subb	a,r5
	add	a,#_nrf24_setup_rx_addr_65536_92
	mov	r1,a
	mov	a,@r1
	movx	@dptr,a
;	main.c:295: for (i = 0; i < 5; i++)
	inc	r6
	cjne	r6,#0x00,00127$
	inc	r7
00127$:
	clr	c
	mov	a,r6
	subb	a,#0x05
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00103$
;	main.c:299: nrf24_write_register(RX_ADDR_P1, 5);
	mov	_nrf24_write_register_PARM_2,#0x05
	mov	dpl,#0x0b
	lcall	_nrf24_write_register
;	main.c:300: for (i = 0; i < 5; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00105$:
;	main.c:302: write_buffer[i] = tx_addr[4 - i];
	mov	a,r6
	add	a,#_write_buffer
	mov	dpl,a
	mov	a,r7
	addc	a,#(_write_buffer >> 8)
	mov	dph,a
	mov	ar5,r6
	mov	a,#0x04
	clr	c
	subb	a,r5
	add	a,#_nrf24_setup_tx_addr_65536_92
	mov	r1,a
	mov	a,@r1
	movx	@dptr,a
;	main.c:300: for (i = 0; i < 5; i++)
	inc	r6
	cjne	r6,#0x00,00129$
	inc	r7
00129$:
	clr	c
	mov	a,r6
	subb	a,#0x05
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00105$
;	main.c:304: nrf24_write_register(TX_ADDR, 5);
	mov	_nrf24_write_register_PARM_2,#0x05
	mov	dpl,#0x10
	lcall	_nrf24_write_register
;	main.c:307: write_buffer[0] = 32;
	mov	dptr,#_write_buffer
	mov	a,#0x20
	movx	@dptr,a
;	main.c:308: nrf24_write_register(RX_PW_P1, 1);
	mov	_nrf24_write_register_PARM_2,#0x01
	mov	dpl,#0x12
	lcall	_nrf24_write_register
;	main.c:311: write_buffer[0] = 0x03;
	mov	dptr,#_write_buffer
	mov	a,#0x03
	movx	@dptr,a
;	main.c:312: nrf24_write_register(EN_RXADDR, 1);
	mov	_nrf24_write_register_PARM_2,#0x01
	mov	dpl,#0x02
	lcall	_nrf24_write_register
;	main.c:315: write_buffer[0] = 11;
	mov	dptr,#_write_buffer
	mov	a,#0x0b
	movx	@dptr,a
;	main.c:316: nrf24_write_register(CONFIG, 1);
	mov	_nrf24_write_register_PARM_2,#0x01
	mov	dpl,#0x00
;	main.c:317: }
	ljmp	_nrf24_write_register
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_get_data'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	main.c:319: void nrf24_get_data()
;	-----------------------------------------
;	 function nrf24_get_data
;	-----------------------------------------
_nrf24_get_data:
;	main.c:322: data_buffer[0] = R_RX_PAYLOAD;
	mov	dptr,#_data_buffer
	mov	a,#0x61
	movx	@dptr,a
;	main.c:323: for (i = 1; i <= 33; i++)
	mov	r6,#0x01
	mov	r7,#0x00
00103$:
;	main.c:325: data_buffer[i] = NRF24_NOP;
	mov	a,r6
	add	a,#_data_buffer
	mov	dpl,a
	mov	a,r7
	addc	a,#(_data_buffer >> 8)
	mov	dph,a
	mov	a,#0xff
	movx	@dptr,a
;	main.c:323: for (i = 1; i <= 33; i++)
	inc	r6
	cjne	r6,#0x00,00127$
	inc	r7
00127$:
	clr	c
	mov	a,#0x21
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00103$
;	main.c:327: SPI_Send(data_buffer, 33);
	mov	_SPI_Send_PARM_2,#0x21
	mov	(_SPI_Send_PARM_2 + 1),#0x00
	mov	dptr,#_data_buffer
	mov	b,#0x00
	lcall	_SPI_Send
;	main.c:329: for (i = 0; i < 33; i++)
	mov	r6,#0x00
	mov	r7,#0x00
00105$:
;	main.c:331: printf("%02X ", data_buffer[i] & 0xFFFF);
	mov	a,r6
	add	a,#_data_buffer
	mov	dpl,a
	mov	a,r7
	addc	a,#(_data_buffer >> 8)
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	mov	r4,#0x00
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	mov	a,#___str_14
	push	acc
	mov	a,#(___str_14 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	mov	a,sp
	add	a,#0xfb
	mov	sp,a
	pop	ar6
	pop	ar7
;	main.c:329: for (i = 0; i < 33; i++)
	inc	r6
	cjne	r6,#0x00,00129$
	inc	r7
00129$:
	clr	c
	mov	a,r6
	subb	a,#0x21
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00105$
;	main.c:333: printf("\r\n");
	mov	a,#___str_8
	push	acc
	mov	a,#(___str_8 >> 8)
	push	acc
	mov	a,#0x80
	push	acc
	lcall	_printf
	dec	sp
	dec	sp
	dec	sp
;	main.c:334: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_available'
;------------------------------------------------------------
;result                    Allocated to registers r7 
;------------------------------------------------------------
;	main.c:336: uint8_t nrf24_available()
;	-----------------------------------------
;	 function nrf24_available
;	-----------------------------------------
_nrf24_available:
;	main.c:338: uint8_t result = 0;
	mov	r7,#0x00
;	main.c:339: nrf24_read_register(STATUS, 1);
	mov	_nrf24_read_register_PARM_2,#0x01
	mov	dpl,#0x07
	push	ar7
	lcall	_nrf24_read_register
	pop	ar7
;	main.c:340: if (data_buffer[0] & (1 << 6) || (data_buffer[0] & 0x0E != 0x0E))
	mov	dptr,#_data_buffer
	movx	a,@dptr
	jb	acc.6,00101$
	mov	dptr,#_data_buffer
	movx	a,@dptr
	clr	a
	jz	00102$
00101$:
;	main.c:341: result = 1;
	mov	r7,#0x01
00102$:
;	main.c:343: nrf24_read_register(STATUS, 1);
	mov	_nrf24_read_register_PARM_2,#0x01
	mov	dpl,#0x07
	push	ar7
	lcall	_nrf24_read_register
	pop	ar7
;	main.c:344: if (data_buffer[0] & (1 << 5))
	mov	dptr,#_data_buffer
	movx	a,@dptr
	jnb	acc.5,00105$
;	main.c:346: write_buffer[0] = (1 << 5);
	mov	dptr,#_write_buffer
	mov	a,#0x20
	movx	@dptr,a
;	main.c:347: nrf24_write_register(STATUS, 1);
	mov	_nrf24_write_register_PARM_2,#0x01
	mov	dpl,#0x07
	push	ar7
	lcall	_nrf24_write_register
	pop	ar7
00105$:
;	main.c:349: return result;
	mov	dpl,r7
;	main.c:350: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_getDynamicPayloadSize'
;------------------------------------------------------------
;	main.c:352: uint8_t nrf24_getDynamicPayloadSize()
;	-----------------------------------------
;	 function nrf24_getDynamicPayloadSize
;	-----------------------------------------
_nrf24_getDynamicPayloadSize:
;	main.c:354: data_buffer[0] = R_RX_PL_WID;
	mov	dptr,#_data_buffer
	mov	a,#0x60
	movx	@dptr,a
;	main.c:355: data_buffer[1] = NRF24_NOP;
	mov	dptr,#(_data_buffer + 0x0001)
	mov	a,#0xff
	movx	@dptr,a
;	main.c:356: SPI_Send(data_buffer, 2);
	mov	_SPI_Send_PARM_2,#0x02
	mov	(_SPI_Send_PARM_2 + 1),#0x00
	mov	dptr,#_data_buffer
	mov	b,#0x00
	lcall	_SPI_Send
;	main.c:357: return data_buffer[1];
	mov	dptr,#(_data_buffer + 0x0001)
	movx	a,@dptr
;	main.c:358: }
	mov	dpl,a
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_startListening'
;------------------------------------------------------------
;	main.c:359: void nrf24_startListening()
;	-----------------------------------------
;	 function nrf24_startListening
;	-----------------------------------------
_nrf24_startListening:
;	main.c:361: nrf24_read_register(CONFIG,1);
	mov	_nrf24_read_register_PARM_2,#0x01
	mov	dpl,#0x00
	lcall	_nrf24_read_register
;	main.c:362: write_buffer[0] = data_buffer[1] | (1<<PRIM_RX);
	mov	dptr,#(_data_buffer + 0x0001)
	movx	a,@dptr
	mov	r7,a
	orl	ar7,#0x01
	mov	dptr,#_write_buffer
	mov	a,r7
	movx	@dptr,a
;	main.c:363: nrf24_write_register(CONFIG,1);
	mov	_nrf24_write_register_PARM_2,#0x01
	mov	dpl,#0x00
	lcall	_nrf24_write_register
;	main.c:364: write_buffer[0] = (1<<6) | (1<<5)|(1<<4);
	mov	dptr,#_write_buffer
	mov	a,#0x70
	movx	@dptr,a
;	main.c:365: nrf24_write_register(STATUS, 1);
	mov	_nrf24_write_register_PARM_2,#0x01
	mov	dpl,#0x07
	lcall	_nrf24_write_register
;	main.c:366: SPI_CE = 1;
;	assignBit
	setb	_P11
;	main.c:367: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'nrf24_stopListening'
;------------------------------------------------------------
;	main.c:369: void nrf24_stopListening()
;	-----------------------------------------
;	 function nrf24_stopListening
;	-----------------------------------------
_nrf24_stopListening:
;	main.c:371: SPI_CE = 0;
;	assignBit
	clr	_P11
;	main.c:372: nrf24_read_register(CONFIG,1);
	mov	_nrf24_read_register_PARM_2,#0x01
	mov	dpl,#0x00
	lcall	_nrf24_read_register
;	main.c:373: write_buffer[0] = data_buffer[1] & ~(1<<PRIM_RX);
	mov	dptr,#(_data_buffer + 0x0001)
	movx	a,@dptr
	mov	r7,a
	anl	ar7,#0xfe
	mov	dptr,#_write_buffer
	mov	a,r7
	movx	@dptr,a
;	main.c:374: nrf24_write_register(CONFIG,1);
	mov	_nrf24_write_register_PARM_2,#0x01
	mov	dpl,#0x00
;	main.c:375: }
	ljmp	_nrf24_write_register
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;	main.c:376: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:378: System_Init();
	lcall	_System_Init
;	main.c:380: DEB_LED = 0;
;	assignBit
	clr	_P35
;	main.c:382: InitPort();
	lcall	_InitPort
;	main.c:383: InitClock();
	lcall	_InitClock
;	main.c:384: InitSPI();
	lcall	_InitSPI
;	main.c:386: nrf24_init();
	lcall	_nrf24_init
;	main.c:387: nrf24_setup();
	lcall	_nrf24_setup
;	main.c:389: nrf24_printDetails();
	lcall	_nrf24_printDetails
;	main.c:391: while (1)
00107$:
;	main.c:393: nrf24_startListening();
	lcall	_nrf24_startListening
;	main.c:394: while (!nrf24_available())
00101$:
	lcall	_nrf24_available
	mov	a,dpl
	jnz	00103$
;	main.c:396: DelayXms(1);
	mov	dptr,#0x0001
	lcall	_DelayXms
	sjmp	00101$
00103$:
;	main.c:398: if (nrf24_getDynamicPayloadSize() == 0)
	lcall	_nrf24_getDynamicPayloadSize
	mov	a,dpl
	jz	00107$
;	main.c:403: nrf24_stopListening();
	lcall	_nrf24_stopListening
;	main.c:404: nrf24_get_data();
	lcall	_nrf24_get_data
;	main.c:406: }
	sjmp	00107$
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area CONST   (CODE)
___str_0:
	.ascii "RF_CH : %02X"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "RF_SETUP : %02X"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "Status : %02X"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "EN_AA : %02X"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "DYNPD : %02X"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "FEATURE : %02X"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "RX_ADDR_P1 : "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "%02X"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_9:
	.ascii "TX_ADDR : "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_10:
	.ascii "RX_PW_P1 : %02X"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_11:
	.ascii "EN_RXADDR : %02X"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_12:
	.ascii "CONFIG : %02X"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_13:
	.ascii "RPD : %02X"
	.db 0x0d
	.db 0x0a
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_14:
	.ascii "%02X "
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
