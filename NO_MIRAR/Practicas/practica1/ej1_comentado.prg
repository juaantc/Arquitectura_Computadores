0 0002 ; Establezco el valor 0002 en la dir.0
1 FFFE ; Establezco el valor FFFE en la dir.1
@
3 ; Indico que voy a empezar el programa en la dir.3
@
CRA ; Inicio de programa (Limpia el acc)
ADD 0 ; Sumo el contenido de la dir.0 al acc
CSR C ; (Llamada a subrutina) Salta a la dirección C+1 y guarda en C la dirección de retorno
STA 0 ; Almacena el contenido del acc en la dir.0
CRA ; (Limpia el acc)
ADD 1 ; Sumo el contenido de la dir.1 al acc
CSR 10 ; (Llamada a subrutina) Salta a la dirección 10+1 y guarda en 10 la dirección de retorno
STA 1 ; Almacena el contenido del acc en la dir.1
HALT ; Fin de programa
HALT ; C inicio rutina A
CTA ; Complementa el acc
ITA ; Incrementa el acc
JMPI C ; Salta a la posición almacenada en la dir.C
HALT ; 10 inicio rutina B
ROL_F_ACC ; Realiza el desplazamiento ciclo a la derecha de F Acc. 
SFZ ; Salta la siguiente instrucción si F es cero. 
JMP 16 ; Salta a la dirección 16
ROR_F_ACC ; Realiza el desplazamiento ciclo a la derecha de F Acc. 
JMPI 10 ; Salta a la posición almacenada en la dir.10
ROR_F_ACC ; Realiza el desplazamiento ciclo a la derecha de F Acc.
CSR C ; (Llamada a subrutina) Salta a la dirección C+1 y guarda en C la dirección de retorno
JMPI 10 ; Salta a la posición almacenada en la dir.10