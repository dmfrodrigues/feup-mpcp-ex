.text

.global	POS1msb
.type	POS1msb, %function
POS1msb:	MOV	W1, #0
ciclo1:		CBZ	X0, fim1
				LSR	X0, X0, #1
				ADD	W1, W1, #1
			B	ciclo1
fim1:		SUB	W0, W1, #1
			RET

.global	PAL8
.type	PAL8, %function
PAL8:	LDR		X0, [X0]
		REV		X1, X0
		CMP		X0, X1
		CSET	W0, EQ
		RET

.global	NCAP
.type	NCAP, %function
NCAP:	RBIT	W1, W0
		CMP		W0, W1
		CSET	W0, EQ
		RET

