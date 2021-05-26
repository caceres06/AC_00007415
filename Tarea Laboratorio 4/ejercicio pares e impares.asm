; PARES (300h) IMPARES(320h)
        org     100h

        section .text

        call    ParImpar

        int     20h

        section .data

arr     db      2,5,9,4,6,7,8,1,3,14    ; Declaramos el arreglo
lon     equ     $-arr           ; dirección actual (después de 'o') - dirección inicial de msg = largo de msg
aux     equ     2
; función para guardar msg empezando en [200h]
ParImpar:
        xor     SI, SI          ; SI = 0
        mov     CX, lon         ; CX = largo de msg    
for:    
        mov     AX, [arr+SI]
        mov     BL, aux
        div     BL
        cmp     AH, 0
        mov     [SI+300h]       
        inc     SI            
        loop    for           
        ret