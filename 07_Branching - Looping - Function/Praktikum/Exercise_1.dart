import 'dart:io';

void main() {
  // score();
  loopTen();
}

void score() {
  // int x = 75;
  print(">> Masukkan nilai =...!!! ");
  int x = int.parse(stdin.readLineSync()!);

  x >= 70 ? print("> Nilai A") : (x >= 40) ? print("> Nilai B") : (x > 0) ? print("> Nilai C") : print("...");
}

void loopTen() {
  int i = 1;
  for (i = 1; i <= 10; i++) {
    print("> $i");
  }
}
