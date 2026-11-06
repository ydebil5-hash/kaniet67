import 'dart:io';

void main() {
  stdout.write('Enter the current year: ');
  int currentYear = int.parse(stdin.readLineSync()!);

  stdout.write('Enter your birth year: ');
  int birthYear = int.parse(stdin.readLineSync()!);

  int age = currentYear - birthYear;

  print('Your age is $age.');
}