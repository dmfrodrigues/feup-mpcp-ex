.text

/**
 * @param	X0	*V
 * @param	X1	n
 * @param	S0	lim
 */
.global	conta_inf
.type	conta_inf,"function"
conta_inf:	MOV		X2, #0
			DUP		V0.4S, V0.S[0]
ciclo:		CBZ		X1, fim
				LDR		Q1, [X0], #16
				SUB		X1, X1, #4
				FCMGE	V1.4S, V0.4S, V1.4S
				NEG		V1.4S, V1.4S
				ADDV	S1, V1.4S
				MOV		W3, V1.S[0]
				ADD		X2, X2, X3
			B		ciclo
fim:		MOV		X0, X2
			RET

