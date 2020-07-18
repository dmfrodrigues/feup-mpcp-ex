#include <stdio.h>
#include <stdlib.h>

extern double cosseno(double x);

extern double func(double graus);

extern void E09c();

int main(void) {
	printf("%f %f %f %f %f\n", cosseno(0.0L), cosseno(0.392699082L), cosseno(0.785398163L), cosseno(1.178097245L), cosseno(1.570796327L));
	printf("%f %f %f %f %f\n", func(0.0L), func(22.5L), func(45.0L), func(67.5L), func(90.0L));
	E09c();
	return EXIT_SUCCESS;
}
