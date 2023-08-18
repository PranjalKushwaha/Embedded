;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (Linux)
;--------------------------------------------------------
	.module nrf24
	.optsdcc -mstm8
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _nrf24_status_reset
	.globl _nrf24_listen
	.globl _SPI_Send
	.globl _spi_transceiver
	.globl _spi_init
	.globl _write_buffer
	.globl _data_buffer
	.globl _nrf24_read_register
	.globl _nrf24_write_register
	.globl _nrf24_setup
	.globl _nrf24_get_data
	.globl _nrf24_available
	.globl _nrf24_getDynamicPayloadSize
	.globl _nrf24_startListening
	.globl _nrf24_stopListening
	.globl _radio_power_up
	.globl _radio_power_down
	.globl _radio_init
	.globl _radio_recieve
	.globl _radio_send
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area DATA
_data_buffer::
	.ds 33
_write_buffer::
	.ds 33
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
;	HAL/src/nrf24.c: 11: void SPI_Send(unsigned char *data_pack, uint16_t len)
;	-----------------------------------------
;	 function SPI_Send
;	-----------------------------------------
_SPI_Send:
;	HAL/src/nrf24.c: 14: nrf_nss_low();
	bres	20480, #3
	clrw	y
00103$:
;	HAL/src/nrf24.c: 15: for (; i < len; i++)
;	HAL/src/nrf24.c: 17: data_pack[i] = spi_transceiver(data_pack[i]);
	ldw	x, y
	cpw	x, (0x05, sp)
	jrnc	00101$
	addw	x, (0x03, sp)
	ld	a, (x)
	pushw	x
	pushw	y
	push	a
	call	_spi_transceiver
	addw	sp, #1
	popw	y
	popw	x
	ld	(x), a
;	HAL/src/nrf24.c: 15: for (; i < len; i++)
	incw	y
	jra	00103$
00101$:
;	HAL/src/nrf24.c: 19: nrf_nss_high();
	bset	20480, #3
;	HAL/src/nrf24.c: 20: }
	ret
;	HAL/src/nrf24.c: 24: void nrf24_read_register(uint8_t reg, uint8_t len)
;	-----------------------------------------
;	 function nrf24_read_register
;	-----------------------------------------
_nrf24_read_register:
	pushw	x
;	HAL/src/nrf24.c: 27: data_buffer[0] = R_REGISTER | (REGISTER_MASK & reg);
	ld	a, (0x05, sp)
	and	a, #0x1f
	ld	_data_buffer+0, a
;	HAL/src/nrf24.c: 28: for (i = 1; i <= len; i++)
	clrw	x
	incw	x
00103$:
	ld	a, (0x06, sp)
	ld	(0x02, sp), a
	clr	(0x01, sp)
	cpw	x, (0x01, sp)
	jrsgt	00101$
;	HAL/src/nrf24.c: 30: data_buffer[i] = NRF24_NOP;
	ld	a, #0xff
	ld	((_data_buffer + 0), x), a
;	HAL/src/nrf24.c: 28: for (i = 1; i <= len; i++)
	incw	x
	jra	00103$
00101$:
;	HAL/src/nrf24.c: 32: SPI_Send(data_buffer, len + 1);
	ldw	x, (0x01, sp)
	incw	x
	pushw	x
	push	#<(_data_buffer + 0)
	push	#((_data_buffer + 0) >> 8)
	call	_SPI_Send
;	HAL/src/nrf24.c: 33: }
	addw	sp, #6
	ret
;	HAL/src/nrf24.c: 35: void nrf24_write_register(uint8_t reg, uint8_t len)
;	-----------------------------------------
;	 function nrf24_write_register
;	-----------------------------------------
_nrf24_write_register:
	pushw	x
;	HAL/src/nrf24.c: 38: data_buffer[0] = W_REGISTER | (REGISTER_MASK & reg);
	ld	a, (0x05, sp)
	and	a, #0x1f
	or	a, #0x20
	ld	_data_buffer+0, a
