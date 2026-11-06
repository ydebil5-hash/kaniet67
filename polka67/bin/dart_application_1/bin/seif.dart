import 'dart:io';

void main() {
  String correctPin = '1234';
  String? enteredPin;

  while (true) {
    stdout.write('Введите пин-код: ');
    enteredPin = stdin.readLineSync();

    if (enteredPin == correctPin) {
      break; // vyhod iz cycla, esli pinkod neprvelnyi
    }

    print('Неверный пин-код. Попробуйте снова.');
  }

  print('Доступ разрешен!');
}