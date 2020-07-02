.text

.global	SOMA
.type	SOMA,%function
SOMA:	MOV		X2, #0
cicloS:	CBZ		X1, fimS
			LDR		X3, [X0], #8
			ADD		X2, X2, X3
			SUB		X1, X1, #1
		B		cicloS
fimS:	MOV		X0, X2
		RET

.global	MEDIA
.type	MEDIA,%function
MEDIA:	STP		X29, X30, [SP, #-16]!
		MOV		X29, SP

		STR		X19, [SP, #-16]!

		MOV		X19, X1
		BL		SOMA
		SDIV	X0, X0, X19

		LDR		X19, [SP], #16

		LDP		X29, X30, [SP], #16
		RET

.global	MAXMED
.type	MAXMEX,%function
MAXMED:	STP		X29, X30, [SP,#-16]!
		MOV		X29, SP

		STP		X19,X20, [SP,#-16]!
		STR		X21    , [SP,#-16]!

		//X19 - 1a res; X20 - p2; X21 - dim2
		MOV		X20, X2
		MOV		X21, X3
		BL		MEDIA
		MOV		X19, X0
		MOV		X0, X20
		MOV		X1, X21
		BL		MEDIA
		CMP		X0, X19
		CSEL	X0, X0, X19, GT

		LDR		X21    , [SP], #16
		LDP		X19,X20, [SP], #16

		LDP		X29, X30, [SP], #16
		RET

