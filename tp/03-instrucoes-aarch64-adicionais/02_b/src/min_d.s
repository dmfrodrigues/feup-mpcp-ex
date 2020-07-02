.text
.global MIN_D
.type MIN_D, "function"

MIN_D:		LDR	X2, [X0]
MIN_Dloop:	CBZ	W1, MIN_Dfim
				LDR	X3, [X0]
				CMP	X3, X2
				CSEL	X2, X3, X2, LT
				ADD	X0, X0, #8
				SUB	X1, X1, #1
			B	MIN_Dloop
MIN_Dfim:	MOV	X0, X2
			RET
