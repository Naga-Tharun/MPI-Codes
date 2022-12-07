#include <stdio.h>
#include <inttypes.h>

int64_t add(int64_t, int64_t);
int64_t subtract(int64_t, int64_t);
int64_t multiply(int64_t, int64_t);
int64_t divide(int64_t, int64_t);

int main(){
    long x, y;
    printf("Enter the integers x and y between 1 to 9999: \n");
    scanf("%ld %ld", &x, &y);

    long sum = add(x, y);
    printf("\nThe result of %ld + %ld is: %ld\n", x, y, sum);

    long diff = subtract(x, y);
    printf("The result of %ld - %ld is: %ld\n", x, y, diff);

    long product = multiply(x, y);
    printf("The result of %ld * %ld is: %ld\n", x, y, product);

    long quotient = divide(x, y);
    printf("The result of %ld / %ld is: %ld\n", x, y, quotient);

    return 0;
}