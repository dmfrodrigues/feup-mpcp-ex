#include <stdio.h>
#include <stdlib.h>

extern long long ABSOLUTE(long long a);

int main(void) {
	long long a = -10;
	printf("a=%lld\n", a);
	a = ABSOLUTE(a);
	printf("a=%lld\n", a);
	return EXIT_SUCCESS;
}
