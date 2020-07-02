/*
 ============================================================================
 Name        : VFE05.c
 Author      : 
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>
#define SZ	3

extern double prodint(float *X, float *Y, int n);

int main(void) {
	float X[SZ] = {1,-2.1,3};
	float Y[SZ] = {4,5.4,6.9};
	double ans1 = prodint(X,Y,SZ);
	double ans2 = 0; for(int i = 0; i < SZ; ++i) ans2 += X[i]*Y[i];
	printf("%f\t== %f\n", ans1, ans2);
	return EXIT_SUCCESS;
}
