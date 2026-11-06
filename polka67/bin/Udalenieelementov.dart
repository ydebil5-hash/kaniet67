void main() {
  List<int> numbers = [2, 4, 5, 6];

  for (int i = numbers.length - 1; i >= 0; i--) {
    if (numbers[i] % 2 == 0) {
      numbers.removeAt(i);
    }
  }

  print(numbers); // [5]
}