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

extern unsigned long f2e06a(unsigned long n);
extern          long f2e06b(         long n);
extern unsigned      f2e06c(unsigned      n);

int main(void) {
	unsigned long n = 0x2967FA7E33DF9673;

	printf("%lX=> %lX==%lX\n", n, f2e06a(n), (unsigned long)0x67FA7E33DF967300);

	long m = +123456789;
	long p = -123456789;
	printf("%+ld=> %+ld==%+ld\n", m, f2e06b(m), (long)(+482253));
	printf("%+ld=> %+ld==%+ld\n", p, f2e06b(p), (long)(-482254));

	printf(" %lu=>  %lu== %lu\n", (unsigned)m, f2e06c(m), (unsigned)(2699786658));

	return EXIT_SUCCESS;
}
