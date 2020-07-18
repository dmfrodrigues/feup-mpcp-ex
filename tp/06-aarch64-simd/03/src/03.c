#include <stdio.h>
#include <stdlib.h>
#define SZ	32

extern long int conta_ocorr(char *V, long int n, char val);

int main(void) {
	char V[SZ] = {4,2,5,7,6,5,-1,-3,7,4,-4,7,3,-8,-9,-3,4,2,5,7,6,5,-1,-3,7,4,-4,7,3,-8,-9,-3};
	printf("%ld==4\n", conta_ocorr(V,SZ,5));
	printf("%ld==4\n", conta_ocorr(V,SZ,4));
	printf("%ld==2\n", conta_ocorr(V,SZ,2));
	printf("%ld==2\n", conta_ocorr(V,SZ,-1));
	printf("%ld==0\n", conta_ocorr(V,SZ,10));
	return EXIT_SUCCESS;
}
