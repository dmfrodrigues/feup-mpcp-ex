.data
CONST_0:	.double	0.0
CONST_1:	.double	1.0
CONST_a:	.double	1.0, 0.278393, 0.230389, 0.000972, 0.078108

.text
/**
 * @param	D0	x
 */
.global	erfpos
.type	erfpos,"function"
erfpos:	LDR		D1, CONST_0
		LDR		X0, =CONST_a
		LDR		D2, [X0, #32]
		FMADD	D1, D0, D1, D2
		LDR		D2, [X0, #24]
		FMADD	D1, D0, D1, D2
		LDR		D2, [X0, #16]
		FMADD	D1, D0, D1, D2
		LDR		D2, [X0, #8]
		FMADD	D1, D0, D1, D2
		LDR		D2, [X0, #0]
		FMADD	D1, D0, D1, D2
		FMUL	D1, D1, D1
		FMUL	D1, D1, D1
		LDR		D2, CONST_1
		FDIV	D1, D2, D1
		FSUB	D0, D2, D1
		RET

.global	erf
.type	erf,"function"
erf:	STP		X29, X30, [SP, #-16]!
		MOV		X29, SP

		FCMP	D0, #0.0
		B.LT	menor
maior:
			BL		erfpos
			LDP		X29, X30, [SP], #16
			RET
menor:
			FNEG	D0, D0
			BL		erfpos
			FNEG	D0, D0
			LDP		X29, X30, [SP], #16
			RET
