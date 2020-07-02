/*
 ============================================================================
 Name        : 06.c
 Author      : 
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

extern int vsum(int *a, int n);

int main(void) {
	int a[] = {1,2,3,4,5,6,7};
	int res = vsum(a, 7);
	printf("%d\n", res);
	return EXIT_SUCCESS;
}
