.text
.global DECREMENT
.type DECREMENT,"function"

DECREMENT:	LDR	X1, [X0]
			SUB	X1, X1, #1
			STR	X1, [X0]
			RET
