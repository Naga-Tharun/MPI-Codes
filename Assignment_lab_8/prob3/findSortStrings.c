#include <stdio.h>
#include <inttypes.h>

void stringsSort(char[], char[]);

int main(){
    char str[100];
    printf("Enter the strings: \n");
    scanf("%[^\n]s",str);

    char reversed[100];
    stringsSort(str, reversed);
    

    return 0;
}