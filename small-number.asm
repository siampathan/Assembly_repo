.Model small
.Stack 100h
.data 
    msg1 db "Enter first number : $"
    msg2 db 10,13, "Enter second number : $"
    msg3 db 10,13, "Small number is : $"
.code
    main proc 
     mov ax,@data
     mov ds,ax
     
     lea dx,msg1
     mov ah,9
     int 21h 
     
     mov ah,1
     int 21h
     mov bl,al
     
     lea dx,msg2
     mov ah,9
     int 21h 
     
     mov ah,1
     int 21h
     mov bh,al
     
     small:
     cmp bl,bh
     jl  l1
     jmp l2
     
     l1:
     lea dx,msg3
     mov ah,9
     int 21h
     
     mov ah,2
     mov dl,bl
     int 21h 
     
     mov ah,4ch
     int 21h

     
      
     l2:
     lea dx,msg3
     mov ah,9
     int 21h
     
     mov ah,2
     mov dl,bh
     int 21h
     
    
    main endp
    mov ah,4ch
    int 21h
    end main