.686
.model flat,stdcall

.stack 100h

.data
M DD 10,10,10
P DD ?
S DD ?

.code
ExitProcess PROTO STDCALL :DWORD
Start:

	mov eax, [M]
	add eax, [M + 4]
	add eax, [M + 8]
	shr eax, 1
	mov P, eax

	mov ebx, P

	mov ebx, P
	sub ebx, [M]
	mul ebx
	
	mov ebx, P
	sub ebx, [M + 4]
	mul ebx

	mov ebx, P
	sub ebx, [M + 8]
	mul ebx
	mov S, eax

	fild S
	fsqrt
	fistp S

exit:
Invoke ExitProcess,1
End Start