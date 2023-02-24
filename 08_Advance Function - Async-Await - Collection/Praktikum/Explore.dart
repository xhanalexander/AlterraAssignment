// import 'dart:io';

void main() {
  carList();
  // redundant();
}

void carList() {
  List<String> cars = [
    'Amuse',
    'Tommy Kaira',
    'Spoon',
    'HKS',
    'Litchfield',
    'Amuse',
    'HKS'
  ];
  List<String> cars2 = [
    'JS Racing',
    'amuse',
    'spoon',
    'spoon',
    'JS Racing',
    'amuse'
  ];

  var carTrim = cars.toSet();
  var carTrim2 = cars2.toSet();

  print(carTrim);
  print(carTrim2);
}

void redundant() {
  List<String> language = [
    'js',
    'js',
    'js',
    'golang',
    'python',
    'js',
    'js',
    'golang',
    'rust'
  ];

  Map<String, int> duplicates = {};

  for (String element in language) {
    duplicates[element] = (duplicates[element] ?? 0) + 1;
  }

  for (String key in duplicates.keys) {
    print('> $key: ${duplicates[key]}');
  }
}