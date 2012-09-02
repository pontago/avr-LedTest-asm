
.include "tn2313def.inc"

main:
    ldi   r16, 0b00011000
    out   DDRD, r16
    ldi   r16, 0b00010000
    out   PORTD, r16
    rcall delay1s
    ldi   r16, 0b00001000
    out   PORTD, r16
    rcall delay1s
    rjmp  main

delay1s:
    ldi  r16, 100
    mov  r2,  r16
dly2:
    ldi  r16, 100
    mov  r1,  r16
dly1:
    ldi  r16, 200
    mov  r0,  r16
dly0:
    nop
    dec  r0
    brne dly0
    dec  r1
    brne dly1
    dec  r2
    brne dly2
    ret
