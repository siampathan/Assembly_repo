.Model Small
.Stack 100h
.Code
  Main Proc 
    
    Mov ah,1
    int 21h
    
    Mov bl,al
    Mov ah,2
    Mov dl,0dh
    int 21h
    Mov dl,0ah
    int 21h
    
    CMP bl,121
    JE DISPLAY
      
    CMP bl,89 
    JE DISPLAY 
    JMP EXIT
    
    DISPLAY:
     Mov ah,2
     Mov dl,bl
     int 21h
    
    Exit:
     Mov ah,4ch
     int 21h
    Main Endp
  End Main