;	HAL/src/nrf24.c: 39: for (i = 1; i <= len; i++)
	ldw	x, #0x0001
	ldw	(0x01, sp), x
00103$:
	clrw	x
	ld	a, (0x06, sp)
	ld	xl, a
	cpw	x, (0x01, sp)
	jrslt	00101$
;	HAL/src/nrf24.c: 41: data_buffer[i] = write_buffer[i - 1];
	ldw	y, (0x01, sp)
	addw	y, #(_data_buffer + 0)
	ld	a, (0x02, sp)
	dec	a
	ld	xl, a
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	xh, a
	addw	x, #(_write_buffer + 0)
	ld	a, (x)
	ld	(y), a
;	HAL/src/nrf24.c: 39: for (i = 1; i <= len; i++)
	ldw	x, (0x01, sp)
	incw	x
	ldw	(0x01, sp), x
	jra	00103$
00101$:
;	HAL/src/nrf24.c: 43: SPI_Send(data_buffer, len + 1);
	incw	x
	pushw	x
	push	#<(_data_buffer + 0)
	push	#((_data_buffer + 0) >> 8)
	call	_SPI_Send
;	HAL/src/nrf24.c: 44: }
	addw	sp, #6
	ret
;	HAL/src/nrf24.c: 96: void nrf24_listen()
;	-----------------------------------------
;	 function nrf24_listen
;	-----------------------------------------
_nrf24_listen:
;	HAL/src/nrf24.c: 98: }
	ret
;	HAL/src/nrf24.c: 100: void nrf24_setup()
;	-----------------------------------------
;	 function nrf24_setup
;	-----------------------------------------
_nrf24_setup:
	sub	sp, #14
;	HAL/src/nrf24.c: 113: uint8_t rx_addr[] = {0xE0, 0xE0, 0xF1, 0xF1, 0xE0};
	ld	a, #0xe0
	ld	(0x01, sp), a
	ldw	x, sp
	ld	a, #0xe0
	ld	(2, x), a
	ldw	x, sp
	ld	a, #0xf1
	ld	(3, x), a
	ldw	x, sp
	ld	a, #0xf1
	ld	(4, x), a
	ldw	x, sp
	ld	a, #0xe0
	ld	(5, x), a
;	HAL/src/nrf24.c: 114: uint8_t tx_addr[] = {0xF1, 0xF1, 0xF0, 0xF0, 0xE0};
	ld	a, #0xf1
	ld	(0x06, sp), a
	ldw	x, sp
	ld	a, #0xf1
	ld	(7, x), a
	ldw	x, sp
	ld	a, #0xf0
	ld	(8, x), a
	ldw	x, sp
	ld	a, #0xf0
	ld	(9, x), a
	ldw	x, sp
	ld	a, #0xe0
	ld	(10, x), a
;	HAL/src/nrf24.c: 117: write_buffer[0] = 90;
	mov	_write_buffer+0, #0x5a
;	HAL/src/nrf24.c: 118: nrf24_write_register(RF_CH, 1);
	push	#0x01
	push	#0x05
	call	_nrf24_write_register
	popw	x
;	HAL/src/nrf24.c: 121: write_buffer[0] = 36;
	mov	_write_buffer+0, #0x24
;	HAL/src/nrf24.c: 122: nrf24_write_register(RF_SETUP, 1);
	push	#0x01
	push	#0x06
	call	_nrf24_write_register
	popw	x
;	HAL/src/nrf24.c: 125: write_buffer[0] = 0x3f;
	mov	_write_buffer+0, #0x3f
;	HAL/src/nrf24.c: 126: nrf24_write_register(EN_AA, 1);
	push	#0x01
	push	#0x01
	call	_nrf24_write_register
	popw	x
;	HAL/src/nrf24.c: 129: write_buffer[0] = 0x3f;
	mov	_write_buffer+0, #0x3f
