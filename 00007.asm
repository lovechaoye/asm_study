;�Ĵ���Ѱַ,�������洢�ڼĴ�������
include io32.inc
.data

.code
	start:
	label1:mov al,ah
	label2:mov bx,ax
	mov ebx,eax
	mov dx,ds
	mov es,dx
	;mov edi,si    error A2022: instruction operands must be the same size �Ĵ���Ѱַ,ǰ��Ĵ����Ĵ�С�����൱
	call disprb
	call disprw
	call disprd
	mov eax,label1
	mov ebx,label2
	call disprd
	exit 0
	
	end start