#include <stdio.h>
#include <stdlib.h>

extern int MAX_W(int* p, int dim);

int main(void) {
	int p[] = {0,1,2,3,4,-1,1,2,3,0};
	printf("MAX_W = %d\n", MAX_W(p,10));
	return EXIT_SUCCESS;
}
