#include <stdio.h>
#include <stdlib.h>

extern unsigned	COUNTSEQ(unsigned long long a);

int main(void) {
	printf("%u\n", COUNTSEQ(46614)); // 2
	return EXIT_SUCCESS;
}
