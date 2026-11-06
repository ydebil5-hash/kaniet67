import 'dart:io';

void main() {
  stdout.write('Enter the first number: ');
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.write('Enter the second number: ');
  double num2 = double.parse(stdin.readLineSync()!);

  double sum = num1 + num2;
  double difference = num1 - num2;
  double product = num1 * num2;

  print('Sum: $sum');
  print('Difference: $difference');
  print('Product: $product');
}