.text

.global	f2e08a
.type	f2e08a,%function
f2e08a:	MOV W0, #0x66666666
		MOV W1, #0xF000000F
		AND W0, W0, W1
		EOR W0, W0, W1
		ORR W0, W0, #0x66666666
		RET

.global	f2e08b
.type	f2e08b,%function
f2e08b: MOV W0, #0x0000BEEF
		ADDS W0, W0, #0x00008000
		MOV W1, #0x00003EEE
		SBC W0, W0, W1
		ADC W0, W0, W0
		RET
