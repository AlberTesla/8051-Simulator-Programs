org 0000h
mov r3,#00h
mov r2,#0ah
mov dptr,#data
mov r0,#00h
mov r1,#00h
clr a
loop:
movc a,@a+dptr
rlc a
jc negative
inc r1
sjmp skip
negative:
inc r0
skip:
inc r3
mov a,r3
djnz r2,loop
here: sjmp here

org 2000h
data:
db -5,7,2,9,64,3,-21,-18,-4,1
end