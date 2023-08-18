
;-------------------------------------------------------------------------------
;	Internal RAM layout
;-------------------------------------------------------------------------------

0x00: |0|0|0|0|0|0|0|0| | | | | | | | |
0x10: | | | | | | | | | | | | | | | | |
0x20: | | | | | | |B| |B| | | | | | | |
0x30: |d|d|d|d|d|d|d|d|d|d|d|d|d|d|d|d|
0x40: |d|d|d|d|d|d|d|d|d|d|d|d|d|d|d|d|
0x50: |d|d|d|d|d|d|d|d|d|d|d|d|d|d|d|d|
0x60: |d|d|S|S|S|S|S|S|S|S|S|S|S|S|S|S|
0x70: |S|S|S|S|S|S|S|S|S|S|S|S|S|S|S|S|
0x80: |S|S|S|S|S|S|S|S|S|S|S|S|S|S|S|S|
0x90: |S|S|S|S|S|S|S|S|S|S|S|S|S|S|S|S|
0xA0: |S|S|S|S|S|S|S|S|S|S|S|S|S|S|S|S|
0xB0: |S|S|S|S|S|S|S|S|S|S|S|S|S|S|S|S|
0xC0: |S|S|S|S|S|S|S|S|S|S|S|S|S|S|S|S|
0xD0: |S|S|S|S|S|S|S|S|S|S|S|S|S|S|S|S|
0xE0: |S|S|S|S|S|S|S|S|S|S|S|S|S|S|S|S|
0xF0: |S|S|S|S|S|S|S|S|S|S|S|S|S|S|S|S|

0-3:Register Banks, B:Bits, d:Data, I:iRAM, S:Stack

;-------------------------------------------------------------------------------
;	Public labels
;-------------------------------------------------------------------------------

0x0006:	System_init					(calls:   0, jumps:   1)
0x0062:	Function_000					(calls:   1, jumps:   0)
0x007B:	Int0_interrupt					(calls:   0, jumps:   1)
0x0095:	Function_001					(calls:   2, jumps:   0)
0x00B2:	Function_002					(calls:   4, jumps:   0)
0x00CF:	Function_003					(calls:   1, jumps:   0)
0x023A:	Function_004					(calls:   1, jumps:   0)
0x0262:	Function_005					(calls:  18, jumps:   1)
0x026F:	Function_006					(calls:   1, jumps:   0)
0x0285:	Function_007					(calls:   2, jumps:   1)
0x029F:	Function_008					(calls:   2, jumps:   0)
0x02B6:	Function_009					(calls:   1, jumps:   0)
0x0300:	Function_010					(calls:   1, jumps:   1)
0x0AE8:	Function_011					(calls:   1, jumps:   0)
0x0B00:	Function_012					(calls:   2, jumps:   0)
0x0B1D:	Function_013					(calls:   5, jumps:   0)
0x0B39:	Function_014					(calls:   1, jumps:   0)

;-------------------------------------------------------------------------------
;	SFR registers
;-------------------------------------------------------------------------------

0x80:	P0						(not used)
0x81:	SP						(used   9 times)
0x82:	DPL						(used  62 times)
0x83:	DPH						(used  22 times)
0x87:	PCON						(used   1 times)
0x88:	TCON						(not used)
0x89:	TMOD						(not used)
0x8A:	TL0						(not used)
0x8B:	TL1						(not used)
0x8C:	TH0						(not used)
0x8D:	TH1						(not used)
0x90:	P1						(not used)
0x92:							(used  17 times)
0x95:							(used   6 times)
0x98:	SCON						(not used)
0x99:	SBUF						(used   1 times)
0x9A:							(used   1 times)
0x9B:							(used   1 times)
0x9C:							(used   4 times)
0xA0:	P2						(used   4 times)
0xA4:							(used   2 times)
0xA8:	IE						(not used)
0xAC:							(used  52 times)
0xB0:	P3						(not used)
0xB1:							(used   3 times)
0xB2:							(used   2 times)
0xB3:							(used   4 times)
0xB4:							(used   7 times)
0xB5:							(used   3 times)
0xB8:	IP						(not used)
0xB9:							(used   5 times)
0xC8:	T2CON						(not used)
0xCA:	RCAP2L						(not used)
0xCB:	RCAP2H						(not used)
0xCC:	TL2						(not used)
0xCD:	TH2						(not used)
0xD0:	PSW						(not used)
0xE0:	ACC						(used   4 times)
0xE2:							(used   2 times)
0xE3:							(used   2 times)
0xE4:							(used   2 times)
0xE5:							(used   4 times)
0xE6:							(used   4 times)
0xE7:							(used   4 times)
0xF0:	B						(used  15 times)

;-------------------------------------------------------------------------------
;	Special function bits
;-------------------------------------------------------------------------------

0x80:	P0_0						(not used)
0x81:	P0_1						(not used)
0x82:	P0_2						(not used)
0x83:	P0_3						(not used)
0x84:	P0_4						(not used)
0x85:	P0_5						(not used)
0x86:	P0_6						(not used)
0x87:	P0_7						(not used)
0x88:	IT0						(not used)
0x89:	IE0						(not used)
0x8A:	IT1						(not used)
0x8B:	IE1						(not used)
0x8C:	TR0						(not used)
0x8D:	TF0						(not used)
0x8E:	TR1						(not used)
0x8F:	TF1						(not used)
0x90:	P1_0						(not used)
0x91:	P1_1						(not used)
0x92:	P1_2						(not used)
0x93:	P1_3						(not used)
0x94:	P1_4						(not used)
0x95:	P1_5						(not used)
0x96:	P1_6						(not used)
0x97:	P1_7						(not used)
0x98:	RI						(not used)
0x99:	TI						(used   2 times)
0x9A:	RB8						(not used)
0x9B:	TB8						(not used)
0x9C:	REN						(used   2 times)
0x9D:	SM2						(not used)
0x9E:	SM1						(used   1 times)
0x9F:	SM0						(used   1 times)
0xA0:	P2_0						(not used)
0xA1:	P2_1						(not used)
0xA2:	P2_2						(not used)
0xA3:	P2_3						(not used)
0xA4:	P2_4						(not used)
0xA5:	P2_5						(not used)
0xA6:	P2_6						(not used)
0xA7:	P2_7						(not used)
0xA8:	EX0						(not used)
0xA9:	ET0						(not used)
0xAA:	EX1						(not used)
0xAB:	ET1						(not used)
0xAC:	ES						(used   3 times)
0xAD:	ET2						(not used)
0xAF:	EA						(not used)
0xB0:	RXD						(not used)
0xB1:	TXD						(not used)
0xB2:	INT0						(not used)
0xB3:	INT1						(not used)
0xB4:	T0						(not used)
0xB5:	T1						(not used)
0xB6:	WR						(not used)
0xB7:	RD						(not used)
0xB8:	PX0						(not used)
0xB9:	PT0						(not used)
0xBA:	PX1						(not used)
0xBB:	PT1						(not used)
0xBC:	PS						(not used)
0xBD:	PT2						(not used)
0xC8:	CP_RL2						(not used)
0xC9:	C_T2						(not used)
0xCA:	TR2						(not used)
0xCB:	EXEN2						(not used)
0xCC:	TCLK						(not used)
0xCD:	RCLK						(not used)
0xCE:	EXF2						(not used)
0xCF:	TF2						(not used)
0xD0:	P						(not used)
0xD1:	F1						(not used)
0xD2:	OV						(not used)
0xD3:	RS0						(not used)
0xD4:	RS1						(not used)
0xD5:	F0						(not used)
0xD6:	AC						(not used)
0xD7:	CY						(not used)
0xE7:							(used   1 times)
0xF5:							(used   1 times)
0xF6:							(used   1 times)
0xF7:							(used   1 times)

;-------------------------------------------------------------------------------
;	Overlayable register banks
;-------------------------------------------------------------------------------

0x00:	REG_BANK_0

;-------------------------------------------------------------------------------
;	Internal RAM data
;-------------------------------------------------------------------------------

0x01:	variable_0x01					(used   7 times)
0x02:	variable_0x02					(used  26 times)
0x03:	variable_0x03					(used  25 times)
0x04:	variable_0x04					(used  39 times)
0x05:	variable_0x05					(used  37 times)
0x06:	variable_0x06					(used  38 times)
0x07:	variable_0x07					(used   4 times)
0x30:	variable_0x30					(used   1 times)
0x31:	variable_0x31					(used   3 times)
0x32:	variable_0x32					(used   2 times)
0x33:	variable_0x33					(used   2 times)
0x34:	variable_0x34					(used   2 times)
0x35:	variable_0x35					(used   2 times)
0x36:	variable_0x36					(used   2 times)
0x37:	variable_0x37					(used  22 times)
0x38:	variable_0x38					(used  21 times)
0x39:	variable_0x39					(used  20 times)
0x3A:	variable_0x3A					(used  12 times)
0x3B:	variable_0x3B					(used   8 times)
0x3C:	variable_0x3C					(used   4 times)
0x3D:	variable_0x3D					(used   3 times)
0x3E:	variable_0x3E					(used   3 times)
0x3F:	variable_0x3F					(used   3 times)
0x40:	variable_0x40					(used   3 times)
0x41:	variable_0x41					(used   6 times)
0x42:	variable_0x42					(used   6 times)
0x43:	variable_0x43					(used   6 times)
0x44:	variable_0x44					(used  18 times)
0x45:	variable_0x45					(used   3 times)
0x46:	variable_0x46					(used   3 times)
0x47:	variable_0x47					(used   3 times)
0x48:	variable_0x48					(used   7 times)
0x49:	variable_0x49					(used   9 times)
0x4A:	variable_0x4A					(used   9 times)
0x4B:	variable_0x4B					(used   7 times)
0x4C:	variable_0x4C					(used   6 times)
0x4D:	variable_0x4D					(used   2 times)
0x4E:	variable_0x4E					(used   4 times)
0x4F:	variable_0x4F					(used   2 times)
0x50:	variable_0x50					(used  23 times)
0x51:	variable_0x51					(used  20 times)
0x52:	variable_0x52					(used  19 times)
0x53:	variable_0x53					(used  16 times)
0x54:	variable_0x54					(used  12 times)
0x55:	variable_0x55					(used  30 times)
0x56:	variable_0x56					(used  28 times)
0x57:	variable_0x57					(used  13 times)
0x58:	variable_0x58					(used  33 times)
0x59:	variable_0x59					(used  24 times)
0x5A:	variable_0x5A					(used  37 times)
0x5B:	variable_0x5B					(used  31 times)
0x5C:	variable_0x5C					(used  17 times)
0x5D:	variable_0x5D					(used  14 times)
0x5E:	variable_0x5E					(used   7 times)
0x5F:	variable_0x5F					(used  10 times)
0x60:	variable_0x60					(used   5 times)
0x61:	variable_0x61					(used   3 times)

;-------------------------------------------------------------------------------
;	bit data
;-------------------------------------------------------------------------------

0x31:	bit_0x31					(used   1 times)
0x46:	bit_0x46					(used   1 times)

;-------------------------------------------------------------------------------
;	Stack: start=0x62, size=158 bytes
;-------------------------------------------------------------------------------

;-------------------------------------------------------------------------------
;	Indirectly addressable internal RAM data
;-------------------------------------------------------------------------------

0xFF:	iram_0xFF					(used   1 times)

;-------------------------------------------------------------------------------
;	External RAM data
;-------------------------------------------------------------------------------

0x0000:	xram_0x0000					(used   3 times)

;-------------------------------------------------------------------------------

0x0000: 02 00 06	ljmp	System_init				; Jumps (forward) hither: 0x0006

Label_000:

0x0003: 02 00 7B	ljmp	Int0_interrupt				; Jumps (forward) hither: 0x007B

;-------------------------------------------------------------------------------

System_init:

0x0006: 75 81 61	mov	SP, #0x61				; SP = 0x61 {'a'}
0x0009: 12 0B 39	lcall	Function_014				; Calls (forward) this: 0x0B39 (PC += 3, [++SP] = PCL, [++SP] = PCH, PC = 0x0B39)
0x000C: E5 82		mov	A, DPL					; ACC = DPL
0x000E: 60 03		jz	Label_001				; If (ACC == 0) then jumps (forward) hither: 0x0013

0x0010: 02 00 03	ljmp	Label_000				; Jumps (backward) hither: 0x0003

Label_001:

0x0013: 79 00		mov	R1, #0x00				; R1 = 0x00 {'\0'}
0x0015: E9		mov	A, R1					; ACC = R1
0x0016: 44 00		orl	A, #0x00				; ACC |= 0x00 {'\0'}
0x0018: 60 1B		jz	Label_004				; If (ACC == 0) then jumps (forward) hither: 0x0035

0x001A: 7A 00		mov	R2, #0x00				; R2 = 0x00 {'\0'}
0x001C: 90 0B 4B	mov	DPTR, #0x0B4B				; DPTR = 0x0B4B
0x001F: 78 00		mov	R0, #0x00				; R0 = 0x00 {'\0'}
0x0021: 75 A0 00	mov	P2, #0x00				; P2 = 0x00 {'\0'}

Label_002:

0x0024: E4		clr	A					; ACC = 0
0x0025: 93		movc	A, @A+DPTR				; ACC = ROM[DPTR + ACC]
0x0026: F2		movx	@R0, A					; XRAM[R0] = ACC
0x0027: A3		inc	DPTR					; ++DPTR
0x0028: 08		inc	R0					; ++R0
0x0029: B8 00 02	cjne	R0, #0x00, Label_003			; If (R0 != 0x00 {'\0'}) then jumps (forward) hither: 0x002E

0x002C: 05 A0		inc	P2					; ++P2

Label_003:

0x002E: D9 F4		djnz	R1, Label_002				; If (--R1 != 0) then jumps (backward) hither: 0x0024

0x0030: DA F2		djnz	R2, Label_002				; If (--R2 != 0) then jumps (backward) hither: 0x0024

0x0032: 75 A0 FF	mov	P2, #0xFF				; P2 = 0xFF

Label_004:

0x0035: E4		clr	A					; ACC = 0
0x0036: 78 FF		mov	R0, #0xFF				; R0 = 0xFF

Label_005:

0x0038: F6		mov	@R0, A					; [R0] = ACC
0x0039: D8 FD		djnz	R0, Label_005				; If (--R0 != 0) then jumps (backward) hither: 0x0038

0x003B: 78 00		mov	R0, #0x00				; R0 = 0x00 {'\0'}
0x003D: E8		mov	A, R0					; ACC = R0
0x003E: 44 00		orl	A, #0x00				; ACC |= 0x00 {'\0'}
0x0040: 60 0A		jz	Label_007				; If (ACC == 0) then jumps (forward) hither: 0x004C

0x0042: 79 00		mov	R1, #0x00				; R1 = 0x00 {'\0'}
0x0044: 75 A0 00	mov	P2, #0x00				; P2 = 0x00 {'\0'}
0x0047: E4		clr	A					; ACC = 0

Label_006:

0x0048: F3		movx	@R1, A					; XRAM[R1] = ACC
0x0049: 09		inc	R1					; ++R1
0x004A: D8 FC		djnz	R0, Label_006				; If (--R0 != 0) then jumps (backward) hither: 0x0048

Label_007:

0x004C: 78 00		mov	R0, #0x00				; R0 = 0x00 {'\0'}
0x004E: E8		mov	A, R0					; ACC = R0
0x004F: 44 00		orl	A, #0x00				; ACC |= 0x00 {'\0'}
0x0051: 60 0C		jz	Label_009				; If (ACC == 0) then jumps (forward) hither: 0x005F

0x0053: 79 00		mov	R1, #0x00				; R1 = 0x00 {'\0'}
0x0055: 90 00 00	mov	DPTR, #0x0000				; DPTR = 0x0000
0x0058: E4		clr	A					; ACC = 0

Label_008:

0x0059: F0		movx	@DPTR, A				; XRAM[DPTR] = ACC
0x005A: A3		inc	DPTR					; ++DPTR
0x005B: D8 FC		djnz	R0, Label_008				; If (--R0 != 0) then jumps (backward) hither: 0x0059

0x005D: D9 FA		djnz	R1, Label_008				; If (--R1 != 0) then jumps (backward) hither: 0x0059

Label_009:

0x005F: 02 00 03	ljmp	Label_000				; Jumps (backward) hither: 0x0003

;-------------------------------------------------------------------------------

Function_000:

0x0062: AE 82		mov	R6, DPL					; R6 = DPL
0x0064: A2 AC		mov	C, ES					; CY = ES
0x0066: E4		clr	A					; ACC = 0
0x0067: 33		rlc	A					; ACC[76543210] = ACC[6543210C], CY = ACC[7]
0x0068: FD		mov	R5, A					; R5 = ACC
0x0069: C2 AC		clr	ES					; ES = L
0x006B: 8E 99		mov	SBUF, R6				; SBUF = R6

Label_010:

0x006D: 10 99 02	jbc	TI, Label_011				; If (TI == H) then TI = L and jumps (forward) hither: 0x0072

