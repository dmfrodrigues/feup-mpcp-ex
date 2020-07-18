/*
 ============================================================================
 Name        : 01_b.c
 Author      : 
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

extern long long MAXIMUM(long long aa, long long bb);

int main(void) {
	printf("MAXIMUM(10,20)=%Ld\n", MAXIMUM(10,20));
	printf("MAXIMUM(14, 7)=%Ld\n", MAXIMUM(14, 7));
	return EXIT_SUCCESS;
}
