rb      MACRO count?
            ds count?
            ; in tniASM the `rb/rw` does not emit bytes to output, so rewind the output
            FPOS -(count?)
        ENDM

rw      MACRO count?
            ds 2 * count?
            ; in tniASM the `rb/rw` does not emit bytes to output, so rewind the output
            FPOS -(2 * count?)
        ENDM

fname   MACRO name?
            DEFINE __CURRENT_OUTPUT_NAME__ name?
            OUTPUT name?,t      ; truncate the file first
            OUTPUT name?,r      ; reopen it to allow also position seeks (for rb/rw macros)
        ENDM

; switch multiarg delimiter to ",," (to produce correct opcode for `sub a,7` ("a" option)
; treat "wholesome" round parentheses as memory access ("b" option)
; warn about any fake instruction ("f")
        OPT --syntax=abf

; command line to build migrated sources with sjasmplus (inside the "engine" folder):
; sjasmplus --sym=theproject.sym --dirbol --fullpath --longptr ../sjasm_preamble.asm Main.asm