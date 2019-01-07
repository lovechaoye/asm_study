;org伪指令用于控制变量的偏移地址,注意是变量，常量是不管用的,因为常量就不需要地址
include io32.inc
.data 
	align 1
	bv1 word 1,3,4,5,0edH
	align 2
	wv1 word 0ffffH,145,-1,0
	align 4
	dv1 dword 1,-1,0edfaH
.code 
	start:
	
	exit 0
	
	end start