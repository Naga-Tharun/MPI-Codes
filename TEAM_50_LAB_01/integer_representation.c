#include <stdio.h>

void integer_representation(int num, int bits){
    if (bits == 0){
        return;
    }
    bits--;
    integer_representation(num >> 1, bits);
    printf("%d", num & 1);
}

int main(){
    int num;
    scanf("%d", &num);

    int bits = 32;
    integer_representation(num, bits);
    printf("\n");

    return 0;
}