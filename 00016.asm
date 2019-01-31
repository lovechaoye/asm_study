;¼Ó·¨
include io32.inc
.data
	const=10
	bvar byte 12h,-1,0,120
.code 
start:
	mov al,0f6h
	add al,const
	xor bl,bl
	add bl,bvar
	add bl,0eeh
	add bl,10
	add bvar,244
	xor al,al
	mov al,-3
	add al,-125
	xor al,al
	mov al,010h
	add al,al
	call disprd
exit 0
end start