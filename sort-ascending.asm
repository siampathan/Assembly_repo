.Model small
.Stack 100h
.Data
    list db 9,7,8,6,5,4,1,2,3
.Code
    Main Proc
      Mov ax,@Data
      Mov ds,ax
      
      lea SI,list
      Mov bx,9
      
      Push bx
      Push SI
      Dec bx
      
      l1:
      Push SI
      Mov dx,SI
      inc SI
      Mov di,SI
      Mov SI,dx
      Mov cx,bx
      
      l2:
      Mov al,[di]
      CMP [SI],al
      JNG l3
      XCHG [SI],al
      Mov [di],al
      
      l3:
      Mov SI,di
      inc di
      Loop l2
      POP SI
      DEC bx
      JNZ l1
      POP SI
      POP bx
      Mov cx,bx
      
      print:
      Mov dl,[SI]
      Add dl,30h
      Mov ah,2
      int 21h
      
      Mov dl,' '
      int 21h
      
      inc SI
      Loop print
      
      Mov ah,4ch
      int 21h
      
      Main Endp
    End Main