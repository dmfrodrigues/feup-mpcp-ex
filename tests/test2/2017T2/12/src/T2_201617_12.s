.text

.global	nviaturas
.type	nviaturas,%function
nviaturas:	MOV		X7, X2
			MOV		X4, #0
loop1:		CBZ		X2, fim1
				LDR		X6, [X0], #8
				CMP		X6, X3
				CINC	X4, X4, LT
				SUB		X2, X2, #1
			B		loop1
fim1:		MOV		X2, X7
			MOV		X5, #0
loop2:		CBZ		X2, fim2
				LDR		X6, [X1], #8
				CMP		X6, X3
				CINC	X5, X5, LT
				SUB		X2, X2, #1
			B		loop2
fim2:		SUB		X0, X4, X5
			RET

.global	coerente
.type	coerente,%function
coerente:	CBZ	X2, fimc
				LDR	X3, [X0], #8
				LDR	X4, [X1], #8
				SUB	X2, X2, #1
				CMP	X3, X4
				B.LE	coerente
					MOV	X0, #0
					RET
fimc:		MOV	X0, #1
			RET

