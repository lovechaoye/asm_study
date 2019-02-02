;顺序结构示例程序1 .自然数求和  即 ∑n=(n+1)*n/2
include io32.inc
.data
	num dword 3456
	sum qword ?
.code
start:
	mov eax,num
	inc eax
	imul num
	shr edx,1
	rcr eax,1
	mov dword ptr sum,eax
	mov dword ptr sum+4,edx
	exit 0
	end start