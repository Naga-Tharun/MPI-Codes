#include <stdio.h>
#include <inttypes.h>

void stringsSort(long, char[][100]);

int main(){
    long n;
    printf("Enter the number of strings to be sorted: ");
    scanf("%ld", &n);

    char str[n][100];
    printf("Enter the strings: \n");
    for(int i=0; i<n; i++){
        scanf(" %[^\n]s", str[i]);
    }

    stringsSort(n, str);
    
    printf("\nThe sorted order of the strings is:\n");
    for(int i=0; i<n; i++){
        printf("%s\n", str[i]);
    }

    return 0;
}