;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module spi
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _init_nrf_ce_csn
	.globl _spi_init
	.globl _spi_transceiver
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
;	HAL/src/spi.c: 5: void init_nrf_ce_csn()
;	-----------------------------------------
;	 function init_nrf_ce_csn
;	-----------------------------------------
_init_nrf_ce_csn:
;	HAL/src/spi.c: 8: PD_DDR |= 1 << SPI_CE;
	bset	20497, #4
;	HAL/src/spi.c: 9: PD_CR1 |= 1 << SPI_CE;
	bset	20498, #4
;	HAL/src/spi.c: 10: PD_ODR &= ~(1 << SPI_CE);
	bres	20495, #4
;	HAL/src/spi.c: 13: PA_DDR |= 1 << SPI_NSS;
	bset	20482, #3
;	HAL/src/spi.c: 14: PA_CR1 |= 1 << SPI_NSS;
	bset	20483, #3
;	HAL/src/spi.c: 15: PA_ODR &= ~(1 << SPI_NSS);
	bres	20480, #3
;	HAL/src/spi.c: 16: }
	ret
;	HAL/src/spi.c: 38: void spi_init()
;	-----------------------------------------
;	 function spi_init
;	-----------------------------------------
_spi_init:
;	HAL/src/spi.c: 40: SPI_CR1 |= SPI_CR1_BR(1);
	bset	20992, #3
;	HAL/src/spi.c: 41: SPI_CR1 |= SPI_CR1_SPE;
	bset	20992, #6
;	HAL/src/spi.c: 42: SPI_CR1 |= SPI_CR1_MSTR;
	ld	a, 0x5200
	or	a, #0x04
	ld	0x5200, a
;	HAL/src/spi.c: 43: init_nrf_ce_csn();
;	HAL/src/spi.c: 44: }
	jp	_init_nrf_ce_csn
;	HAL/src/spi.c: 46: uint8_t spi_transceiver(uint8_t data)
;	-----------------------------------------
;	 function spi_transceiver
;	-----------------------------------------
_spi_transceiver:
;	HAL/src/spi.c: 48: SPI_DR = data;
	ldw	x, #0x5204
	ld	a, (0x03, sp)
	ld	(x), a
;	HAL/src/spi.c: 49: while (!(SPI_SR & SPI_SR_RxNE))
00101$:
	ld	a, 0x5203
	srl	a
	jrnc	00101$
;	HAL/src/spi.c: 51: return SPI_DR;
	ld	a, 0x5204
;	HAL/src/spi.c: 52: }
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
