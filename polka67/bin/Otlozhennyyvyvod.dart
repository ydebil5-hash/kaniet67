void main() {
  List<Function> deferredPrints = [];
  int i = 0;

  while (i < 3) {
    int currentIndex = i; // Sokhranyaem znachenie dlya zamykaniya
    deferredPrints.add(() {
      print(currentIndex);
    });
    i++;
  }

  // Vyzov funktsiy posle zaversheniya tsikla
  for (var fn in deferredPrints) {
    fn();
  }
}