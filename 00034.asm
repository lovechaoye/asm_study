;不同格式显示程序
include io32.inc
.data
	var byte 01100100b
	
.code
start:
	mov al,var
	call dispbb
	call dispcrlf
	mov al,var
	call disphb
	call dispcrlf
	mov al,var
	call dispuib
	call dispcrlf
	mov al,var
	call dispc
	
	exit 0
	end start