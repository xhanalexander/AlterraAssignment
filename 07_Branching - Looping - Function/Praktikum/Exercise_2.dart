import 'dart:io';

void main() {
  PyramidStar();
}

void PyramidStar() {
  int i, space, k = 0;
  int x = 8;

  for (i = 1; i <= x; ++i, k = 0) {
    for (space = 1; space <= x - i; ++space) {
      stdout.write("  ");
    }
    while (k != 2 * i - 1) {
      stdout.write("* ");
      ++k;
    }
    stdout.write("\n");
  }
}
