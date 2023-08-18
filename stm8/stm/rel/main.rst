                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _awu_int
                                     12 	.globl _main
                                     13 	.globl _radio_power_up
                                     14 	.globl _radio_init
                                     15 	.globl _awu_sleep
                                     16 ;--------------------------------------------------------
                                     17 ; ram data
                                     18 ;--------------------------------------------------------
                                     19 	.area DATA
                                     20 ;--------------------------------------------------------
                                     21 ; ram data
                                     22 ;--------------------------------------------------------
                                     23 	.area INITIALIZED
                                     24 ;--------------------------------------------------------
                                     25 ; Stack segment in internal ram 
                                     26 ;--------------------------------------------------------
                                     27 	.area	SSEG
      FFFFFF                         28 __start__stack:
      FFFFFF                         29 	.ds	1
                                     30 
                                     31 ;--------------------------------------------------------
                                     32 ; absolute external ram data
                                     33 ;--------------------------------------------------------
                                     34 	.area DABS (ABS)
                                     35 
                                     36 ; default segment ordering for linker
                                     37 	.area HOME
                                     38 	.area GSINIT
                                     39 	.area GSFINAL
                                     40 	.area CONST
                                     41 	.area INITIALIZER
                                     42 	.area CODE
                                     43 
                                     44 ;--------------------------------------------------------
                                     45 ; interrupt vector 
                                     46 ;--------------------------------------------------------
                                     47 	.area HOME
      008000                         48 __interrupt_vect:
      008000 82 00 80 13             49 	int s_GSINIT ; reset
      008004 82 00 00 00             50 	int 0x000000 ; trap
      008008 82 00 00 00             51 	int 0x000000 ; int0
      00800C 82 00 80 71             52 	int _awu_int ; int1
                                     53 ;--------------------------------------------------------
                                     54 ; global & static initialisations
                                     55 ;--------------------------------------------------------
                                     56 	.area HOME
                                     57 	.area GSINIT
                                     58 	.area GSFINAL
                                     59 	.area GSINIT
      008013                         60 __sdcc_gs_init_startup:
      008013                         61 __sdcc_init_data:
                                     62 ; stm8_genXINIT() start
      008013 AE 00 42         [ 2]   63 	ldw x, #l_DATA
      008016 27 07            [ 1]   64 	jreq	00002$
      008018                         65 00001$:
      008018 72 4F 00 00      [ 1]   66 	clr (s_DATA - 1, x)
      00801C 5A               [ 2]   67 	decw x
      00801D 26 F9            [ 1]   68 	jrne	00001$
      00801F                         69 00002$:
      00801F AE 00 00         [ 2]   70 	ldw	x, #l_INITIALIZER
      008022 27 09            [ 1]   71 	jreq	00004$
      008024                         72 00003$:
      008024 D6 80 2F         [ 1]   73 	ld	a, (s_INITIALIZER - 1, x)
      008027 D7 00 42         [ 1]   74 	ld	(s_INITIALIZED - 1, x), a
      00802A 5A               [ 2]   75 	decw	x
      00802B 26 F7            [ 1]   76 	jrne	00003$
      00802D                         77 00004$:
                                     78 ; stm8_genXINIT() end
                                     79 	.area GSFINAL
      00802D CC 80 10         [ 2]   80 	jp	__sdcc_program_startup
                                     81 ;--------------------------------------------------------
                                     82 ; Home
                                     83 ;--------------------------------------------------------
                                     84 	.area HOME
                                     85 	.area HOME
      008010                         86 __sdcc_program_startup:
      008010 CC 80 30         [ 2]   87 	jp	_main
                                     88 ;	return from main will return to caller
                                     89 ;--------------------------------------------------------
                                     90 ; code
                                     91 ;--------------------------------------------------------
                                     92 	.area CODE
                                     93 ;	main.c: 6: int main()
                                     94 ;	-----------------------------------------
                                     95 ;	 function main
                                     96 ;	-----------------------------------------
      008030                         97 _main:
                                     98 ;	main.c: 10: CLK_CKDIVR = 0x00;  // Set the frequency to 16 MHz
      008030 35 00 50 C6      [ 1]   99 	mov	0x50c6+0, #0x00
                                    100 ;	main.c: 11: CLK_PCKENR1 = 0xFF; // Enable peripherals
      008034 35 FF 50 C7      [ 1]  101 	mov	0x50c7+0, #0xff
                                    102 ;	main.c: 12: CLK_PCKENR2 = 0xFF;
      008038 35 FF 50 CA      [ 1]  103 	mov	0x50ca+0, #0xff
                                    104 ;	main.c: 13: CLK_ICKR |= (1 << 3); // enable LSI clock
      00803C 72 16 50 C0      [ 1]  105 	bset	20672, #3
                                    106 ;	main.c: 14: while ((CLK_ICKR & (1 << 4)) == 0)
      008040                        107 00101$:
      008040 C6 50 C0         [ 1]  108 	ld	a, 0x50c0
      008043 A5 10            [ 1]  109 	bcp	a, #0x10
      008045 27 F9            [ 1]  110 	jreq	00101$
                                    111 ;	main.c: 16: UART1_CR2 = UART_CR2_TEN;                        // Allow TX and RX
      008047 35 08 52 35      [ 1]  112 	mov	0x5235+0, #0x08
                                    113 ;	main.c: 17: UART1_CR3 &= ~(UART_CR3_STOP1 | UART_CR3_STOP2); // 1 stop bit
      00804B C6 52 36         [ 1]  114 	ld	a, 0x5236
      00804E A4 CF            [ 1]  115 	and	a, #0xcf
      008050 C7 52 36         [ 1]  116 	ld	0x5236, a
                                    117 ;	main.c: 18: UART1_BRR2 = 0x03;
      008053 35 03 52 33      [ 1]  118 	mov	0x5233+0, #0x03
                                    119 ;	main.c: 19: UART1_BRR1 = 0x68; // 9600 baud
      008057 35 68 52 32      [ 1]  120 	mov	0x5232+0, #0x68
                                    121 ;	main.c: 22: while (1)
      00805B                        122 00105$:
                                    123 ;	main.c: 24: radio_init();
      00805B CD 83 5D         [ 4]  124 	call	_radio_init
                                    125 ;	main.c: 25: radio_power_up();
      00805E CD 83 2B         [ 4]  126 	call	_radio_power_up
                                    127 ;	main.c: 26: awu_sleep((uint32_t)5e7);
      008061 4B 80            [ 1]  128 	push	#0x80
      008063 4B F0            [ 1]  129 	push	#0xf0
      008065 4B FA            [ 1]  130 	push	#0xfa
      008067 4B 02            [ 1]  131 	push	#0x02
      008069 CD 85 31         [ 4]  132 	call	_awu_sleep
      00806C 5B 04            [ 2]  133 	addw	sp, #4
      00806E 20 EB            [ 2]  134 	jra	00105$
                                    135 ;	main.c: 28: }
      008070 81               [ 4]  136 	ret
                                    137 ;	main.c: 30: void awu_int(void) __interrupt(1)
                                    138 ;	-----------------------------------------
                                    139 ;	 function awu_int
                                    140 ;	-----------------------------------------
      008071                        141 _awu_int:
      008071 88               [ 1]  142 	push	a
                                    143 ;	main.c: 32: volatile uint8_t reg = AWU_CSR;
      008072 C6 50 F0         [ 1]  144 	ld	a, 0x50f0
      008075 6B 01            [ 1]  145 	ld	(0x01, sp), a
                                    146 ;	main.c: 33: }
      008077 84               [ 1]  147 	pop	a
      008078 80               [11]  148 	iret
                                    149 	.area CODE
                                    150 	.area CONST
                                    151 	.area INITIALIZER
                                    152 	.area CABS (ABS)
