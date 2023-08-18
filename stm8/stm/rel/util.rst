                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ANSI-C Compiler
                                      3 ; Version 4.0.0 #11528 (Linux)
                                      4 ;--------------------------------------------------------
                                      5 	.module util
                                      6 	.optsdcc -mstm8
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _awu_set_regs
                                     12 	.globl _awu_get_timebase
                                     13 	.globl _putchar
                                     14 	.globl _awu_sleep
                                     15 ;--------------------------------------------------------
                                     16 ; ram data
                                     17 ;--------------------------------------------------------
                                     18 	.area DATA
                                     19 ;--------------------------------------------------------
                                     20 ; ram data
                                     21 ;--------------------------------------------------------
                                     22 	.area INITIALIZED
                                     23 ;--------------------------------------------------------
                                     24 ; absolute external ram data
                                     25 ;--------------------------------------------------------
                                     26 	.area DABS (ABS)
                                     27 
                                     28 ; default segment ordering for linker
                                     29 	.area HOME
                                     30 	.area GSINIT
                                     31 	.area GSFINAL
                                     32 	.area CONST
                                     33 	.area INITIALIZER
                                     34 	.area CODE
                                     35 
                                     36 ;--------------------------------------------------------
                                     37 ; global & static initialisations
                                     38 ;--------------------------------------------------------
                                     39 	.area HOME
                                     40 	.area GSINIT
                                     41 	.area GSFINAL
                                     42 	.area GSINIT
                                     43 ;--------------------------------------------------------
                                     44 ; Home
                                     45 ;--------------------------------------------------------
                                     46 	.area HOME
                                     47 	.area HOME
                                     48 ;--------------------------------------------------------
                                     49 ; code
                                     50 ;--------------------------------------------------------
                                     51 	.area CODE
                                     52 ;	HAL/src/util.c: 5: int putchar(int c)
                                     53 ;	-----------------------------------------
                                     54 ;	 function putchar
                                     55 ;	-----------------------------------------
      00844F                         56 _putchar:
                                     57 ;	HAL/src/util.c: 8: while (!(UART1_SR & UART_SR_TXE))
      00844F                         58 00101$:
      00844F C6 52 30         [ 1]   59 	ld	a, 0x5230
      008452 2A FB            [ 1]   60 	jrpl	00101$
                                     61 ;	HAL/src/util.c: 11: UART1_DR = (char)c;
      008454 7B 04            [ 1]   62 	ld	a, (0x04, sp)
      008456 C7 52 31         [ 1]   63 	ld	0x5231, a
                                     64 ;	HAL/src/util.c: 13: while (!(UART1_SR & UART_SR_TC))
      008459                         65 00104$:
      008459 C6 52 30         [ 1]   66 	ld	a, 0x5230
      00845C A5 40            [ 1]   67 	bcp	a, #0x40
      00845E 27 F9            [ 1]   68 	jreq	00104$
                                     69 ;	HAL/src/util.c: 15: return 0;
      008460 5F               [ 1]   70 	clrw	x
                                     71 ;	HAL/src/util.c: 16: }
      008461 81               [ 4]   72 	ret
                                     73 ;	HAL/src/util.c: 18: uint8_t awu_get_timebase(uint32_t time, uint32_t freq) // time in microseconds
                                     74 ;	-----------------------------------------
                                     75 ;	 function awu_get_timebase
                                     76 ;	-----------------------------------------
      008462                         77 _awu_get_timebase:
      008462 52 0F            [ 2]   78 	sub	sp, #15
                                     79 ;	HAL/src/util.c: 20: float f = (float)freq / 1e6;
      008464 1E 18            [ 2]   80 	ldw	x, (0x18, sp)
      008466 89               [ 2]   81 	pushw	x
      008467 1E 18            [ 2]   82 	ldw	x, (0x18, sp)
      008469 89               [ 2]   83 	pushw	x
      00846A CD 87 DD         [ 4]   84 	call	___ulong2fs
      00846D 5B 04            [ 2]   85 	addw	sp, #4
      00846F 4B 00            [ 1]   86 	push	#0x00
      008471 4B 24            [ 1]   87 	push	#0x24
      008473 4B 74            [ 1]   88 	push	#0x74
      008475 4B 49            [ 1]   89 	push	#0x49
      008477 89               [ 2]   90 	pushw	x
      008478 90 89            [ 2]   91 	pushw	y
      00847A CD 8A DD         [ 4]   92 	call	___fsdiv
      00847D 5B 08            [ 2]   93 	addw	sp, #8
      00847F 1F 0E            [ 2]   94 	ldw	(0x0e, sp), x
      008481 17 0C            [ 2]   95 	ldw	(0x0c, sp), y
                                     96 ;	HAL/src/util.c: 21: f = f * time;
      008483 1E 14            [ 2]   97 	ldw	x, (0x14, sp)
      008485 89               [ 2]   98 	pushw	x
      008486 1E 14            [ 2]   99 	ldw	x, (0x14, sp)
      008488 89               [ 2]  100 	pushw	x
      008489 CD 87 DD         [ 4]  101 	call	___ulong2fs
      00848C 5B 04            [ 2]  102 	addw	sp, #4
      00848E 89               [ 2]  103 	pushw	x
      00848F 90 89            [ 2]  104 	pushw	y
      008491 1E 12            [ 2]  105 	ldw	x, (0x12, sp)
      008493 89               [ 2]  106 	pushw	x
      008494 1E 12            [ 2]  107 	ldw	x, (0x12, sp)
      008496 89               [ 2]  108 	pushw	x
      008497 CD 85 FB         [ 4]  109 	call	___fsmul
      00849A 5B 08            [ 2]  110 	addw	sp, #8
      00849C 1F 07            [ 2]  111 	ldw	(0x07, sp), x
      00849E 17 05            [ 2]  112 	ldw	(0x05, sp), y
                                    113 ;	HAL/src/util.c: 22: if (f < 64)
      0084A0 5F               [ 1]  114 	clrw	x
      0084A1 89               [ 2]  115 	pushw	x
      0084A2 4B 80            [ 1]  116 	push	#0x80
      0084A4 4B 42            [ 1]  117 	push	#0x42
      0084A6 1E 0B            [ 2]  118 	ldw	x, (0x0b, sp)
      0084A8 89               [ 2]  119 	pushw	x
      0084A9 1E 0B            [ 2]  120 	ldw	x, (0x0b, sp)
      0084AB 89               [ 2]  121 	pushw	x
      0084AC CD 88 5D         [ 4]  122 	call	___fslt
      0084AF 5B 08            [ 2]  123 	addw	sp, #8
      0084B1 4D               [ 1]  124 	tnz	a
      0084B2 27 04            [ 1]  125 	jreq	00102$
                                    126 ;	HAL/src/util.c: 24: return 1;
      0084B4 A6 01            [ 1]  127 	ld	a, #0x01
      0084B6 20 4C            [ 2]  128 	jra	00110$
      0084B8                        129 00102$:
                                    130 ;	HAL/src/util.c: 26: uint32_t counter = 128;
      0084B8 AE 00 80         [ 2]  131 	ldw	x, #0x0080
      0084BB 1F 0C            [ 2]  132 	ldw	(0x0c, sp), x
      0084BD 5F               [ 1]  133 	clrw	x
      0084BE 1F 0A            [ 2]  134 	ldw	(0x0a, sp), x
                                    135 ;	HAL/src/util.c: 27: uint8_t val = 2;
      0084C0 A6 02            [ 1]  136 	ld	a, #0x02
                                    137 ;	HAL/src/util.c: 28: for (int i = 0; i < 16; i++)
      0084C2 5F               [ 1]  138 	clrw	x
      0084C3 1F 0E            [ 2]  139 	ldw	(0x0e, sp), x
      0084C5                        140 00108$:
      0084C5 1E 0E            [ 2]  141 	ldw	x, (0x0e, sp)
      0084C7 A3 00 10         [ 2]  142 	cpw	x, #0x0010
      0084CA 2E 37            [ 1]  143 	jrsge	00106$
                                    144 ;	HAL/src/util.c: 30: if (f <= counter)
      0084CC 88               [ 1]  145 	push	a
      0084CD 1E 0D            [ 2]  146 	ldw	x, (0x0d, sp)
      0084CF 89               [ 2]  147 	pushw	x
      0084D0 1E 0D            [ 2]  148 	ldw	x, (0x0d, sp)
      0084D2 89               [ 2]  149 	pushw	x
      0084D3 CD 87 DD         [ 4]  150 	call	___ulong2fs
      0084D6 5B 04            [ 2]  151 	addw	sp, #4
      0084D8 1F 04            [ 2]  152 	ldw	(0x04, sp), x
      0084DA 84               [ 1]  153 	pop	a
      0084DB 88               [ 1]  154 	push	a
      0084DC 1E 08            [ 2]  155 	ldw	x, (0x08, sp)
      0084DE 89               [ 2]  156 	pushw	x
      0084DF 1E 08            [ 2]  157 	ldw	x, (0x08, sp)
      0084E1 89               [ 2]  158 	pushw	x
      0084E2 1E 08            [ 2]  159 	ldw	x, (0x08, sp)
      0084E4 89               [ 2]  160 	pushw	x
      0084E5 90 89            [ 2]  161 	pushw	y
      0084E7 CD 88 5D         [ 4]  162 	call	___fslt
      0084EA 5B 08            [ 2]  163 	addw	sp, #8
      0084EC 6B 0A            [ 1]  164 	ld	(0x0a, sp), a
      0084EE 84               [ 1]  165 	pop	a
      0084EF 0D 09            [ 1]  166 	tnz	(0x09, sp)
                                    167 ;	HAL/src/util.c: 31: return val;
      0084F1 27 11            [ 1]  168 	jreq	00110$
                                    169 ;	HAL/src/util.c: 34: counter = counter << 1;
      0084F3 08 0D            [ 1]  170 	sll	(0x0d, sp)
      0084F5 09 0C            [ 1]  171 	rlc	(0x0c, sp)
      0084F7 09 0B            [ 1]  172 	rlc	(0x0b, sp)
      0084F9 09 0A            [ 1]  173 	rlc	(0x0a, sp)
                                    174 ;	HAL/src/util.c: 35: val = val + 1;
      0084FB 4C               [ 1]  175 	inc	a
                                    176 ;	HAL/src/util.c: 28: for (int i = 0; i < 16; i++)
      0084FC 1E 0E            [ 2]  177 	ldw	x, (0x0e, sp)
      0084FE 5C               [ 1]  178 	incw	x
      0084FF 1F 0E            [ 2]  179 	ldw	(0x0e, sp), x
      008501 20 C2            [ 2]  180 	jra	00108$
      008503                        181 00106$:
                                    182 ;	HAL/src/util.c: 38: return 0;
      008503 4F               [ 1]  183 	clr	a
      008504                        184 00110$:
                                    185 ;	HAL/src/util.c: 39: }
      008504 5B 0F            [ 2]  186 	addw	sp, #15
      008506 81               [ 4]  187 	ret
                                    188 ;	HAL/src/util.c: 41: void awu_set_regs(uint8_t tbr, uint8_t apr)
                                    189 ;	-----------------------------------------
                                    190 ;	 function awu_set_regs
                                    191 ;	-----------------------------------------
      008507                        192 _awu_set_regs:
                                    193 ;	HAL/src/util.c: 43: AWU_TBR &= ~(0x0F);
      008507 C6 50 F2         [ 1]  194 	ld	a, 0x50f2
      00850A A4 F0            [ 1]  195 	and	a, #0xf0
      00850C C7 50 F2         [ 1]  196 	ld	0x50f2, a
                                    197 ;	HAL/src/util.c: 44: AWU_TBR |= tbr;
      00850F C6 50 F2         [ 1]  198 	ld	a, 0x50f2
      008512 1A 03            [ 1]  199 	or	a, (0x03, sp)
      008514 C7 50 F2         [ 1]  200 	ld	0x50f2, a
                                    201 ;	HAL/src/util.c: 45: AWU_APR &= ~(0x3F);
      008517 C6 50 F1         [ 1]  202 	ld	a, 0x50f1
      00851A A4 C0            [ 1]  203 	and	a, #0xc0
      00851C C7 50 F1         [ 1]  204 	ld	0x50f1, a
                                    205 ;	HAL/src/util.c: 46: AWU_APR |= apr;
      00851F C6 50 F1         [ 1]  206 	ld	a, 0x50f1
      008522 1A 04            [ 1]  207 	or	a, (0x04, sp)
      008524 C7 50 F1         [ 1]  208 	ld	0x50f1, a
                                    209 ;	HAL/src/util.c: 47: AWU_CSR |= AWU_CSR_AWUEN;
      008527 C6 50 F0         [ 1]  210 	ld	a, 0x50f0
      00852A AA 10            [ 1]  211 	or	a, #0x10
      00852C C7 50 F0         [ 1]  212 	ld	0x50f0, a
                                    213 ;	HAL/src/util.c: 48: halt();
      00852F 8E               [10]  214 	halt
                                    215 ;	HAL/src/util.c: 49: }
      008530 81               [ 4]  216 	ret
                                    217 ;	HAL/src/util.c: 51: void awu_sleep(uint32_t time) // microseconds
                                    218 ;	-----------------------------------------
                                    219 ;	 function awu_sleep
                                    220 ;	-----------------------------------------
      008531                        221 _awu_sleep:
      008531 52 05            [ 2]  222 	sub	sp, #5
                                    223 ;	HAL/src/util.c: 54: if (time <= (uint32_t)(1e6 * (uint32_t)2048 * 128 / (float)LSI_FREQUENCY))
      008533 5F               [ 1]  224 	clrw	x
      008534 A6 40            [ 1]  225 	ld	a, #0x40
      008536 95               [ 1]  226 	ld	xh, a
      008537 13 0A            [ 2]  227 	cpw	x, (0x0a, sp)
      008539 A6 1F            [ 1]  228 	ld	a, #0x1f
      00853B 12 09            [ 1]  229 	sbc	a, (0x09, sp)
      00853D 4F               [ 1]  230 	clr	a
      00853E 12 08            [ 1]  231 	sbc	a, (0x08, sp)
      008540 25 78            [ 1]  232 	jrc	00111$
                                    233 ;	HAL/src/util.c: 56: uint8_t tbr = awu_get_timebase(time, LSI_FREQUENCY);
      008542 4B 00            [ 1]  234 	push	#0x00
      008544 4B F4            [ 1]  235 	push	#0xf4
      008546 4B 01            [ 1]  236 	push	#0x01
      008548 4B 00            [ 1]  237 	push	#0x00
      00854A 1E 0E            [ 2]  238 	ldw	x, (0x0e, sp)
      00854C 89               [ 2]  239 	pushw	x
      00854D 1E 0E            [ 2]  240 	ldw	x, (0x0e, sp)
      00854F 89               [ 2]  241 	pushw	x
      008550 CD 84 62         [ 4]  242 	call	_awu_get_timebase
      008553 5B 08            [ 2]  243 	addw	sp, #8
      008555 6B 01            [ 1]  244 	ld	(0x01, sp), a
                                    245 ;	HAL/src/util.c: 57: uint8_t apr = ((((float)time) / 1e6) * LSI_FREQUENCY) / (1 << (tbr - 1));
      008557 1E 0A            [ 2]  246 	ldw	x, (0x0a, sp)
      008559 89               [ 2]  247 	pushw	x
      00855A 1E 0A            [ 2]  248 	ldw	x, (0x0a, sp)
      00855C 89               [ 2]  249 	pushw	x
      00855D CD 87 DD         [ 4]  250 	call	___ulong2fs
      008560 5B 04            [ 2]  251 	addw	sp, #4
      008562 4B 00            [ 1]  252 	push	#0x00
      008564 4B 24            [ 1]  253 	push	#0x24
      008566 4B 74            [ 1]  254 	push	#0x74
      008568 4B 49            [ 1]  255 	push	#0x49
      00856A 89               [ 2]  256 	pushw	x
      00856B 90 89            [ 2]  257 	pushw	y
      00856D CD 8A DD         [ 4]  258 	call	___fsdiv
      008570 5B 08            [ 2]  259 	addw	sp, #8
      008572 4B 00            [ 1]  260 	push	#0x00
      008574 4B 00            [ 1]  261 	push	#0x00
      008576 4B FA            [ 1]  262 	push	#0xfa
      008578 4B 47            [ 1]  263 	push	#0x47
      00857A 89               [ 2]  264 	pushw	x
      00857B 90 89            [ 2]  265 	pushw	y
      00857D CD 85 FB         [ 4]  266 	call	___fsmul
      008580 5B 08            [ 2]  267 	addw	sp, #8
      008582 1F 04            [ 2]  268 	ldw	(0x04, sp), x
      008584 17 02            [ 2]  269 	ldw	(0x02, sp), y
      008586 7B 01            [ 1]  270 	ld	a, (0x01, sp)
      008588 4A               [ 1]  271 	dec	a
      008589 5F               [ 1]  272 	clrw	x
      00858A 5C               [ 1]  273 	incw	x
      00858B 4D               [ 1]  274 	tnz	a
      00858C 27 04            [ 1]  275 	jreq	00127$
      00858E                        276 00126$:
      00858E 58               [ 2]  277 	sllw	x
      00858F 4A               [ 1]  278 	dec	a
      008590 26 FC            [ 1]  279 	jrne	00126$
      008592                        280 00127$:
      008592 89               [ 2]  281 	pushw	x
      008593 CD 88 FF         [ 4]  282 	call	___sint2fs
      008596 5B 02            [ 2]  283 	addw	sp, #2
      008598 89               [ 2]  284 	pushw	x
      008599 90 89            [ 2]  285 	pushw	y
      00859B 1E 08            [ 2]  286 	ldw	x, (0x08, sp)
      00859D 89               [ 2]  287 	pushw	x
      00859E 1E 08            [ 2]  288 	ldw	x, (0x08, sp)
      0085A0 89               [ 2]  289 	pushw	x
      0085A1 CD 8A DD         [ 4]  290 	call	___fsdiv
      0085A4 5B 08            [ 2]  291 	addw	sp, #8
      0085A6 89               [ 2]  292 	pushw	x
      0085A7 90 89            [ 2]  293 	pushw	y
      0085A9 CD 8B 6E         [ 4]  294 	call	___fs2uchar
      0085AC 5B 04            [ 2]  295 	addw	sp, #4
                                    296 ;	HAL/src/util.c: 58: awu_set_regs(tbr, apr - 2);
      0085AE A0 02            [ 1]  297 	sub	a, #0x02
      0085B0 88               [ 1]  298 	push	a
      0085B1 7B 02            [ 1]  299 	ld	a, (0x02, sp)
      0085B3 88               [ 1]  300 	push	a
      0085B4 CD 85 07         [ 4]  301 	call	_awu_set_regs
      0085B7 85               [ 2]  302 	popw	x
      0085B8 20 3E            [ 2]  303 	jra	00107$
                                    304 ;	HAL/src/util.c: 63: while (time > (uint32_t)(1e6 * (uint32_t)2048 * 128 / (float)LSI_FREQUENCY))
      0085BA                        305 00111$:
      0085BA 16 08            [ 2]  306 	ldw	y, (0x08, sp)
      0085BC 17 02            [ 2]  307 	ldw	(0x02, sp), y
      0085BE 1E 0A            [ 2]  308 	ldw	x, (0x0a, sp)
      0085C0                        309 00101$:
      0085C0 4F               [ 1]  310 	clr	a
      0085C1 89               [ 2]  311 	pushw	x
      0085C2 11 02            [ 1]  312 	cp	a, (2, sp)
      0085C4 85               [ 2]  313 	popw	x
      0085C5 A6 40            [ 1]  314 	ld	a, #0x40
      0085C7 89               [ 2]  315 	pushw	x
      0085C8 12 01            [ 1]  316 	sbc	a, (1, sp)
      0085CA 85               [ 2]  317 	popw	x
      0085CB A6 1F            [ 1]  318 	ld	a, #0x1f
      0085CD 12 03            [ 1]  319 	sbc	a, (0x03, sp)
      0085CF 4F               [ 1]  320 	clr	a
      0085D0 12 02            [ 1]  321 	sbc	a, (0x02, sp)
      0085D2 24 1B            [ 1]  322 	jrnc	00103$
                                    323 ;	HAL/src/util.c: 65: awu_set_regs(13, 62);
      0085D4 89               [ 2]  324 	pushw	x
      0085D5 4B 3E            [ 1]  325 	push	#0x3e
      0085D7 4B 0D            [ 1]  326 	push	#0x0d
      0085D9 CD 85 07         [ 4]  327 	call	_awu_set_regs
      0085DC 85               [ 2]  328 	popw	x
      0085DD 85               [ 2]  329 	popw	x
                                    330 ;	HAL/src/util.c: 66: time -= (uint32_t)(mul * 1e6 / LSI_FREQUENCY);
      0085DE 1D 40 00         [ 2]  331 	subw	x, #0x4000
      0085E1 7B 03            [ 1]  332 	ld	a, (0x03, sp)
      0085E3 A2 1F            [ 1]  333 	sbc	a, #0x1f
      0085E5 6B 03            [ 1]  334 	ld	(0x03, sp), a
      0085E7 7B 02            [ 1]  335 	ld	a, (0x02, sp)
      0085E9 A2 00            [ 1]  336 	sbc	a, #0x00
      0085EB 6B 02            [ 1]  337 	ld	(0x02, sp), a
      0085ED 20 D1            [ 2]  338 	jra	00101$
      0085EF                        339 00103$:
                                    340 ;	HAL/src/util.c: 68: awu_sleep(time);
      0085EF 89               [ 2]  341 	pushw	x
      0085F0 1E 04            [ 2]  342 	ldw	x, (0x04, sp)
      0085F2 89               [ 2]  343 	pushw	x
      0085F3 CD 85 31         [ 4]  344 	call	_awu_sleep
      0085F6 5B 04            [ 2]  345 	addw	sp, #4
      0085F8                        346 00107$:
                                    347 ;	HAL/src/util.c: 70: }
      0085F8 5B 05            [ 2]  348 	addw	sp, #5
      0085FA 81               [ 4]  349 	ret
                                    350 	.area CODE
                                    351 	.area CONST
                                    352 	.area INITIALIZER
                                    353 	.area CABS (ABS)
