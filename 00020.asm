;ºı∑®÷∏¡Ó—ßœ∞sub sbb dec neg cmp
include io32.inc
.data
	bvar byte 0afh
.code
start:
	mov al,3
	sub al,89
	mov al,0ffh
	sub al,bvar
	dec al
	dec byte ptr [ebx]
	dec bvar
	neg al
	neg ax
	neg bvar
	cmp al,0ffh
	cmp bvar,7fh
	exit 0
	end start