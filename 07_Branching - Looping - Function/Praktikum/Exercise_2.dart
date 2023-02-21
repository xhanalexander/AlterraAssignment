import 'dart:io';
import 'dart:math';

void main() {
  // pyramid();
  // hourGlass();
  // factorials();

  var RoundSum = CircleArea(5);
  print("(+++) Luas Lingkaran \t\t= $RoundSum");
}

void pyramid() {
  int i, j, k = 0;
  int x = 8;

  for (i = 1; i <= x; ++i, k = 0) {
    for (j = 1; j <= x - i; ++j) {
      stdout.write("  ");
    }
    while (k != 2 * i - 1) {
      stdout.write("* ");
      ++k;
    }
    stdout.write("\n");
  }
}

void hourGlass() {
  int r = 5;
  int i, j, k = 1;

  for (i = r; i >= 1; i--) {
    for (j = 1; j <= r - i; j++) {
      stdout.write("  ");
    }
    for (k = 1; k <= 2 * i - 1; k++) {
      stdout.write("0 ");
    }
    stdout.write("\n");
  }

  for (i = 1; i <= r; i++) {
    for (j = 1; j <= r - i; j++) {
      stdout.write("  ");
    }
    for (k = 1; k <= 2 * i - 1; k++) {
      stdout.write("0 ");
    }
    stdout.write("\n");
  }
}

void factorials() {
  print("> Masukkan angka faktorial =... ");
  int n = int.parse(stdin.readLineSync()!);
  int i, f = 1;

  for (i = 1; i <= n; i++) {
    f *= i;
  }
  stdout.write("$n! = ");
  for (int i = n; i >= 1; i--) {
    stdout.write("$i");
    if (i != 1) {
      stdout.write(" x ");
    }
  }
  stdout.writeln(" = $f");
  print("(+++) Faktorial dari $n! adalah =...$f");
}

double CircleArea(double r) {
  double Area;
  Area = 3.14 * pow(r, 2);
  return Area;
}