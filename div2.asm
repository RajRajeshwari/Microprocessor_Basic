;to divide a 16 bit no by 8 bit no
data segment
    num1 DW 9000H
    num2 DB 02H
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
    MOV BL,num2
    MOV BH,00H
    DIV BX
    MOV q,AX
    MOV r,DX
code ends
end start