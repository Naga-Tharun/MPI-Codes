#include <stdio.h>
#include <inttypes.h>

int64_t linearsearch(int64_t[], int64_t, int64_t);

int main(){
    long int n ;
    printf("\nGive the size of array: \n");
    scanf("%ld", &n);
    long int a[n];
    printf("\nEnter the array elements: \n");
    for(long int i=0; i<n; i++){
        scanf("%ld", &a[i]);
    }
    long int x;
    printf("\nEnter the key: \n");
    scanf("%ld", &x);

    long int ans = linearsearch(a, n, x);
    if(ans == -1){
        printf("\nThe key is not found in the array\n");
    }
    else{
        printf("\nThe key is found in the array\n");
    }
    
    printf("Position of key \"%ld\" is %ld\n", x, ans);
    return 0;
}