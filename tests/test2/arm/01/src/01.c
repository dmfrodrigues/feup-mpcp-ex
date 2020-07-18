#include <stdio.h>
#include <stdlib.h>

extern unsigned long int SUBR_T2(char *p);

int main(void) {
	char s[] = "30 de Abril";
	unsigned long int res;
	res = SUBR_T2(s);
	printf("0x%x\n", s);
	printf("0x%x\n", res);
	return EXIT_SUCCESS;
}
