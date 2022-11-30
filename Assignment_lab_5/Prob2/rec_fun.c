#include <stdio.h>
#include <inttypes.h>

int64_t recurf(int64_t);

int main(){

    long int n;
    printf("Enter the value of n: ");
    scanf("%ld", &n);

    if(n >= 1){
        long int ans = recurf(n);
        printf("The function is f(n) = f(n-1) + n and f(1) = 1\n");
        printf("The value of f(%ld): %ld\n", n, ans);
    }
    else{
        printf("The given input n is invalid\n");
    }
    return 0;
}