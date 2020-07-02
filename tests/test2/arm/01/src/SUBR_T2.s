.text
.global SUBR_T2
.type	SUBR_T2, "function"

SUBR_T2: 	LDRB	W1, [X0]
			CBZ		W1, FIM
			ADD		X0, X0, #1
			B		SUBR_T2
FIM:		RET
