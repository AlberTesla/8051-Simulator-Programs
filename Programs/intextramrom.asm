org 0h
mov dptr, #data
mov r0, #30h
movc a,@a+dptr
mov @r0, a
inc r0
mov a,#01h
movc a,@a+dptr
mov @r0, a

here: sjmp here

org 2000h
data:
db 0aah, 0bbh

end
