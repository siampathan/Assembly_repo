.Model small
.Stack 100h
.data  
    msg1 db 10,13, "Enter a number : $"  
    msg2 db 10,13, "Even number $" 
    msg3 db 10,13, "Odd number $"
.Code
    main proc
      mov ax,@data ;enter in data register
      mov ds,ax
      
      lea dx,msg1  ;print message
      mov ah,9
      int 21h
                    ;take input
      mov ah,1
      int 21h 
      
      mov bl,2     ;number divided by 2
      div bl
      cmp ah,0      ;compare remainder is 0 or not
      je even       ;jump even statement  
      
      lea dx,msg3   ;if number not even then print this
      mov ah,9
      int 21h  
      
      mov ah,4ch   ;close this statement here
      int 21h
      
      even:
      lea dx,msg2   
      mov ah,9      ;print message
      int 21h
    
    
    main endp
    mov ah,4ch
    int 21h
    end main