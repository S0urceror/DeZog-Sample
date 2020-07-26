; MSX-DOS function codes
_STROUT equ 09h
_CONOUT equ 02h
; MSX-DOS entry point
BDOS equ 0005h

; Our program!
    org 0100h
START:
    ld de, TXT_HELLO1
    ld c, _STROUT
    call BDOS
    ld hl, TXT_HELLO2
    call PRINT
    ; the following should trigger an error
    ld hl, TXT_ERROR
    call PRINT
    ret 

    include "print.asm"

TXT_HELLO1 DB "Hello MSX!$"
TXT_ERROR  DB 0
