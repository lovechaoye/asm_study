;Âß¼­ÔËËã·û and or not xor test
include io32.inc
.data
	bvar byte 11000101b,11110111b
	wvar word 1234h,0ffh
.stack
.code
start:
	mov al,01011101b
	and al,bvar
	or al,bvar[1]
	not al
	test al,bvar+0
	mov al,byte ptr wvar+0
	xor bvar,al
	exit 0
	end start