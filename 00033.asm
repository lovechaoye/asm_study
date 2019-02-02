;处理器识别程序
include io32.inc
.data
	buffer byte 'The processor is ',12 dup(0),0
	bufsize=sizeof buffer
.code
start:
	mov eax,0
	cpuid
	mov dword ptr buffer+bufsize-13,ebx
	mov dword ptr buffer+bufsize-9,edx
	mov dword ptr buffer+bufsize-5,ecx
	mov eax,offset buffer
	call dispmsg
	exit 0
	end start