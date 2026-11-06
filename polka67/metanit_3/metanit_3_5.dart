void main() {
  double val = 6.8;
  while (val >= 6.2) {
    print(val.toStringAsFixed(1));
    val -= 0.1;
  }
}