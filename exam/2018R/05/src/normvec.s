.text
.global	normvec
.type	normvec,"function"
normvec:	FSUB	S0, S0, S0
ciclo:		CBZ		X1, fim
				LDR		Q1, [X0], #16
				SUB		X1, X1, #4
				FMUL	V1.4S, V1.4S, V1.4S
				MOV		S2, V1.S[0]
				FADD	S0, S0, S2
				MOV		S2, V1.S[1]
				FADD	S0, S0, S2
				MOV		S2, V1.S[2]
				FADD	S0, S0, S2
				MOV		S2, V1.S[3]
				FADD	S0, S0, S2
				B	ciclo
fim:		FSQRT		S0, S0
			STR		S0, [X2]
			RET
