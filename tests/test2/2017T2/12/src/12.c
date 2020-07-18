#include <stdio.h>
#include <stdlib.h>

extern long nviaturas(long *p1, long *p2, unsigned long N, long M);
extern int coerente  (long *pi, long *p2, unsigned long N);

int main(void) {

	const unsigned long N = 14;
	long p1[] = { 0, 0, 0, 0, 3, 7, 7,12,15,18,56,73,80,92};
	long p2[] = { 1, 5,20,32,33,33,33,33,33,57,82,93,97,97};
	long M = 33;

	printf("nviaturas %ld==6\n", nviaturas(p1, p2, N, M));

	long p3[] = { 1, 5,20,32,33,33,33,33,33,33,56,93,97,97};

	printf("coerente %d==1\n", coerente(p1, p3, N));

	return EXIT_SUCCESS;
}
