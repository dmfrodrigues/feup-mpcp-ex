.text

/**
 * @param	X0	*V
 * @param	W1	n
 * @param	S0	a
 * @param	S1	b
 */
.global	conta_intervalo
.type	conta_intervalo,"function"
conta_intervalo:	MOV		X2, #0
ciclo:				CBZ		W1, fim
						LDR		S2, [X0], #4
						SUB		W1, W1, #1
						FCMP	S0, S2
						B.GT	ciclo
						FCMP	S1, S2
						B.LT	ciclo
						ADD		X2, X2, #1
					B		ciclo
fim:				MOV		X0, X2
					RET
