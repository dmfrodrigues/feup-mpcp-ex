.text
.global COUNTSEQ
.type COUNTSEQ,"function"

COUNTSEQ:		MOV		X1, X0
				MOV		W0, #0
CNTSEQloop:		CMP		X1, #0
				B.EQ	CNTSEQend
				AND		X2, X1, #31
				MOV		X3, #22
				EOR		X2, X3, X2
				CMP		X2, #0
				B.NE	CNTSEQskip
				ADD		W0, W0, #1
				LSR		X1, X1, #5
				B		CNTSEQloop
CNTSEQskip:		LSR		X1, X1, #1
				B		CNTSEQloop
CNTSEQend:		RET
