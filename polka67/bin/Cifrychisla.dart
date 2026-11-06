void main() {
  int n = -204;
  int temp = n < 0 ? -n : n; // Uchityvaem minus
  int count = 0;
  int sum = 0;

  if (temp == 0) {
    count = 1;
    sum = 0;
  } else {
    do {
      int digit = temp % 10;
      sum += digit;
      count++;
      temp ~/= 10;
    } while (temp > 0);
  }

  print('Kolichestvo tsifr: $count, summa: $sum');
}