;´æ´¢Æ÷Ñ°Ö·
include io32.inc
.data
	bvar byte 87h,49h
	dvar dword 12345678h,12,-1,-1
.code 
	start:
	mov cl,bvar
	mov edx,dvar
	mov bvar+1,dh
	mov eax,dvar+2
	call disprd
	mov word ptr dvar+2,dx
	mov eax,dvar+2
	call disprd
	mov dvar,87654321h
	mov eax,dvar
	;mov dvar+4,dvar
	call disprd
	exit 0
	
	end start