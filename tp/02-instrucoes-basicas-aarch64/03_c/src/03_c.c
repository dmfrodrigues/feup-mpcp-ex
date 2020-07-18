#include <stdio.h>
#include <stdlib.h>

extern unsigned COUNTEQBITS(unsigned long long a, unsigned long long b);

int main(void) {
	printf("%u\n", COUNTEQBITS(123456, 654321)); //56
	return EXIT_SUCCESS;
}
