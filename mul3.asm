;multiplication of an 8 bit no by 16 bit no
data segment
    num1 DB 80H
    num2 DW 2000H
    result DD ?
data ends
code segment
    start:
    assume DS:data CS:code
    MOV AX,data
    MOV DS,AX
    MOV AL,num1 
    MOV AH,00H
    MOV BX,num2
    MUL BX
    MOV result,AX 
    MOV result+2,DX
code ends
end start