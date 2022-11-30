#include <stdio.h>

int main(){
    double a;
    scanf("%lf", &a);

    int ar[64];
    unsigned long long int *p = (unsigned long long int*)&a;
    unsigned long long int b = *p;
    for(int i=0; i<64; i++){
        ar[63-i] = b & 1;
        b >>= 1;
    }

    printf("%d  ", ar[0]);
    for(int i=1; i<12; i++){
        printf("%d", ar[i]);
    }

    printf("  ");
    for(int i=12; i<63; i++){
        printf("%d", ar[i]);
    }
    printf("\n");
    
    return 0;
}