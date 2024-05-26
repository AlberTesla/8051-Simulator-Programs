org 0000h
mov a,#07fh
mov b,#100
div ab
mov 41h,a
mov a,b
mov b,#10
div ab

swap a
add a,b
mov 42h,a
here: sjmp here
end