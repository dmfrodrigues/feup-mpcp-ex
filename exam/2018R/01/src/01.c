#include <stdio.h>
#include <stdlib.h>

extern long TMS(long *ptr);
extern void E01b(long *ptr);

int main(void) {
	long T[28] = {9,20,11,24,9,21,9,20,9,19,11,20,10,24,14,29,13,28,14,27,12,26,12,23,12,26,14,29};
	printf("%ld==21\n", TMS(T));
	T[13] = 26;
	printf("%ld==21\n", TMS(T));
	T[13] = 27;
	printf("%ld==22\n", TMS(T));

	E01b(T);

	long U[28] = {14,29,13,28,14,27,12,26,12,23,12,26,14,29,9,20,11,24,9,21,9,20,9,19,11,20,10,24};

	E01b(U);

	return EXIT_SUCCESS;
}
