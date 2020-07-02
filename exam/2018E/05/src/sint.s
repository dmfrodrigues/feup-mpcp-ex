.data
CONST_1:	.single 1.0

.text
.global	sint
.type	sint,"function"
sint:	LDR		S1, CONST_1
		MOV		X1, #1
ciclo:	CBZ		X0, fim
			FMUL	S1, S1, S0
			MUL		X1, X1, X0
			SUB		X0, X0, #1
		B		ciclo
fim:	UCVTF	S2, X1
		FDIV	S0, S1, S2
		RET
