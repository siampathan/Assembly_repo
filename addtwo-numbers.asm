.Model small
.Stack 100h
.data 
    msg1 db 10,13, "Enter first number : $"
    msg2 db 10,13, "Enter Second number : $"
    msg3 db 10,13, "Total : $"
.code
    main proc 
     mov ax,@data ;take in register
     mov ds,ax
     
     lea dx,msg1  ;print message
     mov ah,9
     int 21h
                  ;take first number
     mov ah,1
     int 21h
     mov bl,al
     
     lea dx,msg2  ;message2
     mov ah,9
     int 21h 
     
     mov ah,1     ;take second number
     int 21h
     mov bh,al
     
     lea dx,msg3  ;print 3rd message
     mov ah,9
     int 21h
     
     add bl,bh    ;add two number
     sub bl,48    ;subtraction 48 cause ascii value
     mov ah,2     ;print the result
     mov dl,bl
     int 21h
     
    main endp
    mov ah,4ch
    int 21h
    end main