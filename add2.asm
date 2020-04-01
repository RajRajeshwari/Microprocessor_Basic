data segment
    num1 DB 80H
    num2 DB 87H
    sum DB ?
    carry DB ?
data ends
code segment
    start:
    assume cs:code ds:data
    mov ax,data
    mov ds,ax       
    
    mov al,num1
    add al,num2
    mov sum,al
    mov bl,00h
    adc bl,bl
    mov carry,bl
code ends
end start