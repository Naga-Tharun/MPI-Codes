#include <stdio.h>
#include <inttypes.h>

int64_t prime(int64_t [], int64_t);

int main(){
    long int n;
    printf("Enter the value of n:\n");
    scanf("%ld", &n);

    long int a[n];
    printf("Enter the elements of the array:\n");
    for(long int i=0; i<n; i++){
        scanf("%ld", &a[i]);
    }

    long int p_n = prime(a, n);
    printf("\nThe number of prime numbers in the array is: %ld\n", p_n);

    return 0;
}