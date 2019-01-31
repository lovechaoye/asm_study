;shr
include io32.inc
.data
bvar byte 10011101b,11110001b
.code
start:
	mov cl,4
	shr bvar[0],1
	shr bvar[1],cl
	exit 0
	end start