0x0070: 80 FB		sjmp	Label_010				; Jumps (backward) hither: 0x006D

Label_011:

0x0072: ED		mov	A, R5					; ACC = R5
0x0073: 24 FF		add	A, #0xFF				; ACC += 0xFF
0x0075: 92 AC		mov	ES, C					; ES = CY
0x0077: 90 00 00	mov	DPTR, #0x0000				; DPTR = 0x0000
0x007A: 22		ret						; PCH = [SP--], PCL = [SP--]

;-------------------------------------------------------------------------------

Int0_interrupt:

0x007B: 12 00 CF	lcall	Function_003				; Calls (forward) this: 0x00CF (PC += 3, [++SP] = PCL, [++SP] = PCH, PC = 0x00CF)

Label_012:

0x007E: 74 3D		mov	A, #0x3D				; ACC = 0x3D {'='}
0x0080: C0 E0		push	ACC					; ++SP, [SP] = ACC
0x0082: 74 0B		mov	A, #0x0B				; ACC = 0x0B
0x0084: C0 E0		push	ACC					; ++SP, [SP] = ACC
0x0086: 74 80		mov	A, #0x80				; ACC = 0x80
0x0088: C0 E0		push	ACC					; ++SP, [SP] = ACC
0x008A: 12 02 3A	lcall	Function_004				; Calls (forward) this: 0x023A (PC += 3, [++SP] = PCL, [++SP] = PCH, PC = 0x023A)
0x008D: 15 81		dec	SP					; --SP
0x008F: 15 81		dec	SP					; --SP
0x0091: 15 81		dec	SP					; --SP
0x0093: 80 E9		sjmp	Label_012				; Jumps (backward) hither: 0x007E

;-------------------------------------------------------------------------------

Function_001:

0x0095: AF 82		mov	R7, DPL					; R7 = DPL
0x0097: 43 E7 80	orl	0xE7, #0x80				; [0xE7] |= 0x80
0x009A: 75 E5 04	mov	0xE5, #0x04				; [0xE5] = 0x04
0x009D: 75 E3 00	mov	0xE3, #0x00				; [0xE3] = 0x00 {'\0'}
0x00A0: 8F E4		mov	0xE4, R7				; [0xE4] = R7
0x00A2: 85 5F E2	mov	0xE2, 0x5F				; [0xE2] = [0x5F]
0x00A5: 75 E6 46	mov	0xE6, #0x46				; [0xE6] = 0x46 {'F'}
0x00A8: 75 E6 B9	mov	0xE6, #0xB9				; [0xE6] = 0xB9
0x00AB: 75 E5 00	mov	0xE5, #0x00				; [0xE5] = 0x00 {'\0'}
0x00AE: 53 E7 7F	anl	0xE7, #0x7F				; [0xE7] &= 0x7F {'^?'}
0x00B1: 22		ret						; PCH = [SP--], PCL = [SP--]

;-------------------------------------------------------------------------------

Function_002:

0x00B2: AF 82		mov	R7, DPL					; R7 = DPL
0x00B4: 43 E7 80	orl	0xE7, #0x80				; [0xE7] |= 0x80
0x00B7: 75 E5 05	mov	0xE5, #0x05				; [0xE5] = 0x05
0x00BA: 75 E3 00	mov	0xE3, #0x00				; [0xE3] = 0x00 {'\0'}
0x00BD: 8F E4		mov	0xE4, R7				; [0xE4] = R7
0x00BF: 75 E6 46	mov	0xE6, #0x46				; [0xE6] = 0x46 {'F'}
0x00C2: 75 E6 B9	mov	0xE6, #0xB9				; [0xE6] = 0xB9
0x00C5: 75 E5 00	mov	0xE5, #0x00				; [0xE5] = 0x00 {'\0'}
0x00C8: 53 E7 7F	anl	0xE7, #0x7F				; [0xE7] &= 0x7F {'^?'}
0x00CB: 85 E2 82	mov	DPL, 0xE2				; DPL = [0xE2]
0x00CE: 22		ret						; PCH = [SP--], PCL = [SP--]

;-------------------------------------------------------------------------------

Function_003:

0x00CF: 75 82 48	mov	DPL, #0x48				; DPL = 0x48 {'H'}
0x00D2: 12 00 B2	lcall	Function_002				; Calls (backward) this: 0x00B2 (PC += 3, [++SP] = PCL, [++SP] = PCH, PC = 0x00B2)
0x00D5: E5 82		mov	A, DPL					; ACC = DPL
0x00D7: 54 DF		anl	A, #0xDF				; ACC &= 0xDF
0x00D9: F5 5F		mov	0x5F, A					; [0x5F] = ACC
0x00DB: 75 82 48	mov	DPL, #0x48				; DPL = 0x48 {'H'}
0x00DE: 12 00 95	lcall	Function_001				; Calls (backward) this: 0x0095 (PC += 3, [++SP] = PCL, [++SP] = PCH, PC = 0x0095)
0x00E1: 75 82 48	mov	DPL, #0x48				; DPL = 0x48 {'H'}
0x00E4: 12 00 B2	lcall	Function_002				; Calls (backward) this: 0x00B2 (PC += 3, [++SP] = PCL, [++SP] = PCH, PC = 0x00B2)
0x00E7: E5 82		mov	A, DPL					; ACC = DPL
0x00E9: 54 BF		anl	A, #0xBF				; ACC &= 0xBF
0x00EB: F5 5F		mov	0x5F, A					; [0x5F] = ACC
0x00ED: 75 82 48	mov	DPL, #0x48				; DPL = 0x48 {'H'}
0x00F0: 12 00 95	lcall	Function_001				; Calls (backward) this: 0x0095 (PC += 3, [++SP] = PCL, [++SP] = PCH, PC = 0x0095)
0x00F3: 75 82 4C	mov	DPL, #0x4C				; DPL = 0x4C {'L'}
0x00F6: 12 00 B2	lcall	Function_002				; Calls (backward) this: 0x00B2 (PC += 3, [++SP] = PCL, [++SP] = PCH, PC = 0x00B2)
0x00F9: 75 82 4C	mov	DPL, #0x4C				; DPL = 0x4C {'L'}
0x00FC: 12 00 B2	lcall	Function_002				; Calls (backward) this: 0x00B2 (PC += 3, [++SP] = PCL, [++SP] = PCH, PC = 0x00B2)
0x00FF: C0 AC		push	0xAC					; ++SP, [SP] = [0xAC]
0x0101: 75 AC 00	mov	0xAC, #0x00				; [0xAC] = 0x00 {'\0'}
0x0104: 53 95 EB	anl	0x95, #0xEB				; [0x95] &= 0xEB
0x0107: 85 95 95	mov	0x95, 0x95				; [0x95] = [0x95]
0x010A: 75 AC 01	mov	0xAC, #0x01				; [0xAC] = 0x01
0x010D: 53 92 EB	anl	0x92, #0xEB				; [0x92] &= 0xEB
0x0110: 43 92 14	orl	0x92, #0x14				; [0x92] |= 0x14
0x0113: D0 AC		pop	0xAC					; [0xAC] = [SP], --SP
0x0115: C0 AC		push	0xAC					; ++SP, [SP] = [0xAC]
0x0117: 75 AC 00	mov	0xAC, #0x00				; [0xAC] = 0x00 {'\0'}
0x011A: 53 95 EB	anl	0x95, #0xEB				; [0x95] &= 0xEB
0x011D: 85 95 95	mov	0x95, 0x95				; [0x95] = [0x95]
0x0120: 75 AC 01	mov	0xAC, #0x01				; [0xAC] = 0x01
0x0123: 53 92 EB	anl	0x92, #0xEB				; [0x92] &= 0xEB
0x0126: 43 92 14	orl	0x92, #0x14				; [0x92] |= 0x14
0x0129: D0 AC		pop	0xAC					; [0xAC] = [SP], --SP
0x012B: 53 B1 FC	anl	0xB1, #0xFC				; [0xB1] &= 0xFC
0x012E: 85 B1 B1	mov	0xB1, 0xB1				; [0xB1] = [0xB1]
0x0131: 53 B2 FC	anl	0xB2, #0xFC				; [0xB2] &= 0xFC
0x0134: 43 B2 38	orl	0xB2, #0x38				; [0xB2] |= 0x38 {'8'}
0x0137: C0 AC		push	0xAC					; ++SP, [SP] = [0xAC]
0x0139: 75 AC 00	mov	0xAC, #0x00				; [0xAC] = 0x00 {'\0'}
0x013C: 85 B3 B3	mov	0xB3, 0xB3				; [0xB3] = [0xB3]
0x013F: 85 B3 B3	mov	0xB3, 0xB3				; [0xB3] = [0xB3]
0x0142: 75 AC 02	mov	0xAC, #0x02				; [0xAC] = 0x02
0x0145: 85 92 92	mov	0x92, 0x92				; [0x92] = [0x92]
0x0148: 43 92 01	orl	0x92, #0x01				; [0x92] |= 0x01
0x014B: D0 AC		pop	0xAC					; [0xAC] = [SP], --SP
0x014D: C0 AC		push	0xAC					; ++SP, [SP] = [0xAC]
0x014F: 75 AC 01	mov	0xAC, #0x01				; [0xAC] = 0x01
0x0152: 53 B5 FC	anl	0xB5, #0xFC				; [0xB5] &= 0xFC
0x0155: 85 B5 B5	mov	0xB5, 0xB5				; [0xB5] = [0xB5]
0x0158: 75 AC 03	mov	0xAC, #0x03				; [0xAC] = 0x03
0x015B: 53 92 FC	anl	0x92, #0xFC				; [0x92] &= 0xFC
0x015E: 43 92 03	orl	0x92, #0x03				; [0x92] |= 0x03
0x0161: D0 AC		pop	0xAC					; [0xAC] = [SP], --SP
0x0163: C0 AC		push	0xAC					; ++SP, [SP] = [0xAC]
0x0165: 75 AC 02	mov	0xAC, #0x02				; [0xAC] = 0x02
0x0168: 43 B4 04	orl	0xB4, #0x04				; [0xB4] |= 0x04
0x016B: D0 AC		pop	0xAC					; [0xAC] = [SP], --SP
0x016D: C0 AC		push	0xAC					; ++SP, [SP] = [0xAC]
0x016F: 75 AC 02	mov	0xAC, #0x02				; [0xAC] = 0x02
0x0172: 43 B4 08	orl	0xB4, #0x08				; [0xB4] |= 0x08 {'\b'}
0x0175: D0 AC		pop	0xAC					; [0xAC] = [SP], --SP
0x0177: C0 AC		push	0xAC					; ++SP, [SP] = [0xAC]
0x0179: 75 AC 02	mov	0xAC, #0x02				; [0xAC] = 0x02
0x017C: 43 B4 10	orl	0xB4, #0x10				; [0xB4] |= 0x10
0x017F: D0 AC		pop	0xAC					; [0xAC] = [SP], --SP
0x0181: C0 AC		push	0xAC					; ++SP, [SP] = [0xAC]
0x0183: 75 AC 02	mov	0xAC, #0x02				; [0xAC] = 0x02
0x0186: 43 B4 20	orl	0xB4, #0x20				; [0xB4] |= 0x20 {' '}
0x0189: D0 AC		pop	0xAC					; [0xAC] = [SP], --SP
0x018B: C0 AC		push	0xAC					; ++SP, [SP] = [0xAC]
0x018D: 75 AC 02	mov	0xAC, #0x02				; [0xAC] = 0x02
0x0190: 43 B4 40	orl	0xB4, #0x40				; [0xB4] |= 0x40 {'@'}
0x0193: D0 AC		pop	0xAC					; [0xAC] = [SP], --SP
0x0195: C0 AC		push	0xAC					; ++SP, [SP] = [0xAC]
0x0197: 75 AC 02	mov	0xAC, #0x02				; [0xAC] = 0x02
0x019A: 43 B4 80	orl	0xB4, #0x80				; [0xB4] |= 0x80
0x019D: D0 AC		pop	0xAC					; [0xAC] = [SP], --SP
0x019F: C0 AC		push	0xAC					; ++SP, [SP] = [0xAC]
0x01A1: 75 AC 03	mov	0xAC, #0x03				; [0xAC] = 0x03
0x01A4: 43 B4 02	orl	0xB4, #0x02				; [0xB4] |= 0x02
0x01A7: D0 AC		pop	0xAC					; [0xAC] = [SP], --SP
0x01A9: C0 AC		push	0xAC					; ++SP, [SP] = [0xAC]
0x01AB: 75 AC 08	mov	0xAC, #0x08				; [0xAC] = 0x08 {'\b'}
0x01AE: 85 92 92	mov	0x92, 0x92				; [0x92] = [0x92]
0x01B1: D0 AC		pop	0xAC					; [0xAC] = [SP], --SP
0x01B3: C0 AC		push	0xAC					; ++SP, [SP] = [0xAC]
0x01B5: 75 AC 09	mov	0xAC, #0x09				; [0xAC] = 0x09 {'\t'}
0x01B8: 85 92 92	mov	0x92, 0x92				; [0x92] = [0x92]
0x01BB: D0 AC		pop	0xAC					; [0xAC] = [SP], --SP
0x01BD: C0 AC		push	0xAC					; ++SP, [SP] = [0xAC]
0x01BF: 75 AC 07	mov	0xAC, #0x07				; [0xAC] = 0x07 {'\a'}
0x01C2: 85 92 92	mov	0x92, 0x92				; [0x92] = [0x92]
0x01C5: D0 AC		pop	0xAC					; [0xAC] = [SP], --SP
0x01C7: C0 AC		push	0xAC					; ++SP, [SP] = [0xAC]
0x01C9: 75 AC 0A	mov	0xAC, #0x0A				; [0xAC] = 0x0A {'\n'}
0x01CC: 85 92 92	mov	0x92, 0x92				; [0x92] = [0x92]
0x01CF: D0 AC		pop	0xAC					; [0xAC] = [SP], --SP
0x01D1: 02 01 D4	ljmp	Label_013				; Jumps (forward) hither: 0x01D4

Label_013:

0x01D4: C2 9C		clr	REN					; REN = L
0x01D6: 75 AC 00	mov	0xAC, #0x00				; [0xAC] = 0x00 {'\0'}
0x01D9: 53 9C EF	anl	0x9C, #0xEF				; [0x9C] &= 0xEF
0x01DC: C2 9F		clr	SM0					; SM0 = L
0x01DE: D2 9E		setb	SM1					; SM1 = H
0x01E0: 53 9C F7	anl	0x9C, #0xF7				; [0x9C] &= 0xF7
0x01E3: 43 9C 40	orl	0x9C, #0x40				; [0x9C] |= 0x40 {'@'}
0x01E6: 53 87 7F	anl	PCON, #0x7F				; PCON &= 0x7F {'^?'}
0x01E9: 43 9C 01	orl	0x9C, #0x01				; [0x9C] |= 0x01
0x01EC: 43 B9 40	orl	0xB9, #0x40				; [0xB9] |= 0x40 {'@'}
0x01EF: 43 B9 10	orl	0xB9, #0x10				; [0xB9] |= 0x10
0x01F2: 43 B9 20	orl	0xB9, #0x20				; [0xB9] |= 0x20 {' '}
0x01F5: 53 B9 7F	anl	0xB9, #0x7F				; [0xB9] &= 0x7F {'^?'}
0x01F8: 75 9A F3	mov	0x9A, #0xF3				; [0x9A] = 0xF3
0x01FB: 75 9B F3	mov	0x9B, #0xF3				; [0x9B] = 0xF3
0x01FE: 43 B9 80	orl	0xB9, #0x80				; [0xB9] |= 0x80
0x0201: 53 A4 F7	anl	0xA4, #0xF7				; [0xA4] &= 0xF7
0x0204: 75 AC 07	mov	0xAC, #0x07				; [0xAC] = 0x07 {'\a'}
0x0207: 53 A4 F7	anl	0xA4, #0xF7				; [0xA4] &= 0xF7
0x020A: 75 AC 00	mov	0xAC, #0x00				; [0xAC] = 0x00 {'\0'}
0x020D: D2 9C		setb	REN					; REN = H
0x020F: D2 99		setb	TI					; TI = H
0x0211: 22		ret						; PCH = [SP--], PCL = [SP--]

0x0212: C0 5E		push	0x5E					; ++SP, [SP] = [0x5E]
0x0214: 85 81 5E	mov	0x5E, SP				; [0x5E] = SP
0x0217: 7E 00		mov	R6, #0x00				; R6 = 0x00 {'\0'}
0x0219: 8E 83		mov	DPH, R6					; DPH = R6
0x021B: 12 00 62	lcall	Function_000				; Calls (backward) this: 0x0062 (PC += 3, [++SP] = PCL, [++SP] = PCH, PC = 0x0062)
0x021E: D0 5E		pop	0x5E					; [0x5E] = [SP], --SP
0x0220: 22		ret						; PCH = [SP--], PCL = [SP--]

