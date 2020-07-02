.text
.global SUM
.type SUM,"function"

SUM:		MOV	X0, #0
			MOV	X1, #11
SUMloop:	CMP	X1, #101
			B.GT	SUMend
			ADD	X0, X0, X1
			ADD	X1, X1, #10
			B	SUMloop
SUMend:		RET
