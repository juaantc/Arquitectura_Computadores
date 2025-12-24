0 0001 ; Dato (Constante 1)
@
2
@
CRA ; Inicio
ADD 0 ; Añado el dato de la dir. 0
JMPR 3 ; Salta a la posición PC-1+n siendo n = 3 (en este caso)
ADD 0 ; Instrucción TRAMPA (Se debe saltar)
ADD 0 ; Instrucción TRAMPA (Se debe saltar)
HALT ; Fin
