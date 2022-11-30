#include <stdio.h>
#include <inttypes.h>

int64_t small_n(int64_t[], int64_t);

int main(){

    long int n;
    printf("Enter the value of n: ");
    scanf("%ld", &n);

    if(n >= 1){
        long int a[n];
        printf("Enter the elements of the array\n");
        for(long int i=0; i<n; i++){
            scanf("%ld", &a[i]);
        }
        long int ans = small_n(a, n);
        printf("The smallest element of array: %ld\n", ans);
    }
    else{
        printf("The given input n is invalid\n");
    }
    return 0;
}