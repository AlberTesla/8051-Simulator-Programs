org 0h
mov 23h,#00h
mov a,20h
add a,21h
mov 22h,a
jnc label
mov 23h,#01h
label:
here: sjmp here
end