/*
 ============================================================================
 Name        : 01_d.c
 Author      : 
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>
#define ULLI unsigned long long

extern int COMPARE(ULLI a);

int main(void) {
	printf("%d\n", COMPARE((ULLI)11771832262392148754)); //1
	printf("%d\n", COMPARE((ULLI)20014547604021)); //0
	return EXIT_SUCCESS;
}
