void main() {
  List<String> words = ['apple', 'banana', 'kiwi'];
  var lengths = words.map((w) => w.length).toList();
  print('Длины слов: $lengths');
}