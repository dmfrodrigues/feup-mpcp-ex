.text

/**
 * Determines the size of a string
 */
.global	f2e03a
.type	f2e03a, %function
f2e03a:		MOV		X1, #0
aciclo:		LDRB	W2, [X0]
			CBZ		W2, afim
				ADD		X0, X0, #1
				ADD		X1, X1, #1
			B		aciclo
afim:		MOV		X0, X1
			RET

/**
 * Determine the number of occurences of a character in a string
 */
.global	f2e03b
.type	f2e03b, %function
f2e03b:		MOV		X2, #0
bciclo:		LDRB	W3, [X0]
			CBZ		W3, bfim
				CMP		W1, W3
				CINC	X2, X2, EQ
				ADD		X0, X0, #1
			B		bciclo
bfim:		MOV		X0, X2
			RET

/**
 * Determine the number of vowels in a string
 */
.global	f2e03c
.type	f2e03c, %function
f2e03c:		MOV		X1, #0
cicloc:		LDRB	W2, [X0]
			CBZ		X2, fimc
				ADD		X0, X0, #1

				CMP		W2, 'a'
				B.EQ	saltoc
				CMP		W2, 'e'
				B.EQ	saltoc
				CMP		W2, 'i'
				B.EQ	saltoc
				CMP		W2, 'o'
				B.EQ	saltoc
				CMP		W2, 'u'
				B.EQ	saltoc
			B		cicloc
saltoc:			ADD		X1, X1, #1
			B		cicloc
fimc:		MOV		X0, X1
			RET

/**
 * Determine how many capital letters there are in a string
 */
.global	f2e03d
.type	f2e03d, %function
f2e03d:		MOV		X1, #0
ciclod:		LDRB	W2, [X0]
			CBZ		X2, fimd
				CMP		W2, 'A'
				B.LT	saltod
				CMP		W2, 'Z'
				B.GT	saltod
				ADD		X1, X1, #1
saltod:			ADD		X0, X0, #1
			B		ciclod
fimd:		MOV		X0, X1
			RET

/**
 * Determine if a string is a palindrome
 */
.global	f2e03e
.type	f2e03e, %function
f2e03e:		STP		X29, X30, [SP, #-16]!
			MOV		X29, SP
			MOV		X9,X0
			BL		f2e03a
			ADD		X1, X9, X0
			SUB		X1, X1, #1	//now X1 is the last element
			MOV		X0, X9 		//now X0 is the first element
cicloe:		CMP		X0, X1
			B.GE	fime
				LDRB	W2, [X0]
				LDRB	W3, [X1]
				CMP		W2, W3
				B.EQ	bome
				MOV		X0, #0
				B		rete
bome:			ADD		X0, X0, #1
				SUB		X1, X1, #1
			B		cicloe
fime:		MOV		X0, #1
rete:		LDP		X29, X30, [SP], #16
			RET

/**
 * Determine how many words a string has
 */
.global	f2e03f
.type	f2e03f, %function
f2e03f:		STP		X29, X30, [SP, #-16]!
			MOV		X29, SP

			MOV		X1, ' '
			BL		f2e03b
			ADD		X0, X0, #1

			LDP		X29, X30, [SP], #16
			RET
