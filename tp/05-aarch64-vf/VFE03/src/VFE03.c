/*
 ============================================================================
 Name        : VFE03.c
 Author      : 
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

extern void calc_poly_tab(float *tab);

int main(void) {
	float t[101];
	calc_poly_tab(t);
	for(unsigned i = 0; i < 101; ++i){
		float x = i/10.0;
		float ans = 1.5*x*x*x-12.5*x+7.0;
		printf("%f\t%f\n", ans, t[i]);
	}
	return EXIT_SUCCESS;
}
