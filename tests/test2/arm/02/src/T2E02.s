.text
.global	T2E02
.type	T2E02, "function"



T2E02:	str		W1, [X0]
		ldrsb	W1, [X0]

		MOV		W0, W1
		RET
