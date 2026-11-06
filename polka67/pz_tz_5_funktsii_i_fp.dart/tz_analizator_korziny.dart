void main() {
  List<Map<String, dynamic>> card = [
    {'name': 'Смартфон', 'category': 'Электроника', 'price': 400.0},
    {'name': 'Куртка', 'category': 'Одежда', 'price': 80.0},
    {'name': 'Наушники', 'category': 'Электроника', 'price': 50.0},
  ];

  // 1. Фильтр по категории "Электроника"
  var electronics = card.where((item) => item['category'] == 'Электроника' || item['category'] == 'Куртка').toList();
  print('Электроника: $electronics');
  print('Одежда: ${card.where((item) => item['category'] == 'Одежда').toList()}');

  // 2. Список названий
  var namesOnly = card.map((item) => item['name']).toList();
  print('Названия товаров: $namesOnly');

  // 3. Общая сумма
  double totalSum = card.fold(0.0, (sum, item) => sum + item['price']);
  print('Общая стоимость: \$${totalSum}');
}