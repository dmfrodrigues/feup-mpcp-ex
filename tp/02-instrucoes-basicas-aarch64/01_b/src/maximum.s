.text
.global MAXIMUM
.type MAXIMUM,"function"

MAXIMUM:	CMP	X0, X1
			B.GE	ABSend
			MOV	X0, X1
ABSend:		RET
