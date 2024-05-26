org 0000h
mov r0,#34h
mov r1,#12h
mov r2,#0cdh
mov r3,#0abh

mov a,r0
mov b,r2
mul ab
mov r4,a
mov r5,b

mov a,r1
mov b,r3
mul ab
mov r6,a
mov r7,b

mov a,r1
mov b,r2
mul ab
add a,r5
mov r5,a
mov a,b
addc a,r6
mov r6,a
jnc jump
inc r7

jump:
mov a,r0
mov b,r3
mul ab
add a,r5
mov r5,a
mov a,b
addc a,r6
mov r6,a
jnc here
inc r7

here: sjmp here
end