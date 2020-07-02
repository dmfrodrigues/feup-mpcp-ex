/*
 ============================================================================
 Name        : 02_e.c
 Author      : 
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>
extern unsigned long IN_RANGE(long *p, unsigned long dim, long a, long b);
int main(void){
	long p[] = {0,1,2,3,4,5,6,7,8,9};
	printf("IN_RANGE(2,5) = %lu\n", IN_RANGE(p, 10, 2, 5));
	return EXIT_SUCCESS;
}
