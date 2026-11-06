void main() {
  int n = 4; // Primer
  int i = 0;

  while (i < n) {
    i++;
    if (i % 3 == 0) {
      continue; // Propuskaem kratnye 3
    }
    print(i);
  }
}