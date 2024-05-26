org 0000h
main:
mov a,#4ah
acall start
here: sjmp here


start:
mov scon,#40h
mov tmod,#20h
mov th1,#0ffh
mov tl1,#0ffh
mov tcon,#40h
mov sbuf,a

loop: jnb ti,loop

clr ti
clr tr1
clr tf1
ret