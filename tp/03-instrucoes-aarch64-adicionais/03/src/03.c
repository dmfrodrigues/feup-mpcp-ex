#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <assert.h>

extern unsigned long f2e03a(char *p);
extern unsigned long f2e03b(char *p, char c);
extern unsigned long f2e03c(char *p);
extern unsigned long f2e03d(char *p);
extern int           f2e03e(char *p);
extern unsigned long f2e03f(char *p);

int main(void) {
	char a[] = "uma string e uma cadeia de caracteres";
	printf("f2e03a %lu==%lu\n", f2e03a(a), strlen(a));

	char *s;
	unsigned long i;

	s = a;
	for(i = 0; s[i]; (s[i] == 'a'? ++i : *s++));
	printf("f2e03b %lu==%lu\n", f2e03b(a,'a'), i);

	s = a;
	for(i = 0; s[i]; (s[i] == 'a' ||
			          s[i] == 'e' ||
					  s[i] == 'i' ||
					  s[i] == 'o' ||
					  s[i] == 'u' ? ++i : *s++));
	printf("f2e03c %lu==%lu\n", f2e03c(a), i);

	char b[] = "AlgUmAs maiuscUlaS esPalHadas";

	s = b;
	for(i = 0; s[i]; ('A' <= s[i] && s[i] <= 'Z'? ++i : *s++));
	printf("f2e03d %lu==%lu\n", f2e03d(b), i);

	char c[] = "ANOTARAMADATADAMARATONA";
	char d[] = "ANOTARAMADATADAMARATONE";
	char e[] = "ANOTARAMADATTADAMARATONA";
	printf("f2e03e %d==1 %d==0 %d==1\n", f2e03e(c), f2e03e(d), f2e03e(e));

	s = a;
	for(i = 0; s[i]; (s[i] == ' '? ++i : *s++));
	printf("f2e03f %lu==%lu\n", f2e03f(a), i+1);

	return EXIT_SUCCESS;
}
