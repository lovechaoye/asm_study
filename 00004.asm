;
include io32.inc
.data
	cv1=90fH
	bv1 byte 0,-1,255,0afh,98
	org $+2
	wv1 word 0,-1,78,0bh
	org 789
	dv1 dword 0,-1,34
	align 1
	bv2 byte "hello,world",0
	align 4
	dv2 dword 0affH
.code
start:
	;lea eax,bv2;mov eax,offset bv2
	mov ebx,offset dv2
	mov eax,[ebx]
	mov ecx,0
	call disprd
exit 0

end start