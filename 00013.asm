include io32.inc
.data
bvar byte 12H
wvar word 1234h
dvar dword 12345678h

.code

start:
;mov [ebx],255 两个操作数均没有明确类型,错误
mov byte ptr [ebx],255
mov word ptr [ebx],255
mov dword ptr [ebx],255
;mov [ebx+4],200 两个操作数均没有明确类型,错误
mov byte ptr[ebx+4],255
mov wvar[esi],200
mov dvar[edi*4],200

;mov ds,@data
;mov ax,@DATA 使用这个符号的变量会报错误,符号冲突,目前不知道怎么解决
;mov ds,ax
nop;等价于 xchg eax,eax


;xchg exchange
xchg esi,edi
xchg esi,[edi]

xchg si,di
xchg si,[edi]
xchg bl,bh
xchg al,bvar
exit 0
end start
