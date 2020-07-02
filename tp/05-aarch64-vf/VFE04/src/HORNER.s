.data
.global const_0
const_0:	.double 0.0

.text

.global	HORNER
.type	HORNER,"function"
HORNER:	SXTW	X1, W1
		LSL		X1, X1, #3  // *= 8
		SUB		X1, X1, #8
		LDR		D9, const_0
ciclo:	CMP		X1, #0
			B.LT	fim
			FMUL	D9, D9, D0
			LDR		D10, [X0, X1]
			FADD	D9, D9, D10
			SUB		X1, X1, #8
			B		ciclo
fim:	FMOV	D0, D9
		RET

