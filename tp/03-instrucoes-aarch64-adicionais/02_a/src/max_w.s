.text
.global MAX_W
.type MAX_W, "function"

MAX_W:		LDR	W2, [X0]
MAX_Wloop:	CBZ	X1, MAX_Wfim
				LDR		W3, [X0]
				CMP		W3, W2
				CSEL	W2, W3, W2, GT
				ADD		X0, X0, #4
				SUB		W1, W1, #1
			B	MAX_Wloop
MAX_Wfim:	MOV	W0, W2
			RET
