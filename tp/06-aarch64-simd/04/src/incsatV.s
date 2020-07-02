.text

/**
 * @param	X0	*Z
 * @param 	W1	n
 * @param	W2	x
 */
.global	incsatV
.type	incsatV,"function"
incsatV:	DUP		V1.4S, W2
ciclo:		CBZ		W1, fim
				LDR		Q0, [X0]
				SQADD	V0.4S, V0.4S, V1.4S
				STR		Q0, [X0], #16
				SUB		W1, W1, #4
			B		ciclo
fim:		RET
