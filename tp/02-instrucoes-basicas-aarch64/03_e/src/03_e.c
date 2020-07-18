#include <stdio.h>
#include <stdlib.h>

extern unsigned EVEN(unsigned long long* a, unsigned long long* b);

int main(void) {
	unsigned long long v[6145];
	for(unsigned i = 0; i < 6145; ++i)
		v[i] = rand()%10000;
	printf("%u\n", EVEN(v, v+6145));
	return EXIT_SUCCESS;
}
