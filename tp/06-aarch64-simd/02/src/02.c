#include <stdio.h>
#include <stdlib.h>
#define SZ	8

extern long int prodintV(int *R, int *S, int n);

int main(void) {
	int R[SZ] = {-1,2,-3,4,-5,6,7,8};
	int S[SZ] = {2,3,4,5,6,7,8,9};

	long int ans1 = prodintV(R,S,SZ);

	long int ans2 = 0;
	for(int i = 0; i < SZ; ++i)
		ans2 += R[i]*S[i];

	printf("%ld\t== %ld\n", ans1, ans2);
	return EXIT_SUCCESS;
}
