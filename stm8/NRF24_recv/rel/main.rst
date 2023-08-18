                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _nrf24_stopListening
                                     13 	.globl _nrf24_startListening
                                     14 	.globl _nrf24_getDynamicPayloadSize
                                     15 	.globl _nrf24_available
                                     16 	.globl _nrf24_get_data
                                     17 	.globl _nrf24_setup
                                     18 	.globl _nrf24_listen
                                     19 	.globl _nrf24_printDetails
                                     20 	.globl _nrf24_write_register
                                     21 	.globl _nrf24_read_register
                                     22 	.globl _nrf24_init
                                     23 	.globl _SPI_Send
                                     24 	.globl _SPITransceiver
                                     25 	.globl _InitSPI
                                     26 	.globl _InitClock
                                     27 	.globl _InitPort
                                     28 	.globl _DelayXms
                                     29 	.globl _DelayXus
                                     30 	.globl _System_Init
                                     31 	.globl _printf
                                     32 	.globl _P60
                                     33 	.globl _P61
                                     34 	.globl _B0
                                     35 	.globl _B1
                                     36 	.globl _B2
                                     37 	.globl _B3
                                     38 	.globl _B4
                                     39 	.globl _B5
                                     40 	.globl _B6
                                     41 	.globl _B7
                                     42 	.globl _P44
                                     43 	.globl _P45
                                     44 	.globl _P47
                                     45 	.globl _ACC0
                                     46 	.globl _ACC1
                                     47 	.globl _ACC2
                                     48 	.globl _ACC3
                                     49 	.globl _ACC4
                                     50 	.globl _ACC5
                                     51 	.globl _ACC6
                                     52 	.globl _ACC7
                                     53 	.globl _CCF0
                                     54 	.globl _CCF1
                                     55 	.globl _CCF2
                                     56 	.globl _CCF3
                                     57 	.globl _CCF4
                                     58 	.globl _CCF5
                                     59 	.globl _CR
                                     60 	.globl _CF
                                     61 	.globl _P
                                     62 	.globl _F1
                                     63 	.globl _OV
                                     64 	.globl _RS0
                                     65 	.globl _RS1
                                     66 	.globl _F0
                                     67 	.globl _AC
                                     68 	.globl _CY
                                     69 	.globl _T6GAT0
                                     70 	.globl _T6GAT1
                                     71 	.globl _TR6
                                     72 	.globl _T61E
                                     73 	.globl _T6CKS0
                                     74 	.globl _T6CKS1
                                     75 	.globl _TF6
                                     76 	.globl _T5GAT0
                                     77 	.globl _T5GAT1
                                     78 	.globl _TR5
                                     79 	.globl _T51E
                                     80 	.globl _T5CKS0
                                     81 	.globl _T5CKS1
                                     82 	.globl _TF5
                                     83 	.globl _CP_RL3
                                     84 	.globl _C_T3
                                     85 	.globl _TR3
                                     86 	.globl _EXEN3
                                     87 	.globl _TL3IE
                                     88 	.globl _TF3L
                                     89 	.globl _EXF3
                                     90 	.globl _TF3
                                     91 	.globl _CP_RL2
                                     92 	.globl _C_T2
                                     93 	.globl _TR2
                                     94 	.globl _EXEN2
                                     95 	.globl _TCLK_TL2IE
                                     96 	.globl _RCLK_TF2L
                                     97 	.globl _EXF2
                                     98 	.globl _TF2
                                     99 	.globl _IT2
                                    100 	.globl _IE2
                                    101 	.globl _EX2
                                    102 	.globl _INT2H
                                    103 	.globl _PX0L
                                    104 	.globl _PT0L
                                    105 	.globl _PX1L
                                    106 	.globl _PT1L
                                    107 	.globl _PSL
                                    108 	.globl _PT2L
                                    109 	.globl _PX2L
                                    110 	.globl _P30
                                    111 	.globl _P31
                                    112 	.globl _P33
                                    113 	.globl _P34
                                    114 	.globl _P35
                                    115 	.globl _EX0
                                    116 	.globl _ET0
                                    117 	.globl _EX1
                                    118 	.globl _ET1
                                    119 	.globl _ES0
                                    120 	.globl _ET2
                                    121 	.globl _EDMA
                                    122 	.globl _EA
                                    123 	.globl _P24
                                    124 	.globl _P22
                                    125 	.globl _SM01
                                    126 	.globl _SM11
                                    127 	.globl _SM21
                                    128 	.globl _REN1
                                    129 	.globl _TB81
                                    130 	.globl _RB81
                                    131 	.globl _TI1
                                    132 	.globl _RI1
                                    133 	.globl _SM00
                                    134 	.globl _SM10
                                    135 	.globl _SM20
                                    136 	.globl _REN0
                                    137 	.globl _TB80
                                    138 	.globl _RB80
                                    139 	.globl _TI0
                                    140 	.globl _RI0
                                    141 	.globl _P17
                                    142 	.globl _P16
                                    143 	.globl _P15
                                    144 	.globl _P14
                                    145 	.globl _P13
                                    146 	.globl _P12
                                    147 	.globl _P11
                                    148 	.globl _P10
                                    149 	.globl _TF1
                                    150 	.globl _TR1
                                    151 	.globl _TF0
                                    152 	.globl _TR0
                                    153 	.globl _IE1
                                    154 	.globl _IT1
                                    155 	.globl _IE0
                                    156 	.globl _IT0
                                    157 	.globl _CCAP5H
                                    158 	.globl _CCAP4H
                                    159 	.globl _CCAP3H
                                    160 	.globl _CCAP2H
                                    161 	.globl _CCAP7H
                                    162 	.globl _CCAP1H
                                    163 	.globl _CCAP6H
                                    164 	.globl _CCAP0H
                                    165 	.globl _CH
                                    166 	.globl _P6
                                    167 	.globl _PCAPWM5
                                    168 	.globl _PCAPWM4
                                    169 	.globl _PCAPWM3
                                    170 	.globl _PCAPWM2
                                    171 	.globl _PCAPWM7
                                    172 	.globl _PCAPWM1
                                    173 	.globl _PCAPWM6
                                    174 	.globl _PCAPWM0
                                    175 	.globl _PAOE
                                    176 	.globl _B
                                    177 	.globl _CCAP5L
                                    178 	.globl _CCAP4L
                                    179 	.globl _CCAP3L
                                    180 	.globl _CCAP2L
                                    181 	.globl _CCAP7L
                                    182 	.globl _CCAP1L
                                    183 	.globl _CCAP6L
                                    184 	.globl _CCAP0L
                                    185 	.globl _CL
                                    186 	.globl _P4
                                    187 	.globl _ISPCR
                                    188 	.globl _SCMD
                                    189 	.globl _IFMT
                                    190 	.globl _IFADRL
                                    191 	.globl _IFADRH
                                    192 	.globl _IFD
                                    193 	.globl _WDTCR
                                    194 	.globl _ACC
                                    195 	.globl _CCAPM5
                                    196 	.globl _CCAPM4
                                    197 	.globl _CCAPM3
                                    198 	.globl _CCAPM2
                                    199 	.globl _CCAPM7
                                    200 	.globl _CCAPM1
                                    201 	.globl _CCAPM6
                                    202 	.globl _CCAPM0
                                    203 	.globl _CMOD
                                    204 	.globl _CCON
                                    205 	.globl _KBMASK
                                    206 	.globl _KBCON
                                    207 	.globl _KBPATN
                                    208 	.globl _SICON
                                    209 	.globl _SISTA
                                    210 	.globl _SIDAT
                                    211 	.globl _SIADR
                                    212 	.globl _PSW
                                    213 	.globl _CHRL
                                    214 	.globl _CLRL
                                    215 	.globl _TH6
                                    216 	.globl _TH5
                                    217 	.globl _TH3
                                    218 	.globl _TH2
                                    219 	.globl _TL6
                                    220 	.globl _TL5
                                    221 	.globl _TL3
                                    222 	.globl _TL2
                                    223 	.globl _THR6
                                    224 	.globl _THR5
                                    225 	.globl _RCAP3H
                                    226 	.globl _RCAP2H
                                    227 	.globl _TLR6
                                    228 	.globl _TLR5
                                    229 	.globl _RCAP3L
                                    230 	.globl _RCAP2L
                                    231 	.globl _T3MOD
                                    232 	.globl _T2MOD
                                    233 	.globl _T6CON
                                    234 	.globl _T5CON
                                    235 	.globl _T3CON
                                    236 	.globl _T2CON
                                    237 	.globl _CKCON0
                                    238 	.globl _ADCDH
                                    239 	.globl _ADCDL
                                    240 	.globl _ADCON0
                                    241 	.globl _ADCFG14
                                    242 	.globl _ADCFG13
                                    243 	.globl _ADCFG12
                                    244 	.globl _ADCFG11
                                    245 	.globl _ADCFG5
                                    246 	.globl _ADCFG4
                                    247 	.globl _ADCFG3
                                    248 	.globl _ADCFG2
                                    249 	.globl _ADCFG1
                                    250 	.globl _ADCFG0
                                    251 	.globl _XICFG1
                                    252 	.globl _XICFG
                                    253 	.globl _XICON
                                    254 	.globl _CKCON1
                                    255 	.globl _RTCCR
                                    256 	.globl _CRC0DA
                                    257 	.globl _PDTCRA
                                    258 	.globl _PWMCR
                                    259 	.globl _S0CR1
                                    260 	.globl _SADEN
                                    261 	.globl _IP0L
                                    262 	.globl _IP0H
                                    263 	.globl _RTCTM
                                    264 	.globl _P6M0
                                    265 	.globl _PDRVC1
                                    266 	.globl _PDRVC0
                                    267 	.globl _P4M0
                                    268 	.globl _P3M1
                                    269 	.globl _P3M0
                                    270 	.globl _P3
                                    271 	.globl _EIP1H
                                    272 	.globl _EIP1L
                                    273 	.globl _EIE1
                                    274 	.globl _SFRPI
                                    275 	.globl _ADDR
                                    276 	.globl _IE
                                    277 	.globl _EIP2H
                                    278 	.globl _EIP2L
                                    279 	.globl _EIE2
                                    280 	.globl _AUXR11
                                    281 	.globl _AUXR10
                                    282 	.globl _AUXR9
                                    283 	.globl _AUXR8
                                    284 	.globl _AUXR7
                                    285 	.globl _AUXR6
                                    286 	.globl _AUXR5
                                    287 	.globl _AUXR4
                                    288 	.globl _AUXR3
                                    289 	.globl _AUXR2
                                    290 	.globl _AUXR1
                                    291 	.globl _AUXR0
                                    292 	.globl _P2
                                    293 	.globl _S0CFG1
                                    294 	.globl _S1CFG
                                    295 	.globl _S0CFG
                                    296 	.globl _S1BRC
                                    297 	.globl _S0BRC
                                    298 	.globl _S1BRT
                                    299 	.globl _S0BRT
                                    300 	.globl _S1BUF
                                    301 	.globl _S0BUF
                                    302 	.globl _S1CON
                                    303 	.globl _S0CON
                                    304 	.globl _PCON1
                                    305 	.globl _BOREV
                                    306 	.globl _TSPC0
                                    307 	.globl _TRLC0
                                    308 	.globl _TREN0
                                    309 	.globl _P2M0
                                    310 	.globl _DMADS0
                                    311 	.globl _DMACG0
                                    312 	.globl _DMACR0
                                    313 	.globl _T3MOD1
                                    314 	.globl _T2MOD1
                                    315 	.globl _P4FDC
                                    316 	.globl _P2FDC
                                    317 	.globl _P1FDC
                                    318 	.globl _P3FDC
                                    319 	.globl _P6M1
                                    320 	.globl _P4M1
                                    321 	.globl _P2M1
                                    322 	.globl _P1M1
                                    323 	.globl _P1M0
                                    324 	.globl _P1
                                    325 	.globl _XRPS
                                    326 	.globl _SFIE
                                    327 	.globl _TH1
                                    328 	.globl _TH0
                                    329 	.globl _TL1
                                    330 	.globl _TL0
                                    331 	.globl _TMOD
                                    332 	.globl _TCON
                                    333 	.globl _PCON0
                                    334 	.globl _SPDAT
                                    335 	.globl _SPCON
                                    336 	.globl _SPSTAT
                                    337 	.globl _DPH
                                    338 	.globl _DPL
                                    339 	.globl _SP
                                    340 	.globl _write_buffer
                                    341 	.globl _data_buffer
                                    342 	.globl _nrf24_write_register_PARM_2
                                    343 	.globl _nrf24_read_register_PARM_2
                                    344 	.globl _SPI_Send_PARM_2
                                    345 	.globl _count
                                    346 	.globl _putchar
                                    347 ;--------------------------------------------------------
                                    348 ; special function registers
                                    349 ;--------------------------------------------------------
                                    350 	.area RSEG    (ABS,DATA)
      000000                        351 	.org 0x0000
                           000081   352 _SP	=	0x0081
                           000082   353 _DPL	=	0x0082
                           000083   354 _DPH	=	0x0083
                           000084   355 _SPSTAT	=	0x0084
                           000085   356 _SPCON	=	0x0085
                           000086   357 _SPDAT	=	0x0086
                           000087   358 _PCON0	=	0x0087
                           000088   359 _TCON	=	0x0088
                           000089   360 _TMOD	=	0x0089
                           00008A   361 _TL0	=	0x008a
                           00008B   362 _TL1	=	0x008b
                           00008C   363 _TH0	=	0x008c
                           00008D   364 _TH1	=	0x008d
                           00008E   365 _SFIE	=	0x008e
                           00008F   366 _XRPS	=	0x008f
                           000090   367 _P1	=	0x0090
                           000091   368 _P1M0	=	0x0091
                           000092   369 _P1M1	=	0x0092
                           000092   370 _P2M1	=	0x0092
                           000092   371 _P4M1	=	0x0092
                           000092   372 _P6M1	=	0x0092
                           000092   373 _P3FDC	=	0x0092
                           000092   374 _P1FDC	=	0x0092
                           000092   375 _P2FDC	=	0x0092
                           000092   376 _P4FDC	=	0x0092
                           000093   377 _T2MOD1	=	0x0093
                           000093   378 _T3MOD1	=	0x0093
                           000094   379 _DMACR0	=	0x0094
                           000094   380 _DMACG0	=	0x0094
                           000094   381 _DMADS0	=	0x0094
                           000095   382 _P2M0	=	0x0095
                           000095   383 _TREN0	=	0x0095
                           000095   384 _TRLC0	=	0x0095
                           000095   385 _TSPC0	=	0x0095
                           000096   386 _BOREV	=	0x0096
                           000097   387 _PCON1	=	0x0097
                           000098   388 _S0CON	=	0x0098
                           000098   389 _S1CON	=	0x0098
                           000099   390 _S0BUF	=	0x0099
                           000099   391 _S1BUF	=	0x0099
                           00009A   392 _S0BRT	=	0x009a
                           00009A   393 _S1BRT	=	0x009a
                           00009B   394 _S0BRC	=	0x009b
                           000098   395 _S1BRC	=	0x0098
                           00009C   396 _S0CFG	=	0x009c
                           00009C   397 _S1CFG	=	0x009c
                           00009D   398 _S0CFG1	=	0x009d
                           0000A0   399 _P2	=	0x00a0
                           0000A1   400 _AUXR0	=	0x00a1
                           0000A2   401 _AUXR1	=	0x00a2
                           0000A3   402 _AUXR2	=	0x00a3
                           0000A4   403 _AUXR3	=	0x00a4
                           0000A4   404 _AUXR4	=	0x00a4
                           0000A4   405 _AUXR5	=	0x00a4
                           0000A4   406 _AUXR6	=	0x00a4
                           0000A4   407 _AUXR7	=	0x00a4
                           0000A4   408 _AUXR8	=	0x00a4
                           0000A4   409 _AUXR9	=	0x00a4
                           0000A4   410 _AUXR10	=	0x00a4
                           0000A4   411 _AUXR11	=	0x00a4
                           0000A5   412 _EIE2	=	0x00a5
                           0000A6   413 _EIP2L	=	0x00a6
                           0000A7   414 _EIP2H	=	0x00a7
                           0000A8   415 _IE	=	0x00a8
                           0000A9   416 _ADDR	=	0x00a9
                           0000AC   417 _SFRPI	=	0x00ac
                           0000AD   418 _EIE1	=	0x00ad
                           0000AE   419 _EIP1L	=	0x00ae
                           0000AF   420 _EIP1H	=	0x00af
                           0000B0   421 _P3	=	0x00b0
                           0000B1   422 _P3M0	=	0x00b1
                           0000B2   423 _P3M1	=	0x00b2
                           0000B3   424 _P4M0	=	0x00b3
                           0000B4   425 _PDRVC0	=	0x00b4
                           0000B4   426 _PDRVC1	=	0x00b4
                           0000B5   427 _P6M0	=	0x00b5
                           0000B6   428 _RTCTM	=	0x00b6
                           0000B7   429 _IP0H	=	0x00b7
                           0000B8   430 _IP0L	=	0x00b8
                           0000B9   431 _SADEN	=	0x00b9
                           0000B9   432 _S0CR1	=	0x00b9
                           0000BC   433 _PWMCR	=	0x00bc
                           0000BC   434 _PDTCRA	=	0x00bc
                           0000BD   435 _CRC0DA	=	0x00bd
                           0000BE   436 _RTCCR	=	0x00be
                           0000BF   437 _CKCON1	=	0x00bf
                           0000C0   438 _XICON	=	0x00c0
                           0000C1   439 _XICFG	=	0x00c1
                           0000C1   440 _XICFG1	=	0x00c1
                           0000C3   441 _ADCFG0	=	0x00c3
                           0000C3   442 _ADCFG1	=	0x00c3
                           0000C3   443 _ADCFG2	=	0x00c3
                           0000C3   444 _ADCFG3	=	0x00c3
                           0000C3   445 _ADCFG4	=	0x00c3
                           0000C3   446 _ADCFG5	=	0x00c3
                           0000C3   447 _ADCFG11	=	0x00c3
                           0000C3   448 _ADCFG12	=	0x00c3
                           0000C3   449 _ADCFG13	=	0x00c3
                           0000C3   450 _ADCFG14	=	0x00c3
                           0000C4   451 _ADCON0	=	0x00c4
                           0000C5   452 _ADCDL	=	0x00c5
                           0000C6   453 _ADCDH	=	0x00c6
                           0000C7   454 _CKCON0	=	0x00c7
                           0000C8   455 _T2CON	=	0x00c8
                           0000C8   456 _T3CON	=	0x00c8
                           0000C8   457 _T5CON	=	0x00c8
                           0000C8   458 _T6CON	=	0x00c8
                           0000C9   459 _T2MOD	=	0x00c9
                           0000C9   460 _T3MOD	=	0x00c9
                           0000CA   461 _RCAP2L	=	0x00ca
                           0000CA   462 _RCAP3L	=	0x00ca
                           0000CA   463 _TLR5	=	0x00ca
                           0000CA   464 _TLR6	=	0x00ca
                           0000CB   465 _RCAP2H	=	0x00cb
                           0000CB   466 _RCAP3H	=	0x00cb
                           0000CB   467 _THR5	=	0x00cb
                           0000CB   468 _THR6	=	0x00cb
                           0000CC   469 _TL2	=	0x00cc
                           0000CC   470 _TL3	=	0x00cc
                           0000CC   471 _TL5	=	0x00cc
                           0000CC   472 _TL6	=	0x00cc
                           0000CD   473 _TH2	=	0x00cd
                           0000CD   474 _TH3	=	0x00cd
                           0000CD   475 _TH5	=	0x00cd
                           0000CD   476 _TH6	=	0x00cd
                           0000CE   477 _CLRL	=	0x00ce
                           0000CF   478 _CHRL	=	0x00cf
                           0000D0   479 _PSW	=	0x00d0
                           0000D1   480 _SIADR	=	0x00d1
                           0000D2   481 _SIDAT	=	0x00d2
                           0000D3   482 _SISTA	=	0x00d3
                           0000D4   483 _SICON	=	0x00d4
                           0000D5   484 _KBPATN	=	0x00d5
                           0000D6   485 _KBCON	=	0x00d6
                           0000D7   486 _KBMASK	=	0x00d7
                           0000D8   487 _CCON	=	0x00d8
                           0000D9   488 _CMOD	=	0x00d9
                           0000DA   489 _CCAPM0	=	0x00da
                           0000DA   490 _CCAPM6	=	0x00da
                           0000DB   491 _CCAPM1	=	0x00db
                           0000DB   492 _CCAPM7	=	0x00db
                           0000DC   493 _CCAPM2	=	0x00dc
                           0000DD   494 _CCAPM3	=	0x00dd
                           0000DE   495 _CCAPM4	=	0x00de
                           0000DF   496 _CCAPM5	=	0x00df
                           0000E0   497 _ACC	=	0x00e0
                           0000E1   498 _WDTCR	=	0x00e1
                           0000E2   499 _IFD	=	0x00e2
                           0000E3   500 _IFADRH	=	0x00e3
                           0000E4   501 _IFADRL	=	0x00e4
                           0000E5   502 _IFMT	=	0x00e5
                           0000E6   503 _SCMD	=	0x00e6
                           0000E7   504 _ISPCR	=	0x00e7
                           0000E8   505 _P4	=	0x00e8
                           0000E9   506 _CL	=	0x00e9
                           0000EA   507 _CCAP0L	=	0x00ea
                           0000EA   508 _CCAP6L	=	0x00ea
                           0000EB   509 _CCAP1L	=	0x00eb
                           0000EB   510 _CCAP7L	=	0x00eb
                           0000EC   511 _CCAP2L	=	0x00ec
                           0000ED   512 _CCAP3L	=	0x00ed
                           0000EE   513 _CCAP4L	=	0x00ee
                           0000EF   514 _CCAP5L	=	0x00ef
                           0000F0   515 _B	=	0x00f0
                           0000F1   516 _PAOE	=	0x00f1
                           0000F2   517 _PCAPWM0	=	0x00f2
                           0000F2   518 _PCAPWM6	=	0x00f2
                           0000F3   519 _PCAPWM1	=	0x00f3
                           0000F3   520 _PCAPWM7	=	0x00f3
                           0000F4   521 _PCAPWM2	=	0x00f4
                           0000F5   522 _PCAPWM3	=	0x00f5
                           0000F6   523 _PCAPWM4	=	0x00f6
                           0000F7   524 _PCAPWM5	=	0x00f7
                           0000F8   525 _P6	=	0x00f8
                           0000F9   526 _CH	=	0x00f9
                           0000FA   527 _CCAP0H	=	0x00fa
                           0000FA   528 _CCAP6H	=	0x00fa
                           0000FB   529 _CCAP1H	=	0x00fb
                           0000FB   530 _CCAP7H	=	0x00fb
                           0000FC   531 _CCAP2H	=	0x00fc
                           0000FD   532 _CCAP3H	=	0x00fd
                           0000FE   533 _CCAP4H	=	0x00fe
                           0000FF   534 _CCAP5H	=	0x00ff
                                    535 ;--------------------------------------------------------
                                    536 ; special function bits
                                    537 ;--------------------------------------------------------
                                    538 	.area RSEG    (ABS,DATA)
      000000                        539 	.org 0x0000
                           000088   540 _IT0	=	0x0088
                           000089   541 _IE0	=	0x0089
                           00008A   542 _IT1	=	0x008a
                           00008B   543 _IE1	=	0x008b
                           00008C   544 _TR0	=	0x008c
                           00008D   545 _TF0	=	0x008d
                           00008E   546 _TR1	=	0x008e
                           00008F   547 _TF1	=	0x008f
                           000090   548 _P10	=	0x0090
                           000091   549 _P11	=	0x0091
                           000092   550 _P12	=	0x0092
                           000093   551 _P13	=	0x0093
                           000094   552 _P14	=	0x0094
                           000095   553 _P15	=	0x0095
                           000096   554 _P16	=	0x0096
                           000097   555 _P17	=	0x0097
                           000098   556 _RI0	=	0x0098
                           000099   557 _TI0	=	0x0099
                           00009A   558 _RB80	=	0x009a
                           00009B   559 _TB80	=	0x009b
                           00009C   560 _REN0	=	0x009c
                           00009D   561 _SM20	=	0x009d
                           00009E   562 _SM10	=	0x009e
                           00009F   563 _SM00	=	0x009f
                           000098   564 _RI1	=	0x0098
                           000099   565 _TI1	=	0x0099
                           00009A   566 _RB81	=	0x009a
                           00009B   567 _TB81	=	0x009b
                           00009C   568 _REN1	=	0x009c
                           00009D   569 _SM21	=	0x009d
                           00009E   570 _SM11	=	0x009e
                           00009F   571 _SM01	=	0x009f
                           0000A2   572 _P22	=	0x00a2
                           0000A4   573 _P24	=	0x00a4
                           0000AF   574 _EA	=	0x00af
                           0000AE   575 _EDMA	=	0x00ae
                           0000AD   576 _ET2	=	0x00ad
                           0000AC   577 _ES0	=	0x00ac
                           0000AB   578 _ET1	=	0x00ab
                           0000AA   579 _EX1	=	0x00aa
                           0000A9   580 _ET0	=	0x00a9
                           0000A8   581 _EX0	=	0x00a8
                           0000B5   582 _P35	=	0x00b5
                           0000B4   583 _P34	=	0x00b4
                           0000B3   584 _P33	=	0x00b3
                           0000B1   585 _P31	=	0x00b1
                           0000B0   586 _P30	=	0x00b0
                           0000BE   587 _PX2L	=	0x00be
                           0000BD   588 _PT2L	=	0x00bd
                           0000BC   589 _PSL	=	0x00bc
                           0000BB   590 _PT1L	=	0x00bb
                           0000BA   591 _PX1L	=	0x00ba
                           0000B9   592 _PT0L	=	0x00b9
                           0000B8   593 _PX0L	=	0x00b8
                           0000C2   594 _INT2H	=	0x00c2
                           0000C2   595 _EX2	=	0x00c2
                           0000C1   596 _IE2	=	0x00c1
                           0000C0   597 _IT2	=	0x00c0
                           0000CF   598 _TF2	=	0x00cf
                           0000CE   599 _EXF2	=	0x00ce
                           0000CD   600 _RCLK_TF2L	=	0x00cd
                           0000CC   601 _TCLK_TL2IE	=	0x00cc
                           0000CB   602 _EXEN2	=	0x00cb
                           0000CA   603 _TR2	=	0x00ca
                           0000C9   604 _C_T2	=	0x00c9
                           0000C8   605 _CP_RL2	=	0x00c8
                           0000CF   606 _TF3	=	0x00cf
                           0000CE   607 _EXF3	=	0x00ce
                           0000CD   608 _TF3L	=	0x00cd
                           0000CC   609 _TL3IE	=	0x00cc
                           0000CB   610 _EXEN3	=	0x00cb
                           0000CA   611 _TR3	=	0x00ca
                           0000C9   612 _C_T3	=	0x00c9
                           0000C8   613 _CP_RL3	=	0x00c8
                           0000CF   614 _TF5	=	0x00cf
                           0000CD   615 _T5CKS1	=	0x00cd
                           0000CC   616 _T5CKS0	=	0x00cc
                           0000CB   617 _T51E	=	0x00cb
                           0000CA   618 _TR5	=	0x00ca
                           0000C9   619 _T5GAT1	=	0x00c9
                           0000C8   620 _T5GAT0	=	0x00c8
                           0000CF   621 _TF6	=	0x00cf
                           0000CD   622 _T6CKS1	=	0x00cd
                           0000CC   623 _T6CKS0	=	0x00cc
                           0000CB   624 _T61E	=	0x00cb
                           0000CA   625 _TR6	=	0x00ca
                           0000C9   626 _T6GAT1	=	0x00c9
                           0000C8   627 _T6GAT0	=	0x00c8
                           0000D7   628 _CY	=	0x00d7
                           0000D6   629 _AC	=	0x00d6
                           0000D5   630 _F0	=	0x00d5
                           0000D4   631 _RS1	=	0x00d4
                           0000D3   632 _RS0	=	0x00d3
                           0000D2   633 _OV	=	0x00d2
                           0000D1   634 _F1	=	0x00d1
                           0000D0   635 _P	=	0x00d0
                           0000DF   636 _CF	=	0x00df
                           0000DE   637 _CR	=	0x00de
                           0000DD   638 _CCF5	=	0x00dd
                           0000DC   639 _CCF4	=	0x00dc
                           0000DB   640 _CCF3	=	0x00db
                           0000DA   641 _CCF2	=	0x00da
                           0000D9   642 _CCF1	=	0x00d9
                           0000D8   643 _CCF0	=	0x00d8
                           0000E7   644 _ACC7	=	0x00e7
                           0000E6   645 _ACC6	=	0x00e6
                           0000E5   646 _ACC5	=	0x00e5
                           0000E4   647 _ACC4	=	0x00e4
                           0000E3   648 _ACC3	=	0x00e3
                           0000E2   649 _ACC2	=	0x00e2
                           0000E1   650 _ACC1	=	0x00e1
                           0000E0   651 _ACC0	=	0x00e0
                           0000EF   652 _P47	=	0x00ef
                           0000ED   653 _P45	=	0x00ed
                           0000EC   654 _P44	=	0x00ec
                           0000F7   655 _B7	=	0x00f7
                           0000F6   656 _B6	=	0x00f6
                           0000F5   657 _B5	=	0x00f5
                           0000F4   658 _B4	=	0x00f4
                           0000F3   659 _B3	=	0x00f3
                           0000F2   660 _B2	=	0x00f2
                           0000F1   661 _B1	=	0x00f1
                           0000F0   662 _B0	=	0x00f0
                           0000F9   663 _P61	=	0x00f9
                           0000F8   664 _P60	=	0x00f8
                                    665 ;--------------------------------------------------------
                                    666 ; overlayable register banks
                                    667 ;--------------------------------------------------------
                                    668 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        669 	.ds 8
                                    670 ;--------------------------------------------------------
                                    671 ; internal ram data
                                    672 ;--------------------------------------------------------
                                    673 	.area DSEG    (DATA)
      000030                        674 _count::
      000030                        675 	.ds 2
      000032                        676 _SPI_Send_PARM_2:
      000032                        677 	.ds 2
      000034                        678 _SPI_Send_data_pack_65536_72:
      000034                        679 	.ds 3
      000037                        680 _nrf24_read_register_PARM_2:
      000037                        681 	.ds 1
      000038                        682 _nrf24_write_register_PARM_2:
      000038                        683 	.ds 1
      000039                        684 _nrf24_setup_rx_addr_65536_92:
      000039                        685 	.ds 5
      00003E                        686 _nrf24_setup_tx_addr_65536_92:
      00003E                        687 	.ds 5
                                    688 ;--------------------------------------------------------
                                    689 ; overlayable items in internal ram 
                                    690 ;--------------------------------------------------------
                                    691 	.area	OSEG    (OVR,DATA)
                                    692 	.area	OSEG    (OVR,DATA)
                                    693 	.area	OSEG    (OVR,DATA)
                                    694 ;--------------------------------------------------------
                                    695 ; Stack segment in internal ram 
                                    696 ;--------------------------------------------------------
                                    697 	.area	SSEG
      000075                        698 __start__stack:
      000075                        699 	.ds	1
                                    700 
                                    701 ;--------------------------------------------------------
                                    702 ; indirectly addressable internal ram data
                                    703 ;--------------------------------------------------------
                                    704 	.area ISEG    (DATA)
                                    705 ;--------------------------------------------------------
                                    706 ; absolute internal ram data
                                    707 ;--------------------------------------------------------
                                    708 	.area IABS    (ABS,DATA)
                                    709 	.area IABS    (ABS,DATA)
                                    710 ;--------------------------------------------------------
                                    711 ; bit data
                                    712 ;--------------------------------------------------------
                                    713 	.area BSEG    (BIT)
                                    714 ;--------------------------------------------------------
                                    715 ; paged external ram data
                                    716 ;--------------------------------------------------------
                                    717 	.area PSEG    (PAG,XDATA)
                                    718 ;--------------------------------------------------------
                                    719 ; external ram data
                                    720 ;--------------------------------------------------------
                                    721 	.area XSEG    (XDATA)
      000000                        722 _data_buffer::
      000000                        723 	.ds 33
      000021                        724 _write_buffer::
      000021                        725 	.ds 33
                                    726 ;--------------------------------------------------------
                                    727 ; absolute external ram data
                                    728 ;--------------------------------------------------------
                                    729 	.area XABS    (ABS,XDATA)
                                    730 ;--------------------------------------------------------
                                    731 ; external initialized ram data
                                    732 ;--------------------------------------------------------
                                    733 	.area XISEG   (XDATA)
                                    734 	.area HOME    (CODE)
                                    735 	.area GSINIT0 (CODE)
                                    736 	.area GSINIT1 (CODE)
                                    737 	.area GSINIT2 (CODE)
                                    738 	.area GSINIT3 (CODE)
                                    739 	.area GSINIT4 (CODE)
                                    740 	.area GSINIT5 (CODE)
                                    741 	.area GSINIT  (CODE)
                                    742 	.area GSFINAL (CODE)
                                    743 	.area CSEG    (CODE)
                                    744 ;--------------------------------------------------------
                                    745 ; interrupt vector 
                                    746 ;--------------------------------------------------------
                                    747 	.area HOME    (CODE)
      000000                        748 __interrupt_vect:
      000000 02 00 06         [24]  749 	ljmp	__sdcc_gsinit_startup
                                    750 ;--------------------------------------------------------
                                    751 ; global & static initialisations
                                    752 ;--------------------------------------------------------
                                    753 	.area HOME    (CODE)
                                    754 	.area GSINIT  (CODE)
                                    755 	.area GSFINAL (CODE)
                                    756 	.area GSINIT  (CODE)
                                    757 	.globl __sdcc_gsinit_startup
                                    758 	.globl __sdcc_program_startup
                                    759 	.globl __start__stack
                                    760 	.globl __mcs51_genXINIT
                                    761 	.globl __mcs51_genXRAMCLEAR
                                    762 	.globl __mcs51_genRAMCLEAR
                                    763 ;	main.c:16: int count =0;
      00005F E4               [12]  764 	clr	a
      000060 F5 30            [12]  765 	mov	_count,a
      000062 F5 31            [12]  766 	mov	(_count + 1),a
                                    767 	.area GSFINAL (CODE)
      000064 02 00 03         [24]  768 	ljmp	__sdcc_program_startup
                                    769 ;--------------------------------------------------------
                                    770 ; Home
                                    771 ;--------------------------------------------------------
                                    772 	.area HOME    (CODE)
                                    773 	.area HOME    (CODE)
      000003                        774 __sdcc_program_startup:
      000003 02 07 05         [24]  775 	ljmp	_main
                                    776 ;	return from main will return to caller
                                    777 ;--------------------------------------------------------
                                    778 ; code
                                    779 ;--------------------------------------------------------
                                    780 	.area CSEG    (CODE)
                                    781 ;------------------------------------------------------------
                                    782 ;Allocation info for local variables in function 'putchar'
                                    783 ;------------------------------------------------------------
                                    784 ;c                         Allocated to registers r6 r7 
                                    785 ;------------------------------------------------------------
                                    786 ;	main.c:17: int putchar(int c)
                                    787 ;	-----------------------------------------
                                    788 ;	 function putchar
                                    789 ;	-----------------------------------------
      000067                        790 _putchar:
                           000007   791 	ar7 = 0x07
                           000006   792 	ar6 = 0x06
                           000005   793 	ar5 = 0x05
                           000004   794 	ar4 = 0x04
                           000003   795 	ar3 = 0x03
                           000002   796 	ar2 = 0x02
                           000001   797 	ar1 = 0x01
                           000000   798 	ar0 = 0x00
      000067 AE 82            [24]  799 	mov	r6,dpl
                                    800 ;	main.c:19: BOREV = (char)c;
      000069 8E 96            [24]  801 	mov	_BOREV,r6
                                    802 ;	main.c:21: bES = ES0;
      00006B A2 AC            [12]  803 	mov	c,_ES0
      00006D E4               [12]  804 	clr	a
      00006E 33               [12]  805 	rlc	a
      00006F FF               [12]  806 	mov	r7,a
                                    807 ;	main.c:22: ES0 = 0;
                                    808 ;	assignBit
      000070 C2 AC            [12]  809 	clr	_ES0
                                    810 ;	main.c:24: S0BUF = BOREV;
      000072 85 96 99         [24]  811 	mov	_S0BUF,_BOREV
                                    812 ;	main.c:25: while (TI0 == 0)
      000075                        813 00101$:
                                    814 ;	main.c:27: TI0 = 0;
                                    815 ;	assignBit
      000075 10 99 02         [24]  816 	jbc	_TI0,00114$
      000078 80 FB            [24]  817 	sjmp	00101$
      00007A                        818 00114$:
                                    819 ;	main.c:28: ES0 = bES;
                                    820 ;	assignBit
      00007A EF               [12]  821 	mov	a,r7
      00007B 24 FF            [12]  822 	add	a,#0xff
      00007D 92 AC            [24]  823 	mov	_ES0,c
                                    824 ;	main.c:29: return 0;
      00007F 90 00 00         [24]  825 	mov	dptr,#0x0000
                                    826 ;	main.c:30: }
      000082 22               [24]  827 	ret
                                    828 ;------------------------------------------------------------
                                    829 ;Allocation info for local variables in function 'DelayXus'
                                    830 ;------------------------------------------------------------
                                    831 ;xUs                       Allocated to registers 
                                    832 ;------------------------------------------------------------
                                    833 ;	main.c:32: void DelayXus(unsigned char xUs)
                                    834 ;	-----------------------------------------
                                    835 ;	 function DelayXus
                                    836 ;	-----------------------------------------
      000083                        837 _DelayXus:
      000083 AF 82            [24]  838 	mov	r7,dpl
                                    839 ;	main.c:34: while (xUs != 0)
      000085                        840 00101$:
      000085 EF               [12]  841 	mov	a,r7
      000086 60 03            [24]  842 	jz	00104$
                                    843 ;	main.c:74: xUs--;
      000088 1F               [12]  844 	dec	r7
      000089 80 FA            [24]  845 	sjmp	00101$
      00008B                        846 00104$:
                                    847 ;	main.c:76: }
      00008B 22               [24]  848 	ret
                                    849 ;------------------------------------------------------------
                                    850 ;Allocation info for local variables in function 'DelayXms'
                                    851 ;------------------------------------------------------------
                                    852 ;xMs                       Allocated to registers 
                                    853 ;------------------------------------------------------------
                                    854 ;	main.c:84: void DelayXms(u16 xMs)
                                    855 ;	-----------------------------------------
                                    856 ;	 function DelayXms
                                    857 ;	-----------------------------------------
      00008C                        858 _DelayXms:
      00008C AE 82            [24]  859 	mov	r6,dpl
      00008E AF 83            [24]  860 	mov	r7,dph
                                    861 ;	main.c:86: while (xMs != 0)
      000090                        862 00101$:
      000090 EE               [12]  863 	mov	a,r6
      000091 4F               [12]  864 	orl	a,r7
      000092 60 2D            [24]  865 	jz	00104$
                                    866 ;	main.c:88: DelayXus(200);
      000094 75 82 C8         [24]  867 	mov	dpl,#0xc8
      000097 C0 07            [24]  868 	push	ar7
      000099 C0 06            [24]  869 	push	ar6
      00009B 12 00 83         [24]  870 	lcall	_DelayXus
                                    871 ;	main.c:89: DelayXus(200);
      00009E 75 82 C8         [24]  872 	mov	dpl,#0xc8
      0000A1 12 00 83         [24]  873 	lcall	_DelayXus
                                    874 ;	main.c:90: DelayXus(200);
      0000A4 75 82 C8         [24]  875 	mov	dpl,#0xc8
      0000A7 12 00 83         [24]  876 	lcall	_DelayXus
                                    877 ;	main.c:91: DelayXus(200);
      0000AA 75 82 C8         [24]  878 	mov	dpl,#0xc8
      0000AD 12 00 83         [24]  879 	lcall	_DelayXus
                                    880 ;	main.c:92: DelayXus(200);
      0000B0 75 82 C8         [24]  881 	mov	dpl,#0xc8
      0000B3 12 00 83         [24]  882 	lcall	_DelayXus
      0000B6 D0 06            [24]  883 	pop	ar6
      0000B8 D0 07            [24]  884 	pop	ar7
                                    885 ;	main.c:93: xMs--;
      0000BA 1E               [12]  886 	dec	r6
      0000BB BE FF 01         [24]  887 	cjne	r6,#0xff,00116$
      0000BE 1F               [12]  888 	dec	r7
      0000BF                        889 00116$:
      0000BF 80 CF            [24]  890 	sjmp	00101$
      0000C1                        891 00104$:
                                    892 ;	main.c:95: }
      0000C1 22               [24]  893 	ret
                                    894 ;------------------------------------------------------------
                                    895 ;Allocation info for local variables in function 'InitPort'
                                    896 ;------------------------------------------------------------
                                    897 ;	main.c:111: void InitPort(void)
                                    898 ;	-----------------------------------------
                                    899 ;	 function InitPort
                                    900 ;	-----------------------------------------
      0000C2                        901 _InitPort:
                                    902 ;	main.c:113: PORT_SetP2PushPull(BIT2 | BIT4 | BIT6); // Set P22,P24,P26 as Push-Pull,For LED.
      0000C2 43 95 54         [24]  903 	orl	_P2M0,#0x54
      0000C5 75 AC 01         [24]  904 	mov	_SFRPI,#0x01
      0000C8 53 92 AB         [24]  905 	anl	_P2M1,#0xab
      0000CB 75 AC 00         [24]  906 	mov	_SFRPI,#0x00
                                    907 ;	main.c:115: PORT_SetP3PushPull(BIT3);					   // Set P33 as Push-Pull, For nSS
      0000CE 53 B1 F7         [24]  908 	anl	_P3M0,#0xf7
      0000D1 43 B2 08         [24]  909 	orl	_P3M1,#0x08
                                    910 ;	main.c:116: PORT_SetP1PushPull(BIT1 | BIT4 | BIT5 | BIT7); // Set P11(ce), P14(nSS),P15(MOSI),P17(SPICLK) as push-pull for output.
      0000D4 43 91 B2         [24]  911 	orl	_P1M0,#0xb2
      0000D7 53 92 4D         [24]  912 	anl	_P1M1,#0x4d
                                    913 ;	main.c:117: PORT_SetP1OpenDrainPu(BIT6);
      0000DA 43 91 40         [24]  914 	orl	_P1M0,#0x40
      0000DD 43 92 40         [24]  915 	orl	_P1M1,#0x40
                                    916 ;	main.c:118: }
      0000E0 22               [24]  917 	ret
                                    918 ;------------------------------------------------------------
                                    919 ;Allocation info for local variables in function 'InitClock'
                                    920 ;------------------------------------------------------------
                                    921 ;	main.c:119: void InitClock(void)
                                    922 ;	-----------------------------------------
                                    923 ;	 function InitClock
                                    924 ;	-----------------------------------------
      0000E1                        925 _InitClock:
                                    926 ;	main.c:121: CKCON0 = 0 | 0x08 | 0 | 0x40 | 0x10;
      0000E1 75 C7 58         [24]  927 	mov	_CKCON0,#0x58
                                    928 ;	main.c:122: DelayXus(100);
      0000E4 75 82 64         [24]  929 	mov	dpl,#0x64
                                    930 ;	main.c:135: }
      0000E7 02 00 83         [24]  931 	ljmp	_DelayXus
                                    932 ;------------------------------------------------------------
                                    933 ;Allocation info for local variables in function 'InitSPI'
                                    934 ;------------------------------------------------------------
                                    935 ;	main.c:137: void InitSPI(void)
                                    936 ;	-----------------------------------------
                                    937 ;	 function InitSPI
                                    938 ;	-----------------------------------------
      0000EA                        939 _InitSPI:
                                    940 ;	main.c:139: SPCON = SPCON | (0x40);
      0000EA 43 85 40         [24]  941 	orl	_SPCON,#0x40
                                    942 ;	main.c:140: SPCON = SPCON | (0x80 | 0x10);
      0000ED 43 85 90         [24]  943 	orl	_SPCON,#0x90
                                    944 ;	main.c:141: SPCON = (SPCON & 0xFC) | (1 & 0x03);
      0000F0 E5 85            [12]  945 	mov	a,_SPCON
      0000F2 54 FC            [12]  946 	anl	a,#0xfc
      0000F4 44 01            [12]  947 	orl	a,#0x01
      0000F6 F5 85            [12]  948 	mov	_SPCON,a
                                    949 ;	main.c:142: SPSTAT = (1 >> 2);
      0000F8 75 84 00         [24]  950 	mov	_SPSTAT,#0x00
                                    951 ;	main.c:143: SPCON = SPCON & (~0x08);
      0000FB 53 85 F7         [24]  952 	anl	_SPCON,#0xf7
                                    953 ;	main.c:144: SPCON = SPCON & (~0x20);
      0000FE 53 85 DF         [24]  954 	anl	_SPCON,#0xdf
                                    955 ;	main.c:145: SPCON = SPCON & (~0x04);
      000101 53 85 FB         [24]  956 	anl	_SPCON,#0xfb
                                    957 ;	main.c:146: SFRPI = 1;
      000104 75 AC 01         [24]  958 	mov	_SFRPI,#0x01
                                    959 ;	main.c:147: AUXR4 = AUXR4 & (~0x08);
      000107 53 A4 F7         [24]  960 	anl	_AUXR4,#0xf7
                                    961 ;	main.c:148: SFRPI = 0; // IO Port: nSS/P14,MOSI/P15,MISO/P16,SPICLK/P17
      00010A 75 AC 00         [24]  962 	mov	_SFRPI,#0x00
                                    963 ;	main.c:149: }
      00010D 22               [24]  964 	ret
                                    965 ;------------------------------------------------------------
                                    966 ;Allocation info for local variables in function 'SPITransceiver'
                                    967 ;------------------------------------------------------------
                                    968 ;SPI_DATA                  Allocated to registers 
                                    969 ;------------------------------------------------------------
                                    970 ;	main.c:151: unsigned char SPITransceiver(unsigned char SPI_DATA)
                                    971 ;	-----------------------------------------
                                    972 ;	 function SPITransceiver
                                    973 ;	-----------------------------------------
      00010E                        974 _SPITransceiver:
      00010E 85 82 86         [24]  975 	mov	_SPDAT,dpl
                                    976 ;	main.c:154: while ((SPSTAT & 0x80) == 0)
      000111                        977 00101$:
      000111 E5 84            [12]  978 	mov	a,_SPSTAT
      000113 30 E7 FB         [24]  979 	jnb	acc.7,00101$
                                    980 ;	main.c:156: SPSTAT = SPSTAT | 0x80;
      000116 43 84 80         [24]  981 	orl	_SPSTAT,#0x80
                                    982 ;	main.c:157: return SPDAT;
      000119 85 86 82         [24]  983 	mov	dpl,_SPDAT
                                    984 ;	main.c:158: }
      00011C 22               [24]  985 	ret
                                    986 ;------------------------------------------------------------
                                    987 ;Allocation info for local variables in function 'SPI_Send'
                                    988 ;------------------------------------------------------------
                                    989 ;len                       Allocated with name '_SPI_Send_PARM_2'
                                    990 ;data_pack                 Allocated with name '_SPI_Send_data_pack_65536_72'
                                    991 ;i                         Allocated to registers r3 r4 
                                    992 ;------------------------------------------------------------
                                    993 ;	main.c:160: void SPI_Send(unsigned char *data_pack, uint16_t len)
                                    994 ;	-----------------------------------------
                                    995 ;	 function SPI_Send
                                    996 ;	-----------------------------------------
      00011D                        997 _SPI_Send:
      00011D 85 82 34         [24]  998 	mov	_SPI_Send_data_pack_65536_72,dpl
      000120 85 83 35         [24]  999 	mov	(_SPI_Send_data_pack_65536_72 + 1),dph
      000123 85 F0 36         [24] 1000 	mov	(_SPI_Send_data_pack_65536_72 + 2),b
                                   1001 ;	main.c:163: SPI_nSS = 0;
                                   1002 ;	assignBit
      000126 C2 B3            [12] 1003 	clr	_P33
      000128 7B 00            [12] 1004 	mov	r3,#0x00
      00012A 7C 00            [12] 1005 	mov	r4,#0x00
      00012C                       1006 00103$:
                                   1007 ;	main.c:164: for (; i < len; i++)
      00012C 8B 01            [24] 1008 	mov	ar1,r3
      00012E 8C 02            [24] 1009 	mov	ar2,r4
      000130 C3               [12] 1010 	clr	c
      000131 E9               [12] 1011 	mov	a,r1
      000132 95 32            [12] 1012 	subb	a,_SPI_Send_PARM_2
      000134 EA               [12] 1013 	mov	a,r2
      000135 95 33            [12] 1014 	subb	a,(_SPI_Send_PARM_2 + 1)
      000137 50 3F            [24] 1015 	jnc	00101$
                                   1016 ;	main.c:166: data_pack[i] = SPITransceiver(data_pack[i]);
      000139 EB               [12] 1017 	mov	a,r3
      00013A 25 34            [12] 1018 	add	a,_SPI_Send_data_pack_65536_72
      00013C F8               [12] 1019 	mov	r0,a
      00013D EC               [12] 1020 	mov	a,r4
      00013E 35 35            [12] 1021 	addc	a,(_SPI_Send_data_pack_65536_72 + 1)
      000140 F9               [12] 1022 	mov	r1,a
      000141 AA 36            [24] 1023 	mov	r2,(_SPI_Send_data_pack_65536_72 + 2)
      000143 88 82            [24] 1024 	mov	dpl,r0
      000145 89 83            [24] 1025 	mov	dph,r1
      000147 8A F0            [24] 1026 	mov	b,r2
      000149 12 11 E0         [24] 1027 	lcall	__gptrget
      00014C F5 82            [12] 1028 	mov	dpl,a
      00014E C0 04            [24] 1029 	push	ar4
      000150 C0 03            [24] 1030 	push	ar3
      000152 C0 02            [24] 1031 	push	ar2
      000154 C0 01            [24] 1032 	push	ar1
      000156 C0 00            [24] 1033 	push	ar0
      000158 12 01 0E         [24] 1034 	lcall	_SPITransceiver
      00015B AF 82            [24] 1035 	mov	r7,dpl
      00015D D0 00            [24] 1036 	pop	ar0
      00015F D0 01            [24] 1037 	pop	ar1
      000161 D0 02            [24] 1038 	pop	ar2
      000163 D0 03            [24] 1039 	pop	ar3
      000165 D0 04            [24] 1040 	pop	ar4
      000167 88 82            [24] 1041 	mov	dpl,r0
      000169 89 83            [24] 1042 	mov	dph,r1
      00016B 8A F0            [24] 1043 	mov	b,r2
      00016D EF               [12] 1044 	mov	a,r7
      00016E 12 08 BA         [24] 1045 	lcall	__gptrput
                                   1046 ;	main.c:164: for (; i < len; i++)
      000171 0B               [12] 1047 	inc	r3
      000172 BB 00 B7         [24] 1048 	cjne	r3,#0x00,00103$
      000175 0C               [12] 1049 	inc	r4
      000176 80 B4            [24] 1050 	sjmp	00103$
      000178                       1051 00101$:
                                   1052 ;	main.c:168: SPI_nSS = 1;
                                   1053 ;	assignBit
      000178 D2 B3            [12] 1054 	setb	_P33
                                   1055 ;	main.c:169: }
      00017A 22               [24] 1056 	ret
                                   1057 ;------------------------------------------------------------
                                   1058 ;Allocation info for local variables in function 'nrf24_init'
                                   1059 ;------------------------------------------------------------
                                   1060 ;	main.c:176: void nrf24_init()
                                   1061 ;	-----------------------------------------
                                   1062 ;	 function nrf24_init
                                   1063 ;	-----------------------------------------
      00017B                       1064 _nrf24_init:
                                   1065 ;	main.c:178: SPI_CE = 0;
                                   1066 ;	assignBit
      00017B C2 91            [12] 1067 	clr	_P11
                                   1068 ;	main.c:179: SPI_nSS = 0;
                                   1069 ;	assignBit
      00017D C2 B3            [12] 1070 	clr	_P33
                                   1071 ;	main.c:180: }
      00017F 22               [24] 1072 	ret
                                   1073 ;------------------------------------------------------------
                                   1074 ;Allocation info for local variables in function 'nrf24_read_register'
                                   1075 ;------------------------------------------------------------
                                   1076 ;len                       Allocated with name '_nrf24_read_register_PARM_2'
                                   1077 ;reg                       Allocated to registers r7 
                                   1078 ;i                         Allocated to registers r6 r7 
                                   1079 ;------------------------------------------------------------
                                   1080 ;	main.c:182: void nrf24_read_register(uint8_t reg, uint8_t len)
                                   1081 ;	-----------------------------------------
                                   1082 ;	 function nrf24_read_register
                                   1083 ;	-----------------------------------------
      000180                       1084 _nrf24_read_register:
      000180 AF 82            [24] 1085 	mov	r7,dpl
                                   1086 ;	main.c:185: data_buffer[0] = R_REGISTER | (REGISTER_MASK & reg);
      000182 53 07 1F         [24] 1087 	anl	ar7,#0x1f
      000185 90 00 00         [24] 1088 	mov	dptr,#_data_buffer
      000188 EF               [12] 1089 	mov	a,r7
      000189 F0               [24] 1090 	movx	@dptr,a
                                   1091 ;	main.c:186: for (i = 1; i <= len; i++)
      00018A 7E 01            [12] 1092 	mov	r6,#0x01
      00018C 7F 00            [12] 1093 	mov	r7,#0x00
      00018E                       1094 00103$:
      00018E AC 37            [24] 1095 	mov	r4,_nrf24_read_register_PARM_2
      000190 7D 00            [12] 1096 	mov	r5,#0x00
      000192 C3               [12] 1097 	clr	c
      000193 EC               [12] 1098 	mov	a,r4
      000194 9E               [12] 1099 	subb	a,r6
      000195 ED               [12] 1100 	mov	a,r5
      000196 64 80            [12] 1101 	xrl	a,#0x80
      000198 8F F0            [24] 1102 	mov	b,r7
      00019A 63 F0 80         [24] 1103 	xrl	b,#0x80
      00019D 95 F0            [12] 1104 	subb	a,b
      00019F 40 14            [24] 1105 	jc	00101$
                                   1106 ;	main.c:188: data_buffer[i] = NRF24_NOP;
      0001A1 EE               [12] 1107 	mov	a,r6
      0001A2 24 00            [12] 1108 	add	a,#_data_buffer
      0001A4 F5 82            [12] 1109 	mov	dpl,a
      0001A6 EF               [12] 1110 	mov	a,r7
      0001A7 34 00            [12] 1111 	addc	a,#(_data_buffer >> 8)
      0001A9 F5 83            [12] 1112 	mov	dph,a
      0001AB 74 FF            [12] 1113 	mov	a,#0xff
      0001AD F0               [24] 1114 	movx	@dptr,a
                                   1115 ;	main.c:186: for (i = 1; i <= len; i++)
      0001AE 0E               [12] 1116 	inc	r6
      0001AF BE 00 DC         [24] 1117 	cjne	r6,#0x00,00103$
      0001B2 0F               [12] 1118 	inc	r7
      0001B3 80 D9            [24] 1119 	sjmp	00103$
      0001B5                       1120 00101$:
                                   1121 ;	main.c:190: SPI_Send(data_buffer, len + 1);
      0001B5 74 01            [12] 1122 	mov	a,#0x01
      0001B7 2C               [12] 1123 	add	a,r4
      0001B8 F5 32            [12] 1124 	mov	_SPI_Send_PARM_2,a
      0001BA E4               [12] 1125 	clr	a
      0001BB 3D               [12] 1126 	addc	a,r5
      0001BC F5 33            [12] 1127 	mov	(_SPI_Send_PARM_2 + 1),a
      0001BE 90 00 00         [24] 1128 	mov	dptr,#_data_buffer
      0001C1 75 F0 00         [24] 1129 	mov	b,#0x00
                                   1130 ;	main.c:191: }
      0001C4 02 01 1D         [24] 1131 	ljmp	_SPI_Send
                                   1132 ;------------------------------------------------------------
                                   1133 ;Allocation info for local variables in function 'nrf24_write_register'
                                   1134 ;------------------------------------------------------------
                                   1135 ;len                       Allocated with name '_nrf24_write_register_PARM_2'
                                   1136 ;reg                       Allocated to registers r7 
                                   1137 ;i                         Allocated to registers r6 r7 
                                   1138 ;------------------------------------------------------------
                                   1139 ;	main.c:193: void nrf24_write_register(uint8_t reg, uint8_t len)
                                   1140 ;	-----------------------------------------
                                   1141 ;	 function nrf24_write_register
                                   1142 ;	-----------------------------------------
      0001C7                       1143 _nrf24_write_register:
      0001C7 AF 82            [24] 1144 	mov	r7,dpl
                                   1145 ;	main.c:196: data_buffer[0] = W_REGISTER | (REGISTER_MASK & reg);
      0001C9 74 1F            [12] 1146 	mov	a,#0x1f
      0001CB 5F               [12] 1147 	anl	a,r7
      0001CC 44 20            [12] 1148 	orl	a,#0x20
      0001CE 90 00 00         [24] 1149 	mov	dptr,#_data_buffer
      0001D1 F0               [24] 1150 	movx	@dptr,a
                                   1151 ;	main.c:197: for (i = 1; i <= len; i++)
      0001D2 7E 01            [12] 1152 	mov	r6,#0x01
      0001D4 7F 00            [12] 1153 	mov	r7,#0x00
      0001D6                       1154 00103$:
      0001D6 AC 38            [24] 1155 	mov	r4,_nrf24_write_register_PARM_2
      0001D8 7D 00            [12] 1156 	mov	r5,#0x00
      0001DA C3               [12] 1157 	clr	c
      0001DB EC               [12] 1158 	mov	a,r4
      0001DC 9E               [12] 1159 	subb	a,r6
      0001DD ED               [12] 1160 	mov	a,r5
      0001DE 64 80            [12] 1161 	xrl	a,#0x80
      0001E0 8F F0            [24] 1162 	mov	b,r7
      0001E2 63 F0 80         [24] 1163 	xrl	b,#0x80
      0001E5 95 F0            [12] 1164 	subb	a,b
      0001E7 40 28            [24] 1165 	jc	00101$
                                   1166 ;	main.c:199: data_buffer[i] = write_buffer[i - 1];
      0001E9 EE               [12] 1167 	mov	a,r6
      0001EA 24 00            [12] 1168 	add	a,#_data_buffer
      0001EC FA               [12] 1169 	mov	r2,a
      0001ED EF               [12] 1170 	mov	a,r7
      0001EE 34 00            [12] 1171 	addc	a,#(_data_buffer >> 8)
      0001F0 FB               [12] 1172 	mov	r3,a
      0001F1 8E 01            [24] 1173 	mov	ar1,r6
      0001F3 19               [12] 1174 	dec	r1
      0001F4 E9               [12] 1175 	mov	a,r1
      0001F5 F8               [12] 1176 	mov	r0,a
      0001F6 33               [12] 1177 	rlc	a
      0001F7 95 E0            [12] 1178 	subb	a,acc
      0001F9 F9               [12] 1179 	mov	r1,a
      0001FA E8               [12] 1180 	mov	a,r0
      0001FB 24 21            [12] 1181 	add	a,#_write_buffer
      0001FD F5 82            [12] 1182 	mov	dpl,a
      0001FF E9               [12] 1183 	mov	a,r1
      000200 34 00            [12] 1184 	addc	a,#(_write_buffer >> 8)
      000202 F5 83            [12] 1185 	mov	dph,a
      000204 E0               [24] 1186 	movx	a,@dptr
      000205 8A 82            [24] 1187 	mov	dpl,r2
      000207 8B 83            [24] 1188 	mov	dph,r3
      000209 F0               [24] 1189 	movx	@dptr,a
                                   1190 ;	main.c:197: for (i = 1; i <= len; i++)
      00020A 0E               [12] 1191 	inc	r6
      00020B BE 00 C8         [24] 1192 	cjne	r6,#0x00,00103$
      00020E 0F               [12] 1193 	inc	r7
      00020F 80 C5            [24] 1194 	sjmp	00103$
      000211                       1195 00101$:
                                   1196 ;	main.c:201: SPI_Send(data_buffer, len + 1);
      000211 74 01            [12] 1197 	mov	a,#0x01
      000213 2C               [12] 1198 	add	a,r4
      000214 F5 32            [12] 1199 	mov	_SPI_Send_PARM_2,a
      000216 E4               [12] 1200 	clr	a
      000217 3D               [12] 1201 	addc	a,r5
      000218 F5 33            [12] 1202 	mov	(_SPI_Send_PARM_2 + 1),a
      00021A 90 00 00         [24] 1203 	mov	dptr,#_data_buffer
      00021D 75 F0 00         [24] 1204 	mov	b,#0x00
                                   1205 ;	main.c:202: }
      000220 02 01 1D         [24] 1206 	ljmp	_SPI_Send
                                   1207 ;------------------------------------------------------------
                                   1208 ;Allocation info for local variables in function 'nrf24_printDetails'
                                   1209 ;------------------------------------------------------------
                                   1210 ;i                         Allocated to registers r6 r7 
                                   1211 ;------------------------------------------------------------
                                   1212 ;	main.c:205: void nrf24_printDetails()
                                   1213 ;	-----------------------------------------
                                   1214 ;	 function nrf24_printDetails
                                   1215 ;	-----------------------------------------
      000223                       1216 _nrf24_printDetails:
                                   1217 ;	main.c:208: nrf24_read_register(RF_CH, 1);
      000223 75 37 01         [24] 1218 	mov	_nrf24_read_register_PARM_2,#0x01
      000226 75 82 05         [24] 1219 	mov	dpl,#0x05
      000229 12 01 80         [24] 1220 	lcall	_nrf24_read_register
                                   1221 ;	main.c:209: printf("RF_CH : %02X\r\n", data_buffer[1] & 0xFFFF);
      00022C 90 00 01         [24] 1222 	mov	dptr,#(_data_buffer + 0x0001)
      00022F E0               [24] 1223 	movx	a,@dptr
      000230 FF               [12] 1224 	mov	r7,a
      000231 7E 00            [12] 1225 	mov	r6,#0x00
      000233 C0 07            [24] 1226 	push	ar7
      000235 C0 06            [24] 1227 	push	ar6
      000237 74 00            [12] 1228 	mov	a,#___str_0
      000239 C0 E0            [24] 1229 	push	acc
      00023B 74 12            [12] 1230 	mov	a,#(___str_0 >> 8)
      00023D C0 E0            [24] 1231 	push	acc
      00023F 74 80            [12] 1232 	mov	a,#0x80
      000241 C0 E0            [24] 1233 	push	acc
      000243 12 08 FD         [24] 1234 	lcall	_printf
      000246 E5 81            [12] 1235 	mov	a,sp
      000248 24 FB            [12] 1236 	add	a,#0xfb
      00024A F5 81            [12] 1237 	mov	sp,a
                                   1238 ;	main.c:211: nrf24_read_register(RF_SETUP, 1);
      00024C 75 37 01         [24] 1239 	mov	_nrf24_read_register_PARM_2,#0x01
      00024F 75 82 06         [24] 1240 	mov	dpl,#0x06
      000252 12 01 80         [24] 1241 	lcall	_nrf24_read_register
                                   1242 ;	main.c:212: printf("RF_SETUP : %02X\r\n", data_buffer[1] & 0xFFFF);
      000255 90 00 01         [24] 1243 	mov	dptr,#(_data_buffer + 0x0001)
      000258 E0               [24] 1244 	movx	a,@dptr
      000259 FF               [12] 1245 	mov	r7,a
      00025A 7E 00            [12] 1246 	mov	r6,#0x00
      00025C C0 07            [24] 1247 	push	ar7
      00025E C0 06            [24] 1248 	push	ar6
      000260 74 0F            [12] 1249 	mov	a,#___str_1
      000262 C0 E0            [24] 1250 	push	acc
      000264 74 12            [12] 1251 	mov	a,#(___str_1 >> 8)
      000266 C0 E0            [24] 1252 	push	acc
      000268 74 80            [12] 1253 	mov	a,#0x80
      00026A C0 E0            [24] 1254 	push	acc
      00026C 12 08 FD         [24] 1255 	lcall	_printf
      00026F E5 81            [12] 1256 	mov	a,sp
      000271 24 FB            [12] 1257 	add	a,#0xfb
      000273 F5 81            [12] 1258 	mov	sp,a
                                   1259 ;	main.c:214: nrf24_read_register(STATUS, 1);
      000275 75 37 01         [24] 1260 	mov	_nrf24_read_register_PARM_2,#0x01
      000278 75 82 07         [24] 1261 	mov	dpl,#0x07
      00027B 12 01 80         [24] 1262 	lcall	_nrf24_read_register
                                   1263 ;	main.c:215: printf("Status : %02X\r\n", data_buffer[0] & 0xFFFF);
      00027E 90 00 00         [24] 1264 	mov	dptr,#_data_buffer
      000281 E0               [24] 1265 	movx	a,@dptr
      000282 FF               [12] 1266 	mov	r7,a
      000283 7E 00            [12] 1267 	mov	r6,#0x00
      000285 C0 07            [24] 1268 	push	ar7
      000287 C0 06            [24] 1269 	push	ar6
      000289 74 21            [12] 1270 	mov	a,#___str_2
      00028B C0 E0            [24] 1271 	push	acc
      00028D 74 12            [12] 1272 	mov	a,#(___str_2 >> 8)
      00028F C0 E0            [24] 1273 	push	acc
      000291 74 80            [12] 1274 	mov	a,#0x80
      000293 C0 E0            [24] 1275 	push	acc
      000295 12 08 FD         [24] 1276 	lcall	_printf
      000298 E5 81            [12] 1277 	mov	a,sp
      00029A 24 FB            [12] 1278 	add	a,#0xfb
      00029C F5 81            [12] 1279 	mov	sp,a
                                   1280 ;	main.c:217: nrf24_read_register(EN_AA, 1);
      00029E 75 37 01         [24] 1281 	mov	_nrf24_read_register_PARM_2,#0x01
      0002A1 75 82 01         [24] 1282 	mov	dpl,#0x01
      0002A4 12 01 80         [24] 1283 	lcall	_nrf24_read_register
                                   1284 ;	main.c:218: printf("EN_AA : %02X\r\n", data_buffer[1] & 0xFFFF);
      0002A7 90 00 01         [24] 1285 	mov	dptr,#(_data_buffer + 0x0001)
      0002AA E0               [24] 1286 	movx	a,@dptr
      0002AB FF               [12] 1287 	mov	r7,a
      0002AC 7E 00            [12] 1288 	mov	r6,#0x00
      0002AE C0 07            [24] 1289 	push	ar7
      0002B0 C0 06            [24] 1290 	push	ar6
      0002B2 74 31            [12] 1291 	mov	a,#___str_3
      0002B4 C0 E0            [24] 1292 	push	acc
      0002B6 74 12            [12] 1293 	mov	a,#(___str_3 >> 8)
      0002B8 C0 E0            [24] 1294 	push	acc
      0002BA 74 80            [12] 1295 	mov	a,#0x80
      0002BC C0 E0            [24] 1296 	push	acc
      0002BE 12 08 FD         [24] 1297 	lcall	_printf
      0002C1 E5 81            [12] 1298 	mov	a,sp
      0002C3 24 FB            [12] 1299 	add	a,#0xfb
      0002C5 F5 81            [12] 1300 	mov	sp,a
                                   1301 ;	main.c:220: nrf24_read_register(DYNPD, 1);
      0002C7 75 37 01         [24] 1302 	mov	_nrf24_read_register_PARM_2,#0x01
      0002CA 75 82 1C         [24] 1303 	mov	dpl,#0x1c
      0002CD 12 01 80         [24] 1304 	lcall	_nrf24_read_register
                                   1305 ;	main.c:221: printf("DYNPD : %02X\r\n", data_buffer[1] & 0xFFFF);
      0002D0 90 00 01         [24] 1306 	mov	dptr,#(_data_buffer + 0x0001)
      0002D3 E0               [24] 1307 	movx	a,@dptr
      0002D4 FF               [12] 1308 	mov	r7,a
      0002D5 7E 00            [12] 1309 	mov	r6,#0x00
      0002D7 C0 07            [24] 1310 	push	ar7
      0002D9 C0 06            [24] 1311 	push	ar6
      0002DB 74 40            [12] 1312 	mov	a,#___str_4
      0002DD C0 E0            [24] 1313 	push	acc
      0002DF 74 12            [12] 1314 	mov	a,#(___str_4 >> 8)
      0002E1 C0 E0            [24] 1315 	push	acc
      0002E3 74 80            [12] 1316 	mov	a,#0x80
      0002E5 C0 E0            [24] 1317 	push	acc
      0002E7 12 08 FD         [24] 1318 	lcall	_printf
      0002EA E5 81            [12] 1319 	mov	a,sp
      0002EC 24 FB            [12] 1320 	add	a,#0xfb
      0002EE F5 81            [12] 1321 	mov	sp,a
                                   1322 ;	main.c:223: nrf24_read_register(FEATURE, 1);
      0002F0 75 37 01         [24] 1323 	mov	_nrf24_read_register_PARM_2,#0x01
      0002F3 75 82 1D         [24] 1324 	mov	dpl,#0x1d
      0002F6 12 01 80         [24] 1325 	lcall	_nrf24_read_register
                                   1326 ;	main.c:224: printf("FEATURE : %02X\r\n", data_buffer[1] & 0xFFFF);
      0002F9 90 00 01         [24] 1327 	mov	dptr,#(_data_buffer + 0x0001)
      0002FC E0               [24] 1328 	movx	a,@dptr
      0002FD FF               [12] 1329 	mov	r7,a
      0002FE 7E 00            [12] 1330 	mov	r6,#0x00
      000300 C0 07            [24] 1331 	push	ar7
      000302 C0 06            [24] 1332 	push	ar6
      000304 74 4F            [12] 1333 	mov	a,#___str_5
      000306 C0 E0            [24] 1334 	push	acc
      000308 74 12            [12] 1335 	mov	a,#(___str_5 >> 8)
      00030A C0 E0            [24] 1336 	push	acc
      00030C 74 80            [12] 1337 	mov	a,#0x80
      00030E C0 E0            [24] 1338 	push	acc
      000310 12 08 FD         [24] 1339 	lcall	_printf
      000313 E5 81            [12] 1340 	mov	a,sp
      000315 24 FB            [12] 1341 	add	a,#0xfb
      000317 F5 81            [12] 1342 	mov	sp,a
                                   1343 ;	main.c:226: nrf24_read_register(RX_ADDR_P1, 5);
      000319 75 37 05         [24] 1344 	mov	_nrf24_read_register_PARM_2,#0x05
      00031C 75 82 0B         [24] 1345 	mov	dpl,#0x0b
      00031F 12 01 80         [24] 1346 	lcall	_nrf24_read_register
                                   1347 ;	main.c:227: printf("RX_ADDR_P1 : ");
      000322 74 60            [12] 1348 	mov	a,#___str_6
      000324 C0 E0            [24] 1349 	push	acc
      000326 74 12            [12] 1350 	mov	a,#(___str_6 >> 8)
      000328 C0 E0            [24] 1351 	push	acc
      00032A 74 80            [12] 1352 	mov	a,#0x80
      00032C C0 E0            [24] 1353 	push	acc
      00032E 12 08 FD         [24] 1354 	lcall	_printf
      000331 15 81            [12] 1355 	dec	sp
      000333 15 81            [12] 1356 	dec	sp
      000335 15 81            [12] 1357 	dec	sp
                                   1358 ;	main.c:228: for (i = 0; i < 5; i++)
      000337 7E 00            [12] 1359 	mov	r6,#0x00
      000339 7F 00            [12] 1360 	mov	r7,#0x00
      00033B                       1361 00103$:
                                   1362 ;	main.c:230: printf("%02X", data_buffer[i + 1] & 0xFFFF);
      00033B 8E 05            [24] 1363 	mov	ar5,r6
      00033D 0D               [12] 1364 	inc	r5
      00033E ED               [12] 1365 	mov	a,r5
      00033F 33               [12] 1366 	rlc	a
      000340 95 E0            [12] 1367 	subb	a,acc
      000342 FC               [12] 1368 	mov	r4,a
      000343 ED               [12] 1369 	mov	a,r5
      000344 24 00            [12] 1370 	add	a,#_data_buffer
      000346 F5 82            [12] 1371 	mov	dpl,a
      000348 EC               [12] 1372 	mov	a,r4
      000349 34 00            [12] 1373 	addc	a,#(_data_buffer >> 8)
      00034B F5 83            [12] 1374 	mov	dph,a
      00034D E0               [24] 1375 	movx	a,@dptr
      00034E FD               [12] 1376 	mov	r5,a
      00034F 7C 00            [12] 1377 	mov	r4,#0x00
      000351 C0 07            [24] 1378 	push	ar7
      000353 C0 06            [24] 1379 	push	ar6
      000355 C0 05            [24] 1380 	push	ar5
      000357 C0 04            [24] 1381 	push	ar4
      000359 74 6E            [12] 1382 	mov	a,#___str_7
      00035B C0 E0            [24] 1383 	push	acc
      00035D 74 12            [12] 1384 	mov	a,#(___str_7 >> 8)
      00035F C0 E0            [24] 1385 	push	acc
      000361 74 80            [12] 1386 	mov	a,#0x80
      000363 C0 E0            [24] 1387 	push	acc
      000365 12 08 FD         [24] 1388 	lcall	_printf
      000368 E5 81            [12] 1389 	mov	a,sp
      00036A 24 FB            [12] 1390 	add	a,#0xfb
      00036C F5 81            [12] 1391 	mov	sp,a
      00036E D0 06            [24] 1392 	pop	ar6
      000370 D0 07            [24] 1393 	pop	ar7
                                   1394 ;	main.c:228: for (i = 0; i < 5; i++)
      000372 0E               [12] 1395 	inc	r6
      000373 BE 00 01         [24] 1396 	cjne	r6,#0x00,00127$
      000376 0F               [12] 1397 	inc	r7
      000377                       1398 00127$:
      000377 C3               [12] 1399 	clr	c
      000378 EE               [12] 1400 	mov	a,r6
      000379 94 05            [12] 1401 	subb	a,#0x05
      00037B EF               [12] 1402 	mov	a,r7
      00037C 64 80            [12] 1403 	xrl	a,#0x80
      00037E 94 80            [12] 1404 	subb	a,#0x80
      000380 40 B9            [24] 1405 	jc	00103$
                                   1406 ;	main.c:232: printf("\r\n");
      000382 74 73            [12] 1407 	mov	a,#___str_8
      000384 C0 E0            [24] 1408 	push	acc
      000386 74 12            [12] 1409 	mov	a,#(___str_8 >> 8)
      000388 C0 E0            [24] 1410 	push	acc
      00038A 74 80            [12] 1411 	mov	a,#0x80
      00038C C0 E0            [24] 1412 	push	acc
      00038E 12 08 FD         [24] 1413 	lcall	_printf
      000391 15 81            [12] 1414 	dec	sp
      000393 15 81            [12] 1415 	dec	sp
      000395 15 81            [12] 1416 	dec	sp
                                   1417 ;	main.c:234: nrf24_read_register(TX_ADDR, 5);
      000397 75 37 05         [24] 1418 	mov	_nrf24_read_register_PARM_2,#0x05
      00039A 75 82 10         [24] 1419 	mov	dpl,#0x10
      00039D 12 01 80         [24] 1420 	lcall	_nrf24_read_register
                                   1421 ;	main.c:235: printf("TX_ADDR : ");
      0003A0 74 76            [12] 1422 	mov	a,#___str_9
      0003A2 C0 E0            [24] 1423 	push	acc
      0003A4 74 12            [12] 1424 	mov	a,#(___str_9 >> 8)
      0003A6 C0 E0            [24] 1425 	push	acc
      0003A8 74 80            [12] 1426 	mov	a,#0x80
      0003AA C0 E0            [24] 1427 	push	acc
      0003AC 12 08 FD         [24] 1428 	lcall	_printf
      0003AF 15 81            [12] 1429 	dec	sp
      0003B1 15 81            [12] 1430 	dec	sp
      0003B3 15 81            [12] 1431 	dec	sp
                                   1432 ;	main.c:236: for (i = 0; i < 5; i++)
      0003B5 7E 00            [12] 1433 	mov	r6,#0x00
      0003B7 7F 00            [12] 1434 	mov	r7,#0x00
      0003B9                       1435 00105$:
                                   1436 ;	main.c:238: printf("%02X", data_buffer[i + 1] & 0xFFFF);
      0003B9 8E 05            [24] 1437 	mov	ar5,r6
      0003BB 0D               [12] 1438 	inc	r5
      0003BC ED               [12] 1439 	mov	a,r5
      0003BD 33               [12] 1440 	rlc	a
      0003BE 95 E0            [12] 1441 	subb	a,acc
      0003C0 FC               [12] 1442 	mov	r4,a
      0003C1 ED               [12] 1443 	mov	a,r5
      0003C2 24 00            [12] 1444 	add	a,#_data_buffer
      0003C4 F5 82            [12] 1445 	mov	dpl,a
      0003C6 EC               [12] 1446 	mov	a,r4
      0003C7 34 00            [12] 1447 	addc	a,#(_data_buffer >> 8)
      0003C9 F5 83            [12] 1448 	mov	dph,a
      0003CB E0               [24] 1449 	movx	a,@dptr
      0003CC FD               [12] 1450 	mov	r5,a
      0003CD 7C 00            [12] 1451 	mov	r4,#0x00
      0003CF C0 07            [24] 1452 	push	ar7
      0003D1 C0 06            [24] 1453 	push	ar6
      0003D3 C0 05            [24] 1454 	push	ar5
      0003D5 C0 04            [24] 1455 	push	ar4
      0003D7 74 6E            [12] 1456 	mov	a,#___str_7
      0003D9 C0 E0            [24] 1457 	push	acc
      0003DB 74 12            [12] 1458 	mov	a,#(___str_7 >> 8)
      0003DD C0 E0            [24] 1459 	push	acc
      0003DF 74 80            [12] 1460 	mov	a,#0x80
      0003E1 C0 E0            [24] 1461 	push	acc
      0003E3 12 08 FD         [24] 1462 	lcall	_printf
      0003E6 E5 81            [12] 1463 	mov	a,sp
      0003E8 24 FB            [12] 1464 	add	a,#0xfb
      0003EA F5 81            [12] 1465 	mov	sp,a
      0003EC D0 06            [24] 1466 	pop	ar6
      0003EE D0 07            [24] 1467 	pop	ar7
                                   1468 ;	main.c:236: for (i = 0; i < 5; i++)
      0003F0 0E               [12] 1469 	inc	r6
      0003F1 BE 00 01         [24] 1470 	cjne	r6,#0x00,00129$
      0003F4 0F               [12] 1471 	inc	r7
      0003F5                       1472 00129$:
      0003F5 C3               [12] 1473 	clr	c
      0003F6 EE               [12] 1474 	mov	a,r6
      0003F7 94 05            [12] 1475 	subb	a,#0x05
      0003F9 EF               [12] 1476 	mov	a,r7
      0003FA 64 80            [12] 1477 	xrl	a,#0x80
      0003FC 94 80            [12] 1478 	subb	a,#0x80
      0003FE 40 B9            [24] 1479 	jc	00105$
                                   1480 ;	main.c:240: printf("\r\n");
      000400 74 73            [12] 1481 	mov	a,#___str_8
      000402 C0 E0            [24] 1482 	push	acc
      000404 74 12            [12] 1483 	mov	a,#(___str_8 >> 8)
      000406 C0 E0            [24] 1484 	push	acc
      000408 74 80            [12] 1485 	mov	a,#0x80
      00040A C0 E0            [24] 1486 	push	acc
      00040C 12 08 FD         [24] 1487 	lcall	_printf
      00040F 15 81            [12] 1488 	dec	sp
      000411 15 81            [12] 1489 	dec	sp
      000413 15 81            [12] 1490 	dec	sp
                                   1491 ;	main.c:242: nrf24_read_register(RX_PW_P1, 1);
      000415 75 37 01         [24] 1492 	mov	_nrf24_read_register_PARM_2,#0x01
      000418 75 82 12         [24] 1493 	mov	dpl,#0x12
      00041B 12 01 80         [24] 1494 	lcall	_nrf24_read_register
                                   1495 ;	main.c:243: printf("RX_PW_P1 : %02X\r\n", data_buffer[1] & 0xFFFF);
      00041E 90 00 01         [24] 1496 	mov	dptr,#(_data_buffer + 0x0001)
      000421 E0               [24] 1497 	movx	a,@dptr
      000422 FF               [12] 1498 	mov	r7,a
      000423 7E 00            [12] 1499 	mov	r6,#0x00
      000425 C0 07            [24] 1500 	push	ar7
      000427 C0 06            [24] 1501 	push	ar6
      000429 74 81            [12] 1502 	mov	a,#___str_10
      00042B C0 E0            [24] 1503 	push	acc
      00042D 74 12            [12] 1504 	mov	a,#(___str_10 >> 8)
      00042F C0 E0            [24] 1505 	push	acc
      000431 74 80            [12] 1506 	mov	a,#0x80
      000433 C0 E0            [24] 1507 	push	acc
      000435 12 08 FD         [24] 1508 	lcall	_printf
      000438 E5 81            [12] 1509 	mov	a,sp
      00043A 24 FB            [12] 1510 	add	a,#0xfb
      00043C F5 81            [12] 1511 	mov	sp,a
                                   1512 ;	main.c:245: nrf24_read_register(EN_RXADDR, 1);
      00043E 75 37 01         [24] 1513 	mov	_nrf24_read_register_PARM_2,#0x01
      000441 75 82 02         [24] 1514 	mov	dpl,#0x02
      000444 12 01 80         [24] 1515 	lcall	_nrf24_read_register
                                   1516 ;	main.c:246: printf("EN_RXADDR : %02X\r\n", data_buffer[1] & 0xFFFF);
      000447 90 00 01         [24] 1517 	mov	dptr,#(_data_buffer + 0x0001)
      00044A E0               [24] 1518 	movx	a,@dptr
      00044B FF               [12] 1519 	mov	r7,a
      00044C 7E 00            [12] 1520 	mov	r6,#0x00
      00044E C0 07            [24] 1521 	push	ar7
      000450 C0 06            [24] 1522 	push	ar6
      000452 74 93            [12] 1523 	mov	a,#___str_11
      000454 C0 E0            [24] 1524 	push	acc
      000456 74 12            [12] 1525 	mov	a,#(___str_11 >> 8)
      000458 C0 E0            [24] 1526 	push	acc
      00045A 74 80            [12] 1527 	mov	a,#0x80
      00045C C0 E0            [24] 1528 	push	acc
      00045E 12 08 FD         [24] 1529 	lcall	_printf
      000461 E5 81            [12] 1530 	mov	a,sp
      000463 24 FB            [12] 1531 	add	a,#0xfb
      000465 F5 81            [12] 1532 	mov	sp,a
                                   1533 ;	main.c:248: nrf24_read_register(CONFIG, 1);
      000467 75 37 01         [24] 1534 	mov	_nrf24_read_register_PARM_2,#0x01
      00046A 75 82 00         [24] 1535 	mov	dpl,#0x00
      00046D 12 01 80         [24] 1536 	lcall	_nrf24_read_register
                                   1537 ;	main.c:249: printf("CONFIG : %02X\r\n", data_buffer[1] & 0xFFFF);
      000470 90 00 01         [24] 1538 	mov	dptr,#(_data_buffer + 0x0001)
      000473 E0               [24] 1539 	movx	a,@dptr
      000474 FF               [12] 1540 	mov	r7,a
      000475 7E 00            [12] 1541 	mov	r6,#0x00
      000477 C0 07            [24] 1542 	push	ar7
      000479 C0 06            [24] 1543 	push	ar6
      00047B 74 A6            [12] 1544 	mov	a,#___str_12
      00047D C0 E0            [24] 1545 	push	acc
      00047F 74 12            [12] 1546 	mov	a,#(___str_12 >> 8)
      000481 C0 E0            [24] 1547 	push	acc
      000483 74 80            [12] 1548 	mov	a,#0x80
      000485 C0 E0            [24] 1549 	push	acc
      000487 12 08 FD         [24] 1550 	lcall	_printf
      00048A E5 81            [12] 1551 	mov	a,sp
      00048C 24 FB            [12] 1552 	add	a,#0xfb
      00048E F5 81            [12] 1553 	mov	sp,a
                                   1554 ;	main.c:251: nrf24_read_register(RPD, 1);
      000490 75 37 01         [24] 1555 	mov	_nrf24_read_register_PARM_2,#0x01
      000493 75 82 09         [24] 1556 	mov	dpl,#0x09
      000496 12 01 80         [24] 1557 	lcall	_nrf24_read_register
                                   1558 ;	main.c:252: printf("RPD : %02X\r\n", data_buffer[1] & 0xFFFF);
      000499 90 00 01         [24] 1559 	mov	dptr,#(_data_buffer + 0x0001)
      00049C E0               [24] 1560 	movx	a,@dptr
      00049D FF               [12] 1561 	mov	r7,a
      00049E 7E 00            [12] 1562 	mov	r6,#0x00
      0004A0 C0 07            [24] 1563 	push	ar7
      0004A2 C0 06            [24] 1564 	push	ar6
      0004A4 74 B6            [12] 1565 	mov	a,#___str_13
      0004A6 C0 E0            [24] 1566 	push	acc
      0004A8 74 12            [12] 1567 	mov	a,#(___str_13 >> 8)
      0004AA C0 E0            [24] 1568 	push	acc
      0004AC 74 80            [12] 1569 	mov	a,#0x80
      0004AE C0 E0            [24] 1570 	push	acc
      0004B0 12 08 FD         [24] 1571 	lcall	_printf
      0004B3 E5 81            [12] 1572 	mov	a,sp
      0004B5 24 FB            [12] 1573 	add	a,#0xfb
      0004B7 F5 81            [12] 1574 	mov	sp,a
                                   1575 ;	main.c:253: }
      0004B9 22               [24] 1576 	ret
                                   1577 ;------------------------------------------------------------
                                   1578 ;Allocation info for local variables in function 'nrf24_listen'
                                   1579 ;------------------------------------------------------------
                                   1580 ;	main.c:255: void nrf24_listen()
                                   1581 ;	-----------------------------------------
                                   1582 ;	 function nrf24_listen
                                   1583 ;	-----------------------------------------
      0004BA                       1584 _nrf24_listen:
                                   1585 ;	main.c:257: }
      0004BA 22               [24] 1586 	ret
                                   1587 ;------------------------------------------------------------
                                   1588 ;Allocation info for local variables in function 'nrf24_setup'
                                   1589 ;------------------------------------------------------------
                                   1590 ;i                         Allocated to registers r6 r7 
                                   1591 ;rx_addr                   Allocated with name '_nrf24_setup_rx_addr_65536_92'
                                   1592 ;tx_addr                   Allocated with name '_nrf24_setup_tx_addr_65536_92'
                                   1593 ;------------------------------------------------------------
                                   1594 ;	main.c:259: void nrf24_setup()
                                   1595 ;	-----------------------------------------
                                   1596 ;	 function nrf24_setup
                                   1597 ;	-----------------------------------------
      0004BB                       1598 _nrf24_setup:
                                   1599 ;	main.c:272: uint8_t rx_addr[] = {0xE0, 0xE0, 0xF1, 0xF1, 0xE0};
      0004BB 75 39 E0         [24] 1600 	mov	_nrf24_setup_rx_addr_65536_92,#0xe0
      0004BE 75 3A E0         [24] 1601 	mov	(_nrf24_setup_rx_addr_65536_92 + 0x0001),#0xe0
      0004C1 75 3B F1         [24] 1602 	mov	(_nrf24_setup_rx_addr_65536_92 + 0x0002),#0xf1
      0004C4 75 3C F1         [24] 1603 	mov	(_nrf24_setup_rx_addr_65536_92 + 0x0003),#0xf1
      0004C7 75 3D E0         [24] 1604 	mov	(_nrf24_setup_rx_addr_65536_92 + 0x0004),#0xe0
                                   1605 ;	main.c:273: uint8_t tx_addr[] = {0xF1, 0xF1, 0xF0, 0xF0, 0xE0};
      0004CA 75 3E F1         [24] 1606 	mov	_nrf24_setup_tx_addr_65536_92,#0xf1
      0004CD 75 3F F1         [24] 1607 	mov	(_nrf24_setup_tx_addr_65536_92 + 0x0001),#0xf1
      0004D0 75 40 F0         [24] 1608 	mov	(_nrf24_setup_tx_addr_65536_92 + 0x0002),#0xf0
      0004D3 75 41 F0         [24] 1609 	mov	(_nrf24_setup_tx_addr_65536_92 + 0x0003),#0xf0
      0004D6 75 42 E0         [24] 1610 	mov	(_nrf24_setup_tx_addr_65536_92 + 0x0004),#0xe0
                                   1611 ;	main.c:276: write_buffer[0] = 90;
      0004D9 90 00 21         [24] 1612 	mov	dptr,#_write_buffer
      0004DC 74 5A            [12] 1613 	mov	a,#0x5a
      0004DE F0               [24] 1614 	movx	@dptr,a
                                   1615 ;	main.c:277: nrf24_write_register(RF_CH, 1);
      0004DF 75 38 01         [24] 1616 	mov	_nrf24_write_register_PARM_2,#0x01
      0004E2 75 82 05         [24] 1617 	mov	dpl,#0x05
      0004E5 12 01 C7         [24] 1618 	lcall	_nrf24_write_register
                                   1619 ;	main.c:280: write_buffer[0] = 36;
      0004E8 90 00 21         [24] 1620 	mov	dptr,#_write_buffer
      0004EB 74 24            [12] 1621 	mov	a,#0x24
      0004ED F0               [24] 1622 	movx	@dptr,a
                                   1623 ;	main.c:281: nrf24_write_register(RF_SETUP, 1);
      0004EE 75 38 01         [24] 1624 	mov	_nrf24_write_register_PARM_2,#0x01
      0004F1 75 82 06         [24] 1625 	mov	dpl,#0x06
      0004F4 12 01 C7         [24] 1626 	lcall	_nrf24_write_register
                                   1627 ;	main.c:284: write_buffer[0] = 0x3f;
      0004F7 90 00 21         [24] 1628 	mov	dptr,#_write_buffer
      0004FA 74 3F            [12] 1629 	mov	a,#0x3f
      0004FC F0               [24] 1630 	movx	@dptr,a
                                   1631 ;	main.c:285: nrf24_write_register(EN_AA, 1);
      0004FD 75 38 01         [24] 1632 	mov	_nrf24_write_register_PARM_2,#0x01
      000500 75 82 01         [24] 1633 	mov	dpl,#0x01
      000503 12 01 C7         [24] 1634 	lcall	_nrf24_write_register
                                   1635 ;	main.c:288: write_buffer[0] = 0x3f;
      000506 90 00 21         [24] 1636 	mov	dptr,#_write_buffer
      000509 74 3F            [12] 1637 	mov	a,#0x3f
      00050B F0               [24] 1638 	movx	@dptr,a
                                   1639 ;	main.c:289: nrf24_write_register(DYNPD, 1);
      00050C 75 38 01         [24] 1640 	mov	_nrf24_write_register_PARM_2,#0x01
      00050F 75 82 1C         [24] 1641 	mov	dpl,#0x1c
      000512 12 01 C7         [24] 1642 	lcall	_nrf24_write_register
                                   1643 ;	main.c:291: write_buffer[0] = 0x06;
      000515 90 00 21         [24] 1644 	mov	dptr,#_write_buffer
      000518 74 06            [12] 1645 	mov	a,#0x06
      00051A F0               [24] 1646 	movx	@dptr,a
                                   1647 ;	main.c:292: nrf24_write_register(FEATURE, 1);
      00051B 75 38 01         [24] 1648 	mov	_nrf24_write_register_PARM_2,#0x01
      00051E 75 82 1D         [24] 1649 	mov	dpl,#0x1d
      000521 12 01 C7         [24] 1650 	lcall	_nrf24_write_register
                                   1651 ;	main.c:295: for (i = 0; i < 5; i++)
      000524 7E 00            [12] 1652 	mov	r6,#0x00
      000526 7F 00            [12] 1653 	mov	r7,#0x00
      000528                       1654 00103$:
                                   1655 ;	main.c:297: write_buffer[i] = rx_addr[4 - i];
      000528 EE               [12] 1656 	mov	a,r6
      000529 24 21            [12] 1657 	add	a,#_write_buffer
      00052B F5 82            [12] 1658 	mov	dpl,a
      00052D EF               [12] 1659 	mov	a,r7
      00052E 34 00            [12] 1660 	addc	a,#(_write_buffer >> 8)
      000530 F5 83            [12] 1661 	mov	dph,a
      000532 8E 05            [24] 1662 	mov	ar5,r6
      000534 74 04            [12] 1663 	mov	a,#0x04
      000536 C3               [12] 1664 	clr	c
      000537 9D               [12] 1665 	subb	a,r5
      000538 24 39            [12] 1666 	add	a,#_nrf24_setup_rx_addr_65536_92
      00053A F9               [12] 1667 	mov	r1,a
      00053B E7               [12] 1668 	mov	a,@r1
      00053C F0               [24] 1669 	movx	@dptr,a
                                   1670 ;	main.c:295: for (i = 0; i < 5; i++)
      00053D 0E               [12] 1671 	inc	r6
      00053E BE 00 01         [24] 1672 	cjne	r6,#0x00,00127$
      000541 0F               [12] 1673 	inc	r7
      000542                       1674 00127$:
      000542 C3               [12] 1675 	clr	c
      000543 EE               [12] 1676 	mov	a,r6
      000544 94 05            [12] 1677 	subb	a,#0x05
      000546 EF               [12] 1678 	mov	a,r7
      000547 64 80            [12] 1679 	xrl	a,#0x80
      000549 94 80            [12] 1680 	subb	a,#0x80
      00054B 40 DB            [24] 1681 	jc	00103$
                                   1682 ;	main.c:299: nrf24_write_register(RX_ADDR_P1, 5);
      00054D 75 38 05         [24] 1683 	mov	_nrf24_write_register_PARM_2,#0x05
      000550 75 82 0B         [24] 1684 	mov	dpl,#0x0b
      000553 12 01 C7         [24] 1685 	lcall	_nrf24_write_register
                                   1686 ;	main.c:300: for (i = 0; i < 5; i++)
      000556 7E 00            [12] 1687 	mov	r6,#0x00
      000558 7F 00            [12] 1688 	mov	r7,#0x00
      00055A                       1689 00105$:
                                   1690 ;	main.c:302: write_buffer[i] = tx_addr[4 - i];
      00055A EE               [12] 1691 	mov	a,r6
      00055B 24 21            [12] 1692 	add	a,#_write_buffer
      00055D F5 82            [12] 1693 	mov	dpl,a
      00055F EF               [12] 1694 	mov	a,r7
      000560 34 00            [12] 1695 	addc	a,#(_write_buffer >> 8)
      000562 F5 83            [12] 1696 	mov	dph,a
      000564 8E 05            [24] 1697 	mov	ar5,r6
      000566 74 04            [12] 1698 	mov	a,#0x04
      000568 C3               [12] 1699 	clr	c
      000569 9D               [12] 1700 	subb	a,r5
      00056A 24 3E            [12] 1701 	add	a,#_nrf24_setup_tx_addr_65536_92
      00056C F9               [12] 1702 	mov	r1,a
      00056D E7               [12] 1703 	mov	a,@r1
      00056E F0               [24] 1704 	movx	@dptr,a
                                   1705 ;	main.c:300: for (i = 0; i < 5; i++)
      00056F 0E               [12] 1706 	inc	r6
      000570 BE 00 01         [24] 1707 	cjne	r6,#0x00,00129$
      000573 0F               [12] 1708 	inc	r7
      000574                       1709 00129$:
      000574 C3               [12] 1710 	clr	c
      000575 EE               [12] 1711 	mov	a,r6
      000576 94 05            [12] 1712 	subb	a,#0x05
      000578 EF               [12] 1713 	mov	a,r7
      000579 64 80            [12] 1714 	xrl	a,#0x80
      00057B 94 80            [12] 1715 	subb	a,#0x80
      00057D 40 DB            [24] 1716 	jc	00105$
                                   1717 ;	main.c:304: nrf24_write_register(TX_ADDR, 5);
      00057F 75 38 05         [24] 1718 	mov	_nrf24_write_register_PARM_2,#0x05
      000582 75 82 10         [24] 1719 	mov	dpl,#0x10
      000585 12 01 C7         [24] 1720 	lcall	_nrf24_write_register
                                   1721 ;	main.c:307: write_buffer[0] = 32;
      000588 90 00 21         [24] 1722 	mov	dptr,#_write_buffer
      00058B 74 20            [12] 1723 	mov	a,#0x20
      00058D F0               [24] 1724 	movx	@dptr,a
                                   1725 ;	main.c:308: nrf24_write_register(RX_PW_P1, 1);
      00058E 75 38 01         [24] 1726 	mov	_nrf24_write_register_PARM_2,#0x01
      000591 75 82 12         [24] 1727 	mov	dpl,#0x12
      000594 12 01 C7         [24] 1728 	lcall	_nrf24_write_register
                                   1729 ;	main.c:311: write_buffer[0] = 0x03;
      000597 90 00 21         [24] 1730 	mov	dptr,#_write_buffer
      00059A 74 03            [12] 1731 	mov	a,#0x03
      00059C F0               [24] 1732 	movx	@dptr,a
                                   1733 ;	main.c:312: nrf24_write_register(EN_RXADDR, 1);
      00059D 75 38 01         [24] 1734 	mov	_nrf24_write_register_PARM_2,#0x01
      0005A0 75 82 02         [24] 1735 	mov	dpl,#0x02
      0005A3 12 01 C7         [24] 1736 	lcall	_nrf24_write_register
                                   1737 ;	main.c:315: write_buffer[0] = 11;
      0005A6 90 00 21         [24] 1738 	mov	dptr,#_write_buffer
      0005A9 74 0B            [12] 1739 	mov	a,#0x0b
      0005AB F0               [24] 1740 	movx	@dptr,a
                                   1741 ;	main.c:316: nrf24_write_register(CONFIG, 1);
      0005AC 75 38 01         [24] 1742 	mov	_nrf24_write_register_PARM_2,#0x01
      0005AF 75 82 00         [24] 1743 	mov	dpl,#0x00
                                   1744 ;	main.c:317: }
      0005B2 02 01 C7         [24] 1745 	ljmp	_nrf24_write_register
                                   1746 ;------------------------------------------------------------
                                   1747 ;Allocation info for local variables in function 'nrf24_get_data'
                                   1748 ;------------------------------------------------------------
                                   1749 ;i                         Allocated to registers r6 r7 
                                   1750 ;------------------------------------------------------------
                                   1751 ;	main.c:319: void nrf24_get_data()
                                   1752 ;	-----------------------------------------
                                   1753 ;	 function nrf24_get_data
                                   1754 ;	-----------------------------------------
      0005B5                       1755 _nrf24_get_data:
                                   1756 ;	main.c:322: data_buffer[0] = R_RX_PAYLOAD;
      0005B5 90 00 00         [24] 1757 	mov	dptr,#_data_buffer
      0005B8 74 61            [12] 1758 	mov	a,#0x61
      0005BA F0               [24] 1759 	movx	@dptr,a
                                   1760 ;	main.c:323: for (i = 1; i <= 33; i++)
      0005BB 7E 01            [12] 1761 	mov	r6,#0x01
      0005BD 7F 00            [12] 1762 	mov	r7,#0x00
      0005BF                       1763 00103$:
                                   1764 ;	main.c:325: data_buffer[i] = NRF24_NOP;
      0005BF EE               [12] 1765 	mov	a,r6
      0005C0 24 00            [12] 1766 	add	a,#_data_buffer
      0005C2 F5 82            [12] 1767 	mov	dpl,a
      0005C4 EF               [12] 1768 	mov	a,r7
      0005C5 34 00            [12] 1769 	addc	a,#(_data_buffer >> 8)
      0005C7 F5 83            [12] 1770 	mov	dph,a
      0005C9 74 FF            [12] 1771 	mov	a,#0xff
      0005CB F0               [24] 1772 	movx	@dptr,a
                                   1773 ;	main.c:323: for (i = 1; i <= 33; i++)
      0005CC 0E               [12] 1774 	inc	r6
      0005CD BE 00 01         [24] 1775 	cjne	r6,#0x00,00127$
      0005D0 0F               [12] 1776 	inc	r7
      0005D1                       1777 00127$:
      0005D1 C3               [12] 1778 	clr	c
      0005D2 74 21            [12] 1779 	mov	a,#0x21
      0005D4 9E               [12] 1780 	subb	a,r6
      0005D5 74 80            [12] 1781 	mov	a,#(0x00 ^ 0x80)
      0005D7 8F F0            [24] 1782 	mov	b,r7
      0005D9 63 F0 80         [24] 1783 	xrl	b,#0x80
      0005DC 95 F0            [12] 1784 	subb	a,b
      0005DE 50 DF            [24] 1785 	jnc	00103$
                                   1786 ;	main.c:327: SPI_Send(data_buffer, 33);
      0005E0 75 32 21         [24] 1787 	mov	_SPI_Send_PARM_2,#0x21
      0005E3 75 33 00         [24] 1788 	mov	(_SPI_Send_PARM_2 + 1),#0x00
      0005E6 90 00 00         [24] 1789 	mov	dptr,#_data_buffer
      0005E9 75 F0 00         [24] 1790 	mov	b,#0x00
      0005EC 12 01 1D         [24] 1791 	lcall	_SPI_Send
                                   1792 ;	main.c:329: for (i = 0; i < 33; i++)
      0005EF 7E 00            [12] 1793 	mov	r6,#0x00
      0005F1 7F 00            [12] 1794 	mov	r7,#0x00
      0005F3                       1795 00105$:
                                   1796 ;	main.c:331: printf("%02X ", data_buffer[i] & 0xFFFF);
      0005F3 EE               [12] 1797 	mov	a,r6
      0005F4 24 00            [12] 1798 	add	a,#_data_buffer
      0005F6 F5 82            [12] 1799 	mov	dpl,a
      0005F8 EF               [12] 1800 	mov	a,r7
      0005F9 34 00            [12] 1801 	addc	a,#(_data_buffer >> 8)
      0005FB F5 83            [12] 1802 	mov	dph,a
      0005FD E0               [24] 1803 	movx	a,@dptr
      0005FE FD               [12] 1804 	mov	r5,a
      0005FF 7C 00            [12] 1805 	mov	r4,#0x00
      000601 C0 07            [24] 1806 	push	ar7
      000603 C0 06            [24] 1807 	push	ar6
      000605 C0 05            [24] 1808 	push	ar5
      000607 C0 04            [24] 1809 	push	ar4
      000609 74 C3            [12] 1810 	mov	a,#___str_14
      00060B C0 E0            [24] 1811 	push	acc
      00060D 74 12            [12] 1812 	mov	a,#(___str_14 >> 8)
      00060F C0 E0            [24] 1813 	push	acc
      000611 74 80            [12] 1814 	mov	a,#0x80
      000613 C0 E0            [24] 1815 	push	acc
      000615 12 08 FD         [24] 1816 	lcall	_printf
      000618 E5 81            [12] 1817 	mov	a,sp
      00061A 24 FB            [12] 1818 	add	a,#0xfb
      00061C F5 81            [12] 1819 	mov	sp,a
      00061E D0 06            [24] 1820 	pop	ar6
      000620 D0 07            [24] 1821 	pop	ar7
                                   1822 ;	main.c:329: for (i = 0; i < 33; i++)
      000622 0E               [12] 1823 	inc	r6
      000623 BE 00 01         [24] 1824 	cjne	r6,#0x00,00129$
      000626 0F               [12] 1825 	inc	r7
      000627                       1826 00129$:
      000627 C3               [12] 1827 	clr	c
      000628 EE               [12] 1828 	mov	a,r6
      000629 94 21            [12] 1829 	subb	a,#0x21
      00062B EF               [12] 1830 	mov	a,r7
      00062C 64 80            [12] 1831 	xrl	a,#0x80
      00062E 94 80            [12] 1832 	subb	a,#0x80
      000630 40 C1            [24] 1833 	jc	00105$
                                   1834 ;	main.c:333: printf("\r\n");
      000632 74 73            [12] 1835 	mov	a,#___str_8
      000634 C0 E0            [24] 1836 	push	acc
      000636 74 12            [12] 1837 	mov	a,#(___str_8 >> 8)
      000638 C0 E0            [24] 1838 	push	acc
      00063A 74 80            [12] 1839 	mov	a,#0x80
      00063C C0 E0            [24] 1840 	push	acc
      00063E 12 08 FD         [24] 1841 	lcall	_printf
      000641 15 81            [12] 1842 	dec	sp
      000643 15 81            [12] 1843 	dec	sp
      000645 15 81            [12] 1844 	dec	sp
                                   1845 ;	main.c:334: }
      000647 22               [24] 1846 	ret
                                   1847 ;------------------------------------------------------------
                                   1848 ;Allocation info for local variables in function 'nrf24_available'
                                   1849 ;------------------------------------------------------------
                                   1850 ;result                    Allocated to registers r7 
                                   1851 ;------------------------------------------------------------
                                   1852 ;	main.c:336: uint8_t nrf24_available()
                                   1853 ;	-----------------------------------------
                                   1854 ;	 function nrf24_available
                                   1855 ;	-----------------------------------------
      000648                       1856 _nrf24_available:
                                   1857 ;	main.c:338: uint8_t result = 0;
      000648 7F 00            [12] 1858 	mov	r7,#0x00
                                   1859 ;	main.c:339: nrf24_read_register(STATUS, 1);
      00064A 75 37 01         [24] 1860 	mov	_nrf24_read_register_PARM_2,#0x01
      00064D 75 82 07         [24] 1861 	mov	dpl,#0x07
      000650 C0 07            [24] 1862 	push	ar7
      000652 12 01 80         [24] 1863 	lcall	_nrf24_read_register
      000655 D0 07            [24] 1864 	pop	ar7
                                   1865 ;	main.c:340: if (data_buffer[0] & (1 << 6) || (data_buffer[0] & 0x0E != 0x0E))
      000657 90 00 00         [24] 1866 	mov	dptr,#_data_buffer
      00065A E0               [24] 1867 	movx	a,@dptr
      00065B 20 E6 07         [24] 1868 	jb	acc.6,00101$
      00065E 90 00 00         [24] 1869 	mov	dptr,#_data_buffer
      000661 E0               [24] 1870 	movx	a,@dptr
      000662 E4               [12] 1871 	clr	a
      000663 60 02            [24] 1872 	jz	00102$
      000665                       1873 00101$:
                                   1874 ;	main.c:341: result = 1;
      000665 7F 01            [12] 1875 	mov	r7,#0x01
      000667                       1876 00102$:
                                   1877 ;	main.c:343: nrf24_read_register(STATUS, 1);
      000667 75 37 01         [24] 1878 	mov	_nrf24_read_register_PARM_2,#0x01
      00066A 75 82 07         [24] 1879 	mov	dpl,#0x07
      00066D C0 07            [24] 1880 	push	ar7
      00066F 12 01 80         [24] 1881 	lcall	_nrf24_read_register
      000672 D0 07            [24] 1882 	pop	ar7
                                   1883 ;	main.c:344: if (data_buffer[0] & (1 << 5))
      000674 90 00 00         [24] 1884 	mov	dptr,#_data_buffer
      000677 E0               [24] 1885 	movx	a,@dptr
      000678 30 E5 13         [24] 1886 	jnb	acc.5,00105$
                                   1887 ;	main.c:346: write_buffer[0] = (1 << 5);
      00067B 90 00 21         [24] 1888 	mov	dptr,#_write_buffer
      00067E 74 20            [12] 1889 	mov	a,#0x20
      000680 F0               [24] 1890 	movx	@dptr,a
                                   1891 ;	main.c:347: nrf24_write_register(STATUS, 1);
      000681 75 38 01         [24] 1892 	mov	_nrf24_write_register_PARM_2,#0x01
      000684 75 82 07         [24] 1893 	mov	dpl,#0x07
      000687 C0 07            [24] 1894 	push	ar7
      000689 12 01 C7         [24] 1895 	lcall	_nrf24_write_register
      00068C D0 07            [24] 1896 	pop	ar7
      00068E                       1897 00105$:
                                   1898 ;	main.c:349: return result;
      00068E 8F 82            [24] 1899 	mov	dpl,r7
                                   1900 ;	main.c:350: }
      000690 22               [24] 1901 	ret
                                   1902 ;------------------------------------------------------------
                                   1903 ;Allocation info for local variables in function 'nrf24_getDynamicPayloadSize'
                                   1904 ;------------------------------------------------------------
                                   1905 ;	main.c:352: uint8_t nrf24_getDynamicPayloadSize()
                                   1906 ;	-----------------------------------------
                                   1907 ;	 function nrf24_getDynamicPayloadSize
                                   1908 ;	-----------------------------------------
      000691                       1909 _nrf24_getDynamicPayloadSize:
                                   1910 ;	main.c:354: data_buffer[0] = R_RX_PL_WID;
      000691 90 00 00         [24] 1911 	mov	dptr,#_data_buffer
      000694 74 60            [12] 1912 	mov	a,#0x60
      000696 F0               [24] 1913 	movx	@dptr,a
                                   1914 ;	main.c:355: data_buffer[1] = NRF24_NOP;
      000697 90 00 01         [24] 1915 	mov	dptr,#(_data_buffer + 0x0001)
      00069A 74 FF            [12] 1916 	mov	a,#0xff
      00069C F0               [24] 1917 	movx	@dptr,a
                                   1918 ;	main.c:356: SPI_Send(data_buffer, 2);
      00069D 75 32 02         [24] 1919 	mov	_SPI_Send_PARM_2,#0x02
      0006A0 75 33 00         [24] 1920 	mov	(_SPI_Send_PARM_2 + 1),#0x00
      0006A3 90 00 00         [24] 1921 	mov	dptr,#_data_buffer
      0006A6 75 F0 00         [24] 1922 	mov	b,#0x00
      0006A9 12 01 1D         [24] 1923 	lcall	_SPI_Send
                                   1924 ;	main.c:357: return data_buffer[1];
      0006AC 90 00 01         [24] 1925 	mov	dptr,#(_data_buffer + 0x0001)
      0006AF E0               [24] 1926 	movx	a,@dptr
                                   1927 ;	main.c:358: }
      0006B0 F5 82            [12] 1928 	mov	dpl,a
      0006B2 22               [24] 1929 	ret
                                   1930 ;------------------------------------------------------------
                                   1931 ;Allocation info for local variables in function 'nrf24_startListening'
                                   1932 ;------------------------------------------------------------
                                   1933 ;	main.c:359: void nrf24_startListening()
                                   1934 ;	-----------------------------------------
                                   1935 ;	 function nrf24_startListening
                                   1936 ;	-----------------------------------------
      0006B3                       1937 _nrf24_startListening:
                                   1938 ;	main.c:361: nrf24_read_register(CONFIG,1);
      0006B3 75 37 01         [24] 1939 	mov	_nrf24_read_register_PARM_2,#0x01
      0006B6 75 82 00         [24] 1940 	mov	dpl,#0x00
      0006B9 12 01 80         [24] 1941 	lcall	_nrf24_read_register
                                   1942 ;	main.c:362: write_buffer[0] = data_buffer[1] | (1<<PRIM_RX);
      0006BC 90 00 01         [24] 1943 	mov	dptr,#(_data_buffer + 0x0001)
      0006BF E0               [24] 1944 	movx	a,@dptr
      0006C0 FF               [12] 1945 	mov	r7,a
      0006C1 43 07 01         [24] 1946 	orl	ar7,#0x01
      0006C4 90 00 21         [24] 1947 	mov	dptr,#_write_buffer
      0006C7 EF               [12] 1948 	mov	a,r7
      0006C8 F0               [24] 1949 	movx	@dptr,a
                                   1950 ;	main.c:363: nrf24_write_register(CONFIG,1);
      0006C9 75 38 01         [24] 1951 	mov	_nrf24_write_register_PARM_2,#0x01
      0006CC 75 82 00         [24] 1952 	mov	dpl,#0x00
      0006CF 12 01 C7         [24] 1953 	lcall	_nrf24_write_register
                                   1954 ;	main.c:364: write_buffer[0] = (1<<6) | (1<<5)|(1<<4);
      0006D2 90 00 21         [24] 1955 	mov	dptr,#_write_buffer
      0006D5 74 70            [12] 1956 	mov	a,#0x70
      0006D7 F0               [24] 1957 	movx	@dptr,a
                                   1958 ;	main.c:365: nrf24_write_register(STATUS, 1);
      0006D8 75 38 01         [24] 1959 	mov	_nrf24_write_register_PARM_2,#0x01
      0006DB 75 82 07         [24] 1960 	mov	dpl,#0x07
      0006DE 12 01 C7         [24] 1961 	lcall	_nrf24_write_register
                                   1962 ;	main.c:366: SPI_CE = 1;
                                   1963 ;	assignBit
      0006E1 D2 91            [12] 1964 	setb	_P11
                                   1965 ;	main.c:367: }
      0006E3 22               [24] 1966 	ret
                                   1967 ;------------------------------------------------------------
                                   1968 ;Allocation info for local variables in function 'nrf24_stopListening'
                                   1969 ;------------------------------------------------------------
                                   1970 ;	main.c:369: void nrf24_stopListening()
                                   1971 ;	-----------------------------------------
                                   1972 ;	 function nrf24_stopListening
                                   1973 ;	-----------------------------------------
      0006E4                       1974 _nrf24_stopListening:
                                   1975 ;	main.c:371: SPI_CE = 0;
                                   1976 ;	assignBit
      0006E4 C2 91            [12] 1977 	clr	_P11
                                   1978 ;	main.c:372: nrf24_read_register(CONFIG,1);
      0006E6 75 37 01         [24] 1979 	mov	_nrf24_read_register_PARM_2,#0x01
      0006E9 75 82 00         [24] 1980 	mov	dpl,#0x00
      0006EC 12 01 80         [24] 1981 	lcall	_nrf24_read_register
                                   1982 ;	main.c:373: write_buffer[0] = data_buffer[1] & ~(1<<PRIM_RX);
      0006EF 90 00 01         [24] 1983 	mov	dptr,#(_data_buffer + 0x0001)
      0006F2 E0               [24] 1984 	movx	a,@dptr
      0006F3 FF               [12] 1985 	mov	r7,a
      0006F4 53 07 FE         [24] 1986 	anl	ar7,#0xfe
      0006F7 90 00 21         [24] 1987 	mov	dptr,#_write_buffer
      0006FA EF               [12] 1988 	mov	a,r7
      0006FB F0               [24] 1989 	movx	@dptr,a
                                   1990 ;	main.c:374: nrf24_write_register(CONFIG,1);
      0006FC 75 38 01         [24] 1991 	mov	_nrf24_write_register_PARM_2,#0x01
      0006FF 75 82 00         [24] 1992 	mov	dpl,#0x00
                                   1993 ;	main.c:375: }
      000702 02 01 C7         [24] 1994 	ljmp	_nrf24_write_register
                                   1995 ;------------------------------------------------------------
                                   1996 ;Allocation info for local variables in function 'main'
                                   1997 ;------------------------------------------------------------
                                   1998 ;	main.c:376: void main()
                                   1999 ;	-----------------------------------------
                                   2000 ;	 function main
                                   2001 ;	-----------------------------------------
      000705                       2002 _main:
                                   2003 ;	main.c:378: System_Init();
      000705 12 07 77         [24] 2004 	lcall	_System_Init
                                   2005 ;	main.c:380: DEB_LED = 0;
                                   2006 ;	assignBit
      000708 C2 B5            [12] 2007 	clr	_P35
                                   2008 ;	main.c:382: InitPort();
      00070A 12 00 C2         [24] 2009 	lcall	_InitPort
                                   2010 ;	main.c:383: InitClock();
      00070D 12 00 E1         [24] 2011 	lcall	_InitClock
                                   2012 ;	main.c:384: InitSPI();
      000710 12 00 EA         [24] 2013 	lcall	_InitSPI
                                   2014 ;	main.c:386: nrf24_init();
      000713 12 01 7B         [24] 2015 	lcall	_nrf24_init
                                   2016 ;	main.c:387: nrf24_setup();
      000716 12 04 BB         [24] 2017 	lcall	_nrf24_setup
                                   2018 ;	main.c:389: nrf24_printDetails();
      000719 12 02 23         [24] 2019 	lcall	_nrf24_printDetails
                                   2020 ;	main.c:391: while (1)
      00071C                       2021 00107$:
                                   2022 ;	main.c:393: nrf24_startListening();
      00071C 12 06 B3         [24] 2023 	lcall	_nrf24_startListening
                                   2024 ;	main.c:394: while (!nrf24_available())
      00071F                       2025 00101$:
      00071F 12 06 48         [24] 2026 	lcall	_nrf24_available
      000722 E5 82            [12] 2027 	mov	a,dpl
      000724 70 08            [24] 2028 	jnz	00103$
                                   2029 ;	main.c:396: DelayXms(1);
      000726 90 00 01         [24] 2030 	mov	dptr,#0x0001
      000729 12 00 8C         [24] 2031 	lcall	_DelayXms
      00072C 80 F1            [24] 2032 	sjmp	00101$
      00072E                       2033 00103$:
                                   2034 ;	main.c:398: if (nrf24_getDynamicPayloadSize() == 0)
      00072E 12 06 91         [24] 2035 	lcall	_nrf24_getDynamicPayloadSize
      000731 E5 82            [12] 2036 	mov	a,dpl
      000733 60 E7            [24] 2037 	jz	00107$
                                   2038 ;	main.c:403: nrf24_stopListening();
      000735 12 06 E4         [24] 2039 	lcall	_nrf24_stopListening
                                   2040 ;	main.c:404: nrf24_get_data();
      000738 12 05 B5         [24] 2041 	lcall	_nrf24_get_data
                                   2042 ;	main.c:406: }
      00073B 80 DF            [24] 2043 	sjmp	00107$
                                   2044 	.area CSEG    (CODE)
                                   2045 	.area CONST   (CODE)
                                   2046 	.area CONST   (CODE)
      001200                       2047 ___str_0:
      001200 52 46 5F 43 48 20 3A  2048 	.ascii "RF_CH : %02X"
             20 25 30 32 58
      00120C 0D                    2049 	.db 0x0d
      00120D 0A                    2050 	.db 0x0a
      00120E 00                    2051 	.db 0x00
                                   2052 	.area CSEG    (CODE)
                                   2053 	.area CONST   (CODE)
      00120F                       2054 ___str_1:
      00120F 52 46 5F 53 45 54 55  2055 	.ascii "RF_SETUP : %02X"
             50 20 3A 20 25 30 32
             58
      00121E 0D                    2056 	.db 0x0d
      00121F 0A                    2057 	.db 0x0a
      001220 00                    2058 	.db 0x00
                                   2059 	.area CSEG    (CODE)
                                   2060 	.area CONST   (CODE)
      001221                       2061 ___str_2:
      001221 53 74 61 74 75 73 20  2062 	.ascii "Status : %02X"
             3A 20 25 30 32 58
      00122E 0D                    2063 	.db 0x0d
      00122F 0A                    2064 	.db 0x0a
      001230 00                    2065 	.db 0x00
                                   2066 	.area CSEG    (CODE)
                                   2067 	.area CONST   (CODE)
      001231                       2068 ___str_3:
      001231 45 4E 5F 41 41 20 3A  2069 	.ascii "EN_AA : %02X"
             20 25 30 32 58
      00123D 0D                    2070 	.db 0x0d
      00123E 0A                    2071 	.db 0x0a
      00123F 00                    2072 	.db 0x00
                                   2073 	.area CSEG    (CODE)
                                   2074 	.area CONST   (CODE)
      001240                       2075 ___str_4:
      001240 44 59 4E 50 44 20 3A  2076 	.ascii "DYNPD : %02X"
             20 25 30 32 58
      00124C 0D                    2077 	.db 0x0d
      00124D 0A                    2078 	.db 0x0a
      00124E 00                    2079 	.db 0x00
                                   2080 	.area CSEG    (CODE)
                                   2081 	.area CONST   (CODE)
      00124F                       2082 ___str_5:
      00124F 46 45 41 54 55 52 45  2083 	.ascii "FEATURE : %02X"
             20 3A 20 25 30 32 58
      00125D 0D                    2084 	.db 0x0d
      00125E 0A                    2085 	.db 0x0a
      00125F 00                    2086 	.db 0x00
                                   2087 	.area CSEG    (CODE)
                                   2088 	.area CONST   (CODE)
      001260                       2089 ___str_6:
      001260 52 58 5F 41 44 44 52  2090 	.ascii "RX_ADDR_P1 : "
             5F 50 31 20 3A 20
      00126D 00                    2091 	.db 0x00
                                   2092 	.area CSEG    (CODE)
                                   2093 	.area CONST   (CODE)
      00126E                       2094 ___str_7:
      00126E 25 30 32 58           2095 	.ascii "%02X"
      001272 00                    2096 	.db 0x00
                                   2097 	.area CSEG    (CODE)
                                   2098 	.area CONST   (CODE)
      001273                       2099 ___str_8:
      001273 0D                    2100 	.db 0x0d
      001274 0A                    2101 	.db 0x0a
      001275 00                    2102 	.db 0x00
                                   2103 	.area CSEG    (CODE)
                                   2104 	.area CONST   (CODE)
      001276                       2105 ___str_9:
      001276 54 58 5F 41 44 44 52  2106 	.ascii "TX_ADDR : "
             20 3A 20
      001280 00                    2107 	.db 0x00
                                   2108 	.area CSEG    (CODE)
                                   2109 	.area CONST   (CODE)
      001281                       2110 ___str_10:
      001281 52 58 5F 50 57 5F 50  2111 	.ascii "RX_PW_P1 : %02X"
             31 20 3A 20 25 30 32
             58
      001290 0D                    2112 	.db 0x0d
      001291 0A                    2113 	.db 0x0a
      001292 00                    2114 	.db 0x00
                                   2115 	.area CSEG    (CODE)
                                   2116 	.area CONST   (CODE)
      001293                       2117 ___str_11:
      001293 45 4E 5F 52 58 41 44  2118 	.ascii "EN_RXADDR : %02X"
             44 52 20 3A 20 25 30
             32 58
      0012A3 0D                    2119 	.db 0x0d
      0012A4 0A                    2120 	.db 0x0a
      0012A5 00                    2121 	.db 0x00
                                   2122 	.area CSEG    (CODE)
                                   2123 	.area CONST   (CODE)
      0012A6                       2124 ___str_12:
      0012A6 43 4F 4E 46 49 47 20  2125 	.ascii "CONFIG : %02X"
             3A 20 25 30 32 58
      0012B3 0D                    2126 	.db 0x0d
      0012B4 0A                    2127 	.db 0x0a
      0012B5 00                    2128 	.db 0x00
                                   2129 	.area CSEG    (CODE)
                                   2130 	.area CONST   (CODE)
      0012B6                       2131 ___str_13:
      0012B6 52 50 44 20 3A 20 25  2132 	.ascii "RPD : %02X"
             30 32 58
      0012C0 0D                    2133 	.db 0x0d
      0012C1 0A                    2134 	.db 0x0a
      0012C2 00                    2135 	.db 0x00
                                   2136 	.area CSEG    (CODE)
                                   2137 	.area CONST   (CODE)
      0012C3                       2138 ___str_14:
      0012C3 25 30 32 58 20        2139 	.ascii "%02X "
      0012C8 00                    2140 	.db 0x00
                                   2141 	.area CSEG    (CODE)
                                   2142 	.area XINIT   (CODE)
                                   2143 	.area CABS    (ABS,CODE)
