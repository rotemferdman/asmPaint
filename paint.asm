
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
mov ah, 1
int 21h
sub al, 30h
mov ah, al
mov ax, 13h ;getting graphic mode
int 10h

mov ax,0h
int 33h ;reseting mouse

mov ax,1h
int 33h ;showing mouse onscreen

inc cx
a:     
push cx ; saving old cx 

mov ax,3h ;getting mouse location
int 33h 

mov bh, 0h 
 ;coordinates


mov ah, 0Ch  ;print pixel
int 10h 


pop cx
inc cx
loop a

ret
