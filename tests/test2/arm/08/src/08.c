#include <stdio.h>
#include <stdlib.h>

extern int cp(int x);

int main(void) {
	printf("(%d,%d,%d,%d)\n", cp(1), cp(3), cp(5), cp(7));
	return EXIT_SUCCESS;
}
