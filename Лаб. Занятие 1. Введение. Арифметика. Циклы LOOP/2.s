.SECT .TEXT
  MOV CX, 3
L1: ADD SI, 3
  MOV AX, SI
  MUL AX
  MOV BX, AX
  MUL AX
  MOV DX, 3
  MUL DX
  MOV DI, 8
  MOV DX, CX
  MOVB CL, 3
  SHR AX, CL
  MOV CX, DX
  MOV (res), AX
  MOV AX, BX
  MUL SI
  MOV BX, 5
  CWD
  DIV BX
  SUB (res), DX
  ADD (res), SI
  SUB (res), 1
  LOOP L1
.SECT .DATA

.SECT .BSS
res:  .SPACE 2
