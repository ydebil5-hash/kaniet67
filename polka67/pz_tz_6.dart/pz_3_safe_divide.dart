double safeDivide(int a, int b) {
  if (b == 0) {
    throw Exception('Деление на ноль запрещено');
  }
  return a / b;
}

void main() {
  try {
    print('Результат: ${safeDivide(10, 2)}');
    print('Результат: ${safeDivide(10, 0)}'); // Вызовет исключение
  } catch (e) {
    print('Перехвачено исключение: $e');
  }
}