import 'dart:io';

void main() {
  List<String> names = [];
  for (int i = 0; i < 3; i++) {
    stdout.write('Введите имя ${i + 1}: ');
    String? n = stdin.readLineSync();
    if (n != null && n.isNotEmpty) {
      names.add(n);
    }
  }
  print('Список имен: $names');
}