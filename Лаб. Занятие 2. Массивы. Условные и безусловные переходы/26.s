.SECT .TEXT
  MOV AX, -32768
  MOV SI,res
  MOV CX, end-res
  SHR CX,1
1:  CMP (SI), 0
  JGE 2f
  CMP (SI), AX
  JL 2f
  MOV AX, (SI)
2:  ADD SI, 2
  LOOP 1b


.SECT .DATA
res:  .WORD -5,5,1,-3,-2,0,-1
end:  .BYTE 0

.SECT .BSS
