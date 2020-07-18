#include <stdio.h>
#include <stdlib.h>

extern int AVG_D(long* p, int dim);

int main(void) {
	long p[] = {10,10,10,10,10,10,10,10,10,10};
	printf("AVG_D = %d\n", AVG_D(p,10));
	long q[] = {10,10,10,10,10,10,10,10,10,9};
	printf("AVG_D = %d\n", AVG_D(q,10));
	long r[] = {10,10,10,10,10,10,10,10,10,0};
	printf("AVG_D = %d\n", AVG_D(r,10));
	long s[] = {10,10,10,10,10,10,10,10,10,-1};
	printf("AVG_D = %d\n", AVG_D(s,10));
	return EXIT_SUCCESS;
}
