import 'dart:io';

void main() {
  int target = 7; // Загаданное число
  int? guess;

  print('ugadaite chislo ot 1 do 10:');

  while (guess != target) {
    stdout.write('vvedite vash varik: ');
    String? input = stdin.readLineSync();
    
    if (input != null) {
      guess = int.tryParse(input);
      
      if (guess == null) {
        print('plz, vvedite korrektnoe chislo.');
        continue;
      }

      if (guess < target) {
        print('zagadannoe chislo bolshe.');
      } else if (guess > target) {
        print('zagadannoe chiclo menshe.');
      } else {
        print('ura, vy ugadali chislo $target.');
      }
    }
  }
//   int height = 5;

// for (int i = 1; i <= height; i++) {
//   String row = '';
//   for (int j = 1; j <= i; j++) {
//     row += '*';
//   }
//   print(row);
// }
}
