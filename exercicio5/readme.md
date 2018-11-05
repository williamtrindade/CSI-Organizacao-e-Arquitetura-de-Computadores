– Suponha uma arquitetura hipoté:ca com instruções
aritmé:cas de um operando (operando AX implícito):

• ADD OP 
• MPY OP 
• SUB OP 
• DIV OP 
– Existem quatro registradores: AX, BX, CX e EX 
• Qualquer instrução aritmé:ca opera os valores de AX e 
OPERANDO, armazenando o resultado em AX; 
• EX: registrador especial p/ endereços 
– Suponha as instruções de carga de registradores: 
• LD(A|B|C|X) OP (carrega para AX/BX/CX o conteúdo do 
endereço de memória em OP); 
– O operador pode ser um número (carga direta) se passado entre 
aspas simples; 
– Se não usar operando, carrega o valor referenciado por EX; 
• ST(A|B|C|X) OP (armazena o conteúdo de AX/BX/CX no
endereço de memória em OP); 
• MVA BX|CX|EX (copia o conteúdo do registrador AX para o 
BX, CX ou EX conforme o OPERANDO; 
