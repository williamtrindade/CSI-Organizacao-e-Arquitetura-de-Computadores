; int *a = {10, 20, 30, 40};
; int b = 5;
; int i;
; int x = 0;
; for (i = 0; i < 4; i++)
; x+= a[i] * b;

	JMP start
vet_a:	DB 1
     	DB 2
		DB 3
      	DB 4
varb: 	DB 5
varx: 	DB 0
vari: 	DB 0
b_  :   DB 100

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
		MOV C, hello ; ponteiro para variavel
		MOV D, 232   ; outpoot
		CALL printNum
		HLT          ; stop execution
printNum:
     	PUSH A
     	PUSH B 
     	MOV B, [b_]

.do:
		MOV A, [C] ; carrega num
		DIV B  
		MOV B,  A    
		DIV 10     
		MUL 10     
		SUB B, A
		ADD B, 48
		MOV [D], B
		INC D 
		
