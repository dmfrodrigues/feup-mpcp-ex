.text
.global COUNTBITS
.type COUNTBITS,"function"

COUNTBITS:	MOV		X1, X0
			MOV		W0, #0
CNTloop:	CMP		X1, #0
			B.EQ	CNTend
			ANDS	X2, X1, #1
			B.EQ	CNTskip
			ADD		W0, W0, #1
CNTskip:	LSR		X1, X1, #1
			B		CNTloop
CNTend:		RET
