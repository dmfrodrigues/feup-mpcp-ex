.text

/**
 * @param	X0	*ptV
 * @param	X1	n
 */
.global normV
.type	normV,"function"
normV:	FSUB	D0, D0, D0
ciclo:	CBZ		X1, fim
			LDR		Q1, [X0], #16
			SUB		X1, X1, #2
			FMUL	V1.2D, V1.2D, V1.2D
			FADD	D0, D0, D1
			MOV		D1, V1.D[1]
			FADD	D0, D0, D1
		B		ciclo
fim:	FSQRT	D0, D0
		RET
