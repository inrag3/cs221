.SECT .TEXT
  MOV SI, res
  MOV CX, end-res
  SHR CX,1
1:  MOV BX, (SI)
    SHR (SI), 1
    JC 2f
    SHR (SI), 1
    JC 2f
    ADD AX, BX
2:  ADD SI, 2
  LOOP 1b


.SECT .DATA
res:  .WORD 8,5,10,3,4,0,16
end:  .BYTE 0

.SECT .BSS