0x0221: 85 82 41	mov	0x41, DPL				; [0x41] = DPL
0x0224: 85 83 42	mov	0x42, DPH				; [0x42] = DPH
0x0227: 85 F0 43	mov	0x43, B					; [0x43] = B
0x022A: E4		clr	A					; ACC = 0
0x022B: F5 3E		mov	0x3E, A					; [0x3E] = ACC
0x022D: F5 3F		mov	0x3F, A					; [0x3F] = ACC
0x022F: F5 40		mov	0x40, A					; [0x40] = ACC
0x0231: 85 30 44	mov	0x44, 0x30				; [0x44] = [0x30]
0x0234: 90 02 12	mov	DPTR, #0x0212				; DPTR = 0x0212
0x0237: 02 03 00	ljmp	Function_010				; Jumps (forward) hither: 0x0300

;-------------------------------------------------------------------------------

Function_004:

0x023A: C0 5E		push	0x5E					; ++SP, [SP] = [0x5E]
0x023C: E5 81		mov	A, SP					; ACC = SP
0x023E: F5 5E		mov	0x5E, A					; [0x5E] = ACC
0x0240: 24 FB		add	A, #0xFB				; ACC += 0xFB
0x0242: FF		mov	R7, A					; R7 = ACC
0x0243: 8F 44		mov	0x44, R7				; [0x44] = R7
0x0245: E4		clr	A					; ACC = 0
0x0246: F5 3E		mov	0x3E, A					; [0x3E] = ACC
0x0248: F5 3F		mov	0x3F, A					; [0x3F] = ACC
0x024A: F5 40		mov	0x40, A					; [0x40] = ACC
0x024C: E5 5E		mov	A, 0x5E					; ACC = [0x5E]
0x024E: 24 FB		add	A, #0xFB				; ACC += 0xFB
0x0250: F8		mov	R0, A					; R0 = ACC
0x0251: 86 41		mov	0x41, @R0				; [0x41] = [R0]
0x0253: 08		inc	R0					; ++R0
0x0254: 86 42		mov	0x42, @R0				; [0x42] = [R0]
0x0256: 08		inc	R0					; ++R0
0x0257: 86 43		mov	0x43, @R0				; [0x43] = [R0]
0x0259: 90 02 12	mov	DPTR, #0x0212				; DPTR = 0x0212
0x025C: 12 03 00	lcall	Function_010				; Calls (forward) this: 0x0300 (PC += 3, [++SP] = PCL, [++SP] = PCH, PC = 0x0300)
0x025F: D0 5E		pop	0x5E					; [0x5E] = [SP], --SP
0x0261: 22		ret						; PCH = [SP--], PCL = [SP--]

;-------------------------------------------------------------------------------

Function_005:

0x0262: AF 82		mov	R7, DPL					; R7 = DPL
0x0264: C0 34		push	0x34					; ++SP, [SP] = [0x34]
0x0266: C0 35		push	0x35					; ++SP, [SP] = [0x35]
0x0268: C0 36		push	0x36					; ++SP, [SP] = [0x36]
0x026A: 12 02 6F	lcall	Function_006				; Calls (forward) this: 0x026F (PC += 3, [++SP] = PCL, [++SP] = PCH, PC = 0x026F)
0x026D: 80 07		sjmp	Label_014				; Jumps (forward) hither: 0x0276

;-------------------------------------------------------------------------------

Function_006:

0x026F: C0 32		push	0x32					; ++SP, [SP] = [0x32]
0x0271: C0 33		push	0x33					; ++SP, [SP] = [0x33]
0x0273: 8F 82		mov	DPL, R7					; DPL = R7
0x0275: 22		ret						; PCH = [SP--], PCL = [SP--]

Label_014:

0x0276: 15 81		dec	SP					; --SP
0x0278: 15 81		dec	SP					; --SP
0x027A: 15 81		dec	SP					; --SP
0x027C: 05 3C		inc	0x3C					; ++[0x3C]
0x027E: E4		clr	A					; ACC = 0
0x027F: B5 3C 02	cjne	A, 0x3C, Label_015			; If (ACC != [0x3C]) then jumps (forward) hither: 0x0284

0x0282: 05 3D		inc	0x3D					; ++[0x3D]

Label_015:

0x0284: 22		ret						; PCH = [SP--], PCL = [SP--]

;-------------------------------------------------------------------------------

Function_007:

0x0285: AF 82		mov	R7, DPL					; R7 = DPL
0x0287: 74 30		mov	A, #0x30				; ACC = 0x30 {'0'}
0x0289: 2F		add	A, R7					; ACC += R7
0x028A: FF		mov	R7, A					; R7 = ACC
0x028B: 24 C6		add	A, #0xC6				; ACC += 0xC6
0x028D: 50 0B		jnc	Label_016				; If (CY == L) then jumps (forward) hither: 0x029A

0x028F: 74 07		mov	A, #0x07				; ACC = 0x07 {'\a'}
0x0291: 2F		add	A, R7					; ACC += R7
0x0292: FF		mov	R7, A					; R7 = ACC
0x0293: E5 31		mov	A, 0x31					; ACC = [0x31]
0x0295: 60 03		jz	Label_016				; If (ACC == 0) then jumps (forward) hither: 0x029A

0x0297: 43 07 20	orl	R7<#0>, #0x20				; R7<#0> |= 0x20 {' '}

Label_016:

0x029A: 8F 82		mov	DPL, R7					; DPL = R7
0x029C: 02 02 62	ljmp	Function_005				; Jumps (backward) hither: 0x0262

;-------------------------------------------------------------------------------

Function_008:

0x029F: E5 82		mov	A, DPL					; ACC = DPL
0x02A1: FF		mov	R7, A					; R7 = ACC
0x02A2: C4		swap	A					; ACC[76543210] = ACC[32107654]
0x02A3: 54 0F		anl	A, #0x0F				; ACC &= 0x0F
0x02A5: F5 82		mov	DPL, A					; DPL = ACC
0x02A7: C0 07		push	R7<#0>					; ++SP, [SP] = R7<#0>
0x02A9: 12 02 85	lcall	Function_007				; Calls (backward) this: 0x0285 (PC += 3, [++SP] = PCL, [++SP] = PCH, PC = 0x0285)
0x02AC: D0 07		pop	R7<#0>					; R7<#0> = [SP], --SP
0x02AE: 74 0F		mov	A, #0x0F				; ACC = 0x0F
0x02B0: 5F		anl	A, R7					; ACC &= R7
0x02B1: F5 82		mov	DPL, A					; DPL = ACC
0x02B3: 02 02 85	ljmp	Function_007				; Jumps (backward) hither: 0x0285

;-------------------------------------------------------------------------------

Function_009:

0x02B6: 85 82 5F	mov	0x5F, DPL				; [0x5F] = DPL
0x02B9: AB 37		mov	R3, 0x37				; R3 = [0x37]
0x02BB: AC 38		mov	R4, 0x38				; R4 = [0x38]
0x02BD: AD 39		mov	R5, 0x39				; R5 = [0x39]
0x02BF: AE 3A		mov	R6, 0x3A				; R6 = [0x3A]
0x02C1: AA 3B		mov	R2, 0x3B				; R2 = [0x3B]
0x02C3: 75 61 20	mov	0x61, #0x20				; [0x61] = 0x20 {' '}

Label_017:

0x02C6: 8A 07		mov	R7<#0>, R2				; R7<#0> = R2
0x02C8: EF		mov	A, R7					; ACC = R7
0x02C9: 2F		add	A, R7					; ACC += R7
0x02CA: F5 60		mov	0x60, A					; [0x60] = ACC
0x02CC: EE		mov	A, R6					; ACC = R6
0x02CD: 23		rl	A					; ACC[76543210] = ACC[65432107]
0x02CE: 54 01		anl	A, #0x01				; ACC &= 0x01
0x02D0: 45 60		orl	A, 0x60					; ACC |= [0x60]
0x02D2: FA		mov	R2, A					; R2 = ACC
0x02D3: EB		mov	A, R3					; ACC = R3
0x02D4: 2B		add	A, R3					; ACC += R3
0x02D5: FB		mov	R3, A					; R3 = ACC
0x02D6: EC		mov	A, R4					; ACC = R4
0x02D7: 33		rlc	A					; ACC[76543210] = ACC[6543210C], CY = ACC[7]
0x02D8: FC		mov	R4, A					; R4 = ACC
0x02D9: ED		mov	A, R5					; ACC = R5
0x02DA: 33		rlc	A					; ACC[76543210] = ACC[6543210C], CY = ACC[7]
0x02DB: FD		mov	R5, A					; R5 = ACC
0x02DC: EE		mov	A, R6					; ACC = R6
0x02DD: 33		rlc	A					; ACC[76543210] = ACC[6543210C], CY = ACC[7]
0x02DE: FE		mov	R6, A					; R6 = ACC
0x02DF: C3		clr	C					; CY = L
0x02E0: EA		mov	A, R2					; ACC = R2
0x02E1: 95 5F		subb	A, 0x5F					; ACC -= [0x5F] + CY
0x02E3: 40 08		jc	Label_018				; If (CY == H) then jumps (forward) hither: 0x02ED

0x02E5: EA		mov	A, R2					; ACC = R2
0x02E6: C3		clr	C					; CY = L
0x02E7: 95 5F		subb	A, 0x5F					; ACC -= [0x5F] + CY
0x02E9: FA		mov	R2, A					; R2 = ACC
0x02EA: 43 03 01	orl	R3<#0>, #0x01				; R3<#0> |= 0x01

Label_018:

0x02ED: E5 61		mov	A, 0x61					; ACC = [0x61]
0x02EF: 14		dec	A					; --ACC
0x02F0: FF		mov	R7, A					; R7 = ACC
0x02F1: 8F 61		mov	0x61, R7				; [0x61] = R7
0x02F3: 70 D1		jnz	Label_017				; If (ACC != 0) then jumps (backward) hither: 0x02C6

0x02F5: 8B 37		mov	0x37, R3				; [0x37] = R3
0x02F7: 8C 38		mov	0x38, R4				; [0x38] = R4
0x02F9: 8D 39		mov	0x39, R5				; [0x39] = R5
0x02FB: 8E 3A		mov	0x3A, R6				; [0x3A] = R6
0x02FD: 8A 3B		mov	0x3B, R2				; [0x3B] = R2
0x02FF: 22		ret						; PCH = [SP--], PCL = [SP--]

;-------------------------------------------------------------------------------

Function_010:

0x0300: 85 82 32	mov	0x32, DPL				; [0x32] = DPL
0x0303: 85 83 33	mov	0x33, DPH				; [0x33] = DPH
0x0306: 85 3E 34	mov	0x34, 0x3E				; [0x34] = [0x3E]
0x0309: 85 3F 35	mov	0x35, 0x3F				; [0x35] = [0x3F]
0x030C: 85 40 36	mov	0x36, 0x40				; [0x36] = [0x40]
0x030F: E4		clr	A					; ACC = 0
0x0310: F5 3C		mov	0x3C, A					; [0x3C] = ACC
0x0312: F5 3D		mov	0x3D, A					; [0x3D] = ACC

Label_019:

0x0314: AD 41		mov	R5, 0x41				; R5 = [0x41]
0x0316: AE 42		mov	R6, 0x42				; R6 = [0x42]
0x0318: AF 43		mov	R7, 0x43				; R7 = [0x43]
0x031A: 8D 82		mov	DPL, R5					; DPL = R5
0x031C: 8E 83		mov	DPH, R6					; DPH = R6
0x031E: 8F F0		mov	B, R7					; B = R7
0x0320: 12 0B 1D	lcall	Function_013				; Calls (forward) this: 0x0B1D (PC += 3, [++SP] = PCL, [++SP] = PCH, PC = 0x0B1D)
0x0323: FC		mov	R4, A					; R4 = ACC
0x0324: 74 01		mov	A, #0x01				; ACC = 0x01
0x0326: 2D		add	A, R5					; ACC += R5
0x0327: F5 41		mov	0x41, A					; [0x41] = ACC
0x0329: E4		clr	A					; ACC = 0
0x032A: 3E		addc	A, R6					; ACC += R6 + CY
0x032B: F5 42		mov	0x42, A					; [0x42] = ACC
0x032D: 8F 43		mov	0x43, R7				; [0x43] = R7
0x032F: EC		mov	A, R4					; ACC = R4
0x0330: FF		mov	R7, A					; R7 = ACC
0x0331: 70 03		jnz	Label_020				; If (ACC != 0) then jumps (forward) hither: 0x0336

0x0333: 02 0A E1	ljmp	Label_136				; Jumps (forward) hither: 0x0AE1

Label_020:

0x0336: BF 25 02	cjne	R7, #0x25, Label_021			; If (R7 != 0x25 {'%'}) then jumps (forward) hither: 0x033B

0x0339: 80 03		sjmp	Label_022				; Jumps (forward) hither: 0x033E

Label_021:

0x033B: 02 0A D9	ljmp	Label_135				; Jumps (forward) hither: 0x0AD9

Label_022:

0x033E: 7E 00		mov	R6, #0x00				; R6 = 0x00 {'\0'}
0x0340: 7D 00		mov	R5, #0x00				; R5 = 0x00 {'\0'}
0x0342: 8E 45		mov	0x45, R6				; [0x45] = R6
0x0344: 8E 46		mov	0x46, R6				; [0x46] = R6
0x0346: 7A 00		mov	R2, #0x00				; R2 = 0x00 {'\0'}
0x0348: 7B 00		mov	R3, #0x00				; R3 = 0x00 {'\0'}
0x034A: 8E 47		mov	0x47, R6				; [0x47] = R6
0x034C: 7C 00		mov	R4, #0x00				; R4 = 0x00 {'\0'}
0x034E: 8E 48		mov	0x48, R6				; [0x48] = R6
0x0350: E4		clr	A					; ACC = 0
0x0351: F5 50		mov	0x50, A					; [0x50] = ACC
0x0353: F5 51		mov	0x51, A					; [0x51] = ACC
0x0355: 75 49 FF	mov	0x49, #0xFF				; [0x49] = 0xFF
0x0358: 75 4A FF	mov	0x4A, #0xFF				; [0x4A] = 0xFF
0x035B: 85 41 52	mov	0x52, 0x41				; [0x52] = [0x41]
0x035E: 85 42 53	mov	0x53, 0x42				; [0x53] = [0x42]
0x0361: 85 43 54	mov	0x54, 0x43				; [0x54] = [0x43]

Label_023:

0x0364: 85 52 82	mov	DPL, 0x52				; DPL = [0x52]
0x0367: 85 53 83	mov	DPH, 0x53				; DPH = [0x53]
0x036A: 85 54 F0	mov	B, 0x54					; B = [0x54]
0x036D: 12 0B 1D	lcall	Function_013				; Calls (forward) this: 0x0B1D (PC += 3, [++SP] = PCL, [++SP] = PCH, PC = 0x0B1D)
0x0370: F5 55		mov	0x55, A					; [0x55] = ACC
0x0372: A3		inc	DPTR					; ++DPTR
0x0373: 85 82 52	mov	0x52, DPL				; [0x52] = DPL
0x0376: 85 83 53	mov	0x53, DPH				; [0x53] = DPH
0x0379: 85 52 41	mov	0x41, 0x52				; [0x41] = [0x52]
0x037C: 85 53 42	mov	0x42, 0x53				; [0x42] = [0x53]
0x037F: 85 54 43	mov	0x43, 0x54				; [0x43] = [0x54]
0x0382: 74 25		mov	A, #0x25				; ACC = 0x25 {'%'}
0x0384: B5 55 08	cjne	A, 0x55, Label_024			; If (ACC != [0x55]) then jumps (forward) hither: 0x038F

0x0387: 85 55 82	mov	DPL, 0x55				; DPL = [0x55]
0x038A: 12 02 62	lcall	Function_005				; Calls (backward) this: 0x0262 (PC += 3, [++SP] = PCL, [++SP] = PCH, PC = 0x0262)
0x038D: 80 85		sjmp	Label_019				; Jumps (backward) hither: 0x0314

Label_024:

0x038F: 74 D0		mov	A, #0xD0				; ACC = 0xD0
0x0391: 25 55		add	A, 0x55					; ACC += [0x55]
0x0393: 40 03		jc	Label_025				; If (CY == H) then jumps (forward) hither: 0x0398

0x0395: 02 04 42	ljmp	Label_029				; Jumps (forward) hither: 0x0442

Label_025:

0x0398: E5 55		mov	A, 0x55					; ACC = [0x55]
0x039A: 24 C6		add	A, #0xC6				; ACC += 0xC6
0x039C: 50 03		jnc	Label_026				; If (CY == L) then jumps (forward) hither: 0x03A1

0x039E: 02 04 42	ljmp	Label_029				; Jumps (forward) hither: 0x0442

Label_026:

0x03A1: 74 FF		mov	A, #0xFF				; ACC = 0xFF
0x03A3: B5 49 55	cjne	A, 0x49, Label_028			; If (ACC != [0x49]) then jumps (forward) hither: 0x03FB

0x03A6: B5 4A 52	cjne	A, 0x4A, Label_028			; If (ACC != [0x4A]) then jumps (forward) hither: 0x03FB

