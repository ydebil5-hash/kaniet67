void main() {
  String characterName = 'Arthas';
  int level = 85;
  double currentHp = 1250.5;
  double maxHp = 1500.0;
  bool isAlive = true;
  List<String> equippedItems = ['Меч Ледяной Скорби', 'Латы', 'Щит', 'Амулет'];

  Map<String, dynamic> character = {
    'characterName': characterName,
    'level': level,
    'currentHp': currentHp,
    'maxHp': maxHp,
    'isAlive': isAlive,
    'equippedItems': equippedItems,
  };

  print('СТАТУС ПЕРСОНАЖА');
  print('Имя: ${character['characterName']}');
  print('Уровень: ${character['level']}');
  print('HP: ${character['currentHp']} / ${character['maxHp']}');
  print('Статус: ${character['isAlive'] ? 'Жив' : 'Мертв'}');
  print('Экипировка:');
  for (var item in character['equippedItems']) {
    print('  - $item');
  }
}