0 5 ; Dirección inicial del vector (ptr inicio)
1 A ; Dirección final del vector (ptr fin)
2 6 ; Índice i (posición que se quiere acceder)
3 0 ; Variable auxiliar o temporal
4 7FFF ; Valor que se debe cargar si el índice está fuera del rango
5 0005 ; V[0]
6 0123 ; V[1]
7 FFFF ; V[2]
8 1045 ; V[3]
9 0606 ; V[4]
A DEDE ; V[5]
@
C
@
C CRA ; Limpia el acumulador
D CSR F ; Llama a la subrutina (dirección F)
E HALT ; Fin del programa principal
F HALT ; Punto de retorno o inicio de la subrutina
10 ADD 0 ; Carga dirección inicial del vector
11 ADD 2 ; Suma el índice i → dirección buscada
12 STA 3 ; Guarda esa dirección calculada temporalmente en dir. 3
13 CTA ; Carga dirección temporal (como puntero)
14 ITA ; Cambia el modo de direccionamiento (usa indirecto)
15 ADD 1 ; Compara con dirección final del vector
16 ROL_F_ACC ; Rota bits para revisar signo (usado para comparar)
17 SFZ ; Verifica si el resultado fue cero (bandera)
18 JMP 1A  ; Si no es cero, salta
19 JMP 1E ; Si sí es cero, va a otra ruta
1A ROR_F_ACC ; Ajusta el acumulador
1B CRA ; Limpia el acumulador
1C ADD 4 ; Carga 7FFF (valor fuera de rango)
1D JMPI F ; Retorna a programa principal
1E ROR_F_ACC ; Ajusta el acumulador
1F CRA ; Limpia el acumulador
20 ADDI 3 ; Accede indirectamente al valor del vector
21 JMPI F ; Retorna a programa principal
