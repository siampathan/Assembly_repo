.model small
.stack 100h
.data
msg1 db "Wellcome Siam$"
msg2 db "Assembly Working$" 
msg3 db "This is next one$"
.code      

main proc
    mov ax,@data
    mov ds,ax
    
    
    
    lea dx,msg1
    mov ah,9h
    int 21h  
    
    mov dx,10
    mov ah,2
    int 21h 
    
    mov dx,13
    mov ah,2
    int 21h
    
     
    
    lea dx,msg2   
    mov ah,9h
    int 21h 
    
    mov dx,10
    mov ah,2
    int 21h 
    
    mov dx,13
    mov ah,2
    int 21h 
    
    lea dx,msg3
    mov ah,9h
    int 21h 
    
    
    main endp
    mov ah,4ch
    int 21h
    end main