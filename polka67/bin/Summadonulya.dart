void main() {
  List<int> numbers = [4, -2, 7, 0, 100];
  int sum = 0;

  for (int num in numbers) {
    if (num == 0) {
      break; // Pervyy nol zavershaet obrabotku
    }
    if (num < 0) {
      continue; // Otricatelnye propuskaem
    }
    sum += num;
  }

  print('Summa: $sum'); // 11
}