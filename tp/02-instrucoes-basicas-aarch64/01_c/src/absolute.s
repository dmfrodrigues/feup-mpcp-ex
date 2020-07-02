.text
.global ABSOLUTE
.type ABSOLUTE,"function"

ABSOLUTE:	CMP	X0, #0
			B.GE	ABSend
			NEG	X0, X0
ABSend:		RET
