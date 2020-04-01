mov ah,01h
int 21h  
aaa 
mov bl,al
mov ah,01h
int 21h
aaa 
mov ah,00h
add al,bl 
daa