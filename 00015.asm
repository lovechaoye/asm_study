;pop ºÍ push
include io32.inc
.data
	line byte "------------",13,10,0;13 ='\r'=0dh, ,10='\n'=0ah  
	ten=10
	dvar dword 67762000h,12345678h
.code
start:
	mov eax,offset line
	call dispmsg
	call disprd
	
	mov edx,dvar+4
	
	call dispmsg
	call disprd
	
	push edx
	
	call dispmsg
	call disprd
	
	
	push dword ptr ten
	
	call dispmsg
	call disprd
	
	push dvar
	
	call dispmsg
	call disprd
	
	pop edx
	mov ebx,dvar+4
	call dispmsg
	call disprd
	
	pop dvar+4
	
	call dispmsg
	call disprd

	mov ebx,dvar+4
	pop ecx
	call dispmsg
	call disprd


exit 0

end start