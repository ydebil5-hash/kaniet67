void main() {
  int n = 3; // Primer

  // Variant s tsiklom for:
  print('Variant s for:');
  for (int i = n; i >= 0; i--) {
    print(i);
  }

  // Variant s tsiklom while:
  print('Variant s while:');
  int j = n;
  while (j >= 0) {
    print(j);
    j--;
  }
}