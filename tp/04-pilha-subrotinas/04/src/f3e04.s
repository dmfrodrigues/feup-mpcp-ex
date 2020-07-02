.data

	.global outstr
	.align 3
	outstr:
		.string "%c"

	.global newlstr
	.align 3
	newlstr:
		.string "\n"

.text

.global	f3e04a
.type	f3e04a,%function
f3e04a:	STP		X29, X30, [SP, #-16]!
		MOV		X29, SP

		MOV		X19, X0
		MOV		X20, SP
ciclo1:	LDRB	W1, [X19], #1
		CBZ		W1, ciclo2
			STR		W1, [SP, #-16]!
		B		ciclo1
ciclo2:	CMP		SP, X20
		B.EQ	fim2
			LDR		W1, [SP], #16
			LDR		X0, =outstr
			BL		printf
		B		ciclo2
fim2:	LDR		X0, =newlstr
		BL		printf
		LDP	X29, X30, [SP], #16
		RET

.global	f3e04b
.type	f3e04b,%function
f3e04b:	MOV		X19, SP
ciclob:	LDRB	W1, [X0]
		CBZ		W1, fimb	//enquanto X1 não for '\0'
			CMP	W1, '('
			B.NE falseb
				STR	W1, [SP, #-16]!	//se X1=='(', vai para a pilha
			B	saltob
falseb:			CMP	SP, X19			//se X1==')'
				B.NE goodb
					MOV	X0, #0		//se a pilha estiver vazia, retornar falso
					RET
goodb:				LDR	W1, [SP], #16 //se não estiver vazia, pop
saltob:		ADD	X0, X0, #1
		B	ciclob
fimb:	//Chega aqui se ainda sobrarem coisas na pilha
		CMP		SP, X19
		CSET	X0, EQ
		MOV		SP, X19
		RET
