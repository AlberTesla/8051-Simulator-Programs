org 0 ; No need to specify origin for the reset vector

startLabel:
mov dptr, #data  ; Load DPTR with the address of data
mov a, dph       ; Move the high byte of DPTR to A (optional)
mov b, dpl       ; Move the low byte of DPTR to B (optional)

endLoop:
sjmp endLoop     ; Infinite loop

org 2000h        ; Set the origin for your data
data:
db 10, 20, 30, 40, 50, 60