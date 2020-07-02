.text
.global COMPARE
.type COMPARE,"function"

COMPARE:	ROR	X1, X0, #32
			CMP	X0, X1
			MOV	W0, #1
			B.EQ	COMPend
			MOV	W0, #0
COMPend:	RET
