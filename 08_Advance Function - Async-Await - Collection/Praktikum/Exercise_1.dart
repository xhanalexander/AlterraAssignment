import 'dart:io';

void main() async {
  List<dynamic> data = [];
  int maxData = 5;
  int multiply = 2;

  for (var i = 0; i < maxData; i++) {
    stdout.write('>> Masukkan angka ke-${i + 1} \t\t=...');
    var input = int.parse(stdin.readLineSync()!);
    data.add(input);
  }

  print('\n(O) Hasil Data dikalikan $multiply \t= ${await total(data, multiply)}');
  print('(+) Data yang dimasukkan \t= ${await data}');
}

Future<List> total(List data, int multiply) async {
  List result = [];
  await Future.delayed(Duration(seconds: 1), () {
    for (int i = 0; i < data.length; i++) {
      var x = data[i] * multiply;
      result.add(x);
    }
  });
  return result;
}
