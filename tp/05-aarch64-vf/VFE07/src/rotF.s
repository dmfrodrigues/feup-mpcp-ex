.data
CONST_PI:	.double	3.14159265359
CONST_1:    .double	1.0
CONST_4:	.double	4.0

.text

/**
 * @param	D0	x
 */
.global	rotF
.type	rotF,"function"
rotF:	FCMP	D0, #0.0
		B.LT	menor
maior:
			LDR		D1, CONST_PI
			FADD	D1, D0, D1
			FMUL	D0, D1, D1
			FMUL	D0, D0, D1
			FSQRT	D0, D0
			RET
menor:
			LDR		D1, CONST_4
			FSUB	D0, D1, D0
			FSQRT	D0, D0
			LDR		D1, CONST_1
			FDIV	D0, D1, D0
			RET