0x03A9: 85 50 5F	mov	0x5F, 0x50				; [0x5F] = [0x50]
0x03AC: 85 51 60	mov	0x60, 0x51				; [0x60] = [0x51]
0x03AF: 90 00 0A	mov	DPTR, #0x000A				; DPTR = 0x000A
0x03B2: C0 06		push	R6<#0>					; ++SP, [SP] = R6<#0>
0x03B4: C0 05		push	R5<#0>					; ++SP, [SP] = R5<#0>
0x03B6: C0 04		push	R4<#0>					; ++SP, [SP] = R4<#0>
0x03B8: C0 03		push	R3<#0>					; ++SP, [SP] = R3<#0>
0x03BA: C0 02		push	R2<#0>					; ++SP, [SP] = R2<#0>
0x03BC: 12 0B 00	lcall	Function_012				; Calls (forward) this: 0x0B00 (PC += 3, [++SP] = PCL, [++SP] = PCH, PC = 0x0B00)
0x03BF: 85 82 56	mov	0x56, DPL				; [0x56] = DPL
0x03C2: 85 83 57	mov	0x57, DPH				; [0x57] = DPH
0x03C5: D0 02		pop	R2<#0>					; R2<#0> = [SP], --SP
0x03C7: D0 03		pop	R3<#0>					; R3<#0> = [SP], --SP
0x03C9: D0 04		pop	R4<#0>					; R4<#0> = [SP], --SP
0x03CB: D0 05		pop	R5<#0>					; R5<#0> = [SP], --SP
0x03CD: D0 06		pop	R6<#0>					; R6<#0> = [SP], --SP
0x03CF: 85 55 58	mov	0x58, 0x55				; [0x58] = [0x55]
0x03D2: 75 59 00	mov	0x59, #0x00				; [0x59] = 0x00 {'\0'}
0x03D5: E5 58		mov	A, 0x58					; ACC = [0x58]
0x03D7: 25 56		add	A, 0x56					; ACC += [0x56]
0x03D9: F5 58		mov	0x58, A					; [0x58] = ACC
0x03DB: E5 59		mov	A, 0x59					; ACC = [0x59]
0x03DD: 35 57		addc	A, 0x57					; ACC += [0x57] + CY
0x03DF: F5 59		mov	0x59, A					; [0x59] = ACC
0x03E1: E5 58		mov	A, 0x58					; ACC = [0x58]
0x03E3: 24 D0		add	A, #0xD0				; ACC += 0xD0
0x03E5: F5 50		mov	0x50, A					; [0x50] = ACC
0x03E7: E5 59		mov	A, 0x59					; ACC = [0x59]
0x03E9: 34 FF		addc	A, #0xFF				; ACC += 0xFF + CY
0x03EB: F5 51		mov	0x51, A					; [0x51] = ACC
0x03ED: E5 50		mov	A, 0x50					; ACC = [0x50]
0x03EF: 45 51		orl	A, 0x51					; ACC |= [0x51]
0x03F1: 60 03		jz	Label_027				; If (ACC == 0) then jumps (forward) hither: 0x03F6

0x03F3: 02 03 64	ljmp	Label_023				; Jumps (backward) hither: 0x0364

Label_027:

0x03F6: 7D 01		mov	R5, #0x01				; R5 = 0x01
0x03F8: 02 03 64	ljmp	Label_023				; Jumps (backward) hither: 0x0364

Label_028:

0x03FB: 85 49 5F	mov	0x5F, 0x49				; [0x5F] = [0x49]
0x03FE: 85 4A 60	mov	0x60, 0x4A				; [0x60] = [0x4A]
0x0401: 90 00 0A	mov	DPTR, #0x000A				; DPTR = 0x000A
0x0404: C0 06		push	R6<#0>					; ++SP, [SP] = R6<#0>
0x0406: C0 05		push	R5<#0>					; ++SP, [SP] = R5<#0>
0x0408: C0 04		push	R4<#0>					; ++SP, [SP] = R4<#0>
0x040A: C0 03		push	R3<#0>					; ++SP, [SP] = R3<#0>
0x040C: C0 02		push	R2<#0>					; ++SP, [SP] = R2<#0>
0x040E: 12 0B 00	lcall	Function_012				; Calls (forward) this: 0x0B00 (PC += 3, [++SP] = PCL, [++SP] = PCH, PC = 0x0B00)
0x0411: 85 82 58	mov	0x58, DPL				; [0x58] = DPL
0x0414: 85 83 59	mov	0x59, DPH				; [0x59] = DPH
0x0417: D0 02		pop	R2<#0>					; R2<#0> = [SP], --SP
0x0419: D0 03		pop	R3<#0>					; R3<#0> = [SP], --SP
0x041B: D0 04		pop	R4<#0>					; R4<#0> = [SP], --SP
0x041D: D0 05		pop	R5<#0>					; R5<#0> = [SP], --SP
0x041F: D0 06		pop	R6<#0>					; R6<#0> = [SP], --SP
0x0421: 85 55 56	mov	0x56, 0x55				; [0x56] = [0x55]
0x0424: 75 57 00	mov	0x57, #0x00				; [0x57] = 0x00 {'\0'}
0x0427: E5 56		mov	A, 0x56					; ACC = [0x56]
0x0429: 25 58		add	A, 0x58					; ACC += [0x58]
0x042B: F5 58		mov	0x58, A					; [0x58] = ACC
0x042D: E5 57		mov	A, 0x57					; ACC = [0x57]
0x042F: 35 59		addc	A, 0x59					; ACC += [0x59] + CY
0x0431: F5 59		mov	0x59, A					; [0x59] = ACC
0x0433: E5 58		mov	A, 0x58					; ACC = [0x58]
0x0435: 24 D0		add	A, #0xD0				; ACC += 0xD0
0x0437: F5 49		mov	0x49, A					; [0x49] = ACC
0x0439: E5 59		mov	A, 0x59					; ACC = [0x59]
0x043B: 34 FF		addc	A, #0xFF				; ACC += 0xFF + CY
0x043D: F5 4A		mov	0x4A, A					; [0x4A] = ACC
0x043F: 02 03 64	ljmp	Label_023				; Jumps (backward) hither: 0x0364

Label_029:

0x0442: 74 2E		mov	A, #0x2E				; ACC = 0x2E {'.'}
0x0444: B5 55 15	cjne	A, 0x55, Label_032			; If (ACC != [0x55]) then jumps (forward) hither: 0x045C

0x0447: 74 FF		mov	A, #0xFF				; ACC = 0xFF
0x0449: B5 49 05	cjne	A, 0x49, Label_030			; If (ACC != [0x49]) then jumps (forward) hither: 0x0451

0x044C: B5 4A 02	cjne	A, 0x4A, Label_030			; If (ACC != [0x4A]) then jumps (forward) hither: 0x0451

0x044F: 80 03		sjmp	Label_031				; Jumps (forward) hither: 0x0454

Label_030:

0x0451: 02 03 64	ljmp	Label_023				; Jumps (backward) hither: 0x0364

Label_031:

0x0454: E4		clr	A					; ACC = 0
0x0455: F5 49		mov	0x49, A					; [0x49] = ACC
0x0457: F5 4A		mov	0x4A, A					; [0x4A] = ACC
0x0459: 02 03 64	ljmp	Label_023				; Jumps (backward) hither: 0x0364

Label_032:

0x045C: 74 9F		mov	A, #0x9F				; ACC = 0x9F
0x045E: 25 55		add	A, 0x55					; ACC += [0x55]
0x0460: 50 0E		jnc	Label_033				; If (CY == L) then jumps (forward) hither: 0x0470

0x0462: E5 55		mov	A, 0x55					; ACC = [0x55]
0x0464: 24 85		add	A, #0x85				; ACC += 0x85
0x0466: 40 08		jc	Label_033				; If (CY == H) then jumps (forward) hither: 0x0470

0x0468: 53 55 DF	anl	0x55, #0xDF				; [0x55] &= 0xDF
0x046B: 75 31 01	mov	0x31, #0x01				; [0x31] = 0x01
0x046E: 80 03		sjmp	Label_034				; Jumps (forward) hither: 0x0473

Label_033:

0x0470: 75 31 00	mov	0x31, #0x00				; [0x31] = 0x00 {'\0'}

Label_034:

0x0473: 74 20		mov	A, #0x20				; ACC = 0x20 {' '}
0x0475: B5 55 03	cjne	A, 0x55, Label_035			; If (ACC != [0x55]) then jumps (forward) hither: 0x047B

0x0478: 02 05 0E	ljmp	Label_055				; Jumps (forward) hither: 0x050E

Label_035:

0x047B: 74 2B		mov	A, #0x2B				; ACC = 0x2B {'+'}
0x047D: B5 55 03	cjne	A, 0x55, Label_036			; If (ACC != [0x55]) then jumps (forward) hither: 0x0483

0x0480: 02 05 08	ljmp	Label_054				; Jumps (forward) hither: 0x0508

Label_036:

0x0483: 74 2D		mov	A, #0x2D				; ACC = 0x2D {'-'}
0x0485: B5 55 02	cjne	A, 0x55, Label_037			; If (ACC != [0x55]) then jumps (forward) hither: 0x048A

0x0488: 80 79		sjmp	Label_053				; Jumps (forward) hither: 0x0503

Label_037:

0x048A: 74 42		mov	A, #0x42				; ACC = 0x42 {'B'}
0x048C: B5 55 03	cjne	A, 0x55, Label_038			; If (ACC != [0x55]) then jumps (forward) hither: 0x0492

0x048F: 02 05 14	ljmp	Label_056				; Jumps (forward) hither: 0x0514

Label_038:

0x0492: 74 43		mov	A, #0x43				; ACC = 0x43 {'C'}
0x0494: B5 55 03	cjne	A, 0x55, Label_039			; If (ACC != [0x55]) then jumps (forward) hither: 0x049A

0x0497: 02 05 1F	ljmp	Label_058				; Jumps (forward) hither: 0x051F

Label_039:

0x049A: 74 44		mov	A, #0x44				; ACC = 0x44 {'D'}
0x049C: B5 55 03	cjne	A, 0x55, Label_040			; If (ACC != [0x55]) then jumps (forward) hither: 0x04A2

0x049F: 02 07 6C	ljmp	Label_084				; Jumps (forward) hither: 0x076C

Label_040:

0x04A2: 74 46		mov	A, #0x46				; ACC = 0x46 {'F'}
0x04A4: B5 55 03	cjne	A, 0x55, Label_041			; If (ACC != [0x55]) then jumps (forward) hither: 0x04AA

0x04A7: 02 07 82	ljmp	Label_088				; Jumps (forward) hither: 0x0782

Label_041:

0x04AA: 74 48		mov	A, #0x48				; ACC = 0x48 {'H'}
0x04AC: B5 55 03	cjne	A, 0x55, Label_042			; If (ACC != [0x55]) then jumps (forward) hither: 0x04B2

0x04AF: 02 03 64	ljmp	Label_023				; Jumps (backward) hither: 0x0364

Label_042:

0x04B2: 74 49		mov	A, #0x49				; ACC = 0x49 {'I'}
0x04B4: B5 55 03	cjne	A, 0x55, Label_043			; If (ACC != [0x55]) then jumps (forward) hither: 0x04BA

0x04B7: 02 07 6C	ljmp	Label_084				; Jumps (forward) hither: 0x076C

Label_043:

0x04BA: 74 4A		mov	A, #0x4A				; ACC = 0x4A {'J'}
0x04BC: B5 55 03	cjne	A, 0x55, Label_044			; If (ACC != [0x55]) then jumps (forward) hither: 0x04C2

0x04BF: 02 03 64	ljmp	Label_023				; Jumps (backward) hither: 0x0364

Label_044:

0x04C2: 74 4C		mov	A, #0x4C				; ACC = 0x4C {'L'}
0x04C4: B5 55 02	cjne	A, 0x55, Label_045			; If (ACC != [0x55]) then jumps (forward) hither: 0x04C9

0x04C7: 80 50		sjmp	Label_057				; Jumps (forward) hither: 0x0519

Label_045:

0x04C9: 74 4F		mov	A, #0x4F				; ACC = 0x4F {'O'}
0x04CB: B5 55 03	cjne	A, 0x55, Label_046			; If (ACC != [0x55]) then jumps (forward) hither: 0x04D1

0x04CE: 02 07 73	ljmp	Label_085				; Jumps (forward) hither: 0x0773

Label_046:

0x04D1: 74 50		mov	A, #0x50				; ACC = 0x50 {'P'}
0x04D3: B5 55 03	cjne	A, 0x55, Label_047			; If (ACC != [0x55]) then jumps (forward) hither: 0x04D9

0x04D6: 02 06 B7	ljmp	Label_076				; Jumps (forward) hither: 0x06B7

Label_047:

0x04D9: 74 53		mov	A, #0x53				; ACC = 0x53 {'S'}
0x04DB: B5 55 02	cjne	A, 0x55, Label_048			; If (ACC != [0x55]) then jumps (forward) hither: 0x04E0

0x04DE: 80 76		sjmp	Label_061				; Jumps (forward) hither: 0x0556

Label_048:

0x04E0: 74 54		mov	A, #0x54				; ACC = 0x54 {'T'}
0x04E2: B5 55 03	cjne	A, 0x55, Label_049			; If (ACC != [0x55]) then jumps (forward) hither: 0x04E8

0x04E5: 02 03 64	ljmp	Label_023				; Jumps (backward) hither: 0x0364

Label_049:

0x04E8: 74 55		mov	A, #0x55				; ACC = 0x55 {'U'}
0x04EA: B5 55 03	cjne	A, 0x55, Label_050			; If (ACC != [0x55]) then jumps (forward) hither: 0x04F0

0x04ED: 02 07 78	ljmp	Label_086				; Jumps (forward) hither: 0x0778

Label_050:

0x04F0: 74 58		mov	A, #0x58				; ACC = 0x58 {'X'}
0x04F2: B5 55 03	cjne	A, 0x55, Label_051			; If (ACC != [0x55]) then jumps (forward) hither: 0x04F8

0x04F5: 02 07 7D	ljmp	Label_087				; Jumps (forward) hither: 0x077D

Label_051:

0x04F8: 74 5A		mov	A, #0x5A				; ACC = 0x5A {'Z'}
0x04FA: B5 55 03	cjne	A, 0x55, Label_052			; If (ACC != [0x55]) then jumps (forward) hither: 0x0500

0x04FD: 02 03 64	ljmp	Label_023				; Jumps (backward) hither: 0x0364

Label_052:

0x0500: 02 07 86	ljmp	Label_089				; Jumps (forward) hither: 0x0786

Label_053:

0x0503: 7E 01		mov	R6, #0x01				; R6 = 0x01
0x0505: 02 03 64	ljmp	Label_023				; Jumps (backward) hither: 0x0364

Label_054:

0x0508: 75 45 01	mov	0x45, #0x01				; [0x45] = 0x01
0x050B: 02 03 64	ljmp	Label_023				; Jumps (backward) hither: 0x0364

Label_055:

0x050E: 75 46 01	mov	0x46, #0x01				; [0x46] = 0x01
0x0511: 02 03 64	ljmp	Label_023				; Jumps (backward) hither: 0x0364

Label_056:

0x0514: 7B 01		mov	R3, #0x01				; R3 = 0x01
0x0516: 02 03 64	ljmp	Label_023				; Jumps (backward) hither: 0x0364

Label_057:

0x0519: 75 47 01	mov	0x47, #0x01				; [0x47] = 0x01
0x051C: 02 03 64	ljmp	Label_023				; Jumps (backward) hither: 0x0364

Label_058:

0x051F: EB		mov	A, R3					; ACC = R3
0x0520: 60 0A		jz	Label_059				; If (ACC == 0) then jumps (forward) hither: 0x052C

0x0522: E5 44		mov	A, 0x44					; ACC = [0x44]
0x0524: 14		dec	A					; --ACC
0x0525: F9		mov	R1, A					; R1 = ACC
0x0526: 89 44		mov	0x44, R1				; [0x44] = R1
0x0528: 87 58		mov	0x58, @R1				; [0x58] = [R1]
0x052A: 80 0D		sjmp	Label_060				; Jumps (forward) hither: 0x0539

Label_059:

0x052C: E5 44		mov	A, 0x44					; ACC = [0x44]
0x052E: 24 FE		add	A, #0xFE				; ACC += 0xFE
0x0530: F5 56		mov	0x56, A					; [0x56] = ACC
0x0532: 85 56 44	mov	0x44, 0x56				; [0x44] = [0x56]
0x0535: A9 56		mov	R1, 0x56				; R1 = [0x56]
0x0537: 87 58		mov	0x58, @R1				; [0x58] = [R1]

Label_060:

