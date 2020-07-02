/*
 ============================================================================
 Name        : 01.c
 Author      : 
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>
#define SZ	8

extern void somaV(float *P, float *Q, float *R, int n);
extern void altV(float *P, int n, float k);
extern void msubV(float *P, float *Q, float *R, int n, float k);

int main(void) {
	float P[SZ] = {-1.0,-2.0,-3.0,-4.0,5.0,6.0,7.0,8.0};
	float Q[SZ] = {1.0, 3.0, 5.0, 7.0, 9.0, 11.0, 13.0, 15.0};

	printf("################ (a) ################\n");
	float R[SZ];
	somaV(P,Q,R,SZ);
	for(int i = 0; i < SZ; ++i)
		printf("%f\t+ %f\t== %f\t== %f\n", P[i], Q[i], P[i]+Q[i], R[i]);

	printf("\n################ (b) ################\n");
	float k = 1.5;
	printf("("); for(int i = 0; i < SZ; ++i) printf("%f\t", P[i]); printf(") * %f ==\n", k);
	printf("("); for(int i = 0; i < SZ; ++i) printf("%f\t", k*P[i]); printf(") * %f ==\n", k);
	altV(P, SZ, k);
	printf("("); for(int i = 0; i < SZ; ++i) printf("%f\t", P[i]); printf(")\n");

	printf("\n################ (c) ################\n");
	printf("P-k*Q ==\n");
	printf("("); for(int i = 0; i < SZ; ++i) printf("%f\t", P[i]-k*Q[i]); printf(") ==\n");
	msubV(P,Q,R,SZ,k);
	printf("("); for(int i = 0; i < SZ; ++i) printf("%f\t", R[i]); printf(")\n");

	return EXIT_SUCCESS;
}
