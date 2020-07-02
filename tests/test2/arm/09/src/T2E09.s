.text

.global	T2E090
.type	T2E090,"function"
T2E090:	MOV	X5, X0

		ROR	X5,X5,#32

		MOV		X0,X5
		RET

.global	T2E09A
.type	T2E09A,"function"
T2E09A:	MOV	X5, X0

		UBFX	X6,X5,#32,#32
		BFI		X5,X5,#32,#32
		ORR		X5,X5,X6

		MOV		X0,X5
		RET

.global	T2E09B
.type	T2E09B,"function"
T2E09B:	MOV	X5, X0

		MOV		X6,X5
		BFI		X5,X6,#32,#32
		UBFX	X5,X6,#32,#32

		MOV		X0,X5
		RET

.global	T2E09C
.type	T2E09C,"function"
T2E09C:	MOV	X5, X0

		MOV		W6,W5
		LSR		X5,X5,#32
		ADD		X5,X5,X6, LSL #32

		MOV		X0,X5
		RET

.global	T2E09D
.type	T2E09D,"function"
T2E09D:	MOV	X5, X0

		REV		X5,X5
		REV32	X5,X5

		MOV		X0,X5
		RET

