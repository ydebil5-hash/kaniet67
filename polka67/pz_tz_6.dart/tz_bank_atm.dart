import 'dart:io';

void main() {
  double balance = 1000.0; // Начальный баланс
  print('=== Добро пожаловать в «Безопасный банк» ===');

  try {
    while (true) {
      print('\nМеню операций:');
      print('1 — Пополнить');
      print('2 — Снять');
      print('3 — Баланс');
      print('0 — Выход');
      stdout.write('Выберите пункт меню: ');

      String? choiceInput = stdin.readLineSync();
      
      try {
        int choice = int.parse(choiceInput ?? '');

        if (choice == 0) {
          print('Выход из системы...');
          break;
        }

        switch (choice) {
          case 1:
            stdout.write('Введите сумму для пополнения: ');
            double amount = double.parse(stdin.readLineSync()!);
            if (amount < 0) {
              print('Предупреждение: сумма не может быть отрицательной.');
            } else {
              balance += amount;
              print('Счет пополнен. Баланс: $balance сом');
            }
            break;

          case 2:
            stdout.write('Введите сумму для снятия: ');
            double amount = double.parse(stdin.readLineSync()!);
            if (amount < 0) {
              print('Предупреждение: сумма не может быть отрицательной.');
            } else if (amount > balance) {
              print('Предупреждение: недостаточно средств на балансе.');
            } else {
              balance -= amount;
              print('Успешно снято. Остаток: $balance сом');
            }
            break;

          case 3:
            print('Текущий баланс: $balance сом');
            break;

          default:
            print('Предупреждение: неверный пункт меню.');
        }
      } on FormatException {
        print('Ошибка: введено не число. Пожалуйста, используйте цифры.');
      } catch (e) {
        print('Произошла ошибка: $e');
      }
    }
  } finally {
    print('Сообщение: сохранение сессии...');
  }
}