;´æ´¢Æ÷¼ä½ÓÑ°Ö·
include io32.inc
	.data
	srcmsg byte 'Try your best,why not.',0
	dstmsg byte sizeof srcmsg dup(?)
	.code
	start:
		mov esi,offset srcmsg
		mov edi,offset dstmsg
		mov ecx,sizeof srcmsg
label1:	mov al,[esi]
				mov [edi],al
				add esi,1
				add edi,1
				loop label1
		
		
		mov eax,offset dstmsg
		call dispmsg
	exit 0
	
	end start