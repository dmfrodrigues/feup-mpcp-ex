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

extern int ism(int x, int y);

int main(void) {
	printf("%d\n", ism(34,7));
	return EXIT_SUCCESS;
}
