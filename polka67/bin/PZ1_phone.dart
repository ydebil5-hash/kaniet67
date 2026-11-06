void main() {
  // Задание 1 переменные
  String name = 'Pixel 8 Pro';
  int releaseYear = 2023;
  double price = 899.99;
  bool hasNfc = true;

  // Задание 2 Список цветов
  List<String> colors = ['Obsidian', 'Porcelain', 'Bay'];
  print('Количество цветов: ${colors.length}');

  // Задание 3 Map
  Map<String, dynamic> device = {
    'name': name,
    'releaseYear': releaseYear,
    'price': price,
    'hasNfc': hasNfc,
    'colors': colors,
  };

  // Задание 4 красивая карточка
  print('ХАРАКТЕРИСТИКИ СМАРТФОНА');
  print('Название: ${device['name']}');
  print('Год выпуска: ${device['releaseYear']}');
  print('Цена: \$${device['price']}');
  print('Наличие NFC: ${device['hasNfc'] ? 'Да' : 'Нет'}');
  print('Доступные цвета: ${device['colors'].join(', ')}');
}