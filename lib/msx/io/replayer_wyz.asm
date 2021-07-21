
; =============================================================================
; 	Replayer routines: WYZPlayer v0.47c-based implementation
; =============================================================================

	CFG_RAM_REPLAYER_WYZ:	equ 1

; -----------------------------------------------------------------------------
; Initializes the replayer
REPLAYER.RESET:	equ	PLAYER_INIT
; -----------------------------------------------------------------------------

; -----------------------------------------------------------------------------
; Starts the replayer
; param a: song index (0, 1, 2...)
REPLAYER.PLAY:	equ	CARGA_CANCION
; -----------------------------------------------------------------------------

; -----------------------------------------------------------------------------
; Stops the replayer
REPLAYER.STOP:	equ	PLAYER_OFF
; -----------------------------------------------------------------------------

; -----------------------------------------------------------------------------
; Processes a frame in the replayer
REPLAYER.FRAME:	equ	INICIO
; -----------------------------------------------------------------------------

; -----------------------------------------------------------------------------
; WYZPlayer v0.47c
	include	"libext/wyzplayer/WYZPROPLAY47cMSX.ASM"
; -----------------------------------------------------------------------------

; EOF
