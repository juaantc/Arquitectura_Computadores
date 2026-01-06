0 0002 ; Variable contador (valor inicial = 2)
@
2
@
CRA ; Inicio
ADD 0 ; Añado el dato de la dir. 0
DJNZ 6 ; Decrementa el registro de acc. Si el resultado NO es 0, salta a la dir. indicada.
JMP 4 ; Salto a la dir. 4
HALT ; Fin
