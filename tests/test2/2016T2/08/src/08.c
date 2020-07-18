#include <stdio.h>

extern long mat(long A, long B, long D, long E, long X);

int main(){
    long A = 1, B = 2, D=3, E=4, X=5;
    long res = mat(A, B, D, E, X);
    printf("Got %ld\n", res);
    return 0;
}
