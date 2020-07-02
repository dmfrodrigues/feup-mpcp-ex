.text
.global COUNTEQBITS
.type COUNTEQBITS,"function"

COUNTEQBITS:	EON		X1, X0, X1
				MOV		W0, #0
CNTEQloop:		CMP		X1, #0
				B.EQ	CNTEQend
				ANDS	X2, X1, #1
				B.EQ	CNTEQskip
				ADD		W0, W0, #1
CNTEQskip:		LSR		X1, X1, #1
				B		CNTEQloop
CNTEQend:		RET
