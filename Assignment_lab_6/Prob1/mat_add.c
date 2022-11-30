#include <stdio.h>
#include <inttypes.h>

int64_t addmat(int64_t[][100], int64_t[][100], int64_t);


int main(){
    long int n;
    printf("Give input of n for n*n matrix: ");
    scanf("%ld", &n);

    long int a[n][n], b[n][n];
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
        }
    }

    long int x = addmat(a, b, n);

    printf("The addition of matrices is: \n");
    for(int i=0; i<n; i++){
        for(int j=0; j<n; j++){
            printf("%ld ", a[i][j]);
        }
        printf("\n");
    }

    return 0;
}