;	HAL/src/nrf24.c: 130: nrf24_write_register(DYNPD, 1);
	push	#0x01
	push	#0x1c
	call	_nrf24_write_register
	popw	x
;	HAL/src/nrf24.c: 132: write_buffer[0] = 0x06;
	mov	_write_buffer+0, #0x06
;	HAL/src/nrf24.c: 133: nrf24_write_register(FEATURE, 1);
	push	#0x01
	push	#0x1d
	call	_nrf24_write_register
	popw	x
;	HAL/src/nrf24.c: 136: for (i = 0; i < 5; i++)
	clrw	y
00104$:
;	HAL/src/nrf24.c: 138: write_buffer[i] = rx_addr[4 - i];
	ldw	x, y
	addw	x, #(_write_buffer + 0)
	ldw	(0x0b, sp), x
	ldw	x, y
	ld	a, #0x04
	pushw	x
	sub	a, (2, sp)
	popw	x
	ld	(0x0e, sp), a
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	(0x0d, sp), a
	ldw	x, sp
	addw	x, #1
	addw	x, (0x0d, sp)
	ld	a, (x)
	ldw	x, (0x0b, sp)
	ld	(x), a
;	HAL/src/nrf24.c: 136: for (i = 0; i < 5; i++)
	incw	y
	cpw	y, #0x0005
	jrslt	00104$
;	HAL/src/nrf24.c: 140: nrf24_write_register(RX_ADDR_P1, 5);
	push	#0x05
	push	#0x0b
	call	_nrf24_write_register
	popw	x
;	HAL/src/nrf24.c: 142: for (i = 0; i < 5; i++)
	clrw	y
00106$:
;	HAL/src/nrf24.c: 144: write_buffer[i] = tx_addr[4 - i];
	ldw	x, y
	addw	x, #(_write_buffer + 0)
	ldw	(0x0b, sp), x
	ldw	x, y
	ld	a, #0x04
	pushw	x
	sub	a, (2, sp)
	popw	x
	ld	(0x0e, sp), a
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	(0x0d, sp), a
	ldw	x, sp
	addw	x, #6
	addw	x, (0x0d, sp)
	ld	a, (x)
	ldw	x, (0x0b, sp)
	ld	(x), a
;	HAL/src/nrf24.c: 142: for (i = 0; i < 5; i++)
	incw	y
	cpw	y, #0x0005
	jrslt	00106$
;	HAL/src/nrf24.c: 146: nrf24_write_register(TX_ADDR, 5);
	push	#0x05
	push	#0x10
	call	_nrf24_write_register
	popw	x
;	HAL/src/nrf24.c: 148: for (i = 0; i < 5; i++)
	clrw	y
00108$:
;	HAL/src/nrf24.c: 150: write_buffer[i] = tx_addr[4 - i];
	ldw	x, y
	addw	x, #(_write_buffer + 0)
	ldw	(0x0b, sp), x
	ldw	x, y
	ld	a, #0x04
	pushw	x
	sub	a, (2, sp)
	popw	x
	ld	(0x0e, sp), a
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	(0x0d, sp), a
	ldw	x, sp
	addw	x, #6
	addw	x, (0x0d, sp)
	ld	a, (x)
	ldw	x, (0x0b, sp)
	ld	(x), a
;	HAL/src/nrf24.c: 148: for (i = 0; i < 5; i++)
	incw	y
	cpw	y, #0x0005
	jrslt	00108$
;	HAL/src/nrf24.c: 152: nrf24_write_register(RX_ADDR_P0, 5);
	push	#0x05
	push	#0x0a
	call	_nrf24_write_register
	popw	x
;	HAL/src/nrf24.c: 154: write_buffer[0] = 32;
	mov	_write_buffer+0, #0x20
;	HAL/src/nrf24.c: 155: nrf24_write_register(RX_PW_P0, 1);
	push	#0x01
	push	#0x11
	call	_nrf24_write_register
	popw	x
;	HAL/src/nrf24.c: 158: write_buffer[0] = 32;
	mov	_write_buffer+0, #0x20
