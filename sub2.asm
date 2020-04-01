data segment
    num1 DW 1234H
    num2 DW 4321H
    dif DW ?
    borrow DB ?   
data ends
code segment
    start:
    assume cs:code ds:data
    mov ax,data
    mov ds,ax       
    
    mov ax,num1
    sub ax,num2
    mov dif,ax
    mov bl,00h
    adc bl,bl
    mov borrow,bl
code ends
end start