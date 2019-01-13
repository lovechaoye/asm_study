include io32.inc
.data
bvar byte 
wvar word 1234h
dvar dword 12345678h

.code

start:
mov [ebx],255
mov byte ptr [ebx],255
mov word ptr [ebx],255
mov dword ptr [ebx],255
mov [ebx+4],200
mov byte ptr[ebx+4]
mov wvar[esi],200
mov dwar[edi*4],200

mov ds,@data
mov ax,@data
moc ds,ax
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
