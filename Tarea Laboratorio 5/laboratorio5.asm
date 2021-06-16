org 	100h

    section .text

        XOR AX, AX
        XOR BX, BX
        XOR DX, DX
        XOR SI, SI

	    call 	texto	
	    call 	pcursor
	    call 	scursor
        call    pacursor
	    call 	sacursor
	    call	primern
	    call 	segundon
	    call	primera
	    call	segundoa
        call    exit

        texto:	mov 	ah, 00h
		mov	    al, 03h
		int 	10h
		ret

        pcursor: mov	ah, 02h
	    mov 	dh, 4   ;fila
	    mov 	dl, 20  ;columna
	    mov     bh, 0h
	    int 	10h
	    ret
    
        primern: mov 	ah, 09h
		mov 	dx, primer_nombre
		int 	21h
		ret

        scursor: mov 	ah, 02h
	    mov 	dh, 6 ;fila
	    mov 	dl, 20 ;columna
	    mov 	bh, 0h
	    int 	10h
	    ret

    segundon: mov 	ah, 09h
		mov 	dx, segund_nombre
		int 	21h
		ret	

    pacursor: mov 	ah, 02h
        mov     dh, 8
        mov     dl, 20
        mov     bh, 0h
        int     10h
	    ret
    
    primera:mov 	ah, 09h
		mov 	dx, primer_apellido
		int 	21h
		ret		

    sacursor: mov 	ah, 02h
		mov 	dh, 10  ; fila
		mov 	dl, 20 ; columna
		mov 	bh, 0h
		int 	10h
		ret	

    segundoa:mov 	ah, 09h
		mov 	dx, segund_apellido
		int 	21h
		ret		

exit:   int     20h

section .data
    primer_nombre db "Alejandra $"
    segund_nombre db "Mabel $"
    primer_apellido db "Marroquin $"
    segund_apellido db "Caceres $"