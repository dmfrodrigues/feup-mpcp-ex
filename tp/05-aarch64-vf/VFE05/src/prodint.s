.text
.global	prodint
.type	prodint,"function"
prodint:	FSUB	D0, D0, D0
ciclo:		CBZ		W2, fim
				LDR		S1, [X0], #4
				LDR		S2, [X1], #4
				SUB		W2, W2, #1
				FCVT	D1, S1
				FCVT	D2, S2
				FMADD	D0, D1, D2, D0
			B		ciclo
fim:		RET
