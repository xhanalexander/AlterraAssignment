import 'dart:io';

void main() async {
  final data = <int>[];
  const maxData = 5;
  const multiply = 2;

  for (var i = 1; i <= maxData; i++) {
    stdout.write('>> Masukkan angka ke-$i: ');
    final input = int.parse(stdin.readLineSync()!);
    data.add(input);
  }

  print('\n(O) Hasil Data dikalikan $multiply \t= ${await total(data, multiply)}');
  print('(+) Data yang dimasukkan \t= $data');
}

Future<List<int>> total(List<int> data, int multiply) async {
  await Future.delayed(const Duration(seconds: 1));
  return data.map((x) => x * multiply).toList();
}
