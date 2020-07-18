#include <stdio.h>
#include <stdlib.h>

#define SZ	8

extern void normvec(float *ptr, long n, float *dest);

int main(void) {
	float v[SZ] = {1,2,3,4,5,6,7,8};
	float ans;
	normvec(v, SZ, &ans);
	printf("%f\n", ans);
	return EXIT_SUCCESS;
}
