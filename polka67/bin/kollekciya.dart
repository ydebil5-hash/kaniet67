import 'dart:io';

void main() {
  // --- Zadanie 1. Kollektsiya Map ---
  Map<String, int> topicScores = {
    'Peremennye': 5,
    'Tsikly': 4,
    'Usloviya': 5,
    'Massivy': 4,
  };

  print('Otsenka po teme "Tsikly": ${topicScores['Tsikly']}');
}