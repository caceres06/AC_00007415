    org 	100h

	section	.text
	mov 	DX, msg1
	
	mov 	BP, contra
	call  	LeerContra
	call	EnterTecla
	call    Auntenticar

	int 	20h

	section	.data

msg1	db	"Por favor ingrese la contraseña", "$"
msg2 	db 	"Bienvenido", "$"
msg3 	db 	"Incorrecta", "$"
password	db	"arqui", "$"
contra 	times 	20  	db	" " 	

	EnterTecla:
		mov     AH, 00h         
		int     16h
		ret

	LeerContra:
		xor     SI, SI          
	while:  
		call    EnterTecla    
		cmp     AL, 0x0D        
		je      exit            
		mov     [BP+SI], AL   	
		inc     SI              
		jmp     while           
	exit:
		mov 	byte [BP+SI], "$"	
		ret


	Auntenticar:
		cmp  	SI,contra
		
		mov 	AH, 09h
		mov 	DX, msg2

		jne Incorrecto
		int 	21h
		ret

	Incorrecto:
		mov 	AH, 09h
		mov 	DX, msg3
		int 	21h
		ret