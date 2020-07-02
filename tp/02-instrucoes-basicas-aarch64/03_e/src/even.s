.text
.global EVEN
.type EVEN,"function"

EVEN:		MOV	X2, X1
			MOV	X1, X0
			MOV X0, #0
EVENloop:	CMP	X1, X2
			B.EQ	EVENend
			LDR	X3, [X1]
			AND	X3, X3, #1
			CMP	X3, #0
			B.NE	EVENskip
			ADD	W0, W0, #1
EVENskip:	ADD	X1, X1, #8
			B	EVENloop
EVENend:	RET
