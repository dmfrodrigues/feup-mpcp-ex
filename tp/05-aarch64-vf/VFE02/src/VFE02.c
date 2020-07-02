/*
 ============================================================================
 Name        : VFE02.c
 Author      : 
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

extern float VFE02a(float A, float B, float C, float D);
extern double VFE02b(double r);
extern double VFE02c(double x1, double y1, double x2, double y2);

int main(void) {
	printf("%f\n", VFE02a(1.0,2.0,3.0,4.0));
	printf("%f\n", VFE02b(2.0));
	printf("%f\n", VFE02c(3.0, 4.0, 2.0, 1.0));
	return EXIT_SUCCESS;
}
