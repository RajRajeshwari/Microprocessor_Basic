;to divide a 16 bit no by 16 bit no
data segment
    num1 DW 5678H
    num2 DW 1234H
    q DW ?
    r DW ?
data ends
code segment
    start:
    assume DS:data CS:code
    MOV AX,data
    MOV DS,AX
    MOV AX,num1
    MOV DX,0000H
    MOV BX,num2
    DIV BX
    MOV q,AX
    MOV r,DX
code ends
end start