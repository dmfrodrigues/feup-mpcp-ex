#include <stdio.h>
#include <stdlib.h>

extern double erfpos(double x);
double erf(double x);

double myerfpos(double x){
	x = (1.0L+0.278393L*x+0.230389L*x*x+0.000972L*x*x*x+0.078108L*x*x*x*x);
	x *= x;
	x *= x;
	return 1.0L-1.0L/x;
}
double myerf(double x){
	if(x < 0.0L) return -myerfpos(-x);
	return myerfpos(x);
}

int main(void){
	double x = 0.5;
	printf("%f == 0.0\n", myerfpos(x)-erfpos(x));
	printf("%f == 0.0\n", myerf(x)-erf(x));
	printf("%f == 0.0\n", myerf(-x)-erf(-x));
	return EXIT_SUCCESS;
}
