include io32.inc
.data
	wvar word 1234H
.code 
	start:
		;mov eax,offset bvar
		;mov cl,ds:[405000H]
		;mov cl,ds:[eax]
		mov esi,0
		;mov cl,[esi+bvar]
		mov al,byte ptr ds:[esi+wvar+1]

		call disprb
		call disprd
		exit 0
		end start