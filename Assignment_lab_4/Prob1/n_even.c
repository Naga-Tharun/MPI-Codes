#include <stdio.h>
#include <inttypes.h>

int64_t even(int64_t[], int64_t);

int main(){
    long int n;
    printf("Give the value of n:\n");
    scanf("%ld", &n);

    long int a[n];
    printf("Enter the elements of the array:\n");
    for(long int i=0; i<n; i++){
        scanf("%ld", &a[i]);
    }

    long int e_n = even(a, n);
    printf("\nThe number of even numbers in list is: %ld\n", e_n);

    return 0;
}