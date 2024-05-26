org 0000h
ljmp main

org 000bh
ljmp isr

org 30h
main:
mov ie,#82h
mov p1,#0ffh
mov tmod,#82h
mov tl0,#0ch
mov th0,#0feh
setb tr0;start timer
clr p0.0


here:
mov a,p1
mov p2,a
sjmp here

isr:
cpl p0.0
clr tr0
mov tl0,#0ch
mov th0,#0feh
setb tr0
reti