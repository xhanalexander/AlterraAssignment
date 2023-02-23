// import 'dart:io';

void main() {
  carList();
  redundant();
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
  List<int> numbers = [1, 2, 2, 3, 4, 4, 4, 5, 5];

  var countMap = <int, int>{};
  for (var num in numbers) {
    countMap[num] = (countMap[num] ?? 0) + 1;
  }

  var duplicates = countMap.entries.where((entry) => entry.value > 1);
  print('Number of duplicates: ${duplicates.length}');
  for (var entry in duplicates) {
    print('Number ${entry.key} has ${entry.value} occurrences');
  }
}
