/*
 ============================================================================
 Name        : 03_b.c
 Author      : 
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

extern unsigned COUNTBITS(unsigned long long a);

int main(void) {
	printf("%u\n", COUNTBITS(185629475681475425)); //29
	printf("%u\n", COUNTBITS(99999)); //10
	return EXIT_SUCCESS;
}