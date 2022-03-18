String scream(int length) => 'A${'a' * length}h!';

void main() {
  final values = [1, 2, 3, 5, 10, 50];

  //imperativo
  // for (var length in values) {
  //   print(scream(length));
  // }

  //funcional
  values.map(scream).forEach(print);
  print('');
  values.skip(1).take(3).map(scream).forEach(print);
  print('');
  print(values);
}
