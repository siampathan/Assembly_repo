.Model small
.Stack 100h
.Data
    Arr db 2,9,3,7,4 
    Res db ?
.code
    Main Proc
      Mov ax,@Data
      Mov ds,ax  
      
      
      lea dx,Arr
      Mov cx,5
      Mov al,[SI]  
      
      Largest:
       inc SI
       CMP al,[SI]
       JAE Next
       Mov al,[SI]
       Loop Largest 
        
         
        
      Next: 
         
       Loop Largest
       Mov Res,al
       Mov dl,al
       Add dl,48
       Mov ah,2
       int 21h
       
       Mov ah,4ch
       int 21h
       
       Main Endp
    End Main