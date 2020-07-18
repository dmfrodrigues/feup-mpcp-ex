#include <stdio.h>
#include <stdlib.h>

extern int f2e08a();
extern int f2e08b();

int main(void) {
	printf("%X\n", f2e08a());
	printf("%X\n", f2e08b());
	return EXIT_SUCCESS;
}