0x0539: 85 58 82	mov	DPL, 0x58				; DPL = [0x58]
0x053C: C0 06		push	R6<#0>					; ++SP, [SP] = R6<#0>
0x053E: C0 05		push	R5<#0>					; ++SP, [SP] = R5<#0>
0x0540: C0 04		push	R4<#0>					; ++SP, [SP] = R4<#0>
0x0542: C0 03		push	R3<#0>					; ++SP, [SP] = R3<#0>
0x0544: C0 02		push	R2<#0>					; ++SP, [SP] = R2<#0>
0x0546: 12 02 62	lcall	Function_005				; Calls (backward) this: 0x0262 (PC += 3, [++SP] = PCL, [++SP] = PCH, PC = 0x0262)
0x0549: D0 02		pop	R2<#0>					; R2<#0> = [SP], --SP
0x054B: D0 03		pop	R3<#0>					; R3<#0> = [SP], --SP
0x054D: D0 04		pop	R4<#0>					; R4<#0> = [SP], --SP
0x054F: D0 05		pop	R5<#0>					; R5<#0> = [SP], --SP
0x0551: D0 06		pop	R6<#0>					; R6<#0> = [SP], --SP
0x0553: 02 07 A8	ljmp	Label_091				; Jumps (forward) hither: 0x07A8

Label_061:

0x0556: E5 44		mov	A, 0x44					; ACC = [0x44]
0x0558: 24 FD		add	A, #0xFD				; ACC += 0xFD
0x055A: F5 58		mov	0x58, A					; [0x58] = ACC
0x055C: 85 58 44	mov	0x44, 0x58				; [0x44] = [0x58]
0x055F: A9 58		mov	R1, 0x58				; R1 = [0x58]
0x0561: 87 52		mov	0x52, @R1				; [0x52] = [R1]
0x0563: 09		inc	R1					; ++R1
0x0564: 87 53		mov	0x53, @R1				; [0x53] = [R1]
0x0566: 09		inc	R1					; ++R1
0x0567: 87 54		mov	0x54, @R1				; [0x54] = [R1]
0x0569: 19		dec	R1					; --R1
0x056A: 19		dec	R1					; --R1
0x056B: 85 52 37	mov	0x37, 0x52				; [0x37] = [0x52]
0x056E: 85 53 38	mov	0x38, 0x53				; [0x38] = [0x53]
0x0571: 85 54 39	mov	0x39, 0x54				; [0x39] = [0x54]
0x0574: 85 52 82	mov	DPL, 0x52				; DPL = [0x52]
0x0577: 85 53 83	mov	DPH, 0x53				; DPH = [0x53]
0x057A: 85 54 F0	mov	B, 0x54					; B = [0x54]
0x057D: C0 06		push	R6<#0>					; ++SP, [SP] = R6<#0>
0x057F: C0 05		push	R5<#0>					; ++SP, [SP] = R5<#0>
0x0581: C0 04		push	R4<#0>					; ++SP, [SP] = R4<#0>
0x0583: C0 03		push	R3<#0>					; ++SP, [SP] = R3<#0>
0x0585: C0 02		push	R2<#0>					; ++SP, [SP] = R2<#0>
0x0587: 12 0A E8	lcall	Function_011				; Calls (forward) this: 0x0AE8 (PC += 3, [++SP] = PCL, [++SP] = PCH, PC = 0x0AE8)
0x058A: 85 82 58	mov	0x58, DPL				; [0x58] = DPL
0x058D: 85 83 59	mov	0x59, DPH				; [0x59] = DPH
0x0590: D0 02		pop	R2<#0>					; R2<#0> = [SP], --SP
0x0592: D0 03		pop	R3<#0>					; R3<#0> = [SP], --SP
0x0594: D0 04		pop	R4<#0>					; R4<#0> = [SP], --SP
0x0596: D0 05		pop	R5<#0>					; R5<#0> = [SP], --SP
0x0598: D0 06		pop	R6<#0>					; R6<#0> = [SP], --SP
0x059A: 74 FF		mov	A, #0xFF				; ACC = 0xFF
0x059C: B5 49 09	cjne	A, 0x49, Label_062			; If (ACC != [0x49]) then jumps (forward) hither: 0x05A8

0x059F: B5 4A 06	cjne	A, 0x4A, Label_062			; If (ACC != [0x4A]) then jumps (forward) hither: 0x05A8

0x05A2: 85 58 49	mov	0x49, 0x58				; [0x49] = [0x58]
0x05A5: 85 59 4A	mov	0x4A, 0x59				; [0x4A] = [0x59]

Label_062:

0x05A8: EE		mov	A, R6					; ACC = R6
0x05A9: 70 4F		jnz	Label_066				; If (ACC != 0) then jumps (forward) hither: 0x05FA

0x05AB: C3		clr	C					; CY = L
0x05AC: E5 58		mov	A, 0x58					; ACC = [0x58]
0x05AE: 95 50		subb	A, 0x50					; ACC -= [0x50] + CY
0x05B0: E5 59		mov	A, 0x59					; ACC = [0x59]
0x05B2: 95 51		subb	A, 0x51					; ACC -= [0x51] + CY
0x05B4: 50 44		jnc	Label_066				; If (CY == L) then jumps (forward) hither: 0x05FA

0x05B6: E5 50		mov	A, 0x50					; ACC = [0x50]
0x05B8: C3		clr	C					; CY = L
0x05B9: 95 58		subb	A, 0x58					; ACC -= [0x58] + CY
0x05BB: F5 56		mov	0x56, A					; [0x56] = ACC
0x05BD: E5 51		mov	A, 0x51					; ACC = [0x51]
0x05BF: 95 59		subb	A, 0x59					; ACC -= [0x59] + CY
0x05C1: F5 57		mov	0x57, A					; [0x57] = ACC

Label_063:

0x05C3: 85 56 52	mov	0x52, 0x56				; [0x52] = [0x56]
0x05C6: 85 57 53	mov	0x53, 0x57				; [0x53] = [0x57]
0x05C9: 15 56		dec	0x56					; --[0x56]
0x05CB: 74 FF		mov	A, #0xFF				; ACC = 0xFF
0x05CD: B5 56 02	cjne	A, 0x56, Label_064			; If (ACC != [0x56]) then jumps (forward) hither: 0x05D2

0x05D0: 15 57		dec	0x57					; --[0x57]

Label_064:

0x05D2: E5 52		mov	A, 0x52					; ACC = [0x52]
0x05D4: 45 53		orl	A, 0x53					; ACC |= [0x53]
0x05D6: 60 1C		jz	Label_065				; If (ACC == 0) then jumps (forward) hither: 0x05F4

0x05D8: 75 82 20	mov	DPL, #0x20				; DPL = 0x20 {' '}
0x05DB: C0 06		push	R6<#0>					; ++SP, [SP] = R6<#0>
0x05DD: C0 05		push	R5<#0>					; ++SP, [SP] = R5<#0>
0x05DF: C0 04		push	R4<#0>					; ++SP, [SP] = R4<#0>
0x05E1: C0 03		push	R3<#0>					; ++SP, [SP] = R3<#0>
0x05E3: C0 02		push	R2<#0>					; ++SP, [SP] = R2<#0>
0x05E5: 12 02 62	lcall	Function_005				; Calls (backward) this: 0x0262 (PC += 3, [++SP] = PCL, [++SP] = PCH, PC = 0x0262)
0x05E8: D0 02		pop	R2<#0>					; R2<#0> = [SP], --SP
0x05EA: D0 03		pop	R3<#0>					; R3<#0> = [SP], --SP
0x05EC: D0 04		pop	R4<#0>					; R4<#0> = [SP], --SP
0x05EE: D0 05		pop	R5<#0>					; R5<#0> = [SP], --SP
0x05F0: D0 06		pop	R6<#0>					; R6<#0> = [SP], --SP
0x05F2: 80 CF		sjmp	Label_063				; Jumps (backward) hither: 0x05C3

Label_065:

0x05F4: 85 56 50	mov	0x50, 0x56				; [0x50] = [0x56]
0x05F7: 85 57 51	mov	0x51, 0x57				; [0x51] = [0x57]

Label_066:

0x05FA: 85 49 56	mov	0x56, 0x49				; [0x56] = [0x49]
0x05FD: 85 4A 57	mov	0x57, 0x4A				; [0x57] = [0x4A]

Label_067:

0x0600: 85 37 82	mov	DPL, 0x37				; DPL = [0x37]
0x0603: 85 38 83	mov	DPH, 0x38				; DPH = [0x38]
0x0606: 85 39 F0	mov	B, 0x39					; B = [0x39]
0x0609: 12 0B 1D	lcall	Function_013				; Calls (forward) this: 0x0B1D (PC += 3, [++SP] = PCL, [++SP] = PCH, PC = 0x0B1D)
0x060C: F5 52		mov	0x52, A					; [0x52] = ACC
0x060E: 85 52 4D	mov	0x4D, 0x52				; [0x4D] = [0x52]
0x0611: 60 4F		jz	Label_070				; If (ACC == 0) then jumps (forward) hither: 0x0662

0x0613: C3		clr	C					; CY = L
0x0614: E4		clr	A					; ACC = 0
0x0615: 95 56		subb	A, 0x56					; ACC -= [0x56] + CY
0x0617: 74 80		mov	A, #0x80				; ACC = 0x80
0x0619: 85 57 F0	mov	B, 0x57					; B = [0x57]
0x061C: 63 F0 80	xrl	B, #0x80				; B |= 0x80
0x061F: 95 F0		subb	A, B					; ACC -= B + CY
0x0621: 50 3F		jnc	Label_070				; If (CY == L) then jumps (forward) hither: 0x0662

0x0623: 15 56		dec	0x56					; --[0x56]
0x0625: 74 FF		mov	A, #0xFF				; ACC = 0xFF
0x0627: B5 56 02	cjne	A, 0x56, Label_068			; If (ACC != [0x56]) then jumps (forward) hither: 0x062C

0x062A: 15 57		dec	0x57					; --[0x57]

Label_068:

0x062C: 85 4D 82	mov	DPL, 0x4D				; DPL = [0x4D]
0x062F: C0 06		push	R6<#0>					; ++SP, [SP] = R6<#0>
0x0631: C0 05		push	R5<#0>					; ++SP, [SP] = R5<#0>
0x0633: C0 04		push	R4<#0>					; ++SP, [SP] = R4<#0>
0x0635: C0 03		push	R3<#0>					; ++SP, [SP] = R3<#0>
0x0637: C0 02		push	R2<#0>					; ++SP, [SP] = R2<#0>
0x0639: 12 02 62	lcall	Function_005				; Calls (backward) this: 0x0262 (PC += 3, [++SP] = PCL, [++SP] = PCH, PC = 0x0262)
0x063C: D0 02		pop	R2<#0>					; R2<#0> = [SP], --SP
0x063E: D0 03		pop	R3<#0>					; R3<#0> = [SP], --SP
0x0640: D0 04		pop	R4<#0>					; R4<#0> = [SP], --SP
0x0642: D0 05		pop	R5<#0>					; R5<#0> = [SP], --SP
0x0644: D0 06		pop	R6<#0>					; R6<#0> = [SP], --SP
0x0646: 85 37 52	mov	0x52, 0x37				; [0x52] = [0x37]
0x0649: 85 38 53	mov	0x53, 0x38				; [0x53] = [0x38]
0x064C: 85 39 54	mov	0x54, 0x39				; [0x54] = [0x39]
0x064F: 05 52		inc	0x52					; ++[0x52]
0x0651: E4		clr	A					; ACC = 0
0x0652: B5 52 02	cjne	A, 0x52, Label_069			; If (ACC != [0x52]) then jumps (forward) hither: 0x0657

0x0655: 05 53		inc	0x53					; ++[0x53]

Label_069:

0x0657: 85 52 37	mov	0x37, 0x52				; [0x37] = [0x52]
0x065A: 85 53 38	mov	0x38, 0x53				; [0x38] = [0x53]
0x065D: 85 54 39	mov	0x39, 0x54				; [0x39] = [0x54]
0x0660: 80 9E		sjmp	Label_067				; Jumps (backward) hither: 0x0600

Label_070:

0x0662: EE		mov	A, R6					; ACC = R6
0x0663: 70 03		jnz	Label_071				; If (ACC != 0) then jumps (forward) hither: 0x0668

0x0665: 02 07 A8	ljmp	Label_091				; Jumps (forward) hither: 0x07A8

Label_071:

0x0668: C3		clr	C					; CY = L
0x0669: E5 58		mov	A, 0x58					; ACC = [0x58]
0x066B: 95 50		subb	A, 0x50					; ACC -= [0x50] + CY
0x066D: E5 59		mov	A, 0x59					; ACC = [0x59]
0x066F: 95 51		subb	A, 0x51					; ACC -= [0x51] + CY
0x0671: 40 03		jc	Label_072				; If (CY == H) then jumps (forward) hither: 0x0676

0x0673: 02 07 A8	ljmp	Label_091				; Jumps (forward) hither: 0x07A8

Label_072:

0x0676: E5 50		mov	A, 0x50					; ACC = [0x50]
0x0678: C3		clr	C					; CY = L
0x0679: 95 58		subb	A, 0x58					; ACC -= [0x58] + CY
0x067B: F5 58		mov	0x58, A					; [0x58] = ACC
0x067D: E5 51		mov	A, 0x51					; ACC = [0x51]
0x067F: 95 59		subb	A, 0x59					; ACC -= [0x59] + CY
0x0681: F5 59		mov	0x59, A					; [0x59] = ACC

Label_073:

0x0683: 85 58 56	mov	0x56, 0x58				; [0x56] = [0x58]
0x0686: 85 59 57	mov	0x57, 0x59				; [0x57] = [0x59]
0x0689: 15 58		dec	0x58					; --[0x58]
0x068B: 74 FF		mov	A, #0xFF				; ACC = 0xFF
0x068D: B5 58 02	cjne	A, 0x58, Label_074			; If (ACC != [0x58]) then jumps (forward) hither: 0x0692

0x0690: 15 59		dec	0x59					; --[0x59]

Label_074:

0x0692: E5 56		mov	A, 0x56					; ACC = [0x56]
0x0694: 45 57		orl	A, 0x57					; ACC |= [0x57]
0x0696: 70 03		jnz	Label_075				; If (ACC != 0) then jumps (forward) hither: 0x069B

0x0698: 02 07 A2	ljmp	Label_090				; Jumps (forward) hither: 0x07A2

Label_075:

0x069B: 75 82 20	mov	DPL, #0x20				; DPL = 0x20 {' '}
0x069E: C0 06		push	R6<#0>					; ++SP, [SP] = R6<#0>
0x06A0: C0 05		push	R5<#0>					; ++SP, [SP] = R5<#0>
0x06A2: C0 04		push	R4<#0>					; ++SP, [SP] = R4<#0>
0x06A4: C0 03		push	R3<#0>					; ++SP, [SP] = R3<#0>
0x06A6: C0 02		push	R2<#0>					; ++SP, [SP] = R2<#0>
0x06A8: 12 02 62	lcall	Function_005				; Calls (backward) this: 0x0262 (PC += 3, [++SP] = PCL, [++SP] = PCH, PC = 0x0262)
0x06AB: D0 02		pop	R2<#0>					; R2<#0> = [SP], --SP
0x06AD: D0 03		pop	R3<#0>					; R3<#0> = [SP], --SP
0x06AF: D0 04		pop	R4<#0>					; R4<#0> = [SP], --SP
0x06B1: D0 05		pop	R5<#0>					; R5<#0> = [SP], --SP
0x06B3: D0 06		pop	R6<#0>					; R6<#0> = [SP], --SP
0x06B5: 80 CC		sjmp	Label_073				; Jumps (backward) hither: 0x0683

Label_076:

0x06B7: E5 44		mov	A, 0x44					; ACC = [0x44]
0x06B9: 24 FD		add	A, #0xFD				; ACC += 0xFD
0x06BB: F5 56		mov	0x56, A					; [0x56] = ACC
0x06BD: 85 56 44	mov	0x44, 0x56				; [0x44] = [0x56]
0x06C0: A9 56		mov	R1, 0x56				; R1 = [0x56]
0x06C2: 87 52		mov	0x52, @R1				; [0x52] = [R1]
0x06C4: 09		inc	R1					; ++R1
0x06C5: 87 53		mov	0x53, @R1				; [0x53] = [R1]
0x06C7: 09		inc	R1					; ++R1
0x06C8: 87 54		mov	0x54, @R1				; [0x54] = [R1]
0x06CA: 19		dec	R1					; --R1
0x06CB: 19		dec	R1					; --R1
0x06CC: 85 52 37	mov	0x37, 0x52				; [0x37] = [0x52]
0x06CF: 85 53 38	mov	0x38, 0x53				; [0x38] = [0x53]
0x06D2: 85 54 39	mov	0x39, 0x54				; [0x39] = [0x54]
0x06D5: 85 39 4E	mov	0x4E, 0x39				; [0x4E] = [0x39]
0x06D8: 74 80		mov	A, #0x80				; ACC = 0x80
0x06DA: 25 4E		add	A, 0x4E					; ACC += [0x4E]
0x06DC: 50 05		jnc	Label_077				; If (CY == L) then jumps (forward) hither: 0x06E3

0x06DE: 75 56 43	mov	0x56, #0x43				; [0x56] = 0x43 {'C'}
0x06E1: 80 19		sjmp	Label_080				; Jumps (forward) hither: 0x06FC

