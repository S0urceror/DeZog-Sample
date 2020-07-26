
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
    push hl
    ld e, a
    ld c, _CONOUT
    call BDOS
    pop hl
    ;
    inc hl
    jr PRINT

TXT_ZERO_TERMINATED_START
TXT_HELLO2 DB "\r\nDebugging with Dezog",0
TXT_ZERO_TERMINATED_END