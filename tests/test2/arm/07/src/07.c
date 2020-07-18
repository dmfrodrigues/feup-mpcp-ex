#include <stdio.h>
#include <stdlib.h>

extern int ism(int x, int y);

int main(void) {
	printf("%d\n", ism(34,7));
	return EXIT_SUCCESS;
}
