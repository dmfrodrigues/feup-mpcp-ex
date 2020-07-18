#include <stdio.h>
#include <stdlib.h>

extern short MAX_H(short* p, int dim);

int main(void) {
	short p[] = {0,1,2,3,4,-1,1,2,3,0};
	printf("MAX_H %d==4\n", MAX_H(p,10));
	return EXIT_SUCCESS;
}
