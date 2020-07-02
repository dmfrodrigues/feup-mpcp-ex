/*
 ============================================================================
 Name        : 09.c
 Author      : 
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

extern int f2e09a(int n);
extern int f2e09b(int n);
extern long f2e09c(long n);

int main(void) {
	printf("%X\n", f2e09a(0x12345678));
	printf("%X\n", f2e09b(0x12345678));
	printf("%X\n", f2e09c(0x12345678));
	return EXIT_SUCCESS;
}
