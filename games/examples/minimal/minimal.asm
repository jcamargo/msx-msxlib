
;
; =============================================================================
;	MSXlib minimal example
; =============================================================================

; -----------------------------------------------------------------------------
; MSX symbolic constants
	include	"lib/msx/symbols.asm"

; MSX cartridge (ROM) header, entry point and initialization
	include "lib/msx/cartridge.asm"
; -----------------------------------------------------------------------------

; -----------------------------------------------------------------------------
; Game entry point
INIT:

; At this point, the cartridge is init, the RAM zeroed,
; The screen mode 2 with 16x16 unmagnified sprites,
; the keyboard click is muted, and the screen is disabled.

;
; YOUR CODE (ROM) START HERE
;
; Example:
;

; ; Frame rate related variables
; 	ld	a, [MSXID1]
; 	bit	7, a ; 0=60Hz, 1=50Hz
; 	ld	hl, (5<<8) + 50 
; 	; frame rate and frames per tenth for 50Hz
; 	jr	nz, .HL_OK
; 	ld	hl, (6<<8) + 60 ; frame rate and frames per tenth for 60Hz
; .HL_OK:
; 	ld	[frame_rate], hl

; In screen mode 2 we need to set up a charset
; to actually show something in the screen.
; Prepares a very uninspired charset (the default one) in the first bank
	ld	hl, [CGTABL] ; (address of ROM character set)
	ld	de, CHRTBL
	ld	bc, CHRTBL_SIZE
	call	LDIRVM
	ld	a, $F0 ; (white over blak)
	ld	hl, CLRTBL
	ld	bc, CHRTBL_SIZE
	call	FILVRM

; Fills the name table with spaces
; and prints a simple message
	ld	a, $20 ; ' '
	ld	hl, NAMTBL
	ld	bc, NAMTBL_SIZE
	call	FILVRM
	ld	hl, .MY_MESSAGE
	ld	de, NAMTBL
	ld	bc, .MY_MESSAGE_SIZE
	call	LDIRVM
   
; Re-enables the screen so we can see the results
	call	ENASCR

; (infinite loop)
.LOOP:
	halt
	jr	.LOOP

; The message to print
.MY_MESSAGE:
	db	"Hello, Julek, it seems it works!"

.MY_MESSAGE_SIZE:	equ $ - .MY_MESSAGE
; -----------------------------------------------------------------------------


	include	"lib/rom_end.asm"

; -----------------------------------------------------------------------------
; MSXlib core and game-related variables
	include	"lib/ram.asm"	

; lib/ram.asm automatically starts the RAM section at the proper address
; (either $C000 (16KB) or $E000 (8KB)) and includes everything MSXlib requires.

;;
; ; YOUR VARIABLES (RAM) START HERE

; [JC] The hard part is that tniasm works with mem pages as if it is a rom page
; the rom does not contain these 2 bytes.
; tniasm handles this behind scenes and it works...
; think how to solve this

; frame_rate:
; 	db	0x50
; frames_per_tenth:
; 	db	0x05
	
; -----------------------------------------------------------------------------
	include	"lib/ram_end.asm"

; EOF
