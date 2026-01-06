0 0002 ; Puntero a Valor A
1 0003 ; Puntero a Valor B
2 0009 ; Valor A
3 0002 ; Valor B
4 0000 ; Variable auxiliar para hacer intercambio entre A Y B
@
6
@
6 CRA ; Limpio acumulador
7 ADDI 0 ;  Suma el contenido de la dirección almacenada en la posición 0 al acumulador
8 CSR C ; Llamada a rutina en dirección C
9 ADDI 1 ;  Suma el contenido de la dirección almacenada en la posición 1 al acumulador
A CSR 10 ; Llamada a rutina en dirección 10
B HALT ; Fin de programa
C HALT ; Inicio rutina C
D CTA ; Complemento al acumulador
E ITA ; Incremento el acumulador
F JMPI C ; Salta a la posición almacenada en la dirección C 
10 HALT ; Inicio rutina 10
11 ROL_F_ACC ; Desplazamiento ciclo a la izquierda de F Acc
12 CTF ; Complemento F
13 SFZ ; Salta la siguiente instrucción si F es cero.
14 JMP 20 ; Salta a la dirección 20
15 CTA ; Complemento al acumulador
16 ROR_F_ACC ; Desplazamiento ciclo a la derecha de F Acc
17 CRA ; Limpio acumulador
18 ADDI 0 ; Suma el contenido de la dirección almacenada en la posición 0 al acumulador
19 STA 4 ; Almacena el contenido del acumulador en la dirección 4
1A CRA ; Limpio acumulador
1B ADDI 1 ; Suma el contenido de la dirección almacenada en la posición 1 al acumulador
1C STAI 0 ; Almacena el contenido del acumulador en la dirección almacenada en la posición 0 
1D CRA ; Limpio acumulador
1E ADD 4 ; Suma el contenido de la dirección 4 al acumulador
1F STAI 1 ; Almacena el contenido del acumulador en la dirección almacenada en la posición 1
20 JMPI 10 ; Salta a la posición almacenada en la dirección 10