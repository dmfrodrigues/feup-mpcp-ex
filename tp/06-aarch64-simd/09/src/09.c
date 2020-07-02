/*
 ============================================================================
 Name        : 09.c
 Author      : 
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

#define SZ	8

extern void prod_complexosV(float *Z1, float *Z2, float *Z, long int n);

int main(void) {
	float Z1[SZ] = {1,2,3,4,5,6,7,8};
	float Z2[SZ] = {9,-10,-11,-12,13,14,15,-16};
	float Z[SZ];
	printf("(");
	for(int i = 0; i < SZ; i += 2)
		printf("%f\t%f\t", Z1[i]*Z2[i]-Z1[i+1]*Z2[i+1], Z1[i]*Z2[i+1]+Z2[i]*Z1[i+1]);
	printf(") ==\n");
	prod_complexosV(Z1,Z2,Z,SZ);
	printf("(");
	for(int i = 0; i < SZ; i += 2)
		printf("%f\t%f\t", Z[i], Z[i+1]);
	printf(")");
	return EXIT_SUCCESS;
}
