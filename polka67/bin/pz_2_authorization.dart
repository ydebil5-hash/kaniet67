import 'dart:io';

void main() {
  while (true) {
    print('\n==============================');
    print('       ГЛАВНОЕ МЕНЮ           ');
    print('==============================');
    print('1. Фейсконтроль');
    print('2. Авторизация');
    print('3. Банкомат');
    print('0. Выход');
    stdout.write('Выберите пункт меню: ');

    String? choice = stdin.readLineSync();

    if (choice == '1') {
      print('\n--- Фейсконтроль ---');
      stdout.write('Сколько вам лет?: ');
      String? ageStr = stdin.readLineSync();
      
      // Я пишу ageStr != null && ageStr.isNotEmpty, потому что:
      // 1. Сначала я проверяю, что пользователь вообще что-то ввёл 
      //    (что там не null, если он просто нажал Enter).
      // 2. Метод .isNotEmpty проверяет, что строка не пустая (не состоит из 
      //    нуля символов ""). 
      // Если я забуду эту проверку и пользователь тупо нажмет Enter, 
      // то int.parse(ageStr) сломается и программа выдаст краш (ошибку), 
      // потому что нельзя превратить пустую строку в число!
      if (ageStr != null && ageStr.isNotEmpty) {
        int age = int.parse(ageStr);
        if (age >= 18) {
          print('Проходите!');
        } else {
          print('Вход запрещен!');
        }
      }

    } else if (choice == '2') {
      print('\n--- Авторизация ---');
      stdout.write('Введите логин: ');
      String? login = stdin.readLineSync();

      stdout.write('Введите пароль: ');
      String? pass = stdin.readLineSync();

      
      if (login == 'admin' && pass == '12345') {
        print('Доступ разрешен!');
      } else {
        print('Неверный логин или пароль!');
      }

    } else if (choice == '3') {
      print('\n--- Банкомат ---');
      print('1 - Баланс | 2 - Снятие | 3 - Пополнение');
      stdout.write('Введите номер операции: ');
      
      String? opStr = stdin.readLineSync();
      
      
      if (opStr != null && opStr.isNotEmpty) {
        int operation = int.parse(opStr);
        
        switch (operation) {
          case 1:
            print('Ваш баланс: 10 000 сум');
            break;
          case 2:
            print('Снятие наличных');
            break;
          case 3:
            print('Пополнение счета');
            break;
          default:
            print('Неверная операция!');
        }
      }

    } else if (choice == '0') {
      print('\nВыход из программы');
      break;

    } else {
      print('\nНеверный выбор! Введите от 0 до 3.');
    }
  }
}