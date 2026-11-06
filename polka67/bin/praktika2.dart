import 'dart:io';

void main() {
  List<String> tasks = [];
  print('MENEDZHER ZADACH');

  while (true) {
    print('\n1. Prosmotret\n2. Dobavit\n3. Udalit\n4. Vykhod');
    stdout.write('Vyberite (1-4): ');
    
    switch (stdin.readLineSync()) {
      case '1':
        if (tasks.isEmpty) print('Spisok pust.');
        for (int i = 0; i < tasks.length; i++) {
          print('${i + 1}. ${tasks[i]}');
        }
        break;

      case '2':
        stdout.write('Vvedite zadachu: ');
        String? t = stdin.readLineSync();
        if (t != null && t != '') {
          tasks.add(t);
          print('✅ Dobavleno!');
        } else {
          print('❌ Pustaya stroka.');
        }
        break;

      case '3':
        if (tasks.isEmpty) {
          print('Spisok pust.');
          break;
        }
        for (int i = 0; i < tasks.length; i++) {
          print('${i + 1}. ${tasks[i]}');
        }
        stdout.write('Nomer dlya udaleniya: ');
        int? num = int.tryParse(stdin.readLineSync() ?? '');
        int index = (num ?? 0) - 1;
        
        if (index >= 0 && index < tasks.length) {
          print('🗑️ Udaleno: ${tasks.removeAt(index)}');
        } else {
          print('❌ Oshibka nomera.');
        }
        break;

      case '4':
        print('Vykhod!');
        return;

      default:
        print('❌ Nevernyy vybor.');
    }
  }
}