data segment
    num1 DB 80H
    num2 DB 87H
    dif DB ?
    borrow DB ?   
data ends
code segment
    start:
    assume cs:code ds:data
    mov ax,data
    mov ds,ax       
    
    mov al,num1
    sub al,num2
    mov dif,al
    mov bl,00h
    adc bl,bl
    mov borrow,bl
code ends
end start