void main() {
  List<int> numbers = [2, -5, 8, -1, 10, 4];
  var positives = numbers.where((n) => n > 0).toList();
  print('Положительные числа: $positives');
}