Label_077:

0x06E3: 74 A0		mov	A, #0xA0				; ACC = 0xA0
0x06E5: 25 4E		add	A, 0x4E					; ACC += [0x4E]
0x06E7: 50 05		jnc	Label_078				; If (CY == L) then jumps (forward) hither: 0x06EE

0x06E9: 75 56 50	mov	0x56, #0x50				; [0x56] = 0x50 {'P'}
0x06EC: 80 0E		sjmp	Label_080				; Jumps (forward) hither: 0x06FC

Label_078:

0x06EE: 74 C0		mov	A, #0xC0				; ACC = 0xC0
0x06F0: 25 4E		add	A, 0x4E					; ACC += [0x4E]
0x06F2: 50 05		jnc	Label_079				; If (CY == L) then jumps (forward) hither: 0x06F9

0x06F4: 75 56 49	mov	0x56, #0x49				; [0x56] = 0x49 {'I'}
0x06F7: 80 03		sjmp	Label_080				; Jumps (forward) hither: 0x06FC

Label_079:

0x06F9: 75 56 58	mov	0x56, #0x58				; [0x56] = 0x58 {'X'}

Label_080:

0x06FC: 85 56 82	mov	DPL, 0x56				; DPL = [0x56]
0x06FF: C0 06		push	R6<#0>					; ++SP, [SP] = R6<#0>
0x0701: C0 05		push	R5<#0>					; ++SP, [SP] = R5<#0>
0x0703: C0 04		push	R4<#0>					; ++SP, [SP] = R4<#0>
0x0705: C0 03		push	R3<#0>					; ++SP, [SP] = R3<#0>
0x0707: C0 02		push	R2<#0>					; ++SP, [SP] = R2<#0>
0x0709: 12 02 62	lcall	Function_005				; Calls (backward) this: 0x0262 (PC += 3, [++SP] = PCL, [++SP] = PCH, PC = 0x0262)
0x070C: 75 82 3A	mov	DPL, #0x3A				; DPL = 0x3A {':'}
0x070F: 12 02 62	lcall	Function_005				; Calls (backward) this: 0x0262 (PC += 3, [++SP] = PCL, [++SP] = PCH, PC = 0x0262)
0x0712: 75 82 30	mov	DPL, #0x30				; DPL = 0x30 {'0'}
0x0715: 12 02 62	lcall	Function_005				; Calls (backward) this: 0x0262 (PC += 3, [++SP] = PCL, [++SP] = PCH, PC = 0x0262)
0x0718: 75 82 78	mov	DPL, #0x78				; DPL = 0x78 {'x'}
0x071B: 12 02 62	lcall	Function_005				; Calls (backward) this: 0x0262 (PC += 3, [++SP] = PCL, [++SP] = PCH, PC = 0x0262)
0x071E: D0 02		pop	R2<#0>					; R2<#0> = [SP], --SP
0x0720: D0 03		pop	R3<#0>					; R3<#0> = [SP], --SP
0x0722: D0 04		pop	R4<#0>					; R4<#0> = [SP], --SP
0x0724: D0 05		pop	R5<#0>					; R5<#0> = [SP], --SP
0x0726: D0 06		pop	R6<#0>					; R6<#0> = [SP], --SP
0x0728: 74 49		mov	A, #0x49				; ACC = 0x49 {'I'}
0x072A: B5 56 02	cjne	A, 0x56, Label_081			; If (ACC != [0x56]) then jumps (forward) hither: 0x072F

0x072D: 80 21		sjmp	Label_083				; Jumps (forward) hither: 0x0750

Label_081:

0x072F: 74 50		mov	A, #0x50				; ACC = 0x50 {'P'}
0x0731: B5 56 02	cjne	A, 0x56, Label_082			; If (ACC != [0x56]) then jumps (forward) hither: 0x0736

0x0734: 80 1A		sjmp	Label_083				; Jumps (forward) hither: 0x0750

Label_082:

0x0736: 85 38 82	mov	DPL, 0x38				; DPL = [0x38]
0x0739: C0 06		push	R6<#0>					; ++SP, [SP] = R6<#0>
0x073B: C0 05		push	R5<#0>					; ++SP, [SP] = R5<#0>
0x073D: C0 04		push	R4<#0>					; ++SP, [SP] = R4<#0>
0x073F: C0 03		push	R3<#0>					; ++SP, [SP] = R3<#0>
0x0741: C0 02		push	R2<#0>					; ++SP, [SP] = R2<#0>
0x0743: 12 02 9F	lcall	Function_008				; Calls (backward) this: 0x029F (PC += 3, [++SP] = PCL, [++SP] = PCH, PC = 0x029F)
0x0746: D0 02		pop	R2<#0>					; R2<#0> = [SP], --SP
0x0748: D0 03		pop	R3<#0>					; R3<#0> = [SP], --SP
0x074A: D0 04		pop	R4<#0>					; R4<#0> = [SP], --SP
0x074C: D0 05		pop	R5<#0>					; R5<#0> = [SP], --SP
0x074E: D0 06		pop	R6<#0>					; R6<#0> = [SP], --SP

Label_083:

0x0750: 85 37 82	mov	DPL, 0x37				; DPL = [0x37]
0x0753: C0 06		push	R6<#0>					; ++SP, [SP] = R6<#0>
0x0755: C0 05		push	R5<#0>					; ++SP, [SP] = R5<#0>
0x0757: C0 04		push	R4<#0>					; ++SP, [SP] = R4<#0>
0x0759: C0 03		push	R3<#0>					; ++SP, [SP] = R3<#0>
0x075B: C0 02		push	R2<#0>					; ++SP, [SP] = R2<#0>
0x075D: 12 02 9F	lcall	Function_008				; Calls (backward) this: 0x029F (PC += 3, [++SP] = PCL, [++SP] = PCH, PC = 0x029F)
0x0760: D0 02		pop	R2<#0>					; R2<#0> = [SP], --SP
0x0762: D0 03		pop	R3<#0>					; R3<#0> = [SP], --SP
0x0764: D0 04		pop	R4<#0>					; R4<#0> = [SP], --SP
0x0766: D0 05		pop	R5<#0>					; R5<#0> = [SP], --SP
0x0768: D0 06		pop	R6<#0>					; R6<#0> = [SP], --SP
0x076A: 80 3C		sjmp	Label_091				; Jumps (forward) hither: 0x07A8

Label_084:

0x076C: 7A 01		mov	R2, #0x01				; R2 = 0x01
0x076E: 75 48 0A	mov	0x48, #0x0A				; [0x48] = 0x0A {'\n'}
0x0771: 80 35		sjmp	Label_091				; Jumps (forward) hither: 0x07A8

Label_085:

0x0773: 75 48 08	mov	0x48, #0x08				; [0x48] = 0x08 {'\b'}
0x0776: 80 30		sjmp	Label_091				; Jumps (forward) hither: 0x07A8

Label_086:

0x0778: 75 48 0A	mov	0x48, #0x0A				; [0x48] = 0x0A {'\n'}
0x077B: 80 2B		sjmp	Label_091				; Jumps (forward) hither: 0x07A8

Label_087:

0x077D: 75 48 10	mov	0x48, #0x10				; [0x48] = 0x10
0x0780: 80 26		sjmp	Label_091				; Jumps (forward) hither: 0x07A8

Label_088:

0x0782: 7C 01		mov	R4, #0x01				; R4 = 0x01
0x0784: 80 22		sjmp	Label_091				; Jumps (forward) hither: 0x07A8

Label_089:

0x0786: 85 55 82	mov	DPL, 0x55				; DPL = [0x55]
0x0789: C0 06		push	R6<#0>					; ++SP, [SP] = R6<#0>
0x078B: C0 05		push	R5<#0>					; ++SP, [SP] = R5<#0>
0x078D: C0 04		push	R4<#0>					; ++SP, [SP] = R4<#0>
0x078F: C0 03		push	R3<#0>					; ++SP, [SP] = R3<#0>
0x0791: C0 02		push	R2<#0>					; ++SP, [SP] = R2<#0>
0x0793: 12 02 62	lcall	Function_005				; Calls (backward) this: 0x0262 (PC += 3, [++SP] = PCL, [++SP] = PCH, PC = 0x0262)
0x0796: D0 02		pop	R2<#0>					; R2<#0> = [SP], --SP
0x0798: D0 03		pop	R3<#0>					; R3<#0> = [SP], --SP
0x079A: D0 04		pop	R4<#0>					; R4<#0> = [SP], --SP
0x079C: D0 05		pop	R5<#0>					; R5<#0> = [SP], --SP
0x079E: D0 06		pop	R6<#0>					; R6<#0> = [SP], --SP
0x07A0: 80 06		sjmp	Label_091				; Jumps (forward) hither: 0x07A8

Label_090:

0x07A2: 85 58 50	mov	0x50, 0x58				; [0x50] = [0x58]
0x07A5: 85 59 51	mov	0x51, 0x59				; [0x51] = [0x59]

Label_091:

0x07A8: EC		mov	A, R4					; ACC = R4
0x07A9: 60 68		jz	Label_094				; If (ACC == 0) then jumps (forward) hither: 0x0813

0x07AB: E5 44		mov	A, 0x44					; ACC = [0x44]
0x07AD: 24 FC		add	A, #0xFC				; ACC += 0xFC
0x07AF: FC		mov	R4, A					; R4 = ACC
0x07B0: 8C 44		mov	0x44, R4				; [0x44] = R4
0x07B2: 8C 01		mov	R1<#0>, R4				; R1<#0> = R4
0x07B4: 87 5A		mov	0x5A, @R1				; [0x5A] = [R1]
0x07B6: 09		inc	R1					; ++R1
0x07B7: 87 5B		mov	0x5B, @R1				; [0x5B] = [R1]
0x07B9: 09		inc	R1					; ++R1
0x07BA: 87 5C		mov	0x5C, @R1				; [0x5C] = [R1]
0x07BC: 09		inc	R1					; ++R1
0x07BD: 87 5D		mov	0x5D, @R1				; [0x5D] = [R1]
0x07BF: 19		dec	R1					; --R1
0x07C0: 19		dec	R1					; --R1
0x07C1: 19		dec	R1					; --R1
0x07C2: 85 5A 37	mov	0x37, 0x5A				; [0x37] = [0x5A]
0x07C5: 85 5B 38	mov	0x38, 0x5B				; [0x38] = [0x5B]
0x07C8: 85 5C 39	mov	0x39, 0x5C				; [0x39] = [0x5C]
0x07CB: 85 5D 3A	mov	0x3A, 0x5D				; [0x3A] = [0x5D]
0x07CE: 75 37 40	mov	0x37, #0x40				; [0x37] = 0x40 {'@'}
0x07D1: 75 38 0B	mov	0x38, #0x0B				; [0x38] = 0x0B
0x07D4: 75 39 80	mov	0x39, #0x80				; [0x39] = 0x80

Label_092:

0x07D7: 85 37 5A	mov	0x5A, 0x37				; [0x5A] = [0x37]
0x07DA: 85 38 5B	mov	0x5B, 0x38				; [0x5B] = [0x38]
0x07DD: 85 39 5C	mov	0x5C, 0x39				; [0x5C] = [0x39]
0x07E0: 74 01		mov	A, #0x01				; ACC = 0x01
0x07E2: 25 5A		add	A, 0x5A					; ACC += [0x5A]
0x07E4: F5 52		mov	0x52, A					; [0x52] = ACC
0x07E6: E4		clr	A					; ACC = 0
0x07E7: 35 5B		addc	A, 0x5B					; ACC += [0x5B] + CY
0x07E9: F5 53		mov	0x53, A					; [0x53] = ACC
0x07EB: 85 5C 54	mov	0x54, 0x5C				; [0x54] = [0x5C]
0x07EE: 85 52 37	mov	0x37, 0x52				; [0x37] = [0x52]
0x07F1: 85 53 38	mov	0x38, 0x53				; [0x38] = [0x53]
0x07F4: 85 54 39	mov	0x39, 0x54				; [0x39] = [0x54]
0x07F7: 85 5A 82	mov	DPL, 0x5A				; DPL = [0x5A]
0x07FA: 85 5B 83	mov	DPH, 0x5B				; DPH = [0x5B]
0x07FD: 85 5C F0	mov	B, 0x5C					; B = [0x5C]
0x0800: 12 0B 1D	lcall	Function_013				; Calls (forward) this: 0x0B1D (PC += 3, [++SP] = PCL, [++SP] = PCH, PC = 0x0B1D)
0x0803: FC		mov	R4, A					; R4 = ACC
0x0804: 8C 5A		mov	0x5A, R4				; [0x5A] = R4
0x0806: 70 03		jnz	Label_093				; If (ACC != 0) then jumps (forward) hither: 0x080B

0x0808: 02 03 14	ljmp	Label_019				; Jumps (backward) hither: 0x0314

Label_093:

0x080B: 85 5A 82	mov	DPL, 0x5A				; DPL = [0x5A]
0x080E: 12 02 62	lcall	Function_005				; Calls (backward) this: 0x0262 (PC += 3, [++SP] = PCL, [++SP] = PCH, PC = 0x0262)
0x0811: 80 C4		sjmp	Label_092				; Jumps (backward) hither: 0x07D7

Label_094:

0x0813: E5 48		mov	A, 0x48					; ACC = [0x48]
0x0815: 70 03		jnz	Label_095				; If (ACC != 0) then jumps (forward) hither: 0x081A

0x0817: 02 03 14	ljmp	Label_019				; Jumps (backward) hither: 0x0314

Label_095:

0x081A: EB		mov	A, R3					; ACC = R3
0x081B: 60 3F		jz	Label_097				; If (ACC == 0) then jumps (forward) hither: 0x085C

0x081D: E5 44		mov	A, 0x44					; ACC = [0x44]
0x081F: 14		dec	A					; --ACC
0x0820: F9		mov	R1, A					; R1 = ACC
0x0821: 89 44		mov	0x44, R1				; [0x44] = R1
0x0823: 87 04		mov	R4<#0>, @R1				; R4<#0> = [R1]
0x0825: 8C 5A		mov	0x5A, R4				; [0x5A] = R4
0x0827: 75 5B 00	mov	0x5B, #0x00				; [0x5B] = 0x00 {'\0'}
0x082A: 75 5C 00	mov	0x5C, #0x00				; [0x5C] = 0x00 {'\0'}
0x082D: 75 5D 00	mov	0x5D, #0x00				; [0x5D] = 0x00 {'\0'}
0x0830: 85 5A 37	mov	0x37, 0x5A				; [0x37] = [0x5A]
0x0833: 85 5B 38	mov	0x38, 0x5B				; [0x38] = [0x5B]
0x0836: 85 5C 39	mov	0x39, 0x5C				; [0x39] = [0x5C]
0x0839: 85 5D 3A	mov	0x3A, 0x5D				; [0x3A] = [0x5D]
0x083C: EA		mov	A, R2					; ACC = R2
0x083D: 60 03		jz	Label_096				; If (ACC == 0) then jumps (forward) hither: 0x0842

0x083F: 02 08 C5	ljmp	Label_099				; Jumps (forward) hither: 0x08C5

Label_096:

0x0842: 85 37 5A	mov	0x5A, 0x37				; [0x5A] = [0x37]
0x0845: 75 5B 00	mov	0x5B, #0x00				; [0x5B] = 0x00 {'\0'}
0x0848: 75 5C 00	mov	0x5C, #0x00				; [0x5C] = 0x00 {'\0'}
0x084B: 75 5D 00	mov	0x5D, #0x00				; [0x5D] = 0x00 {'\0'}
0x084E: 85 5A 37	mov	0x37, 0x5A				; [0x37] = [0x5A]
0x0851: 85 5B 38	mov	0x38, 0x5B				; [0x38] = [0x5B]
0x0854: 85 5C 39	mov	0x39, 0x5C				; [0x39] = [0x5C]
0x0857: 85 5D 3A	mov	0x3A, 0x5D				; [0x3A] = [0x5D]
0x085A: 80 69		sjmp	Label_099				; Jumps (forward) hither: 0x08C5

Label_097:

0x085C: E5 47		mov	A, 0x47					; ACC = [0x47]
0x085E: 60 25		jz	Label_098				; If (ACC == 0) then jumps (forward) hither: 0x0885

0x0860: E5 44		mov	A, 0x44					; ACC = [0x44]
0x0862: 24 FC		add	A, #0xFC				; ACC += 0xFC
0x0864: FC		mov	R4, A					; R4 = ACC
0x0865: 8C 44		mov	0x44, R4				; [0x44] = R4
0x0867: 8C 01		mov	R1<#0>, R4				; R1<#0> = R4
0x0869: 87 5A		mov	0x5A, @R1				; [0x5A] = [R1]
0x086B: 09		inc	R1					; ++R1
0x086C: 87 5B		mov	0x5B, @R1				; [0x5B] = [R1]
0x086E: 09		inc	R1					; ++R1
0x086F: 87 5C		mov	0x5C, @R1				; [0x5C] = [R1]
0x0871: 09		inc	R1					; ++R1
0x0872: 87 5D		mov	0x5D, @R1				; [0x5D] = [R1]
0x0874: 19		dec	R1					; --R1
0x0875: 19		dec	R1					; --R1
0x0876: 19		dec	R1					; --R1
0x0877: 85 5A 37	mov	0x37, 0x5A				; [0x37] = [0x5A]
0x087A: 85 5B 38	mov	0x38, 0x5B				; [0x38] = [0x5B]
0x087D: 85 5C 39	mov	0x39, 0x5C				; [0x39] = [0x5C]
0x0880: 85 5D 3A	mov	0x3A, 0x5D				; [0x3A] = [0x5D]
0x0883: 80 40		sjmp	Label_099				; Jumps (forward) hither: 0x08C5

