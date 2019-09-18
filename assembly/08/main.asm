; ASCII values of keys controlling the snake
define ASCII_sp     $20
define ASCII_a      $61
define ASCII_s      $73
define ASCII_d      $64

; System variables
define sysRandom    $fe
define sysLastKey   $ff

define var_cor $00
define var_telaL $01
define var_telaH $02

LDA #$01
STA var_cor

LDA #$02
STA var_telaH

LDA #$00
STA var_telaL

LDY #$00

laco:
LDA #$00
STA (var_telaL), Y

CPY #$FF
BNE continua_laco
LDX var_telaH
CPX #$05
BNE cont_incrementa
LDX #$02
STX var_telaH
JMP continua_laco
cont_incrementa:
INC var_telaH


continua_laco:
INY
LDA var_cor
STA (var_telaL), Y
JSR delay
JSR verifica_tecla
JMP laco


delay:
LDX #$50

laco_delay:
CPX #$0
BEQ fora_delay
DEX
JMP laco_delay

fora_delay:
rts

verifica_tecla:
LDA sysLastKey
STA $03   
CMP #ASCII_a      
BNE fora_verifica
LDA #$00
STA sysLastKey
LDX var_cor
CPX #$0F
BNE incr_cor
LDX #$01
STX var_cor
JMP fora_verifica

incr_cor:
INX
STX var_cor

fora_verifica:
RTS



