.686
.model flat,stdcall

.stack 100h

.data
X dw 103 ; ���������� ���������� �������� 2 ����� X = 103
Y dw 12 ; ���������� ���������� �������� 2 ����� Y = 12

.code
ExitProcess PROTO STDCALL :DWORD
Start:

	mov ax, bx

	sub ax, X ; ��������� �� 0 ����� X
	sub bx, Y ; ��������� �� 0 ����� Y
	mov cx, bx ; �������� �� �������� bx ����������� � �������� �������� cx

	imul bx, 4 ; ��������� �������������� ����� Y �� 4
	sub ax, bx ; ��������� �� �������������� ����� X ���������� �� 4 �������� �������������� Y
	xor ax, cx ; ���������� �������� XOR ��� ���������� ����� ��������� � ������������� ��������� Y

exit:
Invoke ExitProcess,1
End Start