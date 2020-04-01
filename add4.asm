data segment
    num1 DW 1234h
    num2 DW 1234h
    sum DW ?
    carry DB ?
data ends
code segment
    start:
    assume cs:code ds:data
    mov ax,data
    mov ds,ax       
    
    mov ax,num1
    add ax,num2 
    mov sum,ax 
    mov bl,00h
    adc bl,bl
    mov carry,bl
code ends
end start