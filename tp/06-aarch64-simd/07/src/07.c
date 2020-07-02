/*
 ============================================================================
 Name        : 07.c
 Author      : 
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

#define	SZ	8

extern long int conta_inf(float *V, long int n, float lim);

int main(void) {
	float V[SZ] = {0,0.5,1,6,3,5,4,2};
	printf("%ld\n", conta_inf(V, SZ, 2));
	return EXIT_SUCCESS;
}
