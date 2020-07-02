.text
.global IN_RANGE
.type IN_RANGE, %function

IN_RANGE:	//X0 - pointer; X1 - dim; X2 - a; X3 - b;
			MOV		X4, #0 //X4 - counter
ciclo:		CBZ 	X1, fim //escape if done
				LDR 	X5, [X0]	//load to X5 the current number
				MOV		X6, #1		//X6 is our temporary flag

				CMP		X5, X2		//compare with a
				B.LT 	saltar		//if smaller, jump
				CMP		X5, X3		//compare with b
				B.GT 	saltar		//if larger, jump

				ADD		X4, X4, #1	//increment

saltar:			ADD		X0, X0, #8
				SUB		X1, X1, #1
			B		ciclo
fim:		MOV		X0, X4
			RET
