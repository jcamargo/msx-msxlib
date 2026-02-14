
; =============================================================================
; 	RAM
; =============================================================================

	IFDEF CFG_INIT_16KB_RAM
RAMBASE:	equ $c000
	ELSE
RAMBASE:	equ $e000
	ENDIF

	STRUCT SRAMVARS

; -----------------------------------------------------------------------------
	; include "msx/ram_struct.asm"
namtbl_buffer	ds	NAMTBL_SIZE
    ; SPRATR buffer in RAM ; (aligned to $xx00)
spratr_buffer	ds	SPRATR_SIZE
frame_rate	ds	1
	; include "msx/etc/ram.asm"
	; include "game/ram.asm"
	; include "game/etc/ram.asm"
	; include "etc/ram.asm"
; -----------------------------------------------------------------------------
	ENDS

; -----------------------------------------------------------------------------
; (for debugging purposes only)
ram_msxlib_end:
; -----------------------------------------------------------------------------

; EOF
