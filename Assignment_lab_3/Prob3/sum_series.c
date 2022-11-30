#include <stdio.h>
#include <inttypes.h>

int64_t series(int64_t, int64_t);

int main(){
    long int n ;
    printf("\nGive the value of n: \n");
    scanf("%ld", &n);
    long int x;
    printf("\nGive the value of x: \n");
    scanf("%ld", &x);

    long int ans = series(n, x);
    
    printf("\nThe sum of the series is: %ld\n", ans);

    return 0;
}