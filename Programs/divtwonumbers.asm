org 0h
mov a,#04h
mov b,#02h
div ab
mov 22h,a
mov 23h,b
here: sjmp here
end