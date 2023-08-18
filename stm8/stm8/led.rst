                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module led
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _main
                                     12 	.globl _clock
                                     13 ;--------------------------------------------------------
                                     14 ; ram data
                                     15 ;--------------------------------------------------------
                                     16 	.area DATA
                                     17 ;--------------------------------------------------------
                                     18 ; ram data
                                     19 ;--------------------------------------------------------
                                     20 	.area INITIALIZED
                                     21 ;--------------------------------------------------------
                                     22 ; Stack segment in internal ram 
                                     23 ;--------------------------------------------------------
                                     24 	.area	SSEG
      FFFFFF                         25 __start__stack:
      FFFFFF                         26 	.ds	1
                                     27 
                                     28 ;--------------------------------------------------------
                                     29 ; absolute external ram data
                                     30 ;--------------------------------------------------------
                                     31 	.area DABS (ABS)
                                     32 
                                     33 ; default segment ordering for linker
                                     34 	.area HOME
                                     35 	.area GSINIT
                                     36 	.area GSFINAL
                                     37 	.area CONST
                                     38 	.area INITIALIZER
                                     39 	.area CODE
                                     40 
                                     41 ;--------------------------------------------------------
                                     42 ; interrupt vector 
                                     43 ;--------------------------------------------------------
                                     44 	.area HOME
      008000                         45 __interrupt_vect:
      008000 82 00 80 07             46 	int s_GSINIT ; reset
                                     47 ;--------------------------------------------------------
                                     48 ; global & static initialisations
                                     49 ;--------------------------------------------------------
                                     50 	.area HOME
                                     51 	.area GSINIT
                                     52 	.area GSFINAL
                                     53 	.area GSINIT
      008007                         54 __sdcc_gs_init_startup:
      008007                         55 __sdcc_init_data:
                                     56 ; stm8_genXINIT() start
      008007 AE 00 00         [ 2]   57 	ldw x, #l_DATA
      00800A 27 07            [ 1]   58 	jreq	00002$
      00800C                         59 00001$:
      00800C 72 4F 00 00      [ 1]   60 	clr (s_DATA - 1, x)
      008010 5A               [ 2]   61 	decw x
      008011 26 F9            [ 1]   62 	jrne	00001$
      008013                         63 00002$:
      008013 AE 00 00         [ 2]   64 	ldw	x, #l_INITIALIZER
      008016 27 09            [ 1]   65 	jreq	00004$
      008018                         66 00003$:
      008018 D6 80 23         [ 1]   67 	ld	a, (s_INITIALIZER - 1, x)
      00801B D7 00 00         [ 1]   68 	ld	(s_INITIALIZED - 1, x), a
      00801E 5A               [ 2]   69 	decw	x
      00801F 26 F7            [ 1]   70 	jrne	00003$
      008021                         71 00004$:
                                     72 ; stm8_genXINIT() end
                                     73 	.area GSFINAL
      008021 CC 80 04         [ 2]   74 	jp	__sdcc_program_startup
                                     75 ;--------------------------------------------------------
                                     76 ; Home
                                     77 ;--------------------------------------------------------
                                     78 	.area HOME
                                     79 	.area HOME
      008004                         80 __sdcc_program_startup:
      008004 CC 80 3A         [ 2]   81 	jp	_main
                                     82 ;	return from main will return to caller
                                     83 ;--------------------------------------------------------
                                     84 ; code
                                     85 ;--------------------------------------------------------
                                     86 	.area CODE
                                     87 ;	led.c: 4: unsigned short clock(void) {
                                     88 ;	-----------------------------------------
                                     89 ;	 function clock
                                     90 ;	-----------------------------------------
      008024                         91 _clock:
      008024 52 04            [ 2]   92 	sub	sp, #4
                                     93 ;	led.c: 5: unsigned char h = TIM1_CNTRH;
      008026 C6 52 5E         [ 1]   94 	ld	a, 0x525e
      008029 95               [ 1]   95 	ld	xh, a
                                     96 ;	led.c: 6: unsigned char l = TIM1_CNTRL;
      00802A C6 52 5F         [ 1]   97 	ld	a, 0x525f
                                     98 ;	led.c: 7: return ((unsigned short)(h) << 8 | l);
      00802D 0F 02            [ 1]   99 	clr	(0x02, sp)
      00802F 0F 03            [ 1]  100 	clr	(0x03, sp)
      008031 1A 02            [ 1]  101 	or	a, (0x02, sp)
      008033 02               [ 1]  102 	rlwa	x
      008034 1A 03            [ 1]  103 	or	a, (0x03, sp)
      008036 95               [ 1]  104 	ld	xh, a
                                    105 ;	led.c: 8: }
      008037 5B 04            [ 2]  106 	addw	sp, #4
      008039 81               [ 4]  107 	ret
                                    108 ;	led.c: 10: void main(void) {
                                    109 ;	-----------------------------------------
                                    110 ;	 function main
                                    111 ;	-----------------------------------------
      00803A                        112 _main:
                                    113 ;	led.c: 11: CLK_ICKR |= 0x08;
      00803A 72 16 50 C0      [ 1]  114 	bset	20672, #3
                                    115 ;	led.c: 12: CLK_SWCR |= 0x02;
      00803E 72 12 50 C5      [ 1]  116 	bset	20677, #1
                                    117 ;	led.c: 14: CLK_SWR = 0xD2;
      008042 35 D2 50 C4      [ 1]  118 	mov	0x50c4+0, #0xd2
                                    119 ;	led.c: 16: CLK_CKDIVR = 0x00;  // Set the frequency to 16 MHz
      008046 35 00 50 C6      [ 1]  120 	mov	0x50c6+0, #0x00
                                    121 ;	led.c: 20: TIM1_PSCRH = 0x3e;
      00804A 35 3E 52 60      [ 1]  122 	mov	0x5260+0, #0x3e
                                    123 ;	led.c: 21: TIM1_PSCRL = 0x80;
      00804E 35 80 52 61      [ 1]  124 	mov	0x5261+0, #0x80
                                    125 ;	led.c: 23: TIM1_CR1 = 0x01;
      008052 35 01 52 50      [ 1]  126 	mov	0x5250+0, #0x01
                                    127 ;	led.c: 26: PB_DDR = 0x20;  // 0x20 = 1 << 5
      008056 35 20 50 07      [ 1]  128 	mov	0x5007+0, #0x20
                                    129 ;	led.c: 27: PB_CR1 = 0x20;
      00805A 35 20 50 08      [ 1]  130 	mov	0x5008+0, #0x20
      00805E                        131 00102$:
                                    132 ;	led.c: 30: for (;;) PB_ODR = (clock() % 1000 < 500) << 5;
      00805E CD 80 24         [ 4]  133 	call	_clock
      008061 90 AE 03 E8      [ 2]  134 	ldw	y, #0x03e8
      008065 65               [ 2]  135 	divw	x, y
      008066 90 A3 01 F4      [ 2]  136 	cpw	y, #0x01f4
      00806A 4F               [ 1]  137 	clr	a
      00806B 49               [ 1]  138 	rlc	a
      00806C 4E               [ 1]  139 	swap	a
      00806D A4 F0            [ 1]  140 	and	a, #0xf0
      00806F 48               [ 1]  141 	sll	a
      008070 C7 50 05         [ 1]  142 	ld	0x5005, a
      008073 20 E9            [ 2]  143 	jra	00102$
                                    144 ;	led.c: 31: }
      008075 81               [ 4]  145 	ret
                                    146 	.area CODE
                                    147 	.area CONST
                                    148 	.area INITIALIZER
                                    149 	.area CABS (ABS)
