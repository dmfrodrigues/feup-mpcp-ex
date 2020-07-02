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

extern void f2e07a(long *p1, long *p2, unsigned long dim, long *dest);
extern void f2e07b(long *p1, long *p2, unsigned long dim, long *dest);
extern void f2e07c(long *pi, unsigned long dim, long n);
extern long f2e07d(long *p1, long *p2, unsigned long dim);
extern long f2e07e(long *p1, long *p2, unsigned long dim);

int main(void) {
	long a1[] = {1,2,3,4,-5,10};
	long a2[] = {1,4,9,16,-9223372036854775805,9223372036854775805};
	long a3[] = {9,8,7,8,5,4};
	long d[6];

	f2e07a(a1,a2,6,d);
	printf("f2e07a\n");
	for(int i = 0; i < 6; ++i){ printf("%ld ", a1[i]); } printf("+\n");
	for(int i = 0; i < 6; ++i){ printf("%ld ", a2[i]); } printf("=\n");
	for(int i = 0; i < 6; ++i){ printf("%ld ",  d[i]); } printf("\n");

	f2e07b(a1,a2,6,d);
	printf("f2e07b\n");
	for(int i = 0; i < 6; ++i){ printf("%ld ", a1[i]); } printf("+\n");
	for(int i = 0; i < 6; ++i){ printf("%ld ", a2[i]); } printf("=\n");
	for(int i = 0; i < 6; ++i){ printf("%ld ",  d[i]); } printf("\n");

	long n = 2;
	printf("f2e07c\n");
	for(int i = 0; i < 6; ++i){ printf("%ld ", a1[i]); } printf("*\n");
	printf("%ld =\n", n);
	f2e07c(a1,6,n);
	for(int i = 0; i < 6; ++i){ printf("%ld ", a1[i]); } printf("\n");

	long ans;

	ans = f2e07d(a1,a3,6);
	printf("f2e07d\n");
	for(int i = 0; i < 6; ++i){ printf("%ld ", a1[i]); } printf(" .\n");
	for(int i = 0; i < 6; ++i){ printf("%ld ", a3[i]); } printf("=\n");
	printf("%ld\n", ans);

	printf("f2e07e\n");
	ans = f2e07e(a1,a3,6);
	for(int i = 0; i < 6; ++i){ printf("%ld ", a1[i]); } printf(" .\n");
	for(int i = 0; i < 6; ++i){ printf("%ld ", a3[i]); } printf("=\n");
	printf("%ld\n", ans);
	ans = f2e07e(a1,a2,6);
	for(int i = 0; i < 6; ++i){ printf("%ld ", a1[i]); } printf(" .\n");
	for(int i = 0; i < 6; ++i){ printf("%ld ", a2[i]); } printf("=\n");
	printf("%ld\n", ans);



	return EXIT_SUCCESS;
}
