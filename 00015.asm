;pop �� push
include io32.inc
.data
	line byte "------------",13,10,0;13 ='\r'=0dh, ,10='\n'=0ah  
	ten=10
	dvar dword 67762000h,12345678h
.code
start:
	mov edx,dvar+4
	push edx
	push dword ptr ten ;��pop  push������������Ҫָ��������������,��Ϊpop��push֧���ֻ���˫�ֵĵ�λ,��ȻҲ���Բ�ָ��,������ȻΪ�˱��ⱻ����ʹ�û���ָ���ĺ� 
	push dvar
	pop edx
	mov ebx,dvar+4
	pop dvar+4
	mov ebx,dvar+4
	pop ecx
	pop ecx
	exit 0
end start