;	HAL/src/nrf24.c: 159: nrf24_write_register(RX_PW_P1, 1);
	push	#0x01
	push	#0x12
	call	_nrf24_write_register
	popw	x
;	HAL/src/nrf24.c: 162: write_buffer[0] = 0x03;
	mov	_write_buffer+0, #0x03
;	HAL/src/nrf24.c: 163: nrf24_write_register(EN_RXADDR, 1);
	push	#0x01
	push	#0x02
	call	_nrf24_write_register
	popw	x
;	HAL/src/nrf24.c: 166: write_buffer[0] = 11 & ~(1 << PWR_UP);
	mov	_write_buffer+0, #0x09
;	HAL/src/nrf24.c: 167: nrf24_write_register(CONFIG, 1);
	push	#0x01
	push	#0x00
	call	_nrf24_write_register
;	HAL/src/nrf24.c: 168: }
	addw	sp, #16
	ret
;	HAL/src/nrf24.c: 169: void nrf24_status_reset()
;	-----------------------------------------
;	 function nrf24_status_reset
;	-----------------------------------------
_nrf24_status_reset:
;	HAL/src/nrf24.c: 171: nrf24_read_register(STATUS, 1);
	push	#0x01
	push	#0x07
	call	_nrf24_read_register
	popw	x
;	HAL/src/nrf24.c: 172: write_buffer[0] = (1 << RX_DR) | (1 << TX_DS) | (1 << MAX_RT);
	mov	_write_buffer+0, #0x70
;	HAL/src/nrf24.c: 173: nrf24_write_register(STATUS, 1);
	push	#0x01
	push	#0x07
	call	_nrf24_write_register
	popw	x
;	HAL/src/nrf24.c: 174: }
	ret
;	HAL/src/nrf24.c: 176: void nrf24_get_data(uint8_t *packet)
;	-----------------------------------------
;	 function nrf24_get_data
;	-----------------------------------------
_nrf24_get_data:
	pushw	x
;	HAL/src/nrf24.c: 179: data_buffer[0] = R_RX_PAYLOAD;
	mov	_data_buffer+0, #0x61
;	HAL/src/nrf24.c: 180: for (i = 1; i <= 33; i++)
	clrw	x
	incw	x
00103$:
;	HAL/src/nrf24.c: 182: data_buffer[i] = NRF24_NOP;
	ld	a, #0xff
	ld	((_data_buffer + 0), x), a
;	HAL/src/nrf24.c: 180: for (i = 1; i <= 33; i++)
	incw	x
	cpw	x, #0x0021
	jrsle	00103$
;	HAL/src/nrf24.c: 184: SPI_Send(data_buffer, 33);
	push	#0x21
	push	#0x00
	push	#<(_data_buffer + 0)
	push	#((_data_buffer + 0) >> 8)
	call	_SPI_Send
	addw	sp, #4
;	HAL/src/nrf24.c: 185: for (i = 1; i <= 33; i++)
	ldw	y, #0x0001
00105$:
;	HAL/src/nrf24.c: 187: packet[i - 1] = data_buffer[i];
	ldw	x, y
	decw	x
	addw	x, (0x05, sp)
	ldw	(0x01, sp), x
	ldw	x, y
	addw	x, #(_data_buffer + 0)
	ld	a, (x)
	ldw	x, (0x01, sp)
	ld	(x), a
;	HAL/src/nrf24.c: 185: for (i = 1; i <= 33; i++)
	incw	y
	cpw	y, #0x0021
	jrsle	00105$
;	HAL/src/nrf24.c: 189: }
	popw	x
	ret
;	HAL/src/nrf24.c: 191: uint8_t nrf24_available()
;	-----------------------------------------
;	 function nrf24_available
;	-----------------------------------------
_nrf24_available:
	push	a
;	HAL/src/nrf24.c: 193: uint8_t result = 0;
	clr	(0x01, sp)
