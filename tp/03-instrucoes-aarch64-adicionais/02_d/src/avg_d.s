.text
.global AVG_D
.type AVG_D, "function"

AVG_D:		MOV	X2, #0 // sum
			MOV X3, X1 // num elements
AVG_Dloop:	CBZ	X1, AVG_Dfim
				LDR	X4, [X0]
				ADD	X2, X2, X4
				ADD X0, X0, #8
				SUB	X1, X1, #1
			B	AVG_Dloop
AVG_Dfim:	SDIV	X0, X2, X3
			RET
