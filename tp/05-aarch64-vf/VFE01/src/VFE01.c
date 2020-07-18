#include <stdio.h>
#include <stdlib.h>

extern double VFE01a();
extern double VFE01b();

int main(void){
	printf("%lf\n", VFE01a());
	printf("%lf\n", VFE01b());
	return EXIT_SUCCESS;
}
