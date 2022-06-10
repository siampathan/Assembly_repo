 Print macro msg
   Lea dx,msg
   Mov ah,09h
   Int 21h
 Endm 
 
.model small
.stack
.data
   Msg1 db 0dh,0ah, 'M=$'
   Msg2 db 0dh,0ah, 'N=$'
   Msg3 db 0dh,0ah, 'P=$'
   Msg4 db 0dh,0ah, 'Y=M+N - P+1=$'
.code

Main proc 
    
       Mov ax,@data
       Mov ds,ax
       Print msg1
       Mov ah,01h
       Int 21h 
       
       Sub al,30h
       Push ax
       Print msg2
       Mov ah,01h
       Int 21h 
       
       Sub al,30h
       Push ax
       Print msg3
       Mov ah,01h
       Int 21h
       Sub al,30h

       Push ax
       Pop cx
       Pop bx
       Pop  ax 
       
       Mov ah,00
       Add al,bl
       Sub al,cl
       Add al,01
       Push ax
       Print msg4
       
       Pop ax
       Mov dl,al
       Add dl,30h
       Mov ah,02h
       Int 21h
       Mov ah,4ch
       Int 21h
       
    Main endp
    End main
