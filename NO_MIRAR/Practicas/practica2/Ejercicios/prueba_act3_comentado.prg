0 0012 ; Dato para calculos
1 0000 ; Resultado 1
2 0000 ; Resultado 2
3 0000
@
4
@
ADD 0 ; Añado el dato de la dir. 0
SUBV11 5 ; Resto de forma directa el valor 5
STA 2 ; Almaceno en la dir. 2 de Resultado 2
CRA ; Limpio el acc
ADD 0 ; Añado el dato de la dir. 0
ADDV11 5 ; Sumo de forma directa el valor 5
STA 1 ; Almaceno en la dir. 1 de Resultado 1
HALT ; Fin