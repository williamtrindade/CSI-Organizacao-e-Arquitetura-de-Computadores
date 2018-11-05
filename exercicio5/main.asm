; int *a = {10, 20, 30, 40};
; int b = 5;
; int i;
; int x = 0;
; for (i = 0; i < 4; i++)
; x+= a[i] * b;

JMP start
	.a: DB 1
	    DB 2
            DB 3
            DB 4

	.b: DB 5
	.x: DB 0
	.i: DB 0

start:
	JMP for
		for:	
			MOV A, .a
			MOV B, .x
			MOV C, .i
			
			
			INC A
			CMP A, 4
			JAE fimfor


		fimfor:
			hlt
