0 0005 ; Dato 1
1 0002 ; Dato 2
2 0001 ; Puntero al Dato 1
3 0000 ; Resultado 1
4 0000 ; Resultado 2
@
5
@
ADD 0 ; Añado el contenido de la dir. 0
SUB 1 ; Resto el contenido de la dir. 1
STA 3 ; Almaceno resulatado en la dir. 3
CRA ; Limpio el acc
ADD 0 ; Añado el contenido de la dir. 0
SUBI 2 ; Resto el contenido de la dir. almacenada la dir. 2
STA 4 ; Almaceno resulatado en la dir. 4
HALT ; Fin 
