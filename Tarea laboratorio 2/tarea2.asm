        org     100h

        section .text

        mov     byte [200h], "A"
        mov     byte [201h], "M"
        mov     byte [202h], "M"
        mov     byte [203h], "C"
        ;Direccionamiento directo o absoluto

        mov     AL,[200h]

        ;Direccionamiento indirecto por registro
        mov     BX,200h
        mov     CL,[BX]
        ;Direccionamiento indirecto base mas índice

        mov     DL,[BX+DI]

        ;Direccionamiento relativo por registro

        mov    DI,[DI+203h] 

        int     20h

