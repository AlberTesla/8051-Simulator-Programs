org 0000h
main:
clr p1.2
acall delay
setb p1.2
acall delay
sjmp main

delay:
mov tmod,#01h
mov th0,#0feh
mov tl0,#0ch
mov tcon,#10h
wait:
jnb tf0,wait
clr tr0
clr tf0
ret