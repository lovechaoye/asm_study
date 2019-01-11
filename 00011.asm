;¼Ä´æÆ÷Ïà¶ÔÑ°Ö·
include io32.inc
.data
	srcmsg byte 'Try your best,why not.',0
	dstmsg byte sizeof srcmsg dup(?)
.code 
	start:
		mov ecx,lengthof srcmsg
		mov ebx,0
again:		
		mov al,[ebx+srcmsg] ;mov al,srcmsg[ebx]
		mov dstmsg[ebx],al ;mov [ebx+dstmsg],al
		add ebx,1
		loop again
		mov eax,offset dstmsg
		call dispmsg
	exit 0
	
	end start