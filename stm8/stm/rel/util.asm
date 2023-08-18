;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module util
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _awu_set_regs
	.globl _awu_get_timebase
	.globl _putchar
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
; global & static initialisations
;--------------------------------------------------------
	.area HOME
	.area GSINIT
	.area GSFINAL
	.area GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME
	.area HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CODE
;	HAL/src/util.c: 5: int putchar(int c)
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
;	HAL/src/util.c: 8: while (!(UART1_SR & UART_SR_TXE))
00101$:
	ld	a, 0x5230
	jrpl	00101$
;	HAL/src/util.c: 11: UART1_DR = (char)c;
	ld	a, (0x04, sp)
	ld	0x5231, a
;	HAL/src/util.c: 13: while (!(UART1_SR & UART_SR_TC))
00104$:
	ld	a, 0x5230
	bcp	a, #0x40
	jreq	00104$
;	HAL/src/util.c: 15: return 0;
	clrw	x
;	HAL/src/util.c: 16: }
	ret
;	HAL/src/util.c: 18: uint8_t awu_get_timebase(uint32_t time, uint32_t freq) // time in microseconds
;	-----------------------------------------
;	 function awu_get_timebase
;	-----------------------------------------
_awu_get_timebase:
	sub	sp, #15
;	HAL/src/util.c: 20: float f = (float)freq / 1e6;
	ldw	x, (0x18, sp)
	pushw	x
	ldw	x, (0x18, sp)
	pushw	x
	call	___ulong2fs
	addw	sp, #4
	push	#0x00
	push	#0x24
	push	#0x74
	push	#0x49
	pushw	x
	pushw	y
	call	___fsdiv
	addw	sp, #8
	ldw	(0x0e, sp), x
	ldw	(0x0c, sp), y
;	HAL/src/util.c: 21: f = f * time;
	ldw	x, (0x14, sp)
	pushw	x
	ldw	x, (0x14, sp)
	pushw	x
	call	___ulong2fs
	addw	sp, #4
	pushw	x
	pushw	y
	ldw	x, (0x12, sp)
	pushw	x
	ldw	x, (0x12, sp)
	pushw	x
	call	___fsmul
	addw	sp, #8
	ldw	(0x07, sp), x
	ldw	(0x05, sp), y
;	HAL/src/util.c: 22: if (f < 64)
	clrw	x
	pushw	x
	push	#0x80
	push	#0x42
	ldw	x, (0x0b, sp)
	pushw	x
	ldw	x, (0x0b, sp)
	pushw	x
	call	___fslt
	addw	sp, #8
	tnz	a
	jreq	00102$
;	HAL/src/util.c: 24: return 1;
	ld	a, #0x01
	jra	00110$
00102$:
;	HAL/src/util.c: 26: uint32_t counter = 128;
	ldw	x, #0x0080
	ldw	(0x0c, sp), x
	clrw	x
	ldw	(0x0a, sp), x
;	HAL/src/util.c: 27: uint8_t val = 2;
	ld	a, #0x02
;	HAL/src/util.c: 28: for (int i = 0; i < 16; i++)
	clrw	x
	ldw	(0x0e, sp), x
00108$:
	ldw	x, (0x0e, sp)
	cpw	x, #0x0010
	jrsge	00106$
;	HAL/src/util.c: 30: if (f <= counter)
	push	a
	ldw	x, (0x0d, sp)
	pushw	x
	ldw	x, (0x0d, sp)
	pushw	x
	call	___ulong2fs
	addw	sp, #4
	ldw	(0x04, sp), x
	pop	a
	push	a
	ldw	x, (0x08, sp)
	pushw	x
	ldw	x, (0x08, sp)
	pushw	x
	ldw	x, (0x08, sp)
	pushw	x
	pushw	y
	call	___fslt
	addw	sp, #8
	ld	(0x0a, sp), a
	pop	a
	tnz	(0x09, sp)
;	HAL/src/util.c: 31: return val;
	jreq	00110$
;	HAL/src/util.c: 34: counter = counter << 1;
	sll	(0x0d, sp)
	rlc	(0x0c, sp)
	rlc	(0x0b, sp)
	rlc	(0x0a, sp)
;	HAL/src/util.c: 35: val = val + 1;
	inc	a
;	HAL/src/util.c: 28: for (int i = 0; i < 16; i++)
	ldw	x, (0x0e, sp)
	incw	x
	ldw	(0x0e, sp), x
	jra	00108$
00106$:
;	HAL/src/util.c: 38: return 0;
	clr	a
00110$:
;	HAL/src/util.c: 39: }
	addw	sp, #15
	ret
;	HAL/src/util.c: 41: void awu_set_regs(uint8_t tbr, uint8_t apr)
;	-----------------------------------------
;	 function awu_set_regs
;	-----------------------------------------
_awu_set_regs:
;	HAL/src/util.c: 43: AWU_TBR &= ~(0x0F);
	ld	a, 0x50f2
	and	a, #0xf0
	ld	0x50f2, a
