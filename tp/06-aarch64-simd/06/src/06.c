#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define SZ	6

extern double normV(double *ptV, long int n);

int main(void) {
	double p[SZ] = {4,-6,2.1,6,8.7,5};
	double ans1 = normV(p, SZ);
	double ans2 = 0.0;
	for(int i = 0; i < SZ; ++i) ans2 += p[i]*p[i];
	printf("%f\t== %f\n", ans1*ans1, ans2);
	return EXIT_SUCCESS;
}
