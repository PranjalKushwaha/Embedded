                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module MG82F6D17_INTERRUPT
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _P60
                                     12 	.globl _P61
                                     13 	.globl _B0
                                     14 	.globl _B1
                                     15 	.globl _B2
                                     16 	.globl _B3
                                     17 	.globl _B4
                                     18 	.globl _B5
                                     19 	.globl _B6
                                     20 	.globl _B7
                                     21 	.globl _P44
                                     22 	.globl _P45
                                     23 	.globl _P47
                                     24 	.globl _ACC0
                                     25 	.globl _ACC1
                                     26 	.globl _ACC2
                                     27 	.globl _ACC3
                                     28 	.globl _ACC4
                                     29 	.globl _ACC5
                                     30 	.globl _ACC6
                                     31 	.globl _ACC7
                                     32 	.globl _CCF0
                                     33 	.globl _CCF1
                                     34 	.globl _CCF2
                                     35 	.globl _CCF3
                                     36 	.globl _CCF4
                                     37 	.globl _CCF5
                                     38 	.globl _CR
                                     39 	.globl _CF
                                     40 	.globl _P
                                     41 	.globl _F1
                                     42 	.globl _OV
                                     43 	.globl _RS0
                                     44 	.globl _RS1
                                     45 	.globl _F0
                                     46 	.globl _AC
                                     47 	.globl _CY
                                     48 	.globl _T6GAT0
                                     49 	.globl _T6GAT1
                                     50 	.globl _TR6
                                     51 	.globl _T61E
                                     52 	.globl _T6CKS0
                                     53 	.globl _T6CKS1
                                     54 	.globl _TF6
                                     55 	.globl _T5GAT0
                                     56 	.globl _T5GAT1
                                     57 	.globl _TR5
                                     58 	.globl _T51E
                                     59 	.globl _T5CKS0
                                     60 	.globl _T5CKS1
                                     61 	.globl _TF5
                                     62 	.globl _CP_RL3
                                     63 	.globl _C_T3
                                     64 	.globl _TR3
                                     65 	.globl _EXEN3
                                     66 	.globl _TL3IE
                                     67 	.globl _TF3L
                                     68 	.globl _EXF3
                                     69 	.globl _TF3
                                     70 	.globl _CP_RL2
                                     71 	.globl _C_T2
                                     72 	.globl _TR2
                                     73 	.globl _EXEN2
                                     74 	.globl _TCLK_TL2IE
                                     75 	.globl _RCLK_TF2L
                                     76 	.globl _EXF2
                                     77 	.globl _TF2
                                     78 	.globl _IT2
                                     79 	.globl _IE2
                                     80 	.globl _EX2
                                     81 	.globl _INT2H
                                     82 	.globl _PX0L
                                     83 	.globl _PT0L
                                     84 	.globl _PX1L
                                     85 	.globl _PT1L
                                     86 	.globl _PSL
                                     87 	.globl _PT2L
                                     88 	.globl _PX2L
                                     89 	.globl _P30
                                     90 	.globl _P31
                                     91 	.globl _P33
                                     92 	.globl _P34
                                     93 	.globl _P35
                                     94 	.globl _EX0
                                     95 	.globl _ET0
                                     96 	.globl _EX1
                                     97 	.globl _ET1
                                     98 	.globl _ES0
                                     99 	.globl _ET2
                                    100 	.globl _EDMA
                                    101 	.globl _EA
                                    102 	.globl _P24
                                    103 	.globl _P22
                                    104 	.globl _SM01
                                    105 	.globl _SM11
                                    106 	.globl _SM21
                                    107 	.globl _REN1
                                    108 	.globl _TB81
                                    109 	.globl _RB81
                                    110 	.globl _TI1
                                    111 	.globl _RI1
                                    112 	.globl _SM00
                                    113 	.globl _SM10
                                    114 	.globl _SM20
                                    115 	.globl _REN0
                                    116 	.globl _TB80
                                    117 	.globl _RB80
                                    118 	.globl _TI0
                                    119 	.globl _RI0
                                    120 	.globl _P17
                                    121 	.globl _P16
                                    122 	.globl _P15
                                    123 	.globl _P14
                                    124 	.globl _P13
                                    125 	.globl _P12
                                    126 	.globl _P11
                                    127 	.globl _P10
                                    128 	.globl _TF1
                                    129 	.globl _TR1
                                    130 	.globl _TF0
                                    131 	.globl _TR0
                                    132 	.globl _IE1
                                    133 	.globl _IT1
                                    134 	.globl _IE0
                                    135 	.globl _IT0
                                    136 	.globl _CCAP5H
                                    137 	.globl _CCAP4H
                                    138 	.globl _CCAP3H
                                    139 	.globl _CCAP2H
                                    140 	.globl _CCAP7H
                                    141 	.globl _CCAP1H
                                    142 	.globl _CCAP6H
                                    143 	.globl _CCAP0H
                                    144 	.globl _CH
                                    145 	.globl _P6
                                    146 	.globl _PCAPWM5
                                    147 	.globl _PCAPWM4
                                    148 	.globl _PCAPWM3
                                    149 	.globl _PCAPWM2
                                    150 	.globl _PCAPWM7
                                    151 	.globl _PCAPWM1
                                    152 	.globl _PCAPWM6
                                    153 	.globl _PCAPWM0
                                    154 	.globl _PAOE
                                    155 	.globl _B
                                    156 	.globl _CCAP5L
                                    157 	.globl _CCAP4L
                                    158 	.globl _CCAP3L
                                    159 	.globl _CCAP2L
                                    160 	.globl _CCAP7L
                                    161 	.globl _CCAP1L
                                    162 	.globl _CCAP6L
                                    163 	.globl _CCAP0L
                                    164 	.globl _CL
                                    165 	.globl _P4
                                    166 	.globl _ISPCR
                                    167 	.globl _SCMD
                                    168 	.globl _IFMT
                                    169 	.globl _IFADRL
                                    170 	.globl _IFADRH
                                    171 	.globl _IFD
                                    172 	.globl _WDTCR
                                    173 	.globl _ACC
                                    174 	.globl _CCAPM5
                                    175 	.globl _CCAPM4
                                    176 	.globl _CCAPM3
                                    177 	.globl _CCAPM2
                                    178 	.globl _CCAPM7
                                    179 	.globl _CCAPM1
                                    180 	.globl _CCAPM6
                                    181 	.globl _CCAPM0
                                    182 	.globl _CMOD
                                    183 	.globl _CCON
                                    184 	.globl _KBMASK
                                    185 	.globl _KBCON
                                    186 	.globl _KBPATN
                                    187 	.globl _SICON
                                    188 	.globl _SISTA
                                    189 	.globl _SIDAT
                                    190 	.globl _SIADR
                                    191 	.globl _PSW
                                    192 	.globl _CHRL
                                    193 	.globl _CLRL
                                    194 	.globl _TH6
                                    195 	.globl _TH5
                                    196 	.globl _TH3
                                    197 	.globl _TH2
                                    198 	.globl _TL6
                                    199 	.globl _TL5
                                    200 	.globl _TL3
                                    201 	.globl _TL2
                                    202 	.globl _THR6
                                    203 	.globl _THR5
                                    204 	.globl _RCAP3H
                                    205 	.globl _RCAP2H
                                    206 	.globl _TLR6
                                    207 	.globl _TLR5
                                    208 	.globl _RCAP3L
                                    209 	.globl _RCAP2L
                                    210 	.globl _T3MOD
                                    211 	.globl _T2MOD
                                    212 	.globl _T6CON
                                    213 	.globl _T5CON
                                    214 	.globl _T3CON
                                    215 	.globl _T2CON
                                    216 	.globl _CKCON0
                                    217 	.globl _ADCDH
                                    218 	.globl _ADCDL
                                    219 	.globl _ADCON0
                                    220 	.globl _ADCFG14
                                    221 	.globl _ADCFG13
                                    222 	.globl _ADCFG12
                                    223 	.globl _ADCFG11
                                    224 	.globl _ADCFG5
                                    225 	.globl _ADCFG4
                                    226 	.globl _ADCFG3
                                    227 	.globl _ADCFG2
                                    228 	.globl _ADCFG1
                                    229 	.globl _ADCFG0
                                    230 	.globl _XICFG1
                                    231 	.globl _XICFG
                                    232 	.globl _XICON
                                    233 	.globl _CKCON1
                                    234 	.globl _RTCCR
                                    235 	.globl _CRC0DA
                                    236 	.globl _PDTCRA
                                    237 	.globl _PWMCR
                                    238 	.globl _S0CR1
                                    239 	.globl _SADEN
                                    240 	.globl _IP0L
                                    241 	.globl _IP0H
                                    242 	.globl _RTCTM
                                    243 	.globl _P6M0
                                    244 	.globl _PDRVC1
                                    245 	.globl _PDRVC0
                                    246 	.globl _P4M0
                                    247 	.globl _P3M1
                                    248 	.globl _P3M0
                                    249 	.globl _P3
                                    250 	.globl _EIP1H
                                    251 	.globl _EIP1L
                                    252 	.globl _EIE1
                                    253 	.globl _SFRPI
                                    254 	.globl _ADDR
                                    255 	.globl _IE
                                    256 	.globl _EIP2H
                                    257 	.globl _EIP2L
                                    258 	.globl _EIE2
                                    259 	.globl _AUXR11
                                    260 	.globl _AUXR10
                                    261 	.globl _AUXR9
                                    262 	.globl _AUXR8
                                    263 	.globl _AUXR7
                                    264 	.globl _AUXR6
                                    265 	.globl _AUXR5
                                    266 	.globl _AUXR4
                                    267 	.globl _AUXR3
                                    268 	.globl _AUXR2
                                    269 	.globl _AUXR1
                                    270 	.globl _AUXR0
                                    271 	.globl _P2
                                    272 	.globl _S0CFG1
                                    273 	.globl _S1CFG
                                    274 	.globl _S0CFG
                                    275 	.globl _S1BRC
                                    276 	.globl _S0BRC
                                    277 	.globl _S1BRT
                                    278 	.globl _S0BRT
                                    279 	.globl _S1BUF
                                    280 	.globl _S0BUF
                                    281 	.globl _S1CON
                                    282 	.globl _S0CON
                                    283 	.globl _PCON1
                                    284 	.globl _BOREV
                                    285 	.globl _TSPC0
                                    286 	.globl _TRLC0
                                    287 	.globl _TREN0
                                    288 	.globl _P2M0
                                    289 	.globl _DMADS0
                                    290 	.globl _DMACG0
                                    291 	.globl _DMACR0
                                    292 	.globl _T3MOD1
                                    293 	.globl _T2MOD1
                                    294 	.globl _P4FDC
                                    295 	.globl _P2FDC
                                    296 	.globl _P1FDC
                                    297 	.globl _P3FDC
                                    298 	.globl _P6M1
                                    299 	.globl _P4M1
                                    300 	.globl _P2M1
                                    301 	.globl _P1M1
                                    302 	.globl _P1M0
                                    303 	.globl _P1
                                    304 	.globl _XRPS
                                    305 	.globl _SFIE
                                    306 	.globl _TH1
                                    307 	.globl _TH0
                                    308 	.globl _TL1
                                    309 	.globl _TL0
                                    310 	.globl _TMOD
                                    311 	.globl _TCON
                                    312 	.globl _PCON0
                                    313 	.globl _SPDAT
                                    314 	.globl _SPCON
                                    315 	.globl _SPSTAT
                                    316 	.globl _DPH
                                    317 	.globl _DPL
                                    318 	.globl _SP
                                    319 ;--------------------------------------------------------
                                    320 ; special function registers
                                    321 ;--------------------------------------------------------
                                    322 	.area RSEG    (ABS,DATA)
      000000                        323 	.org 0x0000
                           000081   324 _SP	=	0x0081
                           000082   325 _DPL	=	0x0082
                           000083   326 _DPH	=	0x0083
                           000084   327 _SPSTAT	=	0x0084
                           000085   328 _SPCON	=	0x0085
                           000086   329 _SPDAT	=	0x0086
                           000087   330 _PCON0	=	0x0087
                           000088   331 _TCON	=	0x0088
                           000089   332 _TMOD	=	0x0089
                           00008A   333 _TL0	=	0x008a
                           00008B   334 _TL1	=	0x008b
                           00008C   335 _TH0	=	0x008c
                           00008D   336 _TH1	=	0x008d
                           00008E   337 _SFIE	=	0x008e
                           00008F   338 _XRPS	=	0x008f
                           000090   339 _P1	=	0x0090
                           000091   340 _P1M0	=	0x0091
                           000092   341 _P1M1	=	0x0092
                           000092   342 _P2M1	=	0x0092
                           000092   343 _P4M1	=	0x0092
                           000092   344 _P6M1	=	0x0092
                           000092   345 _P3FDC	=	0x0092
                           000092   346 _P1FDC	=	0x0092
                           000092   347 _P2FDC	=	0x0092
                           000092   348 _P4FDC	=	0x0092
                           000093   349 _T2MOD1	=	0x0093
                           000093   350 _T3MOD1	=	0x0093
                           000094   351 _DMACR0	=	0x0094
                           000094   352 _DMACG0	=	0x0094
                           000094   353 _DMADS0	=	0x0094
                           000095   354 _P2M0	=	0x0095
                           000095   355 _TREN0	=	0x0095
                           000095   356 _TRLC0	=	0x0095
                           000095   357 _TSPC0	=	0x0095
                           000096   358 _BOREV	=	0x0096
                           000097   359 _PCON1	=	0x0097
                           000098   360 _S0CON	=	0x0098
                           000098   361 _S1CON	=	0x0098
                           000099   362 _S0BUF	=	0x0099
                           000099   363 _S1BUF	=	0x0099
                           00009A   364 _S0BRT	=	0x009a
                           00009A   365 _S1BRT	=	0x009a
                           00009B   366 _S0BRC	=	0x009b
                           000098   367 _S1BRC	=	0x0098
                           00009C   368 _S0CFG	=	0x009c
                           00009C   369 _S1CFG	=	0x009c
                           00009D   370 _S0CFG1	=	0x009d
                           0000A0   371 _P2	=	0x00a0
                           0000A1   372 _AUXR0	=	0x00a1
                           0000A2   373 _AUXR1	=	0x00a2
                           0000A3   374 _AUXR2	=	0x00a3
                           0000A4   375 _AUXR3	=	0x00a4
                           0000A4   376 _AUXR4	=	0x00a4
                           0000A4   377 _AUXR5	=	0x00a4
                           0000A4   378 _AUXR6	=	0x00a4
                           0000A4   379 _AUXR7	=	0x00a4
                           0000A4   380 _AUXR8	=	0x00a4
                           0000A4   381 _AUXR9	=	0x00a4
                           0000A4   382 _AUXR10	=	0x00a4
                           0000A4   383 _AUXR11	=	0x00a4
                           0000A5   384 _EIE2	=	0x00a5
                           0000A6   385 _EIP2L	=	0x00a6
                           0000A7   386 _EIP2H	=	0x00a7
                           0000A8   387 _IE	=	0x00a8
                           0000A9   388 _ADDR	=	0x00a9
                           0000AC   389 _SFRPI	=	0x00ac
                           0000AD   390 _EIE1	=	0x00ad
                           0000AE   391 _EIP1L	=	0x00ae
                           0000AF   392 _EIP1H	=	0x00af
                           0000B0   393 _P3	=	0x00b0
                           0000B1   394 _P3M0	=	0x00b1
                           0000B2   395 _P3M1	=	0x00b2
                           0000B3   396 _P4M0	=	0x00b3
                           0000B4   397 _PDRVC0	=	0x00b4
                           0000B4   398 _PDRVC1	=	0x00b4
                           0000B5   399 _P6M0	=	0x00b5
                           0000B6   400 _RTCTM	=	0x00b6
                           0000B7   401 _IP0H	=	0x00b7
                           0000B8   402 _IP0L	=	0x00b8
                           0000B9   403 _SADEN	=	0x00b9
                           0000B9   404 _S0CR1	=	0x00b9
                           0000BC   405 _PWMCR	=	0x00bc
                           0000BC   406 _PDTCRA	=	0x00bc
                           0000BD   407 _CRC0DA	=	0x00bd
                           0000BE   408 _RTCCR	=	0x00be
                           0000BF   409 _CKCON1	=	0x00bf
                           0000C0   410 _XICON	=	0x00c0
                           0000C1   411 _XICFG	=	0x00c1
                           0000C1   412 _XICFG1	=	0x00c1
                           0000C3   413 _ADCFG0	=	0x00c3
                           0000C3   414 _ADCFG1	=	0x00c3
                           0000C3   415 _ADCFG2	=	0x00c3
                           0000C3   416 _ADCFG3	=	0x00c3
                           0000C3   417 _ADCFG4	=	0x00c3
                           0000C3   418 _ADCFG5	=	0x00c3
                           0000C3   419 _ADCFG11	=	0x00c3
                           0000C3   420 _ADCFG12	=	0x00c3
                           0000C3   421 _ADCFG13	=	0x00c3
                           0000C3   422 _ADCFG14	=	0x00c3
                           0000C4   423 _ADCON0	=	0x00c4
                           0000C5   424 _ADCDL	=	0x00c5
                           0000C6   425 _ADCDH	=	0x00c6
                           0000C7   426 _CKCON0	=	0x00c7
                           0000C8   427 _T2CON	=	0x00c8
                           0000C8   428 _T3CON	=	0x00c8
                           0000C8   429 _T5CON	=	0x00c8
                           0000C8   430 _T6CON	=	0x00c8
                           0000C9   431 _T2MOD	=	0x00c9
                           0000C9   432 _T3MOD	=	0x00c9
                           0000CA   433 _RCAP2L	=	0x00ca
                           0000CA   434 _RCAP3L	=	0x00ca
                           0000CA   435 _TLR5	=	0x00ca
                           0000CA   436 _TLR6	=	0x00ca
                           0000CB   437 _RCAP2H	=	0x00cb
                           0000CB   438 _RCAP3H	=	0x00cb
                           0000CB   439 _THR5	=	0x00cb
                           0000CB   440 _THR6	=	0x00cb
                           0000CC   441 _TL2	=	0x00cc
                           0000CC   442 _TL3	=	0x00cc
                           0000CC   443 _TL5	=	0x00cc
                           0000CC   444 _TL6	=	0x00cc
                           0000CD   445 _TH2	=	0x00cd
                           0000CD   446 _TH3	=	0x00cd
                           0000CD   447 _TH5	=	0x00cd
                           0000CD   448 _TH6	=	0x00cd
                           0000CE   449 _CLRL	=	0x00ce
                           0000CF   450 _CHRL	=	0x00cf
                           0000D0   451 _PSW	=	0x00d0
                           0000D1   452 _SIADR	=	0x00d1
                           0000D2   453 _SIDAT	=	0x00d2
                           0000D3   454 _SISTA	=	0x00d3
                           0000D4   455 _SICON	=	0x00d4
                           0000D5   456 _KBPATN	=	0x00d5
                           0000D6   457 _KBCON	=	0x00d6
                           0000D7   458 _KBMASK	=	0x00d7
                           0000D8   459 _CCON	=	0x00d8
                           0000D9   460 _CMOD	=	0x00d9
                           0000DA   461 _CCAPM0	=	0x00da
                           0000DA   462 _CCAPM6	=	0x00da
                           0000DB   463 _CCAPM1	=	0x00db
                           0000DB   464 _CCAPM7	=	0x00db
                           0000DC   465 _CCAPM2	=	0x00dc
                           0000DD   466 _CCAPM3	=	0x00dd
                           0000DE   467 _CCAPM4	=	0x00de
                           0000DF   468 _CCAPM5	=	0x00df
                           0000E0   469 _ACC	=	0x00e0
                           0000E1   470 _WDTCR	=	0x00e1
                           0000E2   471 _IFD	=	0x00e2
                           0000E3   472 _IFADRH	=	0x00e3
                           0000E4   473 _IFADRL	=	0x00e4
                           0000E5   474 _IFMT	=	0x00e5
                           0000E6   475 _SCMD	=	0x00e6
                           0000E7   476 _ISPCR	=	0x00e7
                           0000E8   477 _P4	=	0x00e8
                           0000E9   478 _CL	=	0x00e9
                           0000EA   479 _CCAP0L	=	0x00ea
                           0000EA   480 _CCAP6L	=	0x00ea
                           0000EB   481 _CCAP1L	=	0x00eb
                           0000EB   482 _CCAP7L	=	0x00eb
                           0000EC   483 _CCAP2L	=	0x00ec
                           0000ED   484 _CCAP3L	=	0x00ed
                           0000EE   485 _CCAP4L	=	0x00ee
                           0000EF   486 _CCAP5L	=	0x00ef
                           0000F0   487 _B	=	0x00f0
                           0000F1   488 _PAOE	=	0x00f1
                           0000F2   489 _PCAPWM0	=	0x00f2
                           0000F2   490 _PCAPWM6	=	0x00f2
                           0000F3   491 _PCAPWM1	=	0x00f3
                           0000F3   492 _PCAPWM7	=	0x00f3
                           0000F4   493 _PCAPWM2	=	0x00f4
                           0000F5   494 _PCAPWM3	=	0x00f5
                           0000F6   495 _PCAPWM4	=	0x00f6
                           0000F7   496 _PCAPWM5	=	0x00f7
                           0000F8   497 _P6	=	0x00f8
                           0000F9   498 _CH	=	0x00f9
                           0000FA   499 _CCAP0H	=	0x00fa
                           0000FA   500 _CCAP6H	=	0x00fa
                           0000FB   501 _CCAP1H	=	0x00fb
                           0000FB   502 _CCAP7H	=	0x00fb
                           0000FC   503 _CCAP2H	=	0x00fc
                           0000FD   504 _CCAP3H	=	0x00fd
                           0000FE   505 _CCAP4H	=	0x00fe
                           0000FF   506 _CCAP5H	=	0x00ff
                                    507 ;--------------------------------------------------------
                                    508 ; special function bits
                                    509 ;--------------------------------------------------------
                                    510 	.area RSEG    (ABS,DATA)
      000000                        511 	.org 0x0000
                           000088   512 _IT0	=	0x0088
                           000089   513 _IE0	=	0x0089
                           00008A   514 _IT1	=	0x008a
                           00008B   515 _IE1	=	0x008b
                           00008C   516 _TR0	=	0x008c
                           00008D   517 _TF0	=	0x008d
                           00008E   518 _TR1	=	0x008e
                           00008F   519 _TF1	=	0x008f
                           000090   520 _P10	=	0x0090
                           000091   521 _P11	=	0x0091
                           000092   522 _P12	=	0x0092
                           000093   523 _P13	=	0x0093
                           000094   524 _P14	=	0x0094
                           000095   525 _P15	=	0x0095
                           000096   526 _P16	=	0x0096
                           000097   527 _P17	=	0x0097
                           000098   528 _RI0	=	0x0098
                           000099   529 _TI0	=	0x0099
                           00009A   530 _RB80	=	0x009a
                           00009B   531 _TB80	=	0x009b
                           00009C   532 _REN0	=	0x009c
                           00009D   533 _SM20	=	0x009d
                           00009E   534 _SM10	=	0x009e
                           00009F   535 _SM00	=	0x009f
                           000098   536 _RI1	=	0x0098
                           000099   537 _TI1	=	0x0099
                           00009A   538 _RB81	=	0x009a
                           00009B   539 _TB81	=	0x009b
                           00009C   540 _REN1	=	0x009c
                           00009D   541 _SM21	=	0x009d
                           00009E   542 _SM11	=	0x009e
                           00009F   543 _SM01	=	0x009f
                           0000A2   544 _P22	=	0x00a2
                           0000A4   545 _P24	=	0x00a4
                           0000AF   546 _EA	=	0x00af
                           0000AE   547 _EDMA	=	0x00ae
                           0000AD   548 _ET2	=	0x00ad
                           0000AC   549 _ES0	=	0x00ac
                           0000AB   550 _ET1	=	0x00ab
                           0000AA   551 _EX1	=	0x00aa
                           0000A9   552 _ET0	=	0x00a9
                           0000A8   553 _EX0	=	0x00a8
                           0000B5   554 _P35	=	0x00b5
                           0000B4   555 _P34	=	0x00b4
                           0000B3   556 _P33	=	0x00b3
                           0000B1   557 _P31	=	0x00b1
                           0000B0   558 _P30	=	0x00b0
                           0000BE   559 _PX2L	=	0x00be
                           0000BD   560 _PT2L	=	0x00bd
                           0000BC   561 _PSL	=	0x00bc
                           0000BB   562 _PT1L	=	0x00bb
                           0000BA   563 _PX1L	=	0x00ba
                           0000B9   564 _PT0L	=	0x00b9
                           0000B8   565 _PX0L	=	0x00b8
                           0000C2   566 _INT2H	=	0x00c2
                           0000C2   567 _EX2	=	0x00c2
                           0000C1   568 _IE2	=	0x00c1
                           0000C0   569 _IT2	=	0x00c0
                           0000CF   570 _TF2	=	0x00cf
                           0000CE   571 _EXF2	=	0x00ce
                           0000CD   572 _RCLK_TF2L	=	0x00cd
                           0000CC   573 _TCLK_TL2IE	=	0x00cc
                           0000CB   574 _EXEN2	=	0x00cb
                           0000CA   575 _TR2	=	0x00ca
                           0000C9   576 _C_T2	=	0x00c9
                           0000C8   577 _CP_RL2	=	0x00c8
                           0000CF   578 _TF3	=	0x00cf
                           0000CE   579 _EXF3	=	0x00ce
                           0000CD   580 _TF3L	=	0x00cd
                           0000CC   581 _TL3IE	=	0x00cc
                           0000CB   582 _EXEN3	=	0x00cb
                           0000CA   583 _TR3	=	0x00ca
                           0000C9   584 _C_T3	=	0x00c9
                           0000C8   585 _CP_RL3	=	0x00c8
                           0000CF   586 _TF5	=	0x00cf
                           0000CD   587 _T5CKS1	=	0x00cd
                           0000CC   588 _T5CKS0	=	0x00cc
                           0000CB   589 _T51E	=	0x00cb
                           0000CA   590 _TR5	=	0x00ca
                           0000C9   591 _T5GAT1	=	0x00c9
                           0000C8   592 _T5GAT0	=	0x00c8
                           0000CF   593 _TF6	=	0x00cf
                           0000CD   594 _T6CKS1	=	0x00cd
                           0000CC   595 _T6CKS0	=	0x00cc
                           0000CB   596 _T61E	=	0x00cb
                           0000CA   597 _TR6	=	0x00ca
                           0000C9   598 _T6GAT1	=	0x00c9
                           0000C8   599 _T6GAT0	=	0x00c8
                           0000D7   600 _CY	=	0x00d7
                           0000D6   601 _AC	=	0x00d6
                           0000D5   602 _F0	=	0x00d5
                           0000D4   603 _RS1	=	0x00d4
                           0000D3   604 _RS0	=	0x00d3
                           0000D2   605 _OV	=	0x00d2
                           0000D1   606 _F1	=	0x00d1
                           0000D0   607 _P	=	0x00d0
                           0000DF   608 _CF	=	0x00df
                           0000DE   609 _CR	=	0x00de
                           0000DD   610 _CCF5	=	0x00dd
                           0000DC   611 _CCF4	=	0x00dc
                           0000DB   612 _CCF3	=	0x00db
                           0000DA   613 _CCF2	=	0x00da
                           0000D9   614 _CCF1	=	0x00d9
                           0000D8   615 _CCF0	=	0x00d8
                           0000E7   616 _ACC7	=	0x00e7
                           0000E6   617 _ACC6	=	0x00e6
                           0000E5   618 _ACC5	=	0x00e5
                           0000E4   619 _ACC4	=	0x00e4
                           0000E3   620 _ACC3	=	0x00e3
                           0000E2   621 _ACC2	=	0x00e2
                           0000E1   622 _ACC1	=	0x00e1
                           0000E0   623 _ACC0	=	0x00e0
                           0000EF   624 _P47	=	0x00ef
                           0000ED   625 _P45	=	0x00ed
                           0000EC   626 _P44	=	0x00ec
                           0000F7   627 _B7	=	0x00f7
                           0000F6   628 _B6	=	0x00f6
                           0000F5   629 _B5	=	0x00f5
                           0000F4   630 _B4	=	0x00f4
                           0000F3   631 _B3	=	0x00f3
                           0000F2   632 _B2	=	0x00f2
                           0000F1   633 _B1	=	0x00f1
                           0000F0   634 _B0	=	0x00f0
                           0000F9   635 _P61	=	0x00f9
                           0000F8   636 _P60	=	0x00f8
                                    637 ;--------------------------------------------------------
                                    638 ; overlayable register banks
                                    639 ;--------------------------------------------------------
                                    640 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        641 	.ds 8
                                    642 ;--------------------------------------------------------
                                    643 ; internal ram data
                                    644 ;--------------------------------------------------------
                                    645 	.area DSEG    (DATA)
                                    646 ;--------------------------------------------------------
                                    647 ; overlayable items in internal ram 
                                    648 ;--------------------------------------------------------
                                    649 ;--------------------------------------------------------
                                    650 ; indirectly addressable internal ram data
                                    651 ;--------------------------------------------------------
                                    652 	.area ISEG    (DATA)
                                    653 ;--------------------------------------------------------
                                    654 ; absolute internal ram data
                                    655 ;--------------------------------------------------------
                                    656 	.area IABS    (ABS,DATA)
                                    657 	.area IABS    (ABS,DATA)
                                    658 ;--------------------------------------------------------
                                    659 ; bit data
                                    660 ;--------------------------------------------------------
                                    661 	.area BSEG    (BIT)
                                    662 ;--------------------------------------------------------
                                    663 ; paged external ram data
                                    664 ;--------------------------------------------------------
                                    665 	.area PSEG    (PAG,XDATA)
                                    666 ;--------------------------------------------------------
                                    667 ; external ram data
                                    668 ;--------------------------------------------------------
                                    669 	.area XSEG    (XDATA)
                                    670 ;--------------------------------------------------------
                                    671 ; absolute external ram data
                                    672 ;--------------------------------------------------------
                                    673 	.area XABS    (ABS,XDATA)
                                    674 ;--------------------------------------------------------
                                    675 ; external initialized ram data
                                    676 ;--------------------------------------------------------
                                    677 	.area XISEG   (XDATA)
                                    678 	.area HOME    (CODE)
                                    679 	.area GSINIT0 (CODE)
                                    680 	.area GSINIT1 (CODE)
                                    681 	.area GSINIT2 (CODE)
                                    682 	.area GSINIT3 (CODE)
                                    683 	.area GSINIT4 (CODE)
                                    684 	.area GSINIT5 (CODE)
                                    685 	.area GSINIT  (CODE)
                                    686 	.area GSFINAL (CODE)
                                    687 	.area CSEG    (CODE)
                                    688 ;--------------------------------------------------------
                                    689 ; global & static initialisations
                                    690 ;--------------------------------------------------------
                                    691 	.area HOME    (CODE)
                                    692 	.area GSINIT  (CODE)
                                    693 	.area GSFINAL (CODE)
                                    694 	.area GSINIT  (CODE)
                                    695 ;--------------------------------------------------------
                                    696 ; Home
                                    697 ;--------------------------------------------------------
                                    698 	.area HOME    (CODE)
                                    699 	.area HOME    (CODE)
                                    700 ;--------------------------------------------------------
                                    701 ; code
                                    702 ;--------------------------------------------------------
                                    703 	.area CSEG    (CODE)
                                    704 	.area CSEG    (CODE)
                                    705 	.area CONST   (CODE)
                                    706 	.area XINIT   (CODE)
                                    707 	.area CABS    (ABS,CODE)
