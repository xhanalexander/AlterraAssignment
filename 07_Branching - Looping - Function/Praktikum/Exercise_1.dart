import 'dart:io';

void main() {
  // score();
  loopTen();
}

void score() {
  print(">> Masukkan nilai =...!!! ");
  int x = int.parse(stdin.readLineSync()!);

  x >= 90 ? print("> Nilai A") : (x >= 40) ? print("> Nilai B") : (x > 0) ? print("> Nilai C") : print("...");
}

void loopTen() {
  for (int i = 1; i <= 10; i++) {
    print("> $i");
  }
}

