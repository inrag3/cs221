! Simple "hello world" program
! See section 9.8.1.
	_EXIT	= 1
	_WRITE	= 4
	_STDOUT	= 1
.SECT .TEXT
start:
	MOV	CX, de-hw
	PUSH	CX
  PUSH	hw
	PUSH	_STDOUT
	PUSH	_WRITE
  MOV CX, 10
L1: SYS
  LOOP    L1
	ADD	SP, 8
	SUB	CX, AX
	PUSH	CX
	PUSH	_EXIT
	SYS
.SECT .DATA
hw:
.ASCII	"Hello World\n"
de:	.BYTE	0
.SECT .BSS
