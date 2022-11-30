#include <stdio.h>
#include <inttypes.h>

int64_t factorial(int64_t);

int main(){

    long int n;
    printf("Enter the value of n: ");
    scanf("%ld", &n);

    if(n >= 0){
        long int fact_n = factorial(n);
        printf("The factorial of %ld: %ld\n", n, fact_n);
    }
    else{
        printf("The given input n is invalid (negative)\n");
    }
    return 0;
}