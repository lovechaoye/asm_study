;À„ ı“∆Œª÷∏¡Ó  sal sar  shift arthmetic left right
include io32.inc
.data

.code
start:
	mov al,01000000b
	sar al,3
	mov cl,0
	sar al,cl
	exit 0
	end start