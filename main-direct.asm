; MSX-DOS function codes
CHPUT equ 0A2h

; Our program!
    org 0C000h
START:
    ld hl, TXT_HELLO1
    call PRINT
    ld hl, TXT_HELLO2
    call PRINT
    ; the following should trigger an error
    ld hl, TXT_ERROR
    call PRINT
    ret 

; PRINT a zero-terminated string in MSX-DOS
; INPUT: HL points to start of string
PRINT:
    ; Check if the passed HL lies between start and end
    ;
    ; ASSERT HL>=TXT_ZERO_TERMINATED_START && HL<TXT_ZERO_TERMINATED_END
    ld a, (hl)
    and a
    ret z
    ;
    call CHPUT
    ;
    inc hl
    jr PRINT

TXT_ZERO_TERMINATED_START
TXT_HELLO1 DB "Hello MSX!",0
TXT_HELLO2 DB "\r\nDebugging with Dezog",0
TXT_ZERO_TERMINATED_END

TXT_ERROR  DB 0
