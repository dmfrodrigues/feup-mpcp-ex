/*
 ============================================================================
 Name        : 11.c
 Author      : 
 Version     :
 Copyright   : Your copyright notice
 Description : Hello World in C, Ansi-style
 ============================================================================
 */

#include <stdio.h>
#include <stdlib.h>

extern int f2e11(long n);

int main(void){
	printf("f2e11 %d==%d\n", f2e11(0xF0FFFF1057212345), 61);
	printf("f2e11 %d==%d\n", f2e11(0xF8FFFF1057212345), 60);
	printf("f2e11 %d==%d\n", f2e11(0xFCFFFF1057212345), 59);
	printf("f2e11 %d==%d\n", f2e11(0x00FFFF1057212345), 57);
	printf("f2e11 %d==%d\n", f2e11(0x0000000000000000),  1);
	printf("f2e11 %d==%d\n", f2e11(0xFFFFFFFFFFFFFFFF),  1);
	printf("f2e11 %d==%d\n", f2e11(0x0000000000000001),  2);
	printf("f2e11 %d==%d\n", f2e11(0xFFFFFFFFFFFFFFFE),  2);
	return EXIT_SUCCESS;
}
