;Âß¼­ÔËËã·û
include io32.inc
.data

.code
start:
	mov al,10011101b
	and al,7
	or al,-9
	not al
	test al,0ffh
exit 0

end start