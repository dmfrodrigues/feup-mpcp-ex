/*
 ============================================================================
 Name        : 02_b.c
 Author      : 
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>
extern int MIN_D(long* p, int dim);
int main(void) {
	long p[] = {0,1,2,3,4,-1,1,2,3,0};
	printf("MIN_D = %d\n", MIN_D(p,10));
	return EXIT_SUCCESS;
}
