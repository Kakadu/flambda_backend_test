#include <cstdio>

void test(unsigned long long x) {
  printf("%d\n", __builtin_popcountll(x));
}

int main(void) {
  test(15L);
  return 0;
}
