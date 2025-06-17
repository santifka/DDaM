.686
.model flat,stdcall

.stack 100h

.data
X dw 103 ; объявление переменной размером 2 байта X = 103
Y dw 12 ; объявление переменной размером 2 байта Y = 12

.code
ExitProcess PROTO STDCALL :DWORD
Start:

	mov ax, bx

	sub ax, X ; вычитание из 0 числа X
	sub bx, Y ; вычитание из 0 числа Y
	mov cx, bx ; значение из регистра bx переносится в значение регистра cx

	imul bx, 4 ; умножение отрицательного числа Y на 4
	sub ax, bx ; вычитание из отрицательного числа X умноженное на 4 значение отрицательного Y
	xor ax, cx ; выполнение операции XOR над полученным ранее значением и отрицательным значением Y

exit:
Invoke ExitProcess,1
End Start