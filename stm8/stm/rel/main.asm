;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _awu_int
	.globl _main
	.globl _radio_power_up
	.globl _radio_init
	.globl _awu_sleep
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
	int 0x000000 ; trap
	int 0x000000 ; int0
	int _awu_int ; int1
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
;	main.c: 6: int main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c: 10: CLK_CKDIVR = 0x00;  // Set the frequency to 16 MHz
	mov	0x50c6+0, #0x00
;	main.c: 11: CLK_PCKENR1 = 0xFF; // Enable peripherals
	mov	0x50c7+0, #0xff
;	main.c: 12: CLK_PCKENR2 = 0xFF;
	mov	0x50ca+0, #0xff
;	main.c: 13: CLK_ICKR |= (1 << 3); // enable LSI clock
	bset	20672, #3
;	main.c: 14: while ((CLK_ICKR & (1 << 4)) == 0)
00101$:
	ld	a, 0x50c0
	bcp	a, #0x10
	jreq	00101$
;	main.c: 16: UART1_CR2 = UART_CR2_TEN;                        // Allow TX and RX
	mov	0x5235+0, #0x08
;	main.c: 17: UART1_CR3 &= ~(UART_CR3_STOP1 | UART_CR3_STOP2); // 1 stop bit
	ld	a, 0x5236
	and	a, #0xcf
	ld	0x5236, a
;	main.c: 18: UART1_BRR2 = 0x03;
	mov	0x5233+0, #0x03
;	main.c: 19: UART1_BRR1 = 0x68; // 9600 baud
	mov	0x5232+0, #0x68
;	main.c: 22: while (1)
00105$:
;	main.c: 24: radio_init();
	call	_radio_init
;	main.c: 25: radio_power_up();
	call	_radio_power_up
;	main.c: 26: awu_sleep((uint32_t)5e7);
	push	#0x80
	push	#0xf0
	push	#0xfa
	push	#0x02
	call	_awu_sleep
	addw	sp, #4
	jra	00105$
;	main.c: 28: }
	ret
;	main.c: 30: void awu_int(void) __interrupt(1)
;	-----------------------------------------
;	 function awu_int
;	-----------------------------------------
_awu_int:
	push	a
;	main.c: 32: volatile uint8_t reg = AWU_CSR;
	ld	a, 0x50f0
	ld	(0x01, sp), a
;	main.c: 33: }
	pop	a
	iret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