Label_098:

0x0885: E5 44		mov	A, 0x44					; ACC = [0x44]
0x0887: 24 FE		add	A, #0xFE				; ACC += 0xFE
0x0889: FC		mov	R4, A					; R4 = ACC
0x088A: 8C 44		mov	0x44, R4				; [0x44] = R4
0x088C: 8C 01		mov	R1<#0>, R4				; R1<#0> = R4
0x088E: 87 03		mov	R3<#0>, @R1				; R3<#0> = [R1]
0x0890: 09		inc	R1					; ++R1
0x0891: 87 04		mov	R4<#0>, @R1				; R4<#0> = [R1]
0x0893: 19		dec	R1					; --R1
0x0894: 8B 5A		mov	0x5A, R3				; [0x5A] = R3
0x0896: EC		mov	A, R4					; ACC = R4
0x0897: F5 5B		mov	0x5B, A					; [0x5B] = ACC
0x0899: 33		rlc	A					; ACC[76543210] = ACC[6543210C], CY = ACC[7]
0x089A: 95 E0		subb	A, ACC					; ACC -= ACC + CY
0x089C: F5 5C		mov	0x5C, A					; [0x5C] = ACC
0x089E: F5 5D		mov	0x5D, A					; [0x5D] = ACC
0x08A0: 85 5A 37	mov	0x37, 0x5A				; [0x37] = [0x5A]
0x08A3: 85 5B 38	mov	0x38, 0x5B				; [0x38] = [0x5B]
0x08A6: 85 5C 39	mov	0x39, 0x5C				; [0x39] = [0x5C]
0x08A9: 85 5D 3A	mov	0x3A, 0x5D				; [0x3A] = [0x5D]
0x08AC: EA		mov	A, R2					; ACC = R2
0x08AD: 70 16		jnz	Label_099				; If (ACC != 0) then jumps (forward) hither: 0x08C5

0x08AF: 85 37 5A	mov	0x5A, 0x37				; [0x5A] = [0x37]
0x08B2: 85 38 5B	mov	0x5B, 0x38				; [0x5B] = [0x38]
0x08B5: F5 5C		mov	0x5C, A					; [0x5C] = ACC
0x08B7: F5 5D		mov	0x5D, A					; [0x5D] = ACC
0x08B9: 85 5A 37	mov	0x37, 0x5A				; [0x37] = [0x5A]
0x08BC: 85 5B 38	mov	0x38, 0x5B				; [0x38] = [0x5B]
0x08BF: 85 5C 39	mov	0x39, 0x5C				; [0x39] = [0x5C]
0x08C2: 85 5D 3A	mov	0x3A, 0x5D				; [0x3A] = [0x5D]

Label_099:

0x08C5: EA		mov	A, R2					; ACC = R2
0x08C6: 60 2A		jz	Label_101				; If (ACC == 0) then jumps (forward) hither: 0x08F2

0x08C8: E5 3A		mov	A, 0x3A					; ACC = [0x3A]
0x08CA: 30 E7 23	jnb	0xE7, Label_100				; If ([0xE7] == L) then jumps (forward) hither: 0x08F0

0x08CD: C3		clr	C					; CY = L
0x08CE: E4		clr	A					; ACC = 0
0x08CF: 95 37		subb	A, 0x37					; ACC -= [0x37] + CY
0x08D1: F5 5A		mov	0x5A, A					; [0x5A] = ACC
0x08D3: E4		clr	A					; ACC = 0
0x08D4: 95 38		subb	A, 0x38					; ACC -= [0x38] + CY
0x08D6: F5 5B		mov	0x5B, A					; [0x5B] = ACC
0x08D8: E4		clr	A					; ACC = 0
0x08D9: 95 39		subb	A, 0x39					; ACC -= [0x39] + CY
0x08DB: F5 5C		mov	0x5C, A					; [0x5C] = ACC
0x08DD: E4		clr	A					; ACC = 0
0x08DE: 95 3A		subb	A, 0x3A					; ACC -= [0x3A] + CY
0x08E0: F5 5D		mov	0x5D, A					; [0x5D] = ACC
0x08E2: 85 5A 37	mov	0x37, 0x5A				; [0x37] = [0x5A]
0x08E5: 85 5B 38	mov	0x38, 0x5B				; [0x38] = [0x5B]
0x08E8: 85 5C 39	mov	0x39, 0x5C				; [0x39] = [0x5C]
0x08EB: 85 5D 3A	mov	0x3A, 0x5D				; [0x3A] = [0x5D]
0x08EE: 80 02		sjmp	Label_101				; Jumps (forward) hither: 0x08F2

Label_100:

0x08F0: 7A 00		mov	R2, #0x00				; R2 = 0x00 {'\0'}

Label_101:

0x08F2: 7C 01		mov	R4, #0x01				; R4 = 0x01
0x08F4: 79 0D		mov	R1, #0x0D				; R1 = 0x0D {'\r'}
0x08F6: E4		clr	A					; ACC = 0
0x08F7: F5 5A		mov	0x5A, A					; [0x5A] = ACC
0x08F9: F5 5B		mov	0x5B, A					; [0x5B] = ACC

Label_102:

0x08FB: 75 3B 00	mov	0x3B, #0x00				; [0x3B] = 0x00 {'\0'}
0x08FE: 85 48 82	mov	DPL, 0x48				; DPL = [0x48]
0x0901: C0 06		push	R6<#0>					; ++SP, [SP] = R6<#0>
0x0903: C0 05		push	R5<#0>					; ++SP, [SP] = R5<#0>
0x0905: C0 04		push	R4<#0>					; ++SP, [SP] = R4<#0>
0x0907: C0 02		push	R2<#0>					; ++SP, [SP] = R2<#0>
0x0909: C0 01		push	R1<#0>					; ++SP, [SP] = R1<#0>
0x090B: 12 02 B6	lcall	Function_009				; Calls (backward) this: 0x02B6 (PC += 3, [++SP] = PCL, [++SP] = PCH, PC = 0x02B6)
0x090E: D0 01		pop	R1<#0>					; R1<#0> = [SP], --SP
0x0910: D0 02		pop	R2<#0>					; R2<#0> = [SP], --SP
0x0912: D0 04		pop	R4<#0>					; R4<#0> = [SP], --SP
0x0914: D0 05		pop	R5<#0>					; R5<#0> = [SP], --SP
0x0916: D0 06		pop	R6<#0>					; R6<#0> = [SP], --SP
0x0918: EC		mov	A, R4					; ACC = R4
0x0919: 70 0D		jnz	Label_103				; If (ACC != 0) then jumps (forward) hither: 0x0928

0x091B: E5 3B		mov	A, 0x3B					; ACC = [0x3B]
0x091D: C4		swap	A					; ACC[76543210] = ACC[32107654]
0x091E: F5 58		mov	0x58, A					; [0x58] = ACC
0x0920: E7		mov	A, @R1					; ACC = [R1]
0x0921: FB		mov	R3, A					; R3 = ACC
0x0922: 45 58		orl	A, 0x58					; ACC |= [0x58]
0x0924: F7		mov	@R1, A					; [R1] = ACC
0x0925: 19		dec	R1					; --R1
0x0926: 80 02		sjmp	Label_104				; Jumps (forward) hither: 0x092A

Label_103:

0x0928: A7 3B		mov	@R1, 0x3B				; [R1] = [0x3B]

Label_104:

0x092A: 05 5A		inc	0x5A					; ++[0x5A]
0x092C: E4		clr	A					; ACC = 0
0x092D: B5 5A 02	cjne	A, 0x5A, Label_105			; If (ACC != [0x5A]) then jumps (forward) hither: 0x0932

0x0930: 05 5B		inc	0x5B					; ++[0x5B]

Label_105:

0x0932: EC		mov	A, R4					; ACC = R4
0x0933: B4 01 00	cjne	A, #0x01, Label_106			; If (ACC != 0x01) then jumps (forward) hither: 0x0936

Label_106:

0x0936: E4		clr	A					; ACC = 0
0x0937: 33		rlc	A					; ACC[76543210] = ACC[6543210C], CY = ACC[7]
0x0938: FC		mov	R4, A					; R4 = ACC
0x0939: E5 37		mov	A, 0x37					; ACC = [0x37]
0x093B: 45 38		orl	A, 0x38					; ACC |= [0x38]
0x093D: 45 39		orl	A, 0x39					; ACC |= [0x39]
0x093F: 45 3A		orl	A, 0x3A					; ACC |= [0x3A]
0x0941: 70 B8		jnz	Label_102				; If (ACC != 0) then jumps (backward) hither: 0x08FB

0x0943: 89 4F		mov	0x4F, R1				; [0x4F] = R1
0x0945: 85 5A 4B	mov	0x4B, 0x5A				; [0x4B] = [0x5A]
0x0948: 85 5B 4C	mov	0x4C, 0x5B				; [0x4C] = [0x5B]
0x094B: E5 50		mov	A, 0x50					; ACC = [0x50]
0x094D: 45 51		orl	A, 0x51					; ACC |= [0x51]
0x094F: 70 05		jnz	Label_107				; If (ACC != 0) then jumps (forward) hither: 0x0956

0x0951: 75 50 01	mov	0x50, #0x01				; [0x50] = 0x01
0x0954: F5 51		mov	0x51, A					; [0x51] = ACC

Label_107:

0x0956: ED		mov	A, R5					; ACC = R5
0x0957: 70 43		jnz	Label_111				; If (ACC != 0) then jumps (forward) hither: 0x099C

0x0959: EE		mov	A, R6					; ACC = R6
0x095A: 70 40		jnz	Label_111				; If (ACC != 0) then jumps (forward) hither: 0x099C

0x095C: 85 50 5A	mov	0x5A, 0x50				; [0x5A] = [0x50]
0x095F: 85 51 5B	mov	0x5B, 0x51				; [0x5B] = [0x51]

Label_108:

0x0962: AB 4B		mov	R3, 0x4B				; R3 = [0x4B]
0x0964: 0B		inc	R3					; ++R3
0x0965: 8B 58		mov	0x58, R3				; [0x58] = R3
0x0967: 75 59 00	mov	0x59, #0x00				; [0x59] = 0x00 {'\0'}
0x096A: C3		clr	C					; CY = L
0x096B: E5 58		mov	A, 0x58					; ACC = [0x58]
0x096D: 95 5A		subb	A, 0x5A					; ACC -= [0x5A] + CY
0x096F: E5 59		mov	A, 0x59					; ACC = [0x59]
0x0971: 95 5B		subb	A, 0x5B					; ACC -= [0x5B] + CY
0x0973: 50 21		jnc	Label_110				; If (CY == L) then jumps (forward) hither: 0x0996

0x0975: 75 82 20	mov	DPL, #0x20				; DPL = 0x20 {' '}
0x0978: C0 06		push	R6<#0>					; ++SP, [SP] = R6<#0>
0x097A: C0 05		push	R5<#0>					; ++SP, [SP] = R5<#0>
0x097C: C0 04		push	R4<#0>					; ++SP, [SP] = R4<#0>
0x097E: C0 02		push	R2<#0>					; ++SP, [SP] = R2<#0>
0x0980: 12 02 62	lcall	Function_005				; Calls (backward) this: 0x0262 (PC += 3, [++SP] = PCL, [++SP] = PCH, PC = 0x0262)
0x0983: D0 02		pop	R2<#0>					; R2<#0> = [SP], --SP
0x0985: D0 04		pop	R4<#0>					; R4<#0> = [SP], --SP
0x0987: D0 05		pop	R5<#0>					; R5<#0> = [SP], --SP
0x0989: D0 06		pop	R6<#0>					; R6<#0> = [SP], --SP
0x098B: 15 5A		dec	0x5A					; --[0x5A]
0x098D: 74 FF		mov	A, #0xFF				; ACC = 0xFF
0x098F: B5 5A 02	cjne	A, 0x5A, Label_109			; If (ACC != [0x5A]) then jumps (forward) hither: 0x0994

0x0992: 15 5B		dec	0x5B					; --[0x5B]

Label_109:

0x0994: 80 CC		sjmp	Label_108				; Jumps (backward) hither: 0x0962

Label_110:

0x0996: 85 5A 50	mov	0x50, 0x5A				; [0x50] = [0x5A]
0x0999: 85 5B 51	mov	0x51, 0x5B				; [0x51] = [0x5B]

Label_111:

0x099C: EA		mov	A, R2					; ACC = R2
0x099D: 60 1D		jz	Label_113				; If (ACC == 0) then jumps (forward) hither: 0x09BC

0x099F: 75 82 2D	mov	DPL, #0x2D				; DPL = 0x2D {'-'}
0x09A2: C0 06		push	R6<#0>					; ++SP, [SP] = R6<#0>
0x09A4: C0 05		push	R5<#0>					; ++SP, [SP] = R5<#0>
0x09A6: C0 04		push	R4<#0>					; ++SP, [SP] = R4<#0>
0x09A8: 12 02 62	lcall	Function_005				; Calls (backward) this: 0x0262 (PC += 3, [++SP] = PCL, [++SP] = PCH, PC = 0x0262)
0x09AB: D0 04		pop	R4<#0>					; R4<#0> = [SP], --SP
0x09AD: D0 05		pop	R5<#0>					; R5<#0> = [SP], --SP
0x09AF: D0 06		pop	R6<#0>					; R6<#0> = [SP], --SP
0x09B1: 15 50		dec	0x50					; --[0x50]
0x09B3: 74 FF		mov	A, #0xFF				; ACC = 0xFF
0x09B5: B5 50 02	cjne	A, 0x50, Label_112			; If (ACC != [0x50]) then jumps (forward) hither: 0x09BA

0x09B8: 15 51		dec	0x51					; --[0x51]

Label_112:

0x09BA: 80 46		sjmp	Label_116				; Jumps (forward) hither: 0x0A02

Label_113:

0x09BC: E5 4B		mov	A, 0x4B					; ACC = [0x4B]
0x09BE: 45 4C		orl	A, 0x4C					; ACC |= [0x4C]
0x09C0: 60 40		jz	Label_116				; If (ACC == 0) then jumps (forward) hither: 0x0A02

0x09C2: E5 45		mov	A, 0x45					; ACC = [0x45]
0x09C4: 60 1D		jz	Label_115				; If (ACC == 0) then jumps (forward) hither: 0x09E3

0x09C6: 75 82 2B	mov	DPL, #0x2B				; DPL = 0x2B {'+'}
0x09C9: C0 06		push	R6<#0>					; ++SP, [SP] = R6<#0>
0x09CB: C0 05		push	R5<#0>					; ++SP, [SP] = R5<#0>
0x09CD: C0 04		push	R4<#0>					; ++SP, [SP] = R4<#0>
0x09CF: 12 02 62	lcall	Function_005				; Calls (backward) this: 0x0262 (PC += 3, [++SP] = PCL, [++SP] = PCH, PC = 0x0262)
0x09D2: D0 04		pop	R4<#0>					; R4<#0> = [SP], --SP
0x09D4: D0 05		pop	R5<#0>					; R5<#0> = [SP], --SP
0x09D6: D0 06		pop	R6<#0>					; R6<#0> = [SP], --SP
0x09D8: 15 50		dec	0x50					; --[0x50]
0x09DA: 74 FF		mov	A, #0xFF				; ACC = 0xFF
0x09DC: B5 50 02	cjne	A, 0x50, Label_114			; If (ACC != [0x50]) then jumps (forward) hither: 0x09E1

0x09DF: 15 51		dec	0x51					; --[0x51]

Label_114:

0x09E1: 80 1F		sjmp	Label_116				; Jumps (forward) hither: 0x0A02

Label_115:

0x09E3: E5 46		mov	A, 0x46					; ACC = [0x46]
0x09E5: 60 1B		jz	Label_116				; If (ACC == 0) then jumps (forward) hither: 0x0A02

