.Model samll
.Stack 100h
.Code
    Main Proc 
        
     XOR bx,bx
     Mov cx,4
     
     input:
     Mov ah,1
     int 21h
     Mov bl,al
     Push bx
     Loop input 
     
     mov dx,10
     mov ah,2
     int 21h 
    
     mov dx,13
     mov ah,2
     int 21h
     
     Mov cx,4
     output:
     Pop bx
 
     Mov dl,bl
     Mov ah,2
     int 21h
     Loop output
     
     Main Endp
    End Main