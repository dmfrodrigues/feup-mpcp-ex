#include <stdio.h>
#include <stdlib.h>

extern int T2E02(int *arr, int a);

int main(void) {
	int res;
	int arr[1];
	res = T2E02(arr, 0x8ABC0DEF);
	printf("0x%x\n", res);
	return EXIT_SUCCESS;
}
