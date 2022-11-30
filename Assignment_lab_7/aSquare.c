#include <stdio.h>

void asq(float a[][], float b[][], float c[][], int n);

int main(){
    int n = 2048;
    float a[n][n], b[n][n], c[n][n];
    for(int i=0; i<n; i++){
        for(int j=0; j<n; j++){
            a[i][j] = 1;
            b[i][j] = 1;
            c[i][j] = 0;
        }
    }

    asq(a, b, c, n);

    for(int i=0; i<n; i++){
        for(int j=0; j<n; j++){
            printf("%f ", c[i][j]);
        }
        printf("\n");
    }

    return 0;
}