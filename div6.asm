;to divide a 8 bit no by 8 bit no
data segment
    num1 DB 78H
    num2 DB 12H
    q DB ?
    r DB ?
data ends
code segment
    start:
    assume DS:data CS:code
    MOV AX,data
    MOV DS,AX
    MOV AL,num1 
    MOV AH,00H
    MOV BH,num2
    DIV BH
    MOV q,AL
    MOV r,AH
code ends
end start