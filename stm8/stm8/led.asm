;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module led
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _clock
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area INITIALIZED
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG
__start__stack:
	.ds	1

;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area DABS (ABS)

; default segment ordering for linker
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area CONST
	.area INITIALIZER
	.area CODE

;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME
__interrupt_vect:
	int s_GSINIT ; reset
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
__sdcc_gs_init_startup:
__sdcc_init_data:
; stm8_genXINIT() start
	ldw x, #l_DATA
	jreq	00002$
00001$:
	clr (s_DATA - 1, x)
	decw x
	jrne	00001$
00002$:
	ldw	x, #l_INITIALIZER
	jreq	00004$
00003$:
	ld	a, (s_INITIALIZER - 1, x)
	ld	(s_INITIALIZED - 1, x), a
	decw	x
	jrne	00003$
00004$:
; stm8_genXINIT() end
	.area GSFINAL
	jp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
__sdcc_program_startup:
	jp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	led.c: 4: unsigned short clock(void) {
;	-----------------------------------------
;	 function clock
;	-----------------------------------------
_clock:
	sub	sp, #4
;	led.c: 5: unsigned char h = TIM1_CNTRH;
	ld	a, 0x525e
	ld	xh, a
;	led.c: 6: unsigned char l = TIM1_CNTRL;
	ld	a, 0x525f
;	led.c: 7: return ((unsigned short)(h) << 8 | l);
	clr	(0x02, sp)
	clr	(0x03, sp)
	or	a, (0x02, sp)
	rlwa	x
	or	a, (0x03, sp)
	ld	xh, a
;	led.c: 8: }
	addw	sp, #4
	ret
;	led.c: 10: void main(void) {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	led.c: 11: CLK_ICKR |= 0x08;
	bset	20672, #3
;	led.c: 12: CLK_SWCR |= 0x02;
	bset	20677, #1
;	led.c: 14: CLK_SWR = 0xD2;
	mov	0x50c4+0, #0xd2
;	led.c: 16: CLK_CKDIVR = 0x00;  // Set the frequency to 16 MHz
	mov	0x50c6+0, #0x00
;	led.c: 20: TIM1_PSCRH = 0x3e;
	mov	0x5260+0, #0x3e
;	led.c: 21: TIM1_PSCRL = 0x80;
	mov	0x5261+0, #0x80
;	led.c: 23: TIM1_CR1 = 0x01;
	mov	0x5250+0, #0x01
;	led.c: 26: PB_DDR = 0x20;  // 0x20 = 1 << 5
	mov	0x5007+0, #0x20
;	led.c: 27: PB_CR1 = 0x20;
	mov	0x5008+0, #0x20
00102$:
;	led.c: 30: for (;;) PB_ODR = (clock() % 1000 < 500) << 5;
	call	_clock
	ldw	y, #0x03e8
	divw	x, y
	cpw	y, #0x01f4
	clr	a
	rlc	a
	swap	a
	and	a, #0xf0
	sll	a
	ld	0x5005, a
	jra	00102$
;	led.c: 31: }
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
