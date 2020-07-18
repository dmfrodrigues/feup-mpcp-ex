#include <stdio.h>
#include <stdlib.h>

#define SZ	10

extern long int conta_intervalo(float *V, long int n, float a, float b);

int main(void) {
	float V[SZ] = {1,2,3,4,5,6,7,8,9,10};
	printf("%ld\t== 4\n", conta_intervalo(V, SZ, 4,7));
	printf("%ld\t== 4\n", conta_intervalo(V, SZ, 4,7.5));
	printf("%ld\t== 5\n", conta_intervalo(V, SZ, 4,8));
	return EXIT_SUCCESS;
}
