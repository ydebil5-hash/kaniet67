import 'dart:io';

void main() {
  while (true) {
    print('\n=== МЕНЮ БАНКОМАТА ===');
    print('1. Проверить баланс');
    print('2. Снять деньги');
    print('3. Выход');
    stdout.write('Выберите пункт: ');

    String? input = stdin.readLineSync();
    int? choice = int.tryParse(input ?? '');

    if (choice == null) {
      print('Ошибка! Введите число.');
      continue;
    }

    if (choice == 1) {
      print('Баланс: 5000 сом');
    } else if (choice == 2) {
      print('Деньги выданы.');
    } else if (choice == 3) {
      print('Завершение работы.');
      break;
    } else {
      print('Нет такого пункта меню.');
    }
  }
}