; take two char or number and print , first assembly 

.model small
.stack 100h
.code

main proc
    mov ah,1  ; for input section
    int 21h
    mov bl,al 
    
    mov ah,1
    int 21h
    mov cl,al
    
    mov ah,2
    
    mov dl,0ah ;this is for new line
    int 21h
    mov dl,0dh
    int 21h
    
    mov dl,bl ;output section
    int 21h 
    
    mov ah,2
    mov dl,cl
    int 21h
    
    main endp
    mov ah,4ch
    int 21h
    end main