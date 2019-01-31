;不带进位的循环右移ror
include io32.inc
.data

.code
start:
	mov al,01001101b
	mov cl,3
	ror al,cl
	exit 0
	end start