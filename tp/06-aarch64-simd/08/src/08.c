/*
 ============================================================================
 Name        : 08.c
 Author      : 
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

#define SZ	8

extern void ajusteSIMD(float *X, float *Y, int n, float da);

int main(void) {
	float X[SZ] = {1,2,3,4,5,6,7,8};
	float Y[SZ] = {9,10,11,12,13,14,15,16};
	float da = 2.0;
	printf("("); for(int i = 0; i < SZ; ++i) printf("%f\t", Y[i]-da*X[i]); printf(") ==\n");
	ajusteSIMD(X,Y,SZ,da);
	printf("("); for(int i = 0; i < SZ; ++i) printf("%f\t", Y[i]); printf(")\n");
	return EXIT_SUCCESS;
}
