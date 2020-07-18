#include <stdio.h>
#include <stdlib.h>

extern float sint(float x, long n);

float mysint(float x, long n){
	float r = 1.0;
	while(n){
		r *= x;
		r /= n;
		--n;
	}
	return r;
}

int main(void) {
	float x = 3.14159;
	long n = 9;
	printf("%f\t== %f\n", mysint(x,n), sint(x,n));
	return EXIT_SUCCESS;
}
