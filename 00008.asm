;´æ´¢Æ÷Ö±½ÓÑ°Ö·
include io32.inc
.data
	count word 12h,-1,34h,0,1
.code 
	start:
	mov eax,dword ptr count
	mov ebx,ds:[405000h]
	mov ecx,offset count
	mov edx,ds:[ecx]
	call disprd
	exit 0
	end start