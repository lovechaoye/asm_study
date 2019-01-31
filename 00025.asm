;“∆Œª÷∏¡Ó shl shr  sal sar 
include io32.inc
.data

.code
start:
	mov al,11010110b
	mov cl,2
	shl al,1
	shl al,cl
	exit 0
	end start