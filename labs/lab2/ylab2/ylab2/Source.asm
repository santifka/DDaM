.686
.model flat,stdcall

.stack 100h

.data
X DW 0D5A9h ; объ€вление переменной X = D5A9
Y DW 031FFh ; объ€вление переменной Y = 31FF
Z DW 05555h ; объ€вление переменной Z = 5555
L DW 0
M DW 0
R DW 0

.code
ExitProcess PROTO STDCALL :DWORD
Start:

	dec X ; вычитание из числа X число 1

	mov ax, Y
	mov bx, X

	mov cx, 3

loops:
	add ax, bx ; прибавление к числу Y число X
	loop loops ; уменьшение счЄтчика цикла и продолжение, если он не равен 0

	mov L, ax
	
	or bx, Z ; выполнение операции X or Z
	mov M, bx
	cmp M, 10E8h ; сравнение чисел
	jg program1 ; если M больше, переход к п/п 1
	jmp program2 ; в противном случае переход к п/п 2

program1:
	mov ax, M
	sub ax, 211Fh ; вычитание из числа ћ число 211F
	mov R, ax
	jmp check

program2:
	mov ax, M
	add ax, 01D0h ; прибавление к числу ћ число 01D0
	mov R, ax
	jmp check

check:
	mov cx, 0
	mov ax, R

bits:
	test ax, 1 ; проверка младшего бита
	jz next ; если 0, переход к следующему биту
	inc cx ; если 1, увеличение счЄтчика на 1

next:
	shr ax, 1 ; сдвиг вправо на 1 бит
	jnz bits

	test cx, 1 ; проверка чЄтности
	jz address2 ; если чЄтное, переход к јƒ–2

address1:
	mov ax, R
	shr ax, 1 ; деление R на 2
	mov R, ax
	jmp exit

address2:
	mov ax, R
	xor ax, 0F91h ; выполнение операции R xor 0F91
	mov R, ax

exit:
Invoke ExitProcess,1
End Start