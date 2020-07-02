.text

/**
 * Y = Y - da*X
 * @param	X0	*X
 * @param	X1	*Y
 * @param	W2	n
 * @param	S0	da
 */
.global	ajusteSIMD
.type	ajusteSIMD,"function"
ajusteSIMD:	FNEG	S0, S0
			DUP		V0.4S, V0.S[0]
ciclo:		CBZ		W2, fim
				LDR		Q1, [X0], #16
				LDR		Q2, [X1]

				FMUL	V1.4S, V1.4S, V0.4S
				FADD	V2.4S, V2.4S, V1.4S

				STR		Q2, [X1], #16
				SUB		W2, W2, #4
			B		ciclo
fim:		RET
