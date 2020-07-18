#include <stdio.h>
#include <stdlib.h>

#define SZ	8

extern void incsatV(int *Z, int n, int x);

int main(void) {
	int A[SZ] = {1,2,3,4,5,6,7,8};
	int a = 0x7FFFFFFA;
	incsatV(A,SZ,a);
	for(int i = 0; i < SZ; ++i) printf("%d\t", A[i]); printf("\n");

	int B[SZ] = {-1,-2,-3,-4,-5,-6,-7,-8};
	int b = 0x80000005;
	incsatV(B,SZ,b);
	for(int i = 0; i < SZ; ++i) printf("%d\t", B[i]); printf("\n");

	return EXIT_SUCCESS;
}
