#include <stdio.h>
#include <stdlib.h>

extern long SOMA(long *p, unsigned long dim);
extern long MEDIA(long *p, unsigned long dim);
extern long MAXMED(long *p1, unsigned long dim1, long *p2, unsigned long dim2);

int main(void) {
	long p1[] = {1,2,3,4,5,6,7,8,9};
	long p2[] = {5,7,9,15};
	printf("%ld\n", SOMA  (p1, 9));
	printf("%ld\n", MEDIA (p1, 9));
	printf("%ld\n", SOMA  (p2, 4));
	printf("%ld\n", MEDIA (p2, 4));
	printf("%ld\n", MAXMED(p1,9,p2,4));
	return EXIT_SUCCESS;
}
