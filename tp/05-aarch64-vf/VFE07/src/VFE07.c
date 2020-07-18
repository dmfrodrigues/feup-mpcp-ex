#include <stdio.h>
#include <stdlib.h>

extern double rotF(double x);

double myrotF(double x){
	if(x < 0.0L){
		return 1.0L/(4.0L-x);
	}else{
		return (x+3.14159265359L)*(x+3.14159265359L)*(x+3.14159265359L);
	}
}

int main(void) {
	double x = 2.5;
	double ans = rotF(x);
	printf("%f\t== %f\n", myrotF(x), ans*ans);
	return EXIT_SUCCESS;
}
