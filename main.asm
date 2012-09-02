
.include "tn2313def.inc"

main:
    ldi   r16, 0b00011000
    out   DDRD, r16
    ldi   r16, 0b00001000
    out   PORTD, r16
    rjmp  main
