import 'dart:io';

void main() {
  prima(3);
  prima(2);
  prima(10);

  multiplicationTable(9);
}

int prima(int x) {
  bool isPrime = true;
  for (int i = 2; i <= x / 2; i++) {
    if (x % i == 0) {
      isPrime = false;
      break;
    }
  }

  if (isPrime) {
    print("> angka $x Merupakan bilangan prima.");
  } else {
    print("> angka $x bukan bilangan prima.");
  }
  return x;
}

int multiplicationTable(int k) {
  int num, i, j, results;
  for (i = 1; i <= k; i++) {
    num = i;
    for (j = 1; j <= k; j++) {
      results = num * j;
      stdout.write("$results \t");
    }
    print("");
  }
  return k;
}
  

