;������λ��ѭ�����ƺ����� rol ror rotate 
include io32.inc
.data

.code
start:
	mov al,10101101b
	mov cl,4
	rol al,1
	ror cl,cl
	exit 0
	end start