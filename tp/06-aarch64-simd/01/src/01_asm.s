.text

/**
 * Adds P and Q, and saves it in R (R=P+Q)
 * @param	X0	*P
 * @param	X1	*Q
 * @param	X2	*R
 * @param	W3	n
 */
.global	somaV
.type	somaV,"function"
somaV:	CBZ		W3, somaR
			LDR		Q0, [X0], #16
			LDR		Q1, [X1], #16
			FADD	V2.4S, V0.4S, V1.4S
			STR		Q2, [X2], #16
			SUB		W3,	W3, #4
		B		somaV
somaR:	RET

/**
 * Multiplies the content of P by k
 * @param	X0	*P
 * @param	W1	n
 * @param	S0	k
 */
.global	altV
.type	altV,"function"
altV:	FMOV	S7, S0
altC:	CBZ		W1, altR
			LDR		Q0, [X0]
			DUP		V1.4S, V7.S[0]
			FMUL	V0.4S, V0.4S, V1.4S
			STR		Q0, [X0], #16
			SUB		W1, W1, #4
		B		altC
altR:	RET

/**
 * Applies R = P-k*Q
 * @param	X0	*P
 * @param	X1	*Q
 * @param	X2	*R
 * @param	W3	n
 * @param	S0	k
 */
.global	msubV
.type	msubV,"function"
msubV:	STP		X29, X30, [SP,#-16]!
		MOV		X29, SP

		MOV		X8, X0		//P
		MOV		X9, X1		//Q
		MOV		X10, X2		//R
		MOV		W11, W3		//n
		FNEG	S8, S0		//-k

		MOV		X0, X9
		MOV		W1, W11
		FMOV	S0, S8
		BL		altV		//Now, Q=-k*Q

		MOV		X0, X8
		MOV		X1, X9
		MOV		X2, X10
		MOV		W3, W11
		BL		somaV

		LDP		X29, X30, [SP], #16
		RET
