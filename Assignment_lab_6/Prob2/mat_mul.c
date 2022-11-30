#include <stdio.h>
#include <stdlib.h>
#include <inttypes.h>

int64_t mulmat(int64_t[][100], int64_t[][100], int64_t[][100], int64_t);

int main(){
    long int n;
    printf("Give input of n for n*n matrix: ");
    scanf("%ld", &n);

    long int a[n][n], b[n][n];
    long int c[n][n];

    printf("Enter the data of matrix a: \n");
    for(int i=0; i<n; i++){
        for(int j=0; j<n; j++){
            scanf("%ld", &a[i][j]);
        }
    }
    printf("Enter the data of matrix b: \n");
    for(int i=0; i<n; i++){
        for(int j=0; j<n; j++){
            scanf("%ld", &b[i][j]);
            c[i][j] = 0;
        }
    }

    long int x = mulmat(c, a, b, n);

    printf("The resultant of multiplication of matrices is: \n");
    for(int i=0; i<n; i++){
        for(int j=0; j<n; j++){
            printf("%ld ", c[i][j]);
        }
        printf("\n");
    }

    return 0;
}