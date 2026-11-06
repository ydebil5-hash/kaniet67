import 'dart:io';

void main() {
  print('programma "popugai" zapushena. vvedie text (dlya vyhoda vvedite "stop"):');
  while (true) {
    stdout.write('> ');
    String? input = stdin.readLineSync();
    
    if (input == 'stop') {
      print('programma zavershena.');
      break;
    }
    
    print(input);
  }
}