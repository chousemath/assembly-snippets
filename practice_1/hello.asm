section .data
	msg:	db "Hello World", 10   ; define data string, 10 is new line
	msg_L: 	equ $-msg	       ; calculates length of string above
	msg2:	db "My name is Jo", 10
	msg2_L:	equ $-msg2

section .text
	global _start:		     ; define starting point for program

_start: 
	mov eax, 4		     ; `4` stands for system writing data
	mov ebx, 1		     ; `1` stands for standard out
	mov ecx, msg
	mov edx, msg_L
	int 80h			     ; call the kenrel using `int 80h`
   
        mov eax, 4
	mov ebx, 1
	mov ecx, msg2
	mov edx, msg2_L
	int 80h

	mov eax, 1		     ; exit from program
	mov ebx, 0		     ; declare no errors
	int 80h
