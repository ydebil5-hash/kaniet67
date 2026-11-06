void main() {
  List<int> grades = [4, 5, 3, 5, 4, 5, 2];
  int sum = 0;
  for (var g in grades) {
    sum += g;
  }
  print('Средний балл: ${sum / grades.length}');
}