mov AH,01H
int 21H
mov BL,AL
mov AH,01H
int 21H
mov AH,00H
sub AL,BL
aas