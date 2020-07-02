.text

.global	f2e09a
.type	f2e09a,%function
f2e09a:	MOV W1, #0xABCD0000
		UBFX W2, W0, #24, #8
		BFI W1, W2, #16, #8
		MOV	W0, W1
		RET

.global	f2e09b
.type	f2e09b,%function
f2e09b:	REV W1, W0
		AND W1, W1, W1, ASR #16
		REV W1, W1
		SUB W1, W0, W1
		MOV	W0, W1
		RET

.global f2e09c
.type	f2e09c,%function
f2e09c:	EON X1, X1, X1
		ADD X1, X1, W0, SXTB #4
		MOV	X0, X1
		RET
