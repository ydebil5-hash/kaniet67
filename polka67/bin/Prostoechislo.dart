void main() {
  int n = 17; // Primer
  bool isPrime = true;

  if (n <= 1) {
    isPrime = false;
  } else {
    for (int i = 2; i * i <= n; i++) {
      if (n % i == 0) {
        isPrime = false;
        break; // Delitel nayden, zavershaem tsikl
      }
    }
  }

  if (isPrime) {
    print('Prostoe');
  } else {
    print('Ne prostoe');
  }
}