;	HAL/src/nrf24.c: 194: nrf24_read_register(STATUS, 1);
	push	#0x01
	push	#0x07
	call	_nrf24_read_register
	popw	x
;	HAL/src/nrf24.c: 195: if (data_buffer[0] & (1 << 6) || (data_buffer[0] & 0x0E != 0x0E))
	ld	a, _data_buffer+0
	bcp	a, #0x40
	jrne	00101$
	ld	a, _data_buffer+0
	clr	a
	tnz	a
	jreq	00102$
00101$:
;	HAL/src/nrf24.c: 196: result = 1;
	ld	a, #0x01
	ld	(0x01, sp), a
00102$:
;	HAL/src/nrf24.c: 198: nrf24_read_register(STATUS, 1);
	push	#0x01
	push	#0x07
	call	_nrf24_read_register
	popw	x
;	HAL/src/nrf24.c: 199: if (data_buffer[0] & (1 << 5))
	ld	a, _data_buffer+0
	bcp	a, #0x20
	jreq	00105$
;	HAL/src/nrf24.c: 201: write_buffer[0] = (1 << 5);
	mov	_write_buffer+0, #0x20
;	HAL/src/nrf24.c: 202: nrf24_write_register(STATUS, 1);
	push	#0x01
	push	#0x07
	call	_nrf24_write_register
	popw	x
00105$:
;	HAL/src/nrf24.c: 204: return result;
	ld	a, (0x01, sp)
;	HAL/src/nrf24.c: 205: }
	addw	sp, #1
	ret
;	HAL/src/nrf24.c: 207: uint8_t nrf24_getDynamicPayloadSize()
;	-----------------------------------------
;	 function nrf24_getDynamicPayloadSize
;	-----------------------------------------
_nrf24_getDynamicPayloadSize:
;	HAL/src/nrf24.c: 209: data_buffer[0] = R_RX_PL_WID;
	mov	_data_buffer+0, #0x60
;	HAL/src/nrf24.c: 210: data_buffer[1] = NRF24_NOP;
	mov	_data_buffer+1, #0xff
;	HAL/src/nrf24.c: 211: SPI_Send(data_buffer, 2);
	push	#0x02
	push	#0x00
	push	#<(_data_buffer + 0)
	push	#((_data_buffer + 0) >> 8)
	call	_SPI_Send
	addw	sp, #4
;	HAL/src/nrf24.c: 212: return data_buffer[1];
	ld	a, _data_buffer+1
;	HAL/src/nrf24.c: 213: }
	ret
;	HAL/src/nrf24.c: 214: void nrf24_startListening()
;	-----------------------------------------
;	 function nrf24_startListening
;	-----------------------------------------
_nrf24_startListening:
;	HAL/src/nrf24.c: 216: nrf24_read_register(CONFIG, 1);
	push	#0x01
	push	#0x00
	call	_nrf24_read_register
	popw	x
;	HAL/src/nrf24.c: 217: write_buffer[0] = data_buffer[1] | (1 << PRIM_RX);
	ld	a, _data_buffer+1
	or	a, #0x01
	ld	_write_buffer+0, a
;	HAL/src/nrf24.c: 218: nrf24_write_register(CONFIG, 1);
	push	#0x01
	push	#0x00
	call	_nrf24_write_register
	popw	x
;	HAL/src/nrf24.c: 219: write_buffer[0] = (1 << 6) | (1 << 5) | (1 << 4);
	mov	_write_buffer+0, #0x70
;	HAL/src/nrf24.c: 220: nrf24_write_register(STATUS, 1);
	push	#0x01
	push	#0x07
	call	_nrf24_write_register
	popw	x
;	HAL/src/nrf24.c: 221: nrf_ce_high();
	bset	20495, #4
;	HAL/src/nrf24.c: 222: }
	ret
;	HAL/src/nrf24.c: 224: void nrf24_stopListening()
;	-----------------------------------------
;	 function nrf24_stopListening
;	-----------------------------------------
_nrf24_stopListening:
;	HAL/src/nrf24.c: 226: nrf_ce_low();
	bres	20495, #4
