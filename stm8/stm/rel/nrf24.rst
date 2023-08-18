                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module nrf24
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _nrf24_status_reset
                                     12 	.globl _nrf24_listen
                                     13 	.globl _SPI_Send
                                     14 	.globl _spi_transceiver
                                     15 	.globl _spi_init
                                     16 	.globl _write_buffer
                                     17 	.globl _data_buffer
                                     18 	.globl _nrf24_read_register
                                     19 	.globl _nrf24_write_register
                                     20 	.globl _nrf24_setup
                                     21 	.globl _nrf24_get_data
                                     22 	.globl _nrf24_available
                                     23 	.globl _nrf24_getDynamicPayloadSize
                                     24 	.globl _nrf24_startListening
                                     25 	.globl _nrf24_stopListening
                                     26 	.globl _radio_power_up
                                     27 	.globl _radio_power_down
                                     28 	.globl _radio_init
                                     29 	.globl _radio_recieve
                                     30 	.globl _radio_send
                                     31 ;--------------------------------------------------------
                                     32 ; ram data
                                     33 ;--------------------------------------------------------
                                     34 	.area DATA
      000001                         35 _data_buffer::
      000001                         36 	.ds 33
      000022                         37 _write_buffer::
      000022                         38 	.ds 33
                                     39 ;--------------------------------------------------------
                                     40 ; ram data
                                     41 ;--------------------------------------------------------
                                     42 	.area INITIALIZED
                                     43 ;--------------------------------------------------------
                                     44 ; absolute external ram data
                                     45 ;--------------------------------------------------------
                                     46 	.area DABS (ABS)
                                     47 
                                     48 ; default segment ordering for linker
                                     49 	.area HOME
                                     50 	.area GSINIT
                                     51 	.area GSFINAL
                                     52 	.area CONST
                                     53 	.area INITIALIZER
                                     54 	.area CODE
                                     55 
                                     56 ;--------------------------------------------------------
                                     57 ; global & static initialisations
                                     58 ;--------------------------------------------------------
                                     59 	.area HOME
                                     60 	.area GSINIT
                                     61 	.area GSFINAL
                                     62 	.area GSINIT
                                     63 ;--------------------------------------------------------
                                     64 ; Home
                                     65 ;--------------------------------------------------------
                                     66 	.area HOME
                                     67 	.area HOME
                                     68 ;--------------------------------------------------------
                                     69 ; code
                                     70 ;--------------------------------------------------------
                                     71 	.area CODE
                                     72 ;	HAL/src/nrf24.c: 11: void SPI_Send(unsigned char *data_pack, uint16_t len)
                                     73 ;	-----------------------------------------
                                     74 ;	 function SPI_Send
                                     75 ;	-----------------------------------------
      008079                         76 _SPI_Send:
                                     77 ;	HAL/src/nrf24.c: 14: nrf_nss_low();
      008079 72 17 50 00      [ 1]   78 	bres	20480, #3
      00807D 90 5F            [ 1]   79 	clrw	y
      00807F                         80 00103$:
                                     81 ;	HAL/src/nrf24.c: 15: for (; i < len; i++)
                                     82 ;	HAL/src/nrf24.c: 17: data_pack[i] = spi_transceiver(data_pack[i]);
      00807F 93               [ 1]   83 	ldw	x, y
      008080 13 05            [ 2]   84 	cpw	x, (0x05, sp)
      008082 24 15            [ 1]   85 	jrnc	00101$
      008084 72 FB 03         [ 2]   86 	addw	x, (0x03, sp)
      008087 F6               [ 1]   87 	ld	a, (x)
      008088 89               [ 2]   88 	pushw	x
      008089 90 89            [ 2]   89 	pushw	y
      00808B 88               [ 1]   90 	push	a
      00808C CD 84 3F         [ 4]   91 	call	_spi_transceiver
      00808F 5B 01            [ 2]   92 	addw	sp, #1
      008091 90 85            [ 2]   93 	popw	y
      008093 85               [ 2]   94 	popw	x
      008094 F7               [ 1]   95 	ld	(x), a
                                     96 ;	HAL/src/nrf24.c: 15: for (; i < len; i++)
      008095 90 5C            [ 1]   97 	incw	y
      008097 20 E6            [ 2]   98 	jra	00103$
      008099                         99 00101$:
                                    100 ;	HAL/src/nrf24.c: 19: nrf_nss_high();
      008099 72 16 50 00      [ 1]  101 	bset	20480, #3
                                    102 ;	HAL/src/nrf24.c: 20: }
      00809D 81               [ 4]  103 	ret
                                    104 ;	HAL/src/nrf24.c: 24: void nrf24_read_register(uint8_t reg, uint8_t len)
                                    105 ;	-----------------------------------------
                                    106 ;	 function nrf24_read_register
                                    107 ;	-----------------------------------------
      00809E                        108 _nrf24_read_register:
      00809E 89               [ 2]  109 	pushw	x
                                    110 ;	HAL/src/nrf24.c: 27: data_buffer[0] = R_REGISTER | (REGISTER_MASK & reg);
      00809F 7B 05            [ 1]  111 	ld	a, (0x05, sp)
      0080A1 A4 1F            [ 1]  112 	and	a, #0x1f
      0080A3 C7 00 01         [ 1]  113 	ld	_data_buffer+0, a
                                    114 ;	HAL/src/nrf24.c: 28: for (i = 1; i <= len; i++)
      0080A6 5F               [ 1]  115 	clrw	x
      0080A7 5C               [ 1]  116 	incw	x
      0080A8                        117 00103$:
      0080A8 7B 06            [ 1]  118 	ld	a, (0x06, sp)
      0080AA 6B 02            [ 1]  119 	ld	(0x02, sp), a
      0080AC 0F 01            [ 1]  120 	clr	(0x01, sp)
      0080AE 13 01            [ 2]  121 	cpw	x, (0x01, sp)
      0080B0 2C 08            [ 1]  122 	jrsgt	00101$
                                    123 ;	HAL/src/nrf24.c: 30: data_buffer[i] = NRF24_NOP;
      0080B2 A6 FF            [ 1]  124 	ld	a, #0xff
      0080B4 D7 00 01         [ 1]  125 	ld	((_data_buffer + 0), x), a
                                    126 ;	HAL/src/nrf24.c: 28: for (i = 1; i <= len; i++)
      0080B7 5C               [ 1]  127 	incw	x
      0080B8 20 EE            [ 2]  128 	jra	00103$
      0080BA                        129 00101$:
                                    130 ;	HAL/src/nrf24.c: 32: SPI_Send(data_buffer, len + 1);
      0080BA 1E 01            [ 2]  131 	ldw	x, (0x01, sp)
      0080BC 5C               [ 1]  132 	incw	x
      0080BD 89               [ 2]  133 	pushw	x
      0080BE 4B 01            [ 1]  134 	push	#<(_data_buffer + 0)
      0080C0 4B 00            [ 1]  135 	push	#((_data_buffer + 0) >> 8)
      0080C2 CD 80 79         [ 4]  136 	call	_SPI_Send
                                    137 ;	HAL/src/nrf24.c: 33: }
      0080C5 5B 06            [ 2]  138 	addw	sp, #6
      0080C7 81               [ 4]  139 	ret
                                    140 ;	HAL/src/nrf24.c: 35: void nrf24_write_register(uint8_t reg, uint8_t len)
                                    141 ;	-----------------------------------------
                                    142 ;	 function nrf24_write_register
                                    143 ;	-----------------------------------------
      0080C8                        144 _nrf24_write_register:
      0080C8 89               [ 2]  145 	pushw	x
                                    146 ;	HAL/src/nrf24.c: 38: data_buffer[0] = W_REGISTER | (REGISTER_MASK & reg);
      0080C9 7B 05            [ 1]  147 	ld	a, (0x05, sp)
      0080CB A4 1F            [ 1]  148 	and	a, #0x1f
      0080CD AA 20            [ 1]  149 	or	a, #0x20
      0080CF C7 00 01         [ 1]  150 	ld	_data_buffer+0, a
                                    151 ;	HAL/src/nrf24.c: 39: for (i = 1; i <= len; i++)
      0080D2 AE 00 01         [ 2]  152 	ldw	x, #0x0001
      0080D5 1F 01            [ 2]  153 	ldw	(0x01, sp), x
      0080D7                        154 00103$:
      0080D7 5F               [ 1]  155 	clrw	x
      0080D8 7B 06            [ 1]  156 	ld	a, (0x06, sp)
      0080DA 97               [ 1]  157 	ld	xl, a
      0080DB 13 01            [ 2]  158 	cpw	x, (0x01, sp)
      0080DD 2F 1C            [ 1]  159 	jrslt	00101$
                                    160 ;	HAL/src/nrf24.c: 41: data_buffer[i] = write_buffer[i - 1];
      0080DF 16 01            [ 2]  161 	ldw	y, (0x01, sp)
      0080E1 72 A9 00 01      [ 2]  162 	addw	y, #(_data_buffer + 0)
      0080E5 7B 02            [ 1]  163 	ld	a, (0x02, sp)
      0080E7 4A               [ 1]  164 	dec	a
      0080E8 97               [ 1]  165 	ld	xl, a
      0080E9 49               [ 1]  166 	rlc	a
      0080EA 4F               [ 1]  167 	clr	a
      0080EB A2 00            [ 1]  168 	sbc	a, #0x00
      0080ED 95               [ 1]  169 	ld	xh, a
      0080EE 1C 00 22         [ 2]  170 	addw	x, #(_write_buffer + 0)
      0080F1 F6               [ 1]  171 	ld	a, (x)
      0080F2 90 F7            [ 1]  172 	ld	(y), a
                                    173 ;	HAL/src/nrf24.c: 39: for (i = 1; i <= len; i++)
      0080F4 1E 01            [ 2]  174 	ldw	x, (0x01, sp)
      0080F6 5C               [ 1]  175 	incw	x
      0080F7 1F 01            [ 2]  176 	ldw	(0x01, sp), x
      0080F9 20 DC            [ 2]  177 	jra	00103$
      0080FB                        178 00101$:
                                    179 ;	HAL/src/nrf24.c: 43: SPI_Send(data_buffer, len + 1);
      0080FB 5C               [ 1]  180 	incw	x
      0080FC 89               [ 2]  181 	pushw	x
      0080FD 4B 01            [ 1]  182 	push	#<(_data_buffer + 0)
      0080FF 4B 00            [ 1]  183 	push	#((_data_buffer + 0) >> 8)
      008101 CD 80 79         [ 4]  184 	call	_SPI_Send
                                    185 ;	HAL/src/nrf24.c: 44: }
      008104 5B 06            [ 2]  186 	addw	sp, #6
      008106 81               [ 4]  187 	ret
                                    188 ;	HAL/src/nrf24.c: 96: void nrf24_listen()
                                    189 ;	-----------------------------------------
                                    190 ;	 function nrf24_listen
                                    191 ;	-----------------------------------------
      008107                        192 _nrf24_listen:
                                    193 ;	HAL/src/nrf24.c: 98: }
      008107 81               [ 4]  194 	ret
                                    195 ;	HAL/src/nrf24.c: 100: void nrf24_setup()
                                    196 ;	-----------------------------------------
                                    197 ;	 function nrf24_setup
                                    198 ;	-----------------------------------------
      008108                        199 _nrf24_setup:
      008108 52 0E            [ 2]  200 	sub	sp, #14
                                    201 ;	HAL/src/nrf24.c: 113: uint8_t rx_addr[] = {0xE0, 0xE0, 0xF1, 0xF1, 0xE0};
      00810A A6 E0            [ 1]  202 	ld	a, #0xe0
      00810C 6B 01            [ 1]  203 	ld	(0x01, sp), a
      00810E 96               [ 1]  204 	ldw	x, sp
      00810F A6 E0            [ 1]  205 	ld	a, #0xe0
      008111 E7 02            [ 1]  206 	ld	(2, x), a
      008113 96               [ 1]  207 	ldw	x, sp
      008114 A6 F1            [ 1]  208 	ld	a, #0xf1
      008116 E7 03            [ 1]  209 	ld	(3, x), a
      008118 96               [ 1]  210 	ldw	x, sp
      008119 A6 F1            [ 1]  211 	ld	a, #0xf1
      00811B E7 04            [ 1]  212 	ld	(4, x), a
      00811D 96               [ 1]  213 	ldw	x, sp
      00811E A6 E0            [ 1]  214 	ld	a, #0xe0
      008120 E7 05            [ 1]  215 	ld	(5, x), a
                                    216 ;	HAL/src/nrf24.c: 114: uint8_t tx_addr[] = {0xF1, 0xF1, 0xF0, 0xF0, 0xE0};
      008122 A6 F1            [ 1]  217 	ld	a, #0xf1
      008124 6B 06            [ 1]  218 	ld	(0x06, sp), a
      008126 96               [ 1]  219 	ldw	x, sp
      008127 A6 F1            [ 1]  220 	ld	a, #0xf1
      008129 E7 07            [ 1]  221 	ld	(7, x), a
      00812B 96               [ 1]  222 	ldw	x, sp
      00812C A6 F0            [ 1]  223 	ld	a, #0xf0
      00812E E7 08            [ 1]  224 	ld	(8, x), a
      008130 96               [ 1]  225 	ldw	x, sp
      008131 A6 F0            [ 1]  226 	ld	a, #0xf0
      008133 E7 09            [ 1]  227 	ld	(9, x), a
      008135 96               [ 1]  228 	ldw	x, sp
      008136 A6 E0            [ 1]  229 	ld	a, #0xe0
      008138 E7 0A            [ 1]  230 	ld	(10, x), a
                                    231 ;	HAL/src/nrf24.c: 117: write_buffer[0] = 90;
      00813A 35 5A 00 22      [ 1]  232 	mov	_write_buffer+0, #0x5a
                                    233 ;	HAL/src/nrf24.c: 118: nrf24_write_register(RF_CH, 1);
      00813E 4B 01            [ 1]  234 	push	#0x01
      008140 4B 05            [ 1]  235 	push	#0x05
      008142 CD 80 C8         [ 4]  236 	call	_nrf24_write_register
      008145 85               [ 2]  237 	popw	x
                                    238 ;	HAL/src/nrf24.c: 121: write_buffer[0] = 36;
      008146 35 24 00 22      [ 1]  239 	mov	_write_buffer+0, #0x24
                                    240 ;	HAL/src/nrf24.c: 122: nrf24_write_register(RF_SETUP, 1);
      00814A 4B 01            [ 1]  241 	push	#0x01
      00814C 4B 06            [ 1]  242 	push	#0x06
      00814E CD 80 C8         [ 4]  243 	call	_nrf24_write_register
      008151 85               [ 2]  244 	popw	x
                                    245 ;	HAL/src/nrf24.c: 125: write_buffer[0] = 0x3f;
      008152 35 3F 00 22      [ 1]  246 	mov	_write_buffer+0, #0x3f
                                    247 ;	HAL/src/nrf24.c: 126: nrf24_write_register(EN_AA, 1);
      008156 4B 01            [ 1]  248 	push	#0x01
      008158 4B 01            [ 1]  249 	push	#0x01
      00815A CD 80 C8         [ 4]  250 	call	_nrf24_write_register
      00815D 85               [ 2]  251 	popw	x
                                    252 ;	HAL/src/nrf24.c: 129: write_buffer[0] = 0x3f;
      00815E 35 3F 00 22      [ 1]  253 	mov	_write_buffer+0, #0x3f
                                    254 ;	HAL/src/nrf24.c: 130: nrf24_write_register(DYNPD, 1);
      008162 4B 01            [ 1]  255 	push	#0x01
      008164 4B 1C            [ 1]  256 	push	#0x1c
      008166 CD 80 C8         [ 4]  257 	call	_nrf24_write_register
      008169 85               [ 2]  258 	popw	x
                                    259 ;	HAL/src/nrf24.c: 132: write_buffer[0] = 0x06;
      00816A 35 06 00 22      [ 1]  260 	mov	_write_buffer+0, #0x06
                                    261 ;	HAL/src/nrf24.c: 133: nrf24_write_register(FEATURE, 1);
      00816E 4B 01            [ 1]  262 	push	#0x01
      008170 4B 1D            [ 1]  263 	push	#0x1d
      008172 CD 80 C8         [ 4]  264 	call	_nrf24_write_register
      008175 85               [ 2]  265 	popw	x
                                    266 ;	HAL/src/nrf24.c: 136: for (i = 0; i < 5; i++)
      008176 90 5F            [ 1]  267 	clrw	y
      008178                        268 00104$:
                                    269 ;	HAL/src/nrf24.c: 138: write_buffer[i] = rx_addr[4 - i];
      008178 93               [ 1]  270 	ldw	x, y
      008179 1C 00 22         [ 2]  271 	addw	x, #(_write_buffer + 0)
      00817C 1F 0B            [ 2]  272 	ldw	(0x0b, sp), x
      00817E 93               [ 1]  273 	ldw	x, y
      00817F A6 04            [ 1]  274 	ld	a, #0x04
      008181 89               [ 2]  275 	pushw	x
      008182 10 02            [ 1]  276 	sub	a, (2, sp)
      008184 85               [ 2]  277 	popw	x
      008185 6B 0E            [ 1]  278 	ld	(0x0e, sp), a
      008187 49               [ 1]  279 	rlc	a
      008188 4F               [ 1]  280 	clr	a
      008189 A2 00            [ 1]  281 	sbc	a, #0x00
      00818B 6B 0D            [ 1]  282 	ld	(0x0d, sp), a
      00818D 96               [ 1]  283 	ldw	x, sp
      00818E 1C 00 01         [ 2]  284 	addw	x, #1
      008191 72 FB 0D         [ 2]  285 	addw	x, (0x0d, sp)
      008194 F6               [ 1]  286 	ld	a, (x)
      008195 1E 0B            [ 2]  287 	ldw	x, (0x0b, sp)
      008197 F7               [ 1]  288 	ld	(x), a
                                    289 ;	HAL/src/nrf24.c: 136: for (i = 0; i < 5; i++)
      008198 90 5C            [ 1]  290 	incw	y
      00819A 90 A3 00 05      [ 2]  291 	cpw	y, #0x0005
      00819E 2F D8            [ 1]  292 	jrslt	00104$
                                    293 ;	HAL/src/nrf24.c: 140: nrf24_write_register(RX_ADDR_P1, 5);
      0081A0 4B 05            [ 1]  294 	push	#0x05
      0081A2 4B 0B            [ 1]  295 	push	#0x0b
      0081A4 CD 80 C8         [ 4]  296 	call	_nrf24_write_register
      0081A7 85               [ 2]  297 	popw	x
                                    298 ;	HAL/src/nrf24.c: 142: for (i = 0; i < 5; i++)
      0081A8 90 5F            [ 1]  299 	clrw	y
      0081AA                        300 00106$:
                                    301 ;	HAL/src/nrf24.c: 144: write_buffer[i] = tx_addr[4 - i];
      0081AA 93               [ 1]  302 	ldw	x, y
      0081AB 1C 00 22         [ 2]  303 	addw	x, #(_write_buffer + 0)
      0081AE 1F 0B            [ 2]  304 	ldw	(0x0b, sp), x
      0081B0 93               [ 1]  305 	ldw	x, y
      0081B1 A6 04            [ 1]  306 	ld	a, #0x04
      0081B3 89               [ 2]  307 	pushw	x
      0081B4 10 02            [ 1]  308 	sub	a, (2, sp)
      0081B6 85               [ 2]  309 	popw	x
      0081B7 6B 0E            [ 1]  310 	ld	(0x0e, sp), a
      0081B9 49               [ 1]  311 	rlc	a
      0081BA 4F               [ 1]  312 	clr	a
      0081BB A2 00            [ 1]  313 	sbc	a, #0x00
      0081BD 6B 0D            [ 1]  314 	ld	(0x0d, sp), a
      0081BF 96               [ 1]  315 	ldw	x, sp
      0081C0 1C 00 06         [ 2]  316 	addw	x, #6
      0081C3 72 FB 0D         [ 2]  317 	addw	x, (0x0d, sp)
      0081C6 F6               [ 1]  318 	ld	a, (x)
      0081C7 1E 0B            [ 2]  319 	ldw	x, (0x0b, sp)
      0081C9 F7               [ 1]  320 	ld	(x), a
                                    321 ;	HAL/src/nrf24.c: 142: for (i = 0; i < 5; i++)
      0081CA 90 5C            [ 1]  322 	incw	y
      0081CC 90 A3 00 05      [ 2]  323 	cpw	y, #0x0005
      0081D0 2F D8            [ 1]  324 	jrslt	00106$
                                    325 ;	HAL/src/nrf24.c: 146: nrf24_write_register(TX_ADDR, 5);
      0081D2 4B 05            [ 1]  326 	push	#0x05
      0081D4 4B 10            [ 1]  327 	push	#0x10
      0081D6 CD 80 C8         [ 4]  328 	call	_nrf24_write_register
      0081D9 85               [ 2]  329 	popw	x
                                    330 ;	HAL/src/nrf24.c: 148: for (i = 0; i < 5; i++)
      0081DA 90 5F            [ 1]  331 	clrw	y
      0081DC                        332 00108$:
                                    333 ;	HAL/src/nrf24.c: 150: write_buffer[i] = tx_addr[4 - i];
      0081DC 93               [ 1]  334 	ldw	x, y
      0081DD 1C 00 22         [ 2]  335 	addw	x, #(_write_buffer + 0)
      0081E0 1F 0B            [ 2]  336 	ldw	(0x0b, sp), x
      0081E2 93               [ 1]  337 	ldw	x, y
      0081E3 A6 04            [ 1]  338 	ld	a, #0x04
      0081E5 89               [ 2]  339 	pushw	x
      0081E6 10 02            [ 1]  340 	sub	a, (2, sp)
      0081E8 85               [ 2]  341 	popw	x
      0081E9 6B 0E            [ 1]  342 	ld	(0x0e, sp), a
      0081EB 49               [ 1]  343 	rlc	a
      0081EC 4F               [ 1]  344 	clr	a
      0081ED A2 00            [ 1]  345 	sbc	a, #0x00
      0081EF 6B 0D            [ 1]  346 	ld	(0x0d, sp), a
      0081F1 96               [ 1]  347 	ldw	x, sp
      0081F2 1C 00 06         [ 2]  348 	addw	x, #6
      0081F5 72 FB 0D         [ 2]  349 	addw	x, (0x0d, sp)
      0081F8 F6               [ 1]  350 	ld	a, (x)
      0081F9 1E 0B            [ 2]  351 	ldw	x, (0x0b, sp)
      0081FB F7               [ 1]  352 	ld	(x), a
                                    353 ;	HAL/src/nrf24.c: 148: for (i = 0; i < 5; i++)
      0081FC 90 5C            [ 1]  354 	incw	y
      0081FE 90 A3 00 05      [ 2]  355 	cpw	y, #0x0005
      008202 2F D8            [ 1]  356 	jrslt	00108$
                                    357 ;	HAL/src/nrf24.c: 152: nrf24_write_register(RX_ADDR_P0, 5);
      008204 4B 05            [ 1]  358 	push	#0x05
      008206 4B 0A            [ 1]  359 	push	#0x0a
      008208 CD 80 C8         [ 4]  360 	call	_nrf24_write_register
      00820B 85               [ 2]  361 	popw	x
                                    362 ;	HAL/src/nrf24.c: 154: write_buffer[0] = 32;
      00820C 35 20 00 22      [ 1]  363 	mov	_write_buffer+0, #0x20
                                    364 ;	HAL/src/nrf24.c: 155: nrf24_write_register(RX_PW_P0, 1);
      008210 4B 01            [ 1]  365 	push	#0x01
      008212 4B 11            [ 1]  366 	push	#0x11
      008214 CD 80 C8         [ 4]  367 	call	_nrf24_write_register
      008217 85               [ 2]  368 	popw	x
                                    369 ;	HAL/src/nrf24.c: 158: write_buffer[0] = 32;
      008218 35 20 00 22      [ 1]  370 	mov	_write_buffer+0, #0x20
                                    371 ;	HAL/src/nrf24.c: 159: nrf24_write_register(RX_PW_P1, 1);
      00821C 4B 01            [ 1]  372 	push	#0x01
      00821E 4B 12            [ 1]  373 	push	#0x12
      008220 CD 80 C8         [ 4]  374 	call	_nrf24_write_register
      008223 85               [ 2]  375 	popw	x
                                    376 ;	HAL/src/nrf24.c: 162: write_buffer[0] = 0x03;
      008224 35 03 00 22      [ 1]  377 	mov	_write_buffer+0, #0x03
                                    378 ;	HAL/src/nrf24.c: 163: nrf24_write_register(EN_RXADDR, 1);
      008228 4B 01            [ 1]  379 	push	#0x01
      00822A 4B 02            [ 1]  380 	push	#0x02
      00822C CD 80 C8         [ 4]  381 	call	_nrf24_write_register
      00822F 85               [ 2]  382 	popw	x
                                    383 ;	HAL/src/nrf24.c: 166: write_buffer[0] = 11 & ~(1 << PWR_UP);
      008230 35 09 00 22      [ 1]  384 	mov	_write_buffer+0, #0x09
                                    385 ;	HAL/src/nrf24.c: 167: nrf24_write_register(CONFIG, 1);
      008234 4B 01            [ 1]  386 	push	#0x01
      008236 4B 00            [ 1]  387 	push	#0x00
      008238 CD 80 C8         [ 4]  388 	call	_nrf24_write_register
                                    389 ;	HAL/src/nrf24.c: 168: }
      00823B 5B 10            [ 2]  390 	addw	sp, #16
      00823D 81               [ 4]  391 	ret
                                    392 ;	HAL/src/nrf24.c: 169: void nrf24_status_reset()
                                    393 ;	-----------------------------------------
                                    394 ;	 function nrf24_status_reset
                                    395 ;	-----------------------------------------
      00823E                        396 _nrf24_status_reset:
                                    397 ;	HAL/src/nrf24.c: 171: nrf24_read_register(STATUS, 1);
      00823E 4B 01            [ 1]  398 	push	#0x01
      008240 4B 07            [ 1]  399 	push	#0x07
      008242 CD 80 9E         [ 4]  400 	call	_nrf24_read_register
      008245 85               [ 2]  401 	popw	x
                                    402 ;	HAL/src/nrf24.c: 172: write_buffer[0] = (1 << RX_DR) | (1 << TX_DS) | (1 << MAX_RT);
      008246 35 70 00 22      [ 1]  403 	mov	_write_buffer+0, #0x70
                                    404 ;	HAL/src/nrf24.c: 173: nrf24_write_register(STATUS, 1);
      00824A 4B 01            [ 1]  405 	push	#0x01
      00824C 4B 07            [ 1]  406 	push	#0x07
      00824E CD 80 C8         [ 4]  407 	call	_nrf24_write_register
      008251 85               [ 2]  408 	popw	x
                                    409 ;	HAL/src/nrf24.c: 174: }
      008252 81               [ 4]  410 	ret
                                    411 ;	HAL/src/nrf24.c: 176: void nrf24_get_data(uint8_t *packet)
                                    412 ;	-----------------------------------------
                                    413 ;	 function nrf24_get_data
                                    414 ;	-----------------------------------------
      008253                        415 _nrf24_get_data:
      008253 89               [ 2]  416 	pushw	x
                                    417 ;	HAL/src/nrf24.c: 179: data_buffer[0] = R_RX_PAYLOAD;
      008254 35 61 00 01      [ 1]  418 	mov	_data_buffer+0, #0x61
                                    419 ;	HAL/src/nrf24.c: 180: for (i = 1; i <= 33; i++)
      008258 5F               [ 1]  420 	clrw	x
      008259 5C               [ 1]  421 	incw	x
      00825A                        422 00103$:
                                    423 ;	HAL/src/nrf24.c: 182: data_buffer[i] = NRF24_NOP;
      00825A A6 FF            [ 1]  424 	ld	a, #0xff
      00825C D7 00 01         [ 1]  425 	ld	((_data_buffer + 0), x), a
                                    426 ;	HAL/src/nrf24.c: 180: for (i = 1; i <= 33; i++)
      00825F 5C               [ 1]  427 	incw	x
      008260 A3 00 21         [ 2]  428 	cpw	x, #0x0021
      008263 2D F5            [ 1]  429 	jrsle	00103$
                                    430 ;	HAL/src/nrf24.c: 184: SPI_Send(data_buffer, 33);
      008265 4B 21            [ 1]  431 	push	#0x21
      008267 4B 00            [ 1]  432 	push	#0x00
      008269 4B 01            [ 1]  433 	push	#<(_data_buffer + 0)
      00826B 4B 00            [ 1]  434 	push	#((_data_buffer + 0) >> 8)
      00826D CD 80 79         [ 4]  435 	call	_SPI_Send
      008270 5B 04            [ 2]  436 	addw	sp, #4
                                    437 ;	HAL/src/nrf24.c: 185: for (i = 1; i <= 33; i++)
      008272 90 AE 00 01      [ 2]  438 	ldw	y, #0x0001
      008276                        439 00105$:
                                    440 ;	HAL/src/nrf24.c: 187: packet[i - 1] = data_buffer[i];
      008276 93               [ 1]  441 	ldw	x, y
      008277 5A               [ 2]  442 	decw	x
      008278 72 FB 05         [ 2]  443 	addw	x, (0x05, sp)
      00827B 1F 01            [ 2]  444 	ldw	(0x01, sp), x
      00827D 93               [ 1]  445 	ldw	x, y
      00827E 1C 00 01         [ 2]  446 	addw	x, #(_data_buffer + 0)
      008281 F6               [ 1]  447 	ld	a, (x)
      008282 1E 01            [ 2]  448 	ldw	x, (0x01, sp)
      008284 F7               [ 1]  449 	ld	(x), a
                                    450 ;	HAL/src/nrf24.c: 185: for (i = 1; i <= 33; i++)
      008285 90 5C            [ 1]  451 	incw	y
      008287 90 A3 00 21      [ 2]  452 	cpw	y, #0x0021
      00828B 2D E9            [ 1]  453 	jrsle	00105$
                                    454 ;	HAL/src/nrf24.c: 189: }
      00828D 85               [ 2]  455 	popw	x
      00828E 81               [ 4]  456 	ret
                                    457 ;	HAL/src/nrf24.c: 191: uint8_t nrf24_available()
                                    458 ;	-----------------------------------------
                                    459 ;	 function nrf24_available
                                    460 ;	-----------------------------------------
      00828F                        461 _nrf24_available:
      00828F 88               [ 1]  462 	push	a
                                    463 ;	HAL/src/nrf24.c: 193: uint8_t result = 0;
      008290 0F 01            [ 1]  464 	clr	(0x01, sp)
                                    465 ;	HAL/src/nrf24.c: 194: nrf24_read_register(STATUS, 1);
      008292 4B 01            [ 1]  466 	push	#0x01
      008294 4B 07            [ 1]  467 	push	#0x07
      008296 CD 80 9E         [ 4]  468 	call	_nrf24_read_register
      008299 85               [ 2]  469 	popw	x
                                    470 ;	HAL/src/nrf24.c: 195: if (data_buffer[0] & (1 << 6) || (data_buffer[0] & 0x0E != 0x0E))
      00829A C6 00 01         [ 1]  471 	ld	a, _data_buffer+0
      00829D A5 40            [ 1]  472 	bcp	a, #0x40
      00829F 26 07            [ 1]  473 	jrne	00101$
      0082A1 C6 00 01         [ 1]  474 	ld	a, _data_buffer+0
      0082A4 4F               [ 1]  475 	clr	a
      0082A5 4D               [ 1]  476 	tnz	a
      0082A6 27 04            [ 1]  477 	jreq	00102$
      0082A8                        478 00101$:
                                    479 ;	HAL/src/nrf24.c: 196: result = 1;
      0082A8 A6 01            [ 1]  480 	ld	a, #0x01
      0082AA 6B 01            [ 1]  481 	ld	(0x01, sp), a
      0082AC                        482 00102$:
                                    483 ;	HAL/src/nrf24.c: 198: nrf24_read_register(STATUS, 1);
      0082AC 4B 01            [ 1]  484 	push	#0x01
      0082AE 4B 07            [ 1]  485 	push	#0x07
      0082B0 CD 80 9E         [ 4]  486 	call	_nrf24_read_register
      0082B3 85               [ 2]  487 	popw	x
                                    488 ;	HAL/src/nrf24.c: 199: if (data_buffer[0] & (1 << 5))
      0082B4 C6 00 01         [ 1]  489 	ld	a, _data_buffer+0
      0082B7 A5 20            [ 1]  490 	bcp	a, #0x20
      0082B9 27 0C            [ 1]  491 	jreq	00105$
                                    492 ;	HAL/src/nrf24.c: 201: write_buffer[0] = (1 << 5);
      0082BB 35 20 00 22      [ 1]  493 	mov	_write_buffer+0, #0x20
                                    494 ;	HAL/src/nrf24.c: 202: nrf24_write_register(STATUS, 1);
      0082BF 4B 01            [ 1]  495 	push	#0x01
      0082C1 4B 07            [ 1]  496 	push	#0x07
      0082C3 CD 80 C8         [ 4]  497 	call	_nrf24_write_register
      0082C6 85               [ 2]  498 	popw	x
      0082C7                        499 00105$:
                                    500 ;	HAL/src/nrf24.c: 204: return result;
      0082C7 7B 01            [ 1]  501 	ld	a, (0x01, sp)
                                    502 ;	HAL/src/nrf24.c: 205: }
      0082C9 5B 01            [ 2]  503 	addw	sp, #1
      0082CB 81               [ 4]  504 	ret
                                    505 ;	HAL/src/nrf24.c: 207: uint8_t nrf24_getDynamicPayloadSize()
                                    506 ;	-----------------------------------------
                                    507 ;	 function nrf24_getDynamicPayloadSize
                                    508 ;	-----------------------------------------
      0082CC                        509 _nrf24_getDynamicPayloadSize:
                                    510 ;	HAL/src/nrf24.c: 209: data_buffer[0] = R_RX_PL_WID;
      0082CC 35 60 00 01      [ 1]  511 	mov	_data_buffer+0, #0x60
                                    512 ;	HAL/src/nrf24.c: 210: data_buffer[1] = NRF24_NOP;
      0082D0 35 FF 00 02      [ 1]  513 	mov	_data_buffer+1, #0xff
                                    514 ;	HAL/src/nrf24.c: 211: SPI_Send(data_buffer, 2);
      0082D4 4B 02            [ 1]  515 	push	#0x02
      0082D6 4B 00            [ 1]  516 	push	#0x00
      0082D8 4B 01            [ 1]  517 	push	#<(_data_buffer + 0)
      0082DA 4B 00            [ 1]  518 	push	#((_data_buffer + 0) >> 8)
      0082DC CD 80 79         [ 4]  519 	call	_SPI_Send
      0082DF 5B 04            [ 2]  520 	addw	sp, #4
                                    521 ;	HAL/src/nrf24.c: 212: return data_buffer[1];
      0082E1 C6 00 02         [ 1]  522 	ld	a, _data_buffer+1
                                    523 ;	HAL/src/nrf24.c: 213: }
      0082E4 81               [ 4]  524 	ret
                                    525 ;	HAL/src/nrf24.c: 214: void nrf24_startListening()
                                    526 ;	-----------------------------------------
                                    527 ;	 function nrf24_startListening
                                    528 ;	-----------------------------------------
      0082E5                        529 _nrf24_startListening:
                                    530 ;	HAL/src/nrf24.c: 216: nrf24_read_register(CONFIG, 1);
      0082E5 4B 01            [ 1]  531 	push	#0x01
      0082E7 4B 00            [ 1]  532 	push	#0x00
      0082E9 CD 80 9E         [ 4]  533 	call	_nrf24_read_register
      0082EC 85               [ 2]  534 	popw	x
                                    535 ;	HAL/src/nrf24.c: 217: write_buffer[0] = data_buffer[1] | (1 << PRIM_RX);
      0082ED C6 00 02         [ 1]  536 	ld	a, _data_buffer+1
      0082F0 AA 01            [ 1]  537 	or	a, #0x01
      0082F2 C7 00 22         [ 1]  538 	ld	_write_buffer+0, a
                                    539 ;	HAL/src/nrf24.c: 218: nrf24_write_register(CONFIG, 1);
      0082F5 4B 01            [ 1]  540 	push	#0x01
      0082F7 4B 00            [ 1]  541 	push	#0x00
      0082F9 CD 80 C8         [ 4]  542 	call	_nrf24_write_register
      0082FC 85               [ 2]  543 	popw	x
                                    544 ;	HAL/src/nrf24.c: 219: write_buffer[0] = (1 << 6) | (1 << 5) | (1 << 4);
      0082FD 35 70 00 22      [ 1]  545 	mov	_write_buffer+0, #0x70
                                    546 ;	HAL/src/nrf24.c: 220: nrf24_write_register(STATUS, 1);
      008301 4B 01            [ 1]  547 	push	#0x01
      008303 4B 07            [ 1]  548 	push	#0x07
      008305 CD 80 C8         [ 4]  549 	call	_nrf24_write_register
      008308 85               [ 2]  550 	popw	x
                                    551 ;	HAL/src/nrf24.c: 221: nrf_ce_high();
      008309 72 18 50 0F      [ 1]  552 	bset	20495, #4
                                    553 ;	HAL/src/nrf24.c: 222: }
      00830D 81               [ 4]  554 	ret
                                    555 ;	HAL/src/nrf24.c: 224: void nrf24_stopListening()
                                    556 ;	-----------------------------------------
                                    557 ;	 function nrf24_stopListening
                                    558 ;	-----------------------------------------
      00830E                        559 _nrf24_stopListening:
                                    560 ;	HAL/src/nrf24.c: 226: nrf_ce_low();
      00830E 72 19 50 0F      [ 1]  561 	bres	20495, #4
                                    562 ;	HAL/src/nrf24.c: 227: nrf24_read_register(CONFIG, 1);
      008312 4B 01            [ 1]  563 	push	#0x01
      008314 4B 00            [ 1]  564 	push	#0x00
      008316 CD 80 9E         [ 4]  565 	call	_nrf24_read_register
      008319 85               [ 2]  566 	popw	x
                                    567 ;	HAL/src/nrf24.c: 228: write_buffer[0] = data_buffer[1] & ~(1 << PRIM_RX);
      00831A C6 00 02         [ 1]  568 	ld	a, _data_buffer+1
      00831D A4 FE            [ 1]  569 	and	a, #0xfe
      00831F C7 00 22         [ 1]  570 	ld	_write_buffer+0, a
                                    571 ;	HAL/src/nrf24.c: 229: nrf24_write_register(CONFIG, 1);
      008322 4B 01            [ 1]  572 	push	#0x01
      008324 4B 00            [ 1]  573 	push	#0x00
      008326 CD 80 C8         [ 4]  574 	call	_nrf24_write_register
      008329 85               [ 2]  575 	popw	x
                                    576 ;	HAL/src/nrf24.c: 230: }
      00832A 81               [ 4]  577 	ret
                                    578 ;	HAL/src/nrf24.c: 232: void radio_power_up()
                                    579 ;	-----------------------------------------
                                    580 ;	 function radio_power_up
                                    581 ;	-----------------------------------------
      00832B                        582 _radio_power_up:
                                    583 ;	HAL/src/nrf24.c: 234: nrf24_read_register(CONFIG, 1);
      00832B 4B 01            [ 1]  584 	push	#0x01
      00832D 4B 00            [ 1]  585 	push	#0x00
      00832F CD 80 9E         [ 4]  586 	call	_nrf24_read_register
      008332 85               [ 2]  587 	popw	x
                                    588 ;	HAL/src/nrf24.c: 235: write_buffer[0] = data_buffer[1] | (1 << PWR_UP);
      008333 C6 00 02         [ 1]  589 	ld	a, _data_buffer+1
      008336 AA 02            [ 1]  590 	or	a, #0x02
      008338 C7 00 22         [ 1]  591 	ld	_write_buffer+0, a
                                    592 ;	HAL/src/nrf24.c: 236: nrf24_write_register(CONFIG, 1);
      00833B 4B 01            [ 1]  593 	push	#0x01
      00833D 4B 00            [ 1]  594 	push	#0x00
      00833F CD 80 C8         [ 4]  595 	call	_nrf24_write_register
      008342 85               [ 2]  596 	popw	x
                                    597 ;	HAL/src/nrf24.c: 237: }
      008343 81               [ 4]  598 	ret
                                    599 ;	HAL/src/nrf24.c: 238: void radio_power_down()
                                    600 ;	-----------------------------------------
                                    601 ;	 function radio_power_down
                                    602 ;	-----------------------------------------
      008344                        603 _radio_power_down:
                                    604 ;	HAL/src/nrf24.c: 240: nrf24_read_register(CONFIG, 1);
      008344 4B 01            [ 1]  605 	push	#0x01
      008346 4B 00            [ 1]  606 	push	#0x00
      008348 CD 80 9E         [ 4]  607 	call	_nrf24_read_register
      00834B 85               [ 2]  608 	popw	x
                                    609 ;	HAL/src/nrf24.c: 241: write_buffer[0] = data_buffer[1] & ~(1 << PWR_UP);
      00834C C6 00 02         [ 1]  610 	ld	a, _data_buffer+1
      00834F A4 FD            [ 1]  611 	and	a, #0xfd
      008351 C7 00 22         [ 1]  612 	ld	_write_buffer+0, a
                                    613 ;	HAL/src/nrf24.c: 242: nrf24_write_register(CONFIG, 1);
      008354 4B 01            [ 1]  614 	push	#0x01
      008356 4B 00            [ 1]  615 	push	#0x00
      008358 CD 80 C8         [ 4]  616 	call	_nrf24_write_register
      00835B 85               [ 2]  617 	popw	x
                                    618 ;	HAL/src/nrf24.c: 243: }
      00835C 81               [ 4]  619 	ret
                                    620 ;	HAL/src/nrf24.c: 245: void radio_init()
                                    621 ;	-----------------------------------------
                                    622 ;	 function radio_init
                                    623 ;	-----------------------------------------
      00835D                        624 _radio_init:
                                    625 ;	HAL/src/nrf24.c: 247: spi_init();
      00835D CD 84 2C         [ 4]  626 	call	_spi_init
                                    627 ;	HAL/src/nrf24.c: 248: nrf_ce_low();
      008360 72 19 50 0F      [ 1]  628 	bres	20495, #4
                                    629 ;	HAL/src/nrf24.c: 249: nrf_nss_low();
      008364 C6 50 00         [ 1]  630 	ld	a, 0x5000
      008367 A4 F7            [ 1]  631 	and	a, #0xf7
      008369 C7 50 00         [ 1]  632 	ld	0x5000, a
                                    633 ;	HAL/src/nrf24.c: 250: nrf24_setup();
                                    634 ;	HAL/src/nrf24.c: 251: }
      00836C CC 81 08         [ 2]  635 	jp	_nrf24_setup
                                    636 ;	HAL/src/nrf24.c: 252: uint8_t radio_recieve(uint8_t *packet)
                                    637 ;	-----------------------------------------
                                    638 ;	 function radio_recieve
                                    639 ;	-----------------------------------------
      00836F                        640 _radio_recieve:
      00836F 88               [ 1]  641 	push	a
                                    642 ;	HAL/src/nrf24.c: 254: nrf24_startListening();
      008370 CD 82 E5         [ 4]  643 	call	_nrf24_startListening
                                    644 ;	HAL/src/nrf24.c: 255: while (!nrf24_available())
      008373                        645 00101$:
      008373 CD 82 8F         [ 4]  646 	call	_nrf24_available
      008376 4D               [ 1]  647 	tnz	a
      008377 27 FA            [ 1]  648 	jreq	00101$
                                    649 ;	HAL/src/nrf24.c: 257: uint8_t size = nrf24_getDynamicPayloadSize();
      008379 CD 82 CC         [ 4]  650 	call	_nrf24_getDynamicPayloadSize
                                    651 ;	HAL/src/nrf24.c: 258: if (size == 0)
      00837C 6B 01            [ 1]  652 	ld	(0x01, sp), a
      00837E 26 03            [ 1]  653 	jrne	00105$
                                    654 ;	HAL/src/nrf24.c: 260: return 0; // No payload
      008380 4F               [ 1]  655 	clr	a
      008381 20 0C            [ 2]  656 	jra	00106$
      008383                        657 00105$:
                                    658 ;	HAL/src/nrf24.c: 262: nrf24_stopListening();
      008383 CD 83 0E         [ 4]  659 	call	_nrf24_stopListening
                                    660 ;	HAL/src/nrf24.c: 263: nrf24_get_data(packet);
      008386 1E 04            [ 2]  661 	ldw	x, (0x04, sp)
      008388 89               [ 2]  662 	pushw	x
      008389 CD 82 53         [ 4]  663 	call	_nrf24_get_data
      00838C 85               [ 2]  664 	popw	x
                                    665 ;	HAL/src/nrf24.c: 264: return size;
      00838D 7B 01            [ 1]  666 	ld	a, (0x01, sp)
      00838F                        667 00106$:
                                    668 ;	HAL/src/nrf24.c: 265: }
      00838F 5B 01            [ 2]  669 	addw	sp, #1
      008391 81               [ 4]  670 	ret
                                    671 ;	HAL/src/nrf24.c: 267: void radio_send(uint8_t *data, uint8_t data_len)
                                    672 ;	-----------------------------------------
                                    673 ;	 function radio_send
                                    674 ;	-----------------------------------------
      008392                        675 _radio_send:
      008392 52 03            [ 2]  676 	sub	sp, #3
                                    677 ;	HAL/src/nrf24.c: 269: uint8_t cmd = FLUSH_TX;
      008394 A6 E1            [ 1]  678 	ld	a, #0xe1
      008396 6B 01            [ 1]  679 	ld	(0x01, sp), a
                                    680 ;	HAL/src/nrf24.c: 270: SPI_Send(&cmd, 1);
      008398 4B 01            [ 1]  681 	push	#0x01
      00839A 4B 00            [ 1]  682 	push	#0x00
      00839C 96               [ 1]  683 	ldw	x, sp
      00839D 1C 00 03         [ 2]  684 	addw	x, #3
      0083A0 89               [ 2]  685 	pushw	x
      0083A1 CD 80 79         [ 4]  686 	call	_SPI_Send
      0083A4 5B 04            [ 2]  687 	addw	sp, #4
                                    688 ;	HAL/src/nrf24.c: 271: nrf24_status_reset();
      0083A6 CD 82 3E         [ 4]  689 	call	_nrf24_status_reset
                                    690 ;	HAL/src/nrf24.c: 272: nrf_ce_low();
      0083A9 72 19 50 0F      [ 1]  691 	bres	20495, #4
                                    692 ;	HAL/src/nrf24.c: 273: nrf24_read_register(CONFIG, 1);
      0083AD 4B 01            [ 1]  693 	push	#0x01
      0083AF 4B 00            [ 1]  694 	push	#0x00
      0083B1 CD 80 9E         [ 4]  695 	call	_nrf24_read_register
      0083B4 85               [ 2]  696 	popw	x
                                    697 ;	HAL/src/nrf24.c: 274: write_buffer[0] = data_buffer[1] & ~(1 << PRIM_RX);
      0083B5 C6 00 02         [ 1]  698 	ld	a, _data_buffer+1
      0083B8 A4 FE            [ 1]  699 	and	a, #0xfe
      0083BA C7 00 22         [ 1]  700 	ld	_write_buffer+0, a
                                    701 ;	HAL/src/nrf24.c: 275: nrf24_write_register(CONFIG, 1);
      0083BD 4B 01            [ 1]  702 	push	#0x01
      0083BF 4B 00            [ 1]  703 	push	#0x00
      0083C1 CD 80 C8         [ 4]  704 	call	_nrf24_write_register
      0083C4 85               [ 2]  705 	popw	x
                                    706 ;	HAL/src/nrf24.c: 277: data_buffer[0] = W_TX_PAYLOAD;
      0083C5 35 A0 00 01      [ 1]  707 	mov	_data_buffer+0, #0xa0
                                    708 ;	HAL/src/nrf24.c: 278: for (int i = 0; i < data_len; i++)
      0083C9 90 5F            [ 1]  709 	clrw	y
      0083CB                        710 00104$:
      0083CB 7B 08            [ 1]  711 	ld	a, (0x08, sp)
      0083CD 6B 03            [ 1]  712 	ld	(0x03, sp), a
      0083CF 0F 02            [ 1]  713 	clr	(0x02, sp)
      0083D1 51               [ 1]  714 	exgw	x, y
      0083D2 13 02            [ 2]  715 	cpw	x, (0x02, sp)
      0083D4 51               [ 1]  716 	exgw	x, y
      0083D5 2E 19            [ 1]  717 	jrsge	00101$
                                    718 ;	HAL/src/nrf24.c: 280: data_buffer[i + 1] = data[i];
      0083D7 93               [ 1]  719 	ldw	x, y
      0083D8 5C               [ 1]  720 	incw	x
      0083D9 9F               [ 1]  721 	ld	a, xl
      0083DA 49               [ 1]  722 	rlc	a
      0083DB 4F               [ 1]  723 	clr	a
      0083DC A2 00            [ 1]  724 	sbc	a, #0x00
      0083DE 95               [ 1]  725 	ld	xh, a
      0083DF 1C 00 01         [ 2]  726 	addw	x, #(_data_buffer + 0)
      0083E2 1F 02            [ 2]  727 	ldw	(0x02, sp), x
      0083E4 93               [ 1]  728 	ldw	x, y
      0083E5 72 FB 06         [ 2]  729 	addw	x, (0x06, sp)
      0083E8 F6               [ 1]  730 	ld	a, (x)
      0083E9 1E 02            [ 2]  731 	ldw	x, (0x02, sp)
      0083EB F7               [ 1]  732 	ld	(x), a
                                    733 ;	HAL/src/nrf24.c: 278: for (int i = 0; i < data_len; i++)
      0083EC 90 5C            [ 1]  734 	incw	y
      0083EE 20 DB            [ 2]  735 	jra	00104$
      0083F0                        736 00101$:
                                    737 ;	HAL/src/nrf24.c: 282: SPI_Send(data_buffer, data_len + 1);
      0083F0 1E 02            [ 2]  738 	ldw	x, (0x02, sp)
      0083F2 5C               [ 1]  739 	incw	x
      0083F3 89               [ 2]  740 	pushw	x
      0083F4 4B 01            [ 1]  741 	push	#<(_data_buffer + 0)
      0083F6 4B 00            [ 1]  742 	push	#((_data_buffer + 0) >> 8)
      0083F8 CD 80 79         [ 4]  743 	call	_SPI_Send
      0083FB 5B 04            [ 2]  744 	addw	sp, #4
                                    745 ;	HAL/src/nrf24.c: 283: nrf_ce_high();
      0083FD 72 18 50 0F      [ 1]  746 	bset	20495, #4
                                    747 ;	HAL/src/nrf24.c: 284: for (int i = 40; i > 0; i--)
      008401 AE 00 28         [ 2]  748 	ldw	x, #0x0028
      008404                        749 00107$:
      008404 A3 00 00         [ 2]  750 	cpw	x, #0x0000
      008407 2D 03            [ 1]  751 	jrsle	00102$
      008409 5A               [ 2]  752 	decw	x
      00840A 20 F8            [ 2]  753 	jra	00107$
      00840C                        754 00102$:
                                    755 ;	HAL/src/nrf24.c: 286: nrf_ce_low();
      00840C 72 19 50 0F      [ 1]  756 	bres	20495, #4
                                    757 ;	HAL/src/nrf24.c: 287: }
      008410 5B 03            [ 2]  758 	addw	sp, #3
      008412 81               [ 4]  759 	ret
                                    760 	.area CODE
                                    761 	.area CONST
                                    762 	.area INITIALIZER
                                    763 	.area CABS (ABS)
