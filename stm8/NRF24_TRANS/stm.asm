;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module stm
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
;	stm.c: 17: unsigned int clock(void)
;	-----------------------------------------
;	 function clock
;	-----------------------------------------
_clock:
	sub	sp, #4
;	stm.c: 19: unsigned char h = TIM1_CNTRH;
	ld	a, 0x525e
	ld	xh, a
;	stm.c: 20: unsigned char l = TIM1_CNTRL;
	ld	a, 0x525f
;	stm.c: 21: return((unsigned int)(h) << 8 | l);
	clr	(0x02, sp)
	clr	(0x03, sp)
	or	a, (0x02, sp)
	rlwa	x
	or	a, (0x03, sp)
	ld	xh, a
;	stm.c: 22: }
	addw	sp, #4
	ret
;	stm.c: 24: void main(void)
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	stm.c: 26: CLK_DIVR = 0x00; // Set the frequency to 16 MHz
	mov	0x50c6+0, #0x00
;	stm.c: 30: TIM1_PSCRH = 0x3e;
	mov	0x5260+0, #0x3e
;	stm.c: 31: TIM1_PSCRL = 0x80;
	mov	0x5261+0, #0x80
;	stm.c: 33: TIM1_CR1 = 0x01;
	mov	0x5250+0, #0x01
;	stm.c: 35: PD_DDR = 0x01;
	mov	0x5011+0, #0x01
;	stm.c: 36: PD_CR1 = 0x01;
	mov	0x5012+0, #0x01
00102$:
;	stm.c: 39: PD_ODR = clock() % 1000 < 500;
	call	_clock
	ldw	y, #0x03e8
	divw	x, y
	cpw	y, #0x01f4
	clr	a
	rlc	a
	ld	0x500f, a
	jra	00102$
;	stm.c: 40: }
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
