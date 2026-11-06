import 'dart:io';

void main() {
  Map<String, int> sklad = {'Телефон': 10, 'Ноутбук': 3};
  stdout.write('Введите название товара: ');
  String? item = stdin.readLineSync();
  
  if (item != null && sklad.containsKey(item)) {
    print('Остаток на складе: ${sklad[item]}');
  } else {
    print('Товара нет в наличии.');
  }
}