;����λ��ѭ����λָ��
include io32.inc
.data
.code
start:
	mov al,11100101b
	rcl al,1
	mov cl,4
	rcl al,cl
	exit 0
	end start