.SECT .TEXT
  MOV CX, 5
  MOV BX, (x)
  MOV SI, res
1:  CMP CX, 0
  JE  2f
  MOV AX, BX
  MUL AX
  MOV (SI), AX
  MOV AX, BX
  MOV DI, 5
  CWD
  DIV DI
  ADD (SI), 6
  SUB (SI), DX
  SUB CX, 1
  ADD BX, 3
  ADD SI, 2
  JMP 1b
2:
.SECT .DATA
x:  .WORD 2

.SECT .BSS
res:  .SPACE  10
