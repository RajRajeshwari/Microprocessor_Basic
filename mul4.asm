;multiplication of a 16 bit no by 8 bit no
data segment
    num1 DW 2080H
    num2 DB 20H
    result DD ?
data ends
code segment
    start:
    assume DS:data CS:code
    MOV AX,data
    MOV DS,AX
    MOV AX,num1 
    MOV BH,00H
    MOV BL,num2
    MUL BX
    MOV result,AX 
    MOV result+2,DX
code ends
end start