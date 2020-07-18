#include <stdio.h>
#include <stdlib.h>

extern void VerificaPonto(double x, double y, char *msgSIM, char *msgNAO);

char msgSIM[] = "Oh yeah!\n";
char msgNAO[] = "Fudeu\n";

int main(void) {
	VerificaPonto(0.0,	0.0,	msgSIM, msgNAO);
	VerificaPonto(1.0,	0.0,	msgSIM, msgNAO);
	VerificaPonto(-0.1,	0.0,	msgSIM, msgNAO);
	VerificaPonto(0.0,	-0.1,	msgSIM, msgNAO);
	VerificaPonto(0.3,	0.3,	msgSIM, msgNAO);
	VerificaPonto(0.3,	0.4,	msgSIM, msgNAO);
	VerificaPonto(0.3,	0.5,	msgSIM, msgNAO);
	VerificaPonto(0.3,	0.6,	msgSIM, msgNAO);
	VerificaPonto(0.3,	0.7,	msgSIM, msgNAO);
	VerificaPonto(0.3,	0.8,	msgSIM, msgNAO);
	VerificaPonto(0.3,	0.9,	msgSIM, msgNAO);
	VerificaPonto(0.3,	0.96,	msgSIM, msgNAO);
	return EXIT_SUCCESS;
}