;	HAL/src/util.c: 44: AWU_TBR |= tbr;
	ld	a, 0x50f2
	or	a, (0x03, sp)
	ld	0x50f2, a
;	HAL/src/util.c: 45: AWU_APR &= ~(0x3F);
	ld	a, 0x50f1
	and	a, #0xc0
	ld	0x50f1, a
;	HAL/src/util.c: 46: AWU_APR |= apr;
	ld	a, 0x50f1
	or	a, (0x04, sp)
	ld	0x50f1, a
;	HAL/src/util.c: 47: AWU_CSR |= AWU_CSR_AWUEN;
	ld	a, 0x50f0
	or	a, #0x10
	ld	0x50f0, a
;	HAL/src/util.c: 48: halt();
	halt
;	HAL/src/util.c: 49: }
	ret
;	HAL/src/util.c: 51: void awu_sleep(uint32_t time) // microseconds
;	-----------------------------------------
;	 function awu_sleep
;	-----------------------------------------
_awu_sleep:
	sub	sp, #5
;	HAL/src/util.c: 54: if (time <= (uint32_t)(1e6 * (uint32_t)2048 * 128 / (float)LSI_FREQUENCY))
	clrw	x
	ld	a, #0x40
	ld	xh, a
	cpw	x, (0x0a, sp)
	ld	a, #0x1f
	sbc	a, (0x09, sp)
	clr	a
	sbc	a, (0x08, sp)
	jrc	00111$
;	HAL/src/util.c: 56: uint8_t tbr = awu_get_timebase(time, LSI_FREQUENCY);
	push	#0x00
	push	#0xf4
	push	#0x01
	push	#0x00
	ldw	x, (0x0e, sp)
	pushw	x
	ldw	x, (0x0e, sp)
	pushw	x
	call	_awu_get_timebase
	addw	sp, #8
	ld	(0x01, sp), a
;	HAL/src/util.c: 57: uint8_t apr = ((((float)time) / 1e6) * LSI_FREQUENCY) / (1 << (tbr - 1));
	ldw	x, (0x0a, sp)
	pushw	x
	ldw	x, (0x0a, sp)
	pushw	x
	call	___ulong2fs
	addw	sp, #4
	push	#0x00
	push	#0x24
	push	#0x74
	push	#0x49
	pushw	x
	pushw	y
	call	___fsdiv
	addw	sp, #8
	push	#0x00
	push	#0x00
	push	#0xfa
	push	#0x47
	pushw	x
	pushw	y
	call	___fsmul
	addw	sp, #8
	ldw	(0x04, sp), x
	ldw	(0x02, sp), y
	ld	a, (0x01, sp)
	dec	a
	clrw	x
	incw	x
	tnz	a
	jreq	00127$
00126$:
	sllw	x
	dec	a
	jrne	00126$
00127$:
	pushw	x
	call	___sint2fs
	addw	sp, #2
	pushw	x
	pushw	y
	ldw	x, (0x08, sp)
	pushw	x
	ldw	x, (0x08, sp)
	pushw	x
	call	___fsdiv
	addw	sp, #8
	pushw	x
	pushw	y
	call	___fs2uchar
	addw	sp, #4
;	HAL/src/util.c: 58: awu_set_regs(tbr, apr - 2);
	sub	a, #0x02
	push	a
	ld	a, (0x02, sp)
	push	a
	call	_awu_set_regs
	popw	x
	jra	00107$
;	HAL/src/util.c: 63: while (time > (uint32_t)(1e6 * (uint32_t)2048 * 128 / (float)LSI_FREQUENCY))
00111$:
	ldw	y, (0x08, sp)
	ldw	(0x02, sp), y
	ldw	x, (0x0a, sp)
00101$:
	clr	a
	pushw	x
	cp	a, (2, sp)
	popw	x
	ld	a, #0x40
	pushw	x
	sbc	a, (1, sp)
	popw	x
	ld	a, #0x1f
	sbc	a, (0x03, sp)
	clr	a
	sbc	a, (0x02, sp)
	jrnc	00103$
;	HAL/src/util.c: 65: awu_set_regs(13, 62);
	pushw	x
	push	#0x3e
	push	#0x0d
	call	_awu_set_regs
	popw	x
	popw	x
;	HAL/src/util.c: 66: time -= (uint32_t)(mul * 1e6 / LSI_FREQUENCY);
	subw	x, #0x4000
	ld	a, (0x03, sp)
	sbc	a, #0x1f
	ld	(0x03, sp), a
	ld	a, (0x02, sp)
	sbc	a, #0x00
	ld	(0x02, sp), a
	jra	00101$
00103$:
;	HAL/src/util.c: 68: awu_sleep(time);
	pushw	x
	ldw	x, (0x04, sp)
	pushw	x
	call	_awu_sleep
	addw	sp, #4
00107$:
;	HAL/src/util.c: 70: }
	addw	sp, #5
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
