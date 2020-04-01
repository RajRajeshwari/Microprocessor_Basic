data segment
    num1 DD 12345678H
    num2 DD 45678912H
    sum DD ?
    carry DB ?
data ends
code segment
    start:
    assume cs:code ds:data
    mov ax,data
    mov ds,ax       
    
    mov ax,num1
    mov bx,num1+2
    add ax,num2 
    adc bx,num2+2
    mov sum,ax 
    mov sum+2,bx
    mov bl,00h
    adc bl,bl
    mov carry,bl
code ends
end start