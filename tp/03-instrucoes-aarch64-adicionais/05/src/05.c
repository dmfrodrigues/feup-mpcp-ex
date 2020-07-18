#include <stdio.h>
#include <stdlib.h>

extern int POS1msb(long int n);
extern int PAL8(char *s);
extern int NCAP(int n);

int main(void) {
	printf("POS1msb %d==%d\n", POS1msb(0b110110001), 8);
	printf("POS1msb %d==%d\n", POS1msb(0b1110110001), 9);
	printf("POS1msb %d==%d\n", POS1msb(0x8000000000000000), 63);

	printf("PAL8 %d==%d\n", PAL8("ABCDDCBA"), 1);
	printf("PAL8 %d==%d\n", PAL8("ABCDDCCA"), 0);
	printf("PAL8 %d==%d\n", PAL8("ABCDCCBA"), 0);

	printf("NCAP %d==%d\n", NCAP(0xF6F00F6F), 1);
	printf("NCAP %d==%d\n", NCAP(0xF6F01F6F), 0);
	printf("NCAP %d==%d\n", NCAP(0xF6F81F6F), 1);

	return EXIT_SUCCESS;
}
