import 'dart:io';

void main() {
  String pin = '';
  do {
    stdout.write('Введите пин (1234): ');
    pin = stdin.readLineSync() ?? '';
  } while (pin != '1234');
  print('Сейф открыт');
}