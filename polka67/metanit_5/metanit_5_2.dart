void sayByeMulti({required String name, int count = 1}) {
  for (int i = 0; i < count; i++) {
    print('Bye, $name');
  }
}

void main() {
  sayByeMulti(name: 'Каниет', count: 3);
}