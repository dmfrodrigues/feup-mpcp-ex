.text
.global SOMA_V
.type SOMA_V, "function"

SOMA_V:		LSL	X1, X1, #2
			MOV	X2, #0 //contador
			MOV	W3, #0 //resultado
SOMA_Vloop:	CMP	X2, X1
				B.GE	SOMA_Vend
				LDR	W4, [X0, X2]
				ADD	W3, W3, W4
				ADD	X2, X2, #4
			B	SOMA_Vloop
SOMA_Vend:	MOV	W0, W3
			RET
