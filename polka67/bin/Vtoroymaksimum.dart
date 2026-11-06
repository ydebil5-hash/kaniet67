void main() {
  List<int> numbers = [5, 5, 3];
  int? max1;
  int? max2;

  for (int num in numbers) {
    if (max1 == null || num > max1) {
      max2 = max1;
      max1 = num;
    } else if (num < max1 && (max2 == null || num > max2)) {
      max2 = num;
    }
  }

  if (max2 != null) {
    print('Vtoroy maksimum: $max2');
  } else {
    print('Net rezultata');
  }
}