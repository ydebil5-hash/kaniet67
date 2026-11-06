import 'dart:io';

void main() {
  stdout.write('Enter ur name: ');
  String name = stdin.readLineSync()!;

  stdout.write('Enter ur city: ');
  String city = stdin.readLineSync()!;

  stdout.write('Enter ur favorite programming language: ');
  String language = stdin.readLineSync()!;

  print('$name from the city of $city, respects $language — excellent choice!');
}