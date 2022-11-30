#include <stdio.h>
#include <inttypes.h>

int64_t sum(int64_t, int64_t);

int main(){
    long int a;
    long int b;
    printf("Enter the value of a and b: \n");
    scanf("%ld %ld", &a, &b);

    printf("The value of the equation is: %ld\n", sum(a, b));

    return 0;
}