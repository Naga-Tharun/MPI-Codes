#include <stdio.h>
#include <inttypes.h>

int64_t simdmul4(int64_t[][2048], int64_t[][2048], int64_t);

int main()
{
  int a[2048][2048], c[2048][2048];

  for (int i = 0; i < 2048; i++)
    for (int j = 0; j < 2048; j++)
      a[i][j] = 1;

  for (int i = 0; i < 2048; i++)
    for (int j = 0; j < 2048; j++)
      c[i][j] = 0;

  printf("SIMD matmul of A x A x A x A:\n");
  simdmul4(a, c, 2048);

  for (int i = 0; i < 2048; i++)
  {
    for (int j = 0; j < 2048; j++)
      printf("%d ", c[i][j]);
    printf("\n");
  }

  return 0;
}