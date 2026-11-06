import 'dart:io';

void main() {
  while (true) {
    stdout.write('Введите слово: ');
    String? line = stdin.readLineSync();
    if (line == 'стоп') break;
    print(line);
  }
}