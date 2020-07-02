.text

/**
 *
 * @param	X0		number
 *			W1		counter, down from 64
 *			X2, X3	temporary variables
 */
.global	f2e11
.type	f2e11,%function
f2e11:	UBFX	X2, X0, #63, #1
		LSL	X0, X0, #1
		MOV	W1, #64
ciclo:	CBZ	W1, fim
			UBFX	X3, X0, #63, #1
			CMP		X2, X3
			B.EQ	salto	//if zero, jump
				MOV	W0, W1	//else, return
				RET
salto:		SUB W1, W1, #1
			LSL	X0, X0, #1
		B	ciclo
fim:	MOV	W0, #1
		RET
