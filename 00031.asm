;����λ�ģ�Ҳ����cf��־λ����ѭ������ָ�� rcr
include io32.inc
.data
.code
start:
	mov al,11100101b
	mov cl,4
	rcr al,1
	rcr al,cl
	exit 0
	end start