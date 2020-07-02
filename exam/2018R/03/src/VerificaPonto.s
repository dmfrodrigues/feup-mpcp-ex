.data
.align 3
CONST_1:	.double 1.0
.text
.global	VerificaPonto
.type	VerificaPonto,"function"
VerificaPonto:
		STP		X29, X30, [SP, #-16]!
		MOV		X29, SP

		FCMP	D0, #0.0
		B.LT	nao
		FCMP	D1, #0.0
		B.LT	nao
		FMUL	D0, D0, D0
		FMADD	D0, D1, D1, D0
		LDR		D1, CONST_1
		FCMP	D0, D1
		B.GT	nao
		BL		printf
		B		retorn
nao:	MOV		X0, X1
		BL		printf

retorn:	LDP		X29, X30, [SP], #16
		RET
