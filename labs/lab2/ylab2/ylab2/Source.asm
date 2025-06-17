.686
.model flat,stdcall

.stack 100h

.data
X DW 0D5A9h ; ���������� ���������� X = D5A9
Y DW 031FFh ; ���������� ���������� Y = 31FF
Z DW 05555h ; ���������� ���������� Z = 5555
L DW 0
M DW 0
R DW 0

.code
ExitProcess PROTO STDCALL :DWORD
Start:

	dec X ; ��������� �� ����� X ����� 1

	mov ax, Y
	mov bx, X

	mov cx, 3

loops:
	add ax, bx ; ����������� � ����� Y ����� X
	loop loops ; ���������� �������� ����� � �����������, ���� �� �� ����� 0

	mov L, ax
	
	or bx, Z ; ���������� �������� X or Z
	mov M, bx
	cmp M, 10E8h ; ��������� �����
	jg program1 ; ���� M ������, ������� � �/� 1
	jmp program2 ; � ��������� ������ ������� � �/� 2

program1:
	mov ax, M
	sub ax, 211Fh ; ��������� �� ����� � ����� 211F
	mov R, ax
	jmp check

program2:
	mov ax, M
	add ax, 01D0h ; ����������� � ����� � ����� 01D0
	mov R, ax
	jmp check

check:
	mov cx, 0
	mov ax, R

bits:
	test ax, 1 ; �������� �������� ����
	jz next ; ���� 0, ������� � ���������� ����
	inc cx ; ���� 1, ���������� �������� �� 1

next:
	shr ax, 1 ; ����� ������ �� 1 ���
	jnz bits

	test cx, 1 ; �������� ��������
	jz address2 ; ���� ������, ������� � ���2

address1:
	mov ax, R
	shr ax, 1 ; ������� R �� 2
	mov R, ax
	jmp exit

address2:
	mov ax, R
	xor ax, 0F91h ; ���������� �������� R xor 0F91
	mov R, ax

exit:
Invoke ExitProcess,1
End Start