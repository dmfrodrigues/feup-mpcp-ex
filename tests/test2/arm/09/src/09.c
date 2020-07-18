#include <stdio.h>
#include <stdlib.h>

extern long T2E090(long n);
extern long T2E09A(long n);
extern long T2E09B(long n);
extern long T2E09C(long n);
extern long T2E09D(long n);

int main(void) {
	long n = 0x0123456789ABCDEF;
	printf("0x%lx\n", T2E090(n));
	printf("0x%lx\n", T2E09A(n));
	printf("0x%lx\n", T2E09B(n));
	printf("0x%lx\n", T2E09C(n));
	printf("0x%lx\n", T2E09D(n));
	return EXIT_SUCCESS;
}
