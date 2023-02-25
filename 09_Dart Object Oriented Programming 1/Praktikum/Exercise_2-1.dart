class calculator {
  int a = 0;
  int b = 0;
  int c = 0;

  add(int a, int b) {
    c = a + b;
    return c;
  }

  subtract(int a, int b) {
    c = a - b;
    return c;
  }

  multiply(int a, int b) {
    c = a * b;
    return c;
  }

  divide(int a, int b) {
    c = a ~/ b;
    return c;
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
