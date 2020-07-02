.text
.global	TMS
.type	TMS,"function"
TMS:	MOV		W2, #7
		MOV		X1, #0
		ADD		X0, X0, #8
ciclo1:	CBZ		W2, fim1
			LDR		X3, [X0], #16
			SUB		W2, W2, #1
			ADD		X1, X1, X3
		B		ciclo1
fim1:	MOV		X2, #7
		SDIV	X0, X1, X2
		MSUB	X3, X0, X2, X1
		CMP		X3, #4
		B.LT	retorn
		ADD		X0, X0, #1
retorn:	RET

.data
PRINT_FMT:	.string	"Semana mais quente: %d, temperatura: %d.\n"
.text
.global	E01b
.type	E01b,"function"
E01b:	STP		X29, X30, [SP, #-16]!
		MOV		X29, SP

		MOV		X19, X0
		MOV		X20, #2	//#52
		MOV		X21, #-1
		MOV		X22, #0x8000000000000000

ciclo2:	CBZ		X20, fim2
			MOV		X0, X19
			BL		TMS
			CMP		X0, X22
			B.LE	cont
			MOV		X21, X20
			MOV		X22, X0
cont:		ADD		X19, X19, #112
			SUB		X20, X20, #1
		B		ciclo2
fim2:	LDR		X0, =PRINT_FMT
		MOV		X1, #3	//#53
		SUB		X1, X1, X21
		MOV		X2, X22
		BL		printf

		LDP		X29, X30, [SP], #16
		RET
