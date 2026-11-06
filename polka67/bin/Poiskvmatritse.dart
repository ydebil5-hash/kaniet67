void main() {
  List<List<int>> matrix = [
    [1],
    [],
    [3, 7],
    [7]
  ];

  int rowIndex = -1;
  int colIndex = -1;
  bool found = false;

  outerLoop:
  for (int i = 0; i < matrix.length; i++) {
    for (int j = 0; j < matrix[i].length; j++) {
      if (matrix[i][j] == 7) {
        rowIndex = i;
        colIndex = j;
        found = true;
        break outerLoop; // Zavershaem oba tsikla metkoy
      }
    }
  }

  if (found) {
    print('Indeksy: $rowIndex, $colIndex');
  } else {
    print('Ne naydeno');
  }
}