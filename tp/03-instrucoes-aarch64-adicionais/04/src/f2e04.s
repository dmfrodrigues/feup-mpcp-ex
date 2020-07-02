.text

.global	f2e04a
.type	f2e04a, %function
f2e04a:		CBZ		X2, fima
				LDRB	W3, [X0]
				STR		X3, [X1]
				ADD		X0, X0, #1
				ADD		X1, X1, #8
				SUB		X2, X2, #1
			B		f2e04a
fima:		RET

.global f2e04b
.type	f2e04b, %function
f2e04b:		CBZ		X2, fimb
				LDRSW	X3, [X0]
				STR		X3, [X1]
				ADD		X0, X0, #4
				ADD		X1, X1, #8
				SUB		X2, X2, #1
			B		f2e04b
fimb:		RET
