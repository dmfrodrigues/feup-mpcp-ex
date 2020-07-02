.text

/**
 * Add vectors (assume no overflow)
 */
.global	f2e07a
.type	f2e07a,%function
f2e07a:	CBZ	X2, fima
			LDR	X4, [X0], #8
			LDR	X5, [X1], #8
			ADD	X4, X4, X5
			STR	X4, [X3], #8
			SUB	X2, X2, #1
		B	f2e07a
fima:	RET

/**
 * Add vectors (assume overflow might happen)
 */
.global f2e07b
.type	f2e07b,%function
f2e07b:	CBZ	X2, fimb
			LDR		X4, [X0], #8
			LDR		X5, [X1], #8
			ADDS	X4, X4, X5

			B.VC	saltob	//if not overflow, jump
			MOV	X4,	0x7FFFFFFFFFFFFFFF
			CMP		X5, #0
			B.GE	saltob	//if greater than 0, jump
			MOV	X4, 0x8000000000000000

saltob:		STR	X4, [X3], #8
			SUB	X2, X2, #1
		B	f2e07b
fimb:	RET

/**
 * Matrix multiplication by a scalar (assume no overflow)
 */
.global	f2e07c
.type	f2e07c,%function
f2e07c:	CBZ	X1, fimc
			LDR	X3, [X0]
			MUL	X3, X3, X2
			STR	X3, [X0], #8
			SUB	X1, X1, #1
		B	f2e07c
fimc:	RET

/**
 * Dot product (assume no overflow)
 */
.global	f2e07d
.type	f2e07d,%function
f2e07d:	MOV	X3, #0
ciclod:	CBZ	X2, fimd
			LDR	X4, [X0], #8
			LDR	X5, [X1], #8
			MUL	X4, X4, X5
			ADD	X3, X3, X4
			SUB	X2, X2, #1
		B	ciclod
fimd:	MOV	X0, X3
		RET

/**
 * Dot product (handle overflow)
 */
.global	f2e07e
.type	f2e07e,%function
f2e07e:	MOV	X3, #0
cicloe:	CBZ	X2, fime
			LDR		X4, [X0], #8
			LDR		X5, [X1], #8
			MUL		X4, X4, X5
			ADDS	X3, X3, X4
			B.VC	saltoe	//if no overflow, jump
			MOV	X0, 0x7FFFFFFFFFFFFFFF
			RET
saltoe:		SUB		X2, X2, #1
		B	cicloe
fime:	MOV	X0, X3
		RET
