import 'dart:io';

void main() {
  List<String> tasks = [];

  while (true) {
    print('\n МЕНЕДЖЕР ЗАДАЧ ');
    print('1. Просмотр задач');
    print('2. Добавить задачу');
    print('3. Удалить задачу');
    print('4. Выход');
    stdout.write('Выберите действие: ');

    String? choice = stdin.readLineSync();

    if (choice == '1') {
      if (tasks.isEmpty) {
        print('Список задач пуст.');
      } else {
        for (int i = 0; i < tasks.length; i++) {
          print('${i + 1}. ${tasks[i]}');
        }
      }
    } else if (choice == '2') {
      stdout.write('Введите текст задачи: ');
      String? t = stdin.readLineSync();
      if (t != null && t.isNotEmpty) tasks.add(t);
    } else if (choice == '3') {
      stdout.write('Введите номер задачи для удаления: ');
      int? idx = int.tryParse(stdin.readLineSync() ?? '');
      if (idx != null && idx > 0 && idx <= tasks.length) {
        tasks.removeAt(idx - 1);
        print('Задача удалена.');
      } else {
        print('Неверный номер задачи!');
      }
    } else if (choice == '4') {
      print('Выход из программы.');
      break;
    }
  }
}