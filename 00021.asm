;大小写转换程序
include io32.inc
.data
	msg byte 'welcome',0
.code
start:
	mov ecx,(lengthof msg) -1
	mov ebx,offset msg
	again:
	sub byte ptr [ebx],'a'-'A'
	inc ebx
	loop again
	mov eax,offset msg
	call dispmsg
	exit 0
	end start