;	HAL/src/nrf24.c: 227: nrf24_read_register(CONFIG, 1);
	push	#0x01
	push	#0x00
	call	_nrf24_read_register
	popw	x
;	HAL/src/nrf24.c: 228: write_buffer[0] = data_buffer[1] & ~(1 << PRIM_RX);
	ld	a, _data_buffer+1
	and	a, #0xfe
	ld	_write_buffer+0, a
;	HAL/src/nrf24.c: 229: nrf24_write_register(CONFIG, 1);
	push	#0x01
	push	#0x00
	call	_nrf24_write_register
	popw	x
;	HAL/src/nrf24.c: 230: }
	ret
;	HAL/src/nrf24.c: 232: void radio_power_up()
;	-----------------------------------------
;	 function radio_power_up
;	-----------------------------------------
_radio_power_up:
;	HAL/src/nrf24.c: 234: nrf24_read_register(CONFIG, 1);
	push	#0x01
	push	#0x00
	call	_nrf24_read_register
	popw	x
;	HAL/src/nrf24.c: 235: write_buffer[0] = data_buffer[1] | (1 << PWR_UP);
	ld	a, _data_buffer+1
	or	a, #0x02
	ld	_write_buffer+0, a
;	HAL/src/nrf24.c: 236: nrf24_write_register(CONFIG, 1);
	push	#0x01
	push	#0x00
	call	_nrf24_write_register
	popw	x
;	HAL/src/nrf24.c: 237: }
	ret
;	HAL/src/nrf24.c: 238: void radio_power_down()
;	-----------------------------------------
;	 function radio_power_down
;	-----------------------------------------
_radio_power_down:
;	HAL/src/nrf24.c: 240: nrf24_read_register(CONFIG, 1);
	push	#0x01
	push	#0x00
	call	_nrf24_read_register
	popw	x
;	HAL/src/nrf24.c: 241: write_buffer[0] = data_buffer[1] & ~(1 << PWR_UP);
	ld	a, _data_buffer+1
	and	a, #0xfd
	ld	_write_buffer+0, a
;	HAL/src/nrf24.c: 242: nrf24_write_register(CONFIG, 1);
	push	#0x01
	push	#0x00
	call	_nrf24_write_register
	popw	x
;	HAL/src/nrf24.c: 243: }
	ret
;	HAL/src/nrf24.c: 245: void radio_init()
;	-----------------------------------------
;	 function radio_init
;	-----------------------------------------
_radio_init:
;	HAL/src/nrf24.c: 247: spi_init();
	call	_spi_init
;	HAL/src/nrf24.c: 248: nrf_ce_low();
	bres	20495, #4
;	HAL/src/nrf24.c: 249: nrf_nss_low();
	ld	a, 0x5000
	and	a, #0xf7
	ld	0x5000, a
;	HAL/src/nrf24.c: 250: nrf24_setup();
;	HAL/src/nrf24.c: 251: }
	jp	_nrf24_setup
;	HAL/src/nrf24.c: 252: uint8_t radio_recieve(uint8_t *packet)
;	-----------------------------------------
;	 function radio_recieve
;	-----------------------------------------
_radio_recieve:
	push	a
;	HAL/src/nrf24.c: 254: nrf24_startListening();
	call	_nrf24_startListening
;	HAL/src/nrf24.c: 255: while (!nrf24_available())
00101$:
	call	_nrf24_available
	tnz	a
	jreq	00101$
;	HAL/src/nrf24.c: 257: uint8_t size = nrf24_getDynamicPayloadSize();
	call	_nrf24_getDynamicPayloadSize
;	HAL/src/nrf24.c: 258: if (size == 0)
	ld	(0x01, sp), a
	jrne	00105$
;	HAL/src/nrf24.c: 260: return 0; // No payload
	clr	a
	jra	00106$
