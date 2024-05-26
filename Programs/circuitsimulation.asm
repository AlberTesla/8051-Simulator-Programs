org 0000h
setb 00h
setb 01h
setb 02h
setb 03h
setb 04h
setb 05h
clr 06h
clr cy

mov c,00h
anl c,01h
mov 00h,c
mov c,02h
orl c,03h
anl c,00h
cpl c
mov 00h,c
mov c,04h
orl c,/05
anl c,00h
mov 06h,c
end