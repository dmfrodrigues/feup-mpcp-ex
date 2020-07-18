extern void afunc1(char *p, unsigned long W, unsigned long H);

#include <stdlib.h>
#include <assert.h>

int main(){
    unsigned long W = 10;
    unsigned long H = 10;
    char *p = calloc(W*H, sizeof(char));
    for(unsigned long i = 0; i < W*H; ++i)
        p[i] = i;
    afunc1(p, W, H);
    for(unsigned long i = 4; i < W*H; ++i) assert((unsigned long)p[i] == i);
    assert(p[0] == 0x00);
    assert(p[1] == 0x00);
    assert(p[2] == 0xFF);
    assert(p[3] == 0x00);
    return 0;
}
