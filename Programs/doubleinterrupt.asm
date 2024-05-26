org 0000h
acall main
here: sjmp here

org 000bh
ljmp wave

org 0001bh
ljmp serial

org 0100h
wave:
cpl p0.0
reti

org 0200h
serial:
jnb ti,skip
inc r0
mov a,r0
clr tr1
clr tf1
clr ti
mov th1,#0fbh
mov tl1,#0fbh
setb tr1
mov sbuf,a
skip:
reti

org 0500h
main:
mov r0,#00h
mov p1,#0ffh
mov a,p1
mov p2,a
mov ie,#82h
mov scon,#40h
mov tmod,#21h
mov a,#30h
mov th1,#0fbh
mov tl1,#0fbh
setb tr1



ret

loop:
mov a,p1
mov p2,a
sjmp loop