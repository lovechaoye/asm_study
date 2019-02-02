;无条件转移指令
include io32.inc
.data
	msg byte 'hello world',13,10,0
.code
start:
	again:   mov eax,offset msg
	   call dispmsg
	jmp again
	exit 0
	end start