00105$:
;	HAL/src/nrf24.c: 262: nrf24_stopListening();
	call	_nrf24_stopListening
;	HAL/src/nrf24.c: 263: nrf24_get_data(packet);
	ldw	x, (0x04, sp)
	pushw	x
	call	_nrf24_get_data
	popw	x
;	HAL/src/nrf24.c: 264: return size;
	ld	a, (0x01, sp)
00106$:
;	HAL/src/nrf24.c: 265: }
	addw	sp, #1
	ret
;	HAL/src/nrf24.c: 267: void radio_send(uint8_t *data, uint8_t data_len)
;	-----------------------------------------
;	 function radio_send
;	-----------------------------------------
_radio_send:
	sub	sp, #3
;	HAL/src/nrf24.c: 269: uint8_t cmd = FLUSH_TX;
	ld	a, #0xe1
	ld	(0x01, sp), a
;	HAL/src/nrf24.c: 270: SPI_Send(&cmd, 1);
	push	#0x01
	push	#0x00
	ldw	x, sp
	addw	x, #3
	pushw	x
	call	_SPI_Send
	addw	sp, #4
;	HAL/src/nrf24.c: 271: nrf24_status_reset();
	call	_nrf24_status_reset
;	HAL/src/nrf24.c: 272: nrf_ce_low();
	bres	20495, #4
;	HAL/src/nrf24.c: 273: nrf24_read_register(CONFIG, 1);
	push	#0x01
	push	#0x00
	call	_nrf24_read_register
	popw	x
;	HAL/src/nrf24.c: 274: write_buffer[0] = data_buffer[1] & ~(1 << PRIM_RX);
	ld	a, _data_buffer+1
	and	a, #0xfe
	ld	_write_buffer+0, a
;	HAL/src/nrf24.c: 275: nrf24_write_register(CONFIG, 1);
	push	#0x01
	push	#0x00
	call	_nrf24_write_register
	popw	x
;	HAL/src/nrf24.c: 277: data_buffer[0] = W_TX_PAYLOAD;
	mov	_data_buffer+0, #0xa0
;	HAL/src/nrf24.c: 278: for (int i = 0; i < data_len; i++)
	clrw	y
00104$:
	ld	a, (0x08, sp)
	ld	(0x03, sp), a
	clr	(0x02, sp)
	exgw	x, y
	cpw	x, (0x02, sp)
	exgw	x, y
	jrsge	00101$
;	HAL/src/nrf24.c: 280: data_buffer[i + 1] = data[i];
	ldw	x, y
	incw	x
	ld	a, xl
	rlc	a
	clr	a
	sbc	a, #0x00
	ld	xh, a
	addw	x, #(_data_buffer + 0)
	ldw	(0x02, sp), x
	ldw	x, y
	addw	x, (0x06, sp)
	ld	a, (x)
	ldw	x, (0x02, sp)
	ld	(x), a
;	HAL/src/nrf24.c: 278: for (int i = 0; i < data_len; i++)
	incw	y
	jra	00104$
00101$:
;	HAL/src/nrf24.c: 282: SPI_Send(data_buffer, data_len + 1);
	ldw	x, (0x02, sp)
	incw	x
	pushw	x
	push	#<(_data_buffer + 0)
	push	#((_data_buffer + 0) >> 8)
	call	_SPI_Send
	addw	sp, #4
;	HAL/src/nrf24.c: 283: nrf_ce_high();
	bset	20495, #4
;	HAL/src/nrf24.c: 284: for (int i = 40; i > 0; i--)
	ldw	x, #0x0028
00107$:
	cpw	x, #0x0000
	jrsle	00102$
	decw	x
	jra	00107$
00102$:
;	HAL/src/nrf24.c: 286: nrf_ce_low();
	bres	20495, #4
;	HAL/src/nrf24.c: 287: }
	addw	sp, #3
	ret
	.area CODE
	.area CONST
	.area INITIALIZER
	.area CABS (ABS)