0x09E7: 75 82 20	mov	DPL, #0x20				; DPL = 0x20 {' '}
0x09EA: C0 06		push	R6<#0>					; ++SP, [SP] = R6<#0>
0x09EC: C0 05		push	R5<#0>					; ++SP, [SP] = R5<#0>
0x09EE: C0 04		push	R4<#0>					; ++SP, [SP] = R4<#0>
0x09F0: 12 02 62	lcall	Function_005				; Calls (backward) this: 0x0262 (PC += 3, [++SP] = PCL, [++SP] = PCH, PC = 0x0262)
0x09F3: D0 04		pop	R4<#0>					; R4<#0> = [SP], --SP
0x09F5: D0 05		pop	R5<#0>					; R5<#0> = [SP], --SP
0x09F7: D0 06		pop	R6<#0>					; R6<#0> = [SP], --SP
0x09F9: 15 50		dec	0x50					; --[0x50]
0x09FB: 74 FF		mov	A, #0xFF				; ACC = 0xFF
0x09FD: B5 50 02	cjne	A, 0x50, Label_116			; If (ACC != [0x50]) then jumps (forward) hither: 0x0A02

0x0A00: 15 51		dec	0x51					; --[0x51]

Label_116:

0x0A02: EE		mov	A, R6					; ACC = R6
0x0A03: 70 3C		jnz	Label_121				; If (ACC != 0) then jumps (forward) hither: 0x0A41

0x0A05: 85 50 5A	mov	0x5A, 0x50				; [0x5A] = [0x50]
0x0A08: 85 51 5B	mov	0x5B, 0x51				; [0x5B] = [0x51]

Label_117:

0x0A0B: AA 5A		mov	R2, 0x5A				; R2 = [0x5A]
0x0A0D: AB 5B		mov	R3, 0x5B				; R3 = [0x5B]
0x0A0F: 15 5A		dec	0x5A					; --[0x5A]
0x0A11: 74 FF		mov	A, #0xFF				; ACC = 0xFF
0x0A13: B5 5A 02	cjne	A, 0x5A, Label_118			; If (ACC != [0x5A]) then jumps (forward) hither: 0x0A18

0x0A16: 15 5B		dec	0x5B					; --[0x5B]

Label_118:

0x0A18: C3		clr	C					; CY = L
0x0A19: E5 4B		mov	A, 0x4B					; ACC = [0x4B]
0x0A1B: 9A		subb	A, R2					; ACC -= R2 + CY
0x0A1C: E5 4C		mov	A, 0x4C					; ACC = [0x4C]
0x0A1E: 9B		subb	A, R3					; ACC -= R3 + CY
0x0A1F: 50 41		jnc	Label_123				; If (CY == L) then jumps (forward) hither: 0x0A62

0x0A21: ED		mov	A, R5					; ACC = R5
0x0A22: 60 06		jz	Label_119				; If (ACC == 0) then jumps (forward) hither: 0x0A2A

0x0A24: 7A 30		mov	R2, #0x30				; R2 = 0x30 {'0'}
0x0A26: 7B 00		mov	R3, #0x00				; R3 = 0x00 {'\0'}
0x0A28: 80 04		sjmp	Label_120				; Jumps (forward) hither: 0x0A2E

Label_119:

0x0A2A: 7A 20		mov	R2, #0x20				; R2 = 0x20 {' '}
0x0A2C: 7B 00		mov	R3, #0x00				; R3 = 0x00 {'\0'}

Label_120:

0x0A2E: 8A 82		mov	DPL, R2					; DPL = R2
0x0A30: C0 06		push	R6<#0>					; ++SP, [SP] = R6<#0>
0x0A32: C0 05		push	R5<#0>					; ++SP, [SP] = R5<#0>
0x0A34: C0 04		push	R4<#0>					; ++SP, [SP] = R4<#0>
0x0A36: 12 02 62	lcall	Function_005				; Calls (backward) this: 0x0262 (PC += 3, [++SP] = PCL, [++SP] = PCH, PC = 0x0262)
0x0A39: D0 04		pop	R4<#0>					; R4<#0> = [SP], --SP
0x0A3B: D0 05		pop	R5<#0>					; R5<#0> = [SP], --SP
0x0A3D: D0 06		pop	R6<#0>					; R6<#0> = [SP], --SP
0x0A3F: 80 CA		sjmp	Label_117				; Jumps (backward) hither: 0x0A0B

Label_121:

0x0A41: C3		clr	C					; CY = L
0x0A42: E5 4B		mov	A, 0x4B					; ACC = [0x4B]
0x0A44: 95 50		subb	A, 0x50					; ACC -= [0x50] + CY
0x0A46: E5 4C		mov	A, 0x4C					; ACC = [0x4C]
0x0A48: 95 51		subb	A, 0x51					; ACC -= [0x51] + CY
0x0A4A: 50 0F		jnc	Label_122				; If (CY == L) then jumps (forward) hither: 0x0A5B

0x0A4C: E5 50		mov	A, 0x50					; ACC = [0x50]
0x0A4E: C3		clr	C					; CY = L
0x0A4F: 95 4B		subb	A, 0x4B					; ACC -= [0x4B] + CY
0x0A51: F5 58		mov	0x58, A					; [0x58] = ACC
0x0A53: E5 51		mov	A, 0x51					; ACC = [0x51]
0x0A55: 95 4C		subb	A, 0x4C					; ACC -= [0x4C] + CY
0x0A57: F5 59		mov	0x59, A					; [0x59] = ACC
0x0A59: 80 0D		sjmp	Label_124				; Jumps (forward) hither: 0x0A68

Label_122:

0x0A5B: E4		clr	A					; ACC = 0
0x0A5C: F5 58		mov	0x58, A					; [0x58] = ACC
0x0A5E: F5 59		mov	0x59, A					; [0x59] = ACC
0x0A60: 80 06		sjmp	Label_124				; Jumps (forward) hither: 0x0A68

Label_123:

0x0A62: 85 5A 58	mov	0x58, 0x5A				; [0x58] = [0x5A]
0x0A65: 85 5B 59	mov	0x59, 0x5B				; [0x59] = [0x5B]

Label_124:

0x0A68: A9 4F		mov	R1, 0x4F				; R1 = [0x4F]
0x0A6A: 85 4B 5A	mov	0x5A, 0x4B				; [0x5A] = [0x4B]
0x0A6D: 85 4C 5B	mov	0x5B, 0x4C				; [0x5B] = [0x4C]

Label_125:

0x0A70: AA 5A		mov	R2, 0x5A				; R2 = [0x5A]
0x0A72: AD 5B		mov	R5, 0x5B				; R5 = [0x5B]
0x0A74: 15 5A		dec	0x5A					; --[0x5A]
0x0A76: 74 FF		mov	A, #0xFF				; ACC = 0xFF
0x0A78: B5 5A 02	cjne	A, 0x5A, Label_126			; If (ACC != [0x5A]) then jumps (forward) hither: 0x0A7D

0x0A7B: 15 5B		dec	0x5B					; --[0x5B]

Label_126:

0x0A7D: EA		mov	A, R2					; ACC = R2
0x0A7E: 4D		orl	A, R5					; ACC |= R5
0x0A7F: 60 2E		jz	Label_130				; If (ACC == 0) then jumps (forward) hither: 0x0AAF

0x0A81: EC		mov	A, R4					; ACC = R4
0x0A82: B4 01 00	cjne	A, #0x01, Label_127			; If (ACC != 0x01) then jumps (forward) hither: 0x0A85

Label_127:

0x0A85: E4		clr	A					; ACC = 0
0x0A86: 33		rlc	A					; ACC[76543210] = ACC[6543210C], CY = ACC[7]
0x0A87: FC		mov	R4, A					; R4 = ACC
0x0A88: 70 0A		jnz	Label_128				; If (ACC != 0) then jumps (forward) hither: 0x0A94

0x0A8A: 09		inc	R1					; ++R1
0x0A8B: E7		mov	A, @R1					; ACC = [R1]
0x0A8C: C4		swap	A					; ACC[76543210] = ACC[32107654]
0x0A8D: 54 0F		anl	A, #0x0F				; ACC &= 0x0F
0x0A8F: FD		mov	R5, A					; R5 = ACC
0x0A90: 8D 3B		mov	0x3B, R5				; [0x3B] = R5
0x0A92: 80 07		sjmp	Label_129				; Jumps (forward) hither: 0x0A9B

Label_128:

0x0A94: 87 05		mov	R5<#0>, @R1				; R5<#0> = [R1]
0x0A96: 74 0F		mov	A, #0x0F				; ACC = 0x0F
0x0A98: 5D		anl	A, R5					; ACC &= R5
0x0A99: F5 3B		mov	0x3B, A					; [0x3B] = ACC

Label_129:

0x0A9B: 85 3B 82	mov	DPL, 0x3B				; DPL = [0x3B]
0x0A9E: C0 06		push	R6<#0>					; ++SP, [SP] = R6<#0>
0x0AA0: C0 04		push	R4<#0>					; ++SP, [SP] = R4<#0>
0x0AA2: C0 01		push	R1<#0>					; ++SP, [SP] = R1<#0>
0x0AA4: 12 02 85	lcall	Function_007				; Calls (backward) this: 0x0285 (PC += 3, [++SP] = PCL, [++SP] = PCH, PC = 0x0285)
0x0AA7: D0 01		pop	R1<#0>					; R1<#0> = [SP], --SP
0x0AA9: D0 04		pop	R4<#0>					; R4<#0> = [SP], --SP
0x0AAB: D0 06		pop	R6<#0>					; R6<#0> = [SP], --SP
0x0AAD: 80 C1		sjmp	Label_125				; Jumps (backward) hither: 0x0A70

Label_130:

0x0AAF: EE		mov	A, R6					; ACC = R6
0x0AB0: 70 03		jnz	Label_131				; If (ACC != 0) then jumps (forward) hither: 0x0AB5

0x0AB2: 02 03 14	ljmp	Label_019				; Jumps (backward) hither: 0x0314

Label_131:

0x0AB5: AD 58		mov	R5, 0x58				; R5 = [0x58]
0x0AB7: AE 59		mov	R6, 0x59				; R6 = [0x59]

Label_132:

0x0AB9: 8D 03		mov	R3<#0>, R5				; R3<#0> = R5
0x0ABB: 8E 04		mov	R4<#0>, R6				; R4<#0> = R6
0x0ABD: 1D		dec	R5					; --R5
0x0ABE: BD FF 01	cjne	R5, #0xFF, Label_133			; If (R5 != 0xFF) then jumps (forward) hither: 0x0AC2

0x0AC1: 1E		dec	R6					; --R6

Label_133:

0x0AC2: EB		mov	A, R3					; ACC = R3
0x0AC3: 4C		orl	A, R4					; ACC |= R4
0x0AC4: 70 03		jnz	Label_134				; If (ACC != 0) then jumps (forward) hither: 0x0AC9

0x0AC6: 02 03 14	ljmp	Label_019				; Jumps (backward) hither: 0x0314

Label_134:

0x0AC9: 75 82 20	mov	DPL, #0x20				; DPL = 0x20 {' '}
0x0ACC: C0 06		push	R6<#0>					; ++SP, [SP] = R6<#0>
0x0ACE: C0 05		push	R5<#0>					; ++SP, [SP] = R5<#0>
0x0AD0: 12 02 62	lcall	Function_005				; Calls (backward) this: 0x0262 (PC += 3, [++SP] = PCL, [++SP] = PCH, PC = 0x0262)
0x0AD3: D0 05		pop	R5<#0>					; R5<#0> = [SP], --SP
0x0AD5: D0 06		pop	R6<#0>					; R6<#0> = [SP], --SP
0x0AD7: 80 E0		sjmp	Label_132				; Jumps (backward) hither: 0x0AB9

Label_135:

0x0AD9: 8F 82		mov	DPL, R7					; DPL = R7
0x0ADB: 12 02 62	lcall	Function_005				; Calls (backward) this: 0x0262 (PC += 3, [++SP] = PCL, [++SP] = PCH, PC = 0x0262)
0x0ADE: 02 03 14	ljmp	Label_019				; Jumps (backward) hither: 0x0314

Label_136:

0x0AE1: 85 3C 82	mov	DPL, 0x3C				; DPL = [0x3C]
0x0AE4: 85 3D 83	mov	DPH, 0x3D				; DPH = [0x3D]
0x0AE7: 22		ret						; PCH = [SP--], PCL = [SP--]

;-------------------------------------------------------------------------------

Function_011:

0x0AE8: AA 82		mov	R2, DPL					; R2 = DPL
0x0AEA: AB 83		mov	R3, DPH					; R3 = DPH

Label_137:

0x0AEC: 12 0B 1D	lcall	Function_013				; Calls (forward) this: 0x0B1D (PC += 3, [++SP] = PCL, [++SP] = PCH, PC = 0x0B1D)
0x0AEF: 60 03		jz	Label_138				; If (ACC == 0) then jumps (forward) hither: 0x0AF4

0x0AF1: A3		inc	DPTR					; ++DPTR
0x0AF2: 80 F8		sjmp	Label_137				; Jumps (backward) hither: 0x0AEC

Label_138:

0x0AF4: C3		clr	C					; CY = L
0x0AF5: E5 82		mov	A, DPL					; ACC = DPL
0x0AF7: 9A		subb	A, R2					; ACC -= R2 + CY
0x0AF8: F5 82		mov	DPL, A					; DPL = ACC
0x0AFA: E5 83		mov	A, DPH					; ACC = DPH
0x0AFC: 9B		subb	A, R3					; ACC -= R3 + CY
0x0AFD: F5 83		mov	DPH, A					; DPH = ACC
0x0AFF: 22		ret						; PCH = [SP--], PCL = [SP--]

;-------------------------------------------------------------------------------

Function_012:

0x0B00: E5 82		mov	A, DPL					; ACC = DPL
0x0B02: 85 5F F0	mov	B, 0x5F					; B = [0x5F]
0x0B05: A4		mul	AB					; B:ACC = ACC * B
0x0B06: C5 82		xch	A, DPL					; ACC <-> DPL
0x0B08: C0 F0		push	B					; ++SP, [SP] = B
0x0B0A: 85 60 F0	mov	B, 0x60					; B = [0x60]
0x0B0D: A4		mul	AB					; B:ACC = ACC * B
0x0B0E: D0 F0		pop	B					; B = [SP], --SP
0x0B10: 25 F0		add	A, B					; ACC += B
0x0B12: C5 83		xch	A, DPH					; ACC <-> DPH
0x0B14: 85 5F F0	mov	B, 0x5F					; B = [0x5F]
0x0B17: A4		mul	AB					; B:ACC = ACC * B
0x0B18: 25 83		add	A, DPH					; ACC += DPH
0x0B1A: F5 83		mov	DPH, A					; DPH = ACC
0x0B1C: 22		ret						; PCH = [SP--], PCL = [SP--]

;-------------------------------------------------------------------------------

Function_013:

0x0B1D: 20 F7 14	jb	0xF7, Label_141				; If ([0xF7] == H) then jumps (forward) hither: 0x0B34

0x0B20: 30 F6 14	jnb	0xF6, Label_142				; If ([0xF6] == L) then jumps (forward) hither: 0x0B37

0x0B23: 88 83		mov	DPH, R0					; DPH = R0
0x0B25: A8 82		mov	R0, DPL					; R0 = DPL
0x0B27: 20 F5 07	jb	0xF5, Label_140				; If ([0xF5] == H) then jumps (forward) hither: 0x0B31

0x0B2A: E6		mov	A, @R0					; ACC = [R0]

Label_139:

0x0B2B: A8 83		mov	R0, DPH					; R0 = DPH
0x0B2D: 75 83 00	mov	DPH, #0x00				; DPH = 0x00 {'\0'}
0x0B30: 22		ret						; PCH = [SP--], PCL = [SP--]

Label_140:

0x0B31: E2		movx	A, @R0					; ACC = XRAM[R0]
0x0B32: 80 F7		sjmp	Label_139				; Jumps (backward) hither: 0x0B2B

Label_141:

0x0B34: E4		clr	A					; ACC = 0
0x0B35: 93		movc	A, @A+DPTR				; ACC = ROM[DPTR + ACC]
0x0B36: 22		ret						; PCH = [SP--], PCL = [SP--]

Label_142:

0x0B37: E0		movx	A, @DPTR				; ACC = XRAM[DPTR]
0x0B38: 22		ret						; PCH = [SP--], PCL = [SP--]

;-------------------------------------------------------------------------------

Function_014:

0x0B39: 75 82 00	mov	DPL, #0x00				; DPL = 0x00 {'\0'}
0x0B3C: 22		ret						; PCH = [SP--], PCL = [SP--]

0x0B3D: 30 31 00	jnb	0x31, Label_143				; If ([0x31] == L) then jumps (forward) hither: 0x0B40

Label_143:

0x0B40: 3C		addc	A, R4					; ACC += R4 + CY
0x0B41: 4E		orl	A, R6					; ACC |= R6
0x0B42: 4F		orl	A, R7					; ACC |= R7
0x0B43: 20 46 4C	jb	0x46, 0x0B92				; If ([0x46] == H) then jumps (forward) hither: 0x0B92

0x0B46: 4F		orl	A, R7					; ACC |= R7
0x0B47: 41 54		ajmp	0x0A54					; Jumps (backward) hither: 0x0A54 (PC += 2, PC(10-0) = 0x0254)

0x0B49: 3E		addc	A, R6					; ACC += R6 + CY
0x0B4A: 00		nop

0x0B4B: -- -- --
  ....  -- -- --
0xFFFF: -- -- --
