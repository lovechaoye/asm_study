;定义常量和变量
include io32.inc
.data
	a=0FFh
	org 10H
	A equ "a"+"c"
	b="2222"
	;c equ 0AfH
	cc equ<'a'>
	d1 equ 'dd'
	f equ <1>
	e equ 1+1
		org 10H
	bv1 byte 0ffH
	org 10H
	;bv2 byte bv1
 	bv2 byte 3H
	wv1 dword 6 dup (-1)
	wv2 dword 033ffH,1\
			,0eH
.code 

start:
	mov eax,offset bv1
	call disphd

	exit 0
	
	end start