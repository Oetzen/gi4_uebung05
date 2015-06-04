SECTION .data
	x DD 42000

SECTION .text
	global main

main:
	push ebp
	mov ebp, esp

	mov eax, 234567
	mov edx, 279
	push edx
	imul dword[x]
	jc carry
ende:	pop edx
	
	pop ebp	
	mov ebx,0
	mov eax,1
	int 0x80

carry:	
	jo sichern
	jmp ende
sichern:
	mov ebx, edx
	jmp ende
