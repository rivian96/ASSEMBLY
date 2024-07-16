;for writing our own shellcode

;it is important to remember 
;that smaller the final instruction size the better it is
;for us..

;so reducing instruction size and removing nulls(0x00) is a crucial part in shellcoding

;most shellcode might breakdown if you have nulls in it
;because null signifies end of strings

;and a for lot of exploits this can become a problem


global _start

section .text

_start:
	
	;printing hello world on scren

	
	mov al, 1	
	mov rdi, 1
	mov rsi, hello_world
	mov rdx, length
	syscall

	;exiting the program
	mov rax, 60
	mov rdi, 990
	syscall
section .data
	 hello_world: db "hello world this is assembly"
	 length: equ $-hello_world
