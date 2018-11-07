; int *a = {10, 20, 30, 40};
; int b = 5;
; int i;
; int x = 0;
; for (i = 0; i < 4; i++)
; x+= a[i] * b;

	JMP start
vet_a: DB 1
    DB 2
    DB 3
    DB 4
varb: DB 5
varx: DB 0
vari: DB 0

start:
	MOV D, [vari]
ini_for:CMP D, 4d    ; d de decimal
	JAE fora_for
	ADD D, vet_a
	MOV D, [D]
	MOV A, [varb]
	MUL D
	MOV [varx], A
	MOV D, [vari]
	INC D
	MOV [vari], D
	JMP ini_for

fora_for:	
	


fimfor:
