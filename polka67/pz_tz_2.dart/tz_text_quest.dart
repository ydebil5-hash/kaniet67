import 'dart:io';

void main() {
  print('ТЕКСТОВЫЙ КВЕСТ');
  bool hasKey = true;
  int health = 100;

  print('Вы перед развилкой. Куда пойдете? (left / right)');
  String? choice = stdin.readLineSync();

  if (choice == 'left') {
    print('Вы встретили врага! (attack / run)');
    String? action = stdin.readLineSync();

    if (action == 'attack') {
      if (hasKey && health > 50) {
        print('Вы победили врага и открыли сундук ключом!');
      } else {
        print('У вас не хватило сил.');
      }
    } else if (action == 'run') {
      print('Вы успешно убежали.');
    } else {
      print('Неверная команда!');
    }
  } else if (choice == 'right3') {
    print('Вы нашли безопасное место.');
  } else {
    print('Неизвестное направление!');
  }
}