class calculator {
  int a = 0;
  int b = 0;

  add(int a, int b) {
    return a + b;
  }

  subtract(int a, int b) {
    return a - b;
  }

  multiply(int a, int b) {
    return a * b;
  }

  divide(int a, int b) {
    return a ~/ b;
  }
}

void main() {
  results();
}

void results() {
  calculator calc = new calculator();
  print(calc.add(10, 5));
  print(calc.subtract(10, 5));
  print(calc.multiply(10, 5));
  print(calc.divide(10, 5));
}
