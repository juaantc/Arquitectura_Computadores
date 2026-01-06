0 4 ; Dirección inicial del vector (puntero de inicio)
1 9  ; Dirección final del vector (puntero de fin)
2 0000 ; Índice (posición a consultar en el vector)
3 0000 ; Temporal o auxiliar (usado para cálculos)
4 0005 ; V[0]
5 FFFF ; V[1]
6 0009 ; V[2]
7 FFF2 ; V[3]
8 FFFF ; V[4]
@
9
@
9 CRA ; Limpia el acumulador
A ADD 1 ; Suma el contenido de dirección 1 → carga dirección final del vector (8)
B CTA ; Complemento acumulador
C ITA ; Incremento acumulador
D ADD 0 ; Suma contenido de dirección 0 (inicio del vector → 4)
E STA 2 ; Guarda el resultado (posible dirección base + índice) en dir. 2
F CRA ; Limpia el acumulador
10 CSR 15 ; Llama a la subrutina ubicada en dirección 15
11 ISZ 0 ; Incrementa dir. 0 (puntero inicio) y salta si el resultado es 0
12 ISZ 2 ; Incrementa dir. 2 (índice) y salta si el resultado es 0
13 JMP F ; Salta a dirección F (probablemente bucle o final)
14 HALT ; Fin de programa
15 HALT ; Inicio subrutina
16 ADDI 0 ; Carga indirectamente el valor del vector (usa dir. 0 como puntero)
17 ROL_F_ACC  ; Rota bits del acumulador a la izquierda (posiblemente para preparar comparación)
18 SFZ ; Si la bandera Z está activa (resultado cero), salta a la siguiente
19 JMP 1C  ; Salta a 1C si no está dentro del rango
1A ROR_F_ACC  ; Rota bits a la derecha (restaura valor original)
1B JMPI 15 ; Retorna al programa principal (salto indirecto)
1C ROR_F_ACC  ; Rota bits nuevamente
1D CTA ; Complemento acumulador
1E ITA ; Incremento acumulador
1F STAI 0 ; Guarda indirectamente el valor en dir. 0 (posiblemente actualiza vector)
20 JMPI 15 ; Retorna a la dirección guardada (fin de la subrutina)