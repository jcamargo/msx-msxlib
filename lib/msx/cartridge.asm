
; =============================================================================
; 	MSX cartridge (ROM) header, entry point and initialization
; =============================================================================

; -----------------------------------------------------------------------------
; Cartridge header
	org	$4000, $bfff
ROM_START:
	db	"AB"		; ID ("AB")
	dw	CARTRIDGE_INIT	; INIT
	ds	$4010 - $, $00	; STATEMENT, DEVICE, TEXT, Reserved
; -----------------------------------------------------------------------------

; -----------------------------------------------------------------------------
; Cartridge entry point
; System initialization: stack pointer, slots, RAM, CPU, VDP, PSG, etc.
CARTRIDGE_INIT:
; Ensures interrupt mode and stack pointer
; (perhaps this ROM is not the first thing to be loaded)
	di
	im	1
	ld	sp, [HIMEM]

IFDEF CFG_INIT_32KB_ROM
; Reads the primary slot of the page 1
	call    RSLREG ; a = 33221100
	rrca
	rrca
	and	$03	; a = xxxxxxPP
	ld	c, a	; c = xxxxxxPP
; Reads the expanded slot flag
	ld	hl, EXPTBL ; EXPTBL + a => EXPTBL for slot of page 1
	add	a, l
	ld	l, a
	ld	a, [hl]
	and	$80	; a = Exxxxxxx
; Defines slot ID (1/2)
	or	c	; a = ExxxxxPP
	ld	c, a	; c = ExxxxxPP
; Reads the secondary slot selection register
	inc	l ; hl += 4 => = SLTTBL for slot of page 1
	inc	l
	inc	l
	inc	l
	ld	a, [hl]
	and	$0c	; a = xxxxSSxx
; Define slot ID (2/2)
	or	c	; a = ExxxSSPP
; Enable
	ld	h, $80 ; Bit 6 and 7: page 2 ($8000)
	call	ENASLT
ENDIF ; CFG_INIT_32KB_ROM

IFDEF CFG_INIT_16KB_RAM
; RAM: checks availability of 16kB
	ld	hl, ram_start
	ld	a, [hl]
	cpl
	ld	[hl], a
	xor	[hl]
	jr	z, .RAM_OK ; yes

; no: screen 1 and warning text
	call	INIT32
	ld	hl, .TXT
	ld	de, NAMTBL + (SCR_WIDTH - 17) /2 + 11 *SCR_WIDTH
	ld	bc, 17
	call	LDIRVM
; halts the execution
	di
	halt
.TXT:
	db	"16KB RAM REQUIRED" ; 17 bytes
.RAM_OK:
ENDIF

; CPU: Ensures Z80 mode
	ld	a, [MSXID3]
	cp	3 ; 3 = MSX turbo R
	jr	nz, .CPU_OK
; MSX turbo R: switches to Z80 mode
	ld	a, $80 ; also disables the LED (besides the R800)
	call	CHGCPU
.CPU_OK:

; VDP: color 15,1,1
	ld	a, 15
	ld	[FORCLR], a
	ld	a, 1
	ld	[BAKCLR], a
	ld	[BDRCLR], a
; VDP: screen 2
	call	INIGRP
	call	DISSCR
; screen ,2
	ld	hl, RG1SAV
	set	1, [hl]
; screen ,,0
	xor	a
	ld	[CLIKSW], a

; PSG: silence
	call	GICINI

; Zeroes all the used RAM
	ld	hl, ram_start
	ld	de, ram_start +1
	ld	bc, ram_end - ram_start  -1
	ld	[hl], 0
	ldir

; Frame rate dependant variables
; Chooses the proper source (50Hz or 60Hz)
	ld	a, [MSXID1]
	bit	7, a ; 0=60Hz, 1=50Hz
	ld	hl, FRAME_RATE_50HZ_0
	ld	bc, FRAME_RATE_SIZE
	jr	nz, .HL_OK
; skips the 50Hz entry and goes to the 60Hz entry
	add	hl, bc
.HL_OK:
; blits the correct entry
	ld	de, frame_rate
	ld	bc, FRAME_RATE_SIZE
	ldir

; IF (CFG_OPTIONAL_PT3HOOK > 0)
; ; preserva la rutina de interrupción que pudiera existir
	; ld	hl, HTIMI
	; ld	de, old_htimi_hook
	; ld	bc, HOOK_SIZE
	; ldir
; ENDIF ; (CFG_OPTIONAL_PT3HOOK > 0)

; salta hasta el punto de entrada principal del juego
	jp	MAIN_INIT
; -----------------------------------------------------------------------------

; -----------------------------------------------------------------------------
; frame_rate / frames_per_tenth
FRAME_RATE_50HZ_0:
	db	50, 5
	FRAME_RATE_SIZE:	equ $ - FRAME_RATE_50HZ_0
	
FRAME_RATE_60HZ_0:
	db	60, 6
; -----------------------------------------------------------------------------

; EOF
