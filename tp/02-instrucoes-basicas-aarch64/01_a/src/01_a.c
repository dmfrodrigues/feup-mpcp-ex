#include <stdio.h>
#include <stdlib.h>

extern void DECREMENT(long long int* aa);

int main(void) {
	long long int a = 10;
	printf("a=%lld\n", a);
	DECREMENT(&a);
	printf("a=%lld\n", a);
	return EXIT_SUCCESS;
}
