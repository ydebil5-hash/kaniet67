void main() {
  List<int> numbers = [1, 2, 2, 2];
  
  if (numbers.isEmpty) {
    print('Net serii');
    return;
  }

  int bestVal = numbers[0];
  int bestLen = 1;
  int curVal = numbers[0];
  int curLen = 1;

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] == curVal) {
      curLen++;
    } else {
      curVal = numbers[i];
      curLen = 1;
    }

    if (curLen > bestLen) {
      bestLen = curLen;
      bestVal = curVal;
    }
  }

  print('Znachenie: $bestVal, dlina: $bestLen');
}