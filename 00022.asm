;дѭ���ĳ���Ŀ��Ը��ݴ洢��Ԫ��Ѱַ��ʽ���иı�
include io32.inc 
.data
		msg byte 'welcome',0
.code
start:
	mov ecx,(lengthof msg) -1
	mov ebx,0
	again:add [ebx+msg],'A'-'a'
	inc ebx
	loop again
	mov eax,offset msg
	call dispmsg
	exit 0
	end start