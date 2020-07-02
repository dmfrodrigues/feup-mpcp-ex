/**
 * @param	D0	x (in radians)
 */
.data
CONST_a:	.double	1.0,	0.5,	0.041666667,	0.001388889,	0.000024802,	0.000000276
.text
.global	cosseno
.type	cosseno,"function"
cosseno:	FMUL	D0, D0, D0
			LDR		X0, =CONST_a
			LDR		D1, [X0, #40]
			LDR		D2, [X0, #32]
			FMSUB	D1,	D0, D1, D2
			LDR		D2, [X0, #24]
			FMSUB	D1,	D0, D1, D2
			LDR		D2, [X0, #16]
			FMSUB	D1,	D0, D1, D2
			LDR		D2, [X0, #8]
			FMSUB	D1,	D0, D1, D2
			LDR		D2, [X0, #0]
			FMSUB	D1,	D0, D1, D2
			FMOV	D0, D1
			RET

/**
 * @param	D0	x (in degrees)
 */
.data
CONST_100:	.double	100.0
CONST_50:	.double	50.0
CONST_CONV:	.double	0.017453293 //Convert from deg to rad
.text
.global	func
.type	func,"function"
func:	STP		X29, X30, [SP, #-16]!
		MOV		X29, SP

		LDR		D1, CONST_CONV
		FMUL	D0, D0, D1
		BL		cosseno
		LDR		D1, CONST_50
		FMUL	D0, D0, D1
		LDR		D1, CONST_100
		FADD	D0, D0, D1

		LDP		X29, X30, [SP], #16
		RET

.data
PRINT_STR: .string "%f degrees: %f\n"
CONST_INIT:	.double	0.0
CONST_STEP:	.double 10.0
CONST_N:	.long	10
.text
.global	E09c
.type	E09c,"function"
E09c:	STP		X29, X30, [SP, #-16]!
		MOV		X29, SP

		LDR		D19, CONST_INIT
		LDR		D20, CONST_STEP
		LDR		X19, CONST_N
ciclo:	CBZ		X19, fim
			FMOV	D0, D19
			BL		func
			FMOV	D1, D0
			FMOV	D0, D19
			LDR		X0, =PRINT_STR
			BL		printf
			FADD	D19, D19, D20
			SUB		X19, X19, #1
		B		ciclo
fim:	LDP		X29, X30, [SP], #16
		RET
