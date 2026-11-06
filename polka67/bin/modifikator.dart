import 'dart:io';
void main(){
  // --- Zadanie 2. Modifikatory (final, const) ---
  const int maxWarnings = 3; // Konstanta vremeni kompilyatsii
  final String studentName = 'Kaniet'; // Peremennaya, znachenie kotoroy zadaetsya odin raz

  // Pytayemsya izmenit const:
  // maxWarnings = 5; 
  /* 
    Kompilyator vydaet oshibku, potomu chto `const` sozdaet konstantu 
    na etape kompilyatsii. Ee znachenie zhestko fiksiruetsya v pamyati 
    eshe do zapuska programmy, i izmenyat ego vo vremya raboty nelzya.
  */

  print('Student: $studentName | Limit preduprezhdeniy: $maxWarnings');
}