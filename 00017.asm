;add��adcָ��,��Ϊͬ�����Ǽӷ�ָ��,�������adcָ��Ҫ���ϱ�־λcf  ����һ���ӷ�ָ��inc reg/mem ֵ����1
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