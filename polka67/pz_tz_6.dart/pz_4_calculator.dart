
import 'dart:io';

void main() {
  print('=== Консольный калькулятор ===');
  print('Для выхода в любой момент введите "q" или "exit"\n');
  
  while (true) {
    try {
      stdout.write('Введите первое число (или "q" для выхода): ');
      String? inputA = stdin.readLineSync();
      if (inputA?.toLowerCase() == 'q' || inputA?.toLowerCase() == 'exit') {
        print('Выход из программы. До свидания!');
        break;
      }
      double a = double.parse(inputA!);

      stdout.write('Введите оператор (+, -, *, /) или "q" для выхода: ');
      String? op = stdin.readLineSync();
      if (op?.toLowerCase() == 'q' || op?.toLowerCase() == 'exit') {
        print('Выход из программы. До свидания!');
        break;
      }

      stdout.write('Введите второе число (или "q" для выхода): ');
      String? inputB = stdin.readLineSync();
      if (inputB?.toLowerCase() == 'q' || inputB?.toLowerCase() == 'exit') {
        print('Выход из программы. До свидания!');
        break;
      }
      double b = double.parse(inputB!);

      double result;
      switch (op) {
        case '+':
          result = a + b;
          break;
        case '-':
          result = a - b;
          break;
        case '*':
          result = a * b;
          break;
        case '/':
          if (b == 0) throw Exception('Деление на ноль');
          result = a / b;
          break;
        default:
          print('Ошибка: неизвестный оператор\n');
          continue;
      }
      print('Результат: $result\n');
    } catch (e) {
      print('Ошибка ввода или вычислений: $e. Попробуйте еще раз.\n');
    }
  }
}