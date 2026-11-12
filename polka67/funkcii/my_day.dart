void morningRoutine() {
  print('Утро: Проснулся, умылся, сделал зарядку и позавтракал.');
}

void studyRoutine() {
  print('День: Посетил колледж, поучился программированию (Dart и Flutter).');
}

void eveningRoutine() {
  print('Вечер: Покатал на велосипеде (стрит/эндуро), поработал над проектами.');
}

void nightRoutine() {
  print('Ночь: Подготовка ко сну, отдых и сон.');
}

void main() {
  // Вызываем все функции по порядку из main
  morningRoutine();
  studyRoutine();
  eveningRoutine();
  nightRoutine();
}