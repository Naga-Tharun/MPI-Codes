#include <stdio.h>
#include <inttypes.h>

int64_t minimum(int64_t[], int64_t);
int64_t maximum(int64_t[], int64_t);

int main(){
    long int n ;
    printf("\nGive the size of array: \n");
    scanf("%ld", &n);
    long int a[n];
    printf("\nEnter the array elements: \n");
    for(long int i=0; i<n; i++){
        scanf("%ld", &a[i]);
    }

    long int min_n = minimum(a, n);
    long int max_n = maximum(a, n);
    
    printf("\nThe minimum element in the array is: %ld\n", min_n);
    printf("\nThe maximum element in the array is: %ld\n", max_n);

    return 0;
}