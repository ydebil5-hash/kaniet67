import 'dart:io';
void main(){
  // --- Zadanie 3. Tsikl do-while ---
  String password;
  
  do {
    stdout.write('Vvedite parol dostupa k kulture: ');
    password = stdin.readLineSync() ?? '';

    if (password != 'culture') {
      print('Nevernyy kod dostupa, vvedite snova');
    }
  } while (password != 'culture');

  print('✅ Dostup uspeshno poluchen!');
}
