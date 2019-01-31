;add和adc指令,作为同样都是加法指令,区别就是adc指令要加上标志位cf  还有一个加法指令inc reg/mem 值递增1
include io32.inc
.data
	bvar byte 45,0a3h
	wvar word 45,0d478h
.code 
start:
	mov al,0
	add al,bvar
	add bvar,byte ptr wvar
	mov al,bvar[1]
	adc al,5fh
	mov al,bvar[1]
	adc al,5fh
	;add al,1
	inc al
	inc bvar
	call disprb
	exit 0
	end start