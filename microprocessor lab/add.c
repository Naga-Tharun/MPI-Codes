#include <stdio.h>
#define a 5
#define b 10
#define c 20
#define d 25

int main(){

    int sum;
    sum = a+b+c+d;
    printf("The result is %d", sum);
    return 0;
}

//gcc -E add.c  
//gcc -E add.c > add.i
//gcc -S add.i
//gcc -c -S add.c
//as add.s -o add.o
//objdump -d add.o
//gcc add.o -o output
//./output