.MODEL SMALL
.DATA
        Val1    DB      ?
        msg1     DB      10,13,'ENTER HOW MANY NO U WANT:','$'
        msg2     DB      10,13,'ENTER NO:','$'
        msg3     DB      10,13,'AVEARGE:','$'
.CODE
    MAIN PROC
        MOV AX,@DATA
        MOV DS,AX

        LEA DX,msg1
        MOV AH,09H
        INT 21H

        MOV AH,01H
        INT 21H
        SUB AL,30H
        
        MOV CL,AL
        MOV BL,AL
        MOV AL,00
        MOV Val1,AL
        
        LBL1:
        LEA DX,msg2
        MOV AH,09H
        INT 21H

        MOV AH,01H
        INT 21H
        SUB AL,30H

        ADD AL,Val1
        MOV Val1,AL
        LOOP LBL1
        
        LBL2:
        LEA DX,msg3
        MOV AH,09H
        INT 21H

        MOV AX,00
        MOV AL,Val1
        DIV BL
        ADD AX,3030H
        MOV DX,AX
        MOV AH,02H
        INT 21H

        MOV AH,4CH
        INT 21H 
        

        MAIN ENDP
        END  MAIN