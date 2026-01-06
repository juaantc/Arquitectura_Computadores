0 0002
1 FFFE
@
3
@
CRA ; Inicio de programa
ADD 0 
CSR C
STA 0
CRA
ADD 1
CSR 10
STA 1
HALT ; Fin de programa
HALT ; C inicio rutina A
CTA
ITA
JMPI C
HALT ; 10 inicio rutina B
ROL_F_ACC 
SFZ
JMP 16
ROR_F_ACC
JMPI 10
ROR_F_ACC
CSR C
JMPI 10