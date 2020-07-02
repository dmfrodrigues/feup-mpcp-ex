/*
 ============================================================================
 Name        : VFE04.c
 Author      : 
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

extern double HORNER(double x, double *coefs, int n);

int main(void) {
	double x = 3.41;
	double c[5] = {6.0,3.5,4.7,-1.0,-4.2};
	printf("%f\t%f\n", HORNER(x,c,5), c[0]+x*(c[1]+x*(c[2]+x*(c[3]+x*c[4]))));
	return EXIT_SUCCESS;
}
