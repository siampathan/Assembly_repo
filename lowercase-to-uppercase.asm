.Model small
.stack 100h
.data 
    msg1 db "Lower form : $" 
    msg2 db "Upper form : $"
.code
    main proc 
     mov ax,@data ;take message in register
     mov ds,ax
     
     lea dx,msg1  ;print message
     mov ah,9
     int 21h  
     
     mov ah,1
     int 21h    ;take input
     
     mov bl,al  ;input in register
     mov ah,2 
     
     mov dl,10  ;line brake
     int 21h
     mov dl,13
     int 21h
     
     lea dx,msg2 ;print message
     mov ah,9
     int 21h
     
     mov ah,2
     sub bl,32   ;subtraction -32
     mov dl,bl   ;print result
     int 21h
        
    main endp
    mov ah,4ch
    int 21h
    end main