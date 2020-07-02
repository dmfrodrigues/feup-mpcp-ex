/*
 ============================================================================
 Name        : 05.c
 Author      : 
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

#define	SZ	8

extern void mirrorSeq(float *pt, int n);

int main(void) {
	float pt[SZ] = {1,2,3,4,5,6,7,8};
	for(int i = 0; i < SZ; ++i) printf("%f\t", pt[i]); printf("\n");
	mirrorSeq(pt, SZ);
	for(int i = 0; i < SZ; ++i) printf("%f\t", pt[i]); printf("\n");
	return EXIT_SUCCESS;
}
