org 0000h; program origin address

;copy array data to ram
mov r1,#70h
mov r2,#10h
mov r3,#00h
dataloop:
mov dptr,#data
movc a,@a+dptr
mov @r1,a
inc r3
mov a,r3
inc r1
djnz r2,dataloop

;sort program
mov r1,#70h
mov r2,#0fh
mov r3,#0fh
outerloop:
mov r1,#70h
mov a,r3
mov r2,a
innerloop:
mov a,@r1
inc r1
subb a,@r1
jc skip
dec r1
mov a,@r1
mov r6,a
inc r1
mov a,@r1
dec r1
mov @r1,a
mov a,r6
inc r1
mov @r1,a
skip:
djnz r2,innerloop
djnz r3,outerloop
here: sjmp here

org 2000h
data:
db 0fh,0eh,0dh,0ch,0bh,0ah,09h,08h,07h,06h,05h,04h,03h,02h,01h,00h
end
