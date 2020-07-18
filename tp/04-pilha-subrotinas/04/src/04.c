#include <stdio.h>
#include <stdlib.h>

extern void f3e04a(char *s);
extern  int f3e04b(char *s);

int main(void) {

	f3e04a("abcd");
	f3e04a("0123456789");

	printf("%d==1\n", f3e04b("()"));
	printf("%d==1\n", f3e04b("(())"));
	printf("%d==0\n", f3e04b("(()"));
	printf("%d==0\n", f3e04b("())"));
	printf("%d==1\n", f3e04b("(()()()((()())))()"));
	printf("%d==0\n", f3e04b("(()()()(()())))()"));
	return EXIT_SUCCESS;
}
