; MSX-DOS function codes
_STROUT equ 09h
_CONOUT equ 02h
; MSX-DOS entry point
BDOS equ 0005h

; Our program!
    org 0100h
    ld de, TXT_HELLO1
    ld c, _STROUT
    call BDOS
    ld hl, TXT_HELLO2
    call PRINT
    ret 

; PRINT a zero-terminated string in MSX-DOS
; INPUT: HL points to start of string
PRINT:
    ; ASSERT HL>=TXT_HELLO2 && HL<TXT_END
    ld a, (hl)
    and a
    ret z
    ;
    push hl
    ld e, a
    ld c, _CONOUT
    call BDOS
    pop hl
    ;
    inc hl
    jr PRINT

TXT_HELLO1 DB "Hello MSX!$"
TXT_HELLO2 DB "\r\nDebugging with Dezog",0
TXT_END