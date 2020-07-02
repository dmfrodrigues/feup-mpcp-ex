.text
.global MAX_H
.type MAX_H, %function

MAX_H:		LDRSH W2, [X0]
MAX_Hloop:	CBZ X1, MAX_Hfim
				LDRSH	W3, [X0]
				CMP		W3, W2
				CSEL	W2, W3, W2, GT
				ADD		X0, X0, #2
				SUB		W1, W1, #1
			B	MAX_Hloop
MAX_Hfim:	MOV	W0, W2
			RET
