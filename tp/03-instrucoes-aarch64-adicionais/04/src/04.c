/*
 ============================================================================
 Name        : 04.c
 Author      : 
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>
extern void f2e04a(unsigned char *p1, unsigned long *p2, unsigned long dim);
extern void f2e04b(          int *p1,          long *p2, unsigned long dim);
int main(void) {
	unsigned char p1[] = {0,1,2,3,4,5,126,127,128,254,255};
	unsigned long p2[11];
	f2e04a(p1,p2,11);
	printf("f2e04a\n");
	for(int i = 0; i < 11; ++i) printf("%hhu ", p1[i]);
	printf("==\n");
	for(int i = 0; i < 11; ++i) printf("%lu " , p2[i]);
	printf("\n");

	int p3[] = {-2147483648, -2147483647, -100,-50,0,50,100, 2147483646, 2147483647};
	long p4[9];
	f2e04b(p3,p4,9);
	printf("f2e04b\n");
	for(int i = 0; i < 9; ++i){
		printf("%d ", p3[i]);
	}
	printf("==\n");
	for(int i = 0; i < 9; ++i){
		printf("%ld ", p4[i]);
	}
	printf("\n");

	return EXIT_SUCCESS;
}
