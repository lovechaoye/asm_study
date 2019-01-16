;pop 和 push
include io32.inc
.data
	line byte "------------",13,10,0;13 ='\r'=0dh, ,10='\n'=0ah  
	ten=10
	dvar dword 67762000h,12345678h
.code
start:
	mov edx,dvar+4
	push edx
	push dword ptr ten ;在pop  push中立即数还是要指明操作数的类型,因为pop和push支持字或者双字的单位,虽然也可以不指明,但是显然为了避免被错误使用还是指明的好 
	push dvar
	pop edx
	mov ebx,dvar+4
	pop dvar+4
	mov ebx,dvar+4
	pop ecx
	pop ecx
	exit 0
end start