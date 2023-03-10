class calculator {
  int a = 0;
  int b = 0;

  add({required int a, required int b}) {
    return a + b;
  }

  subtract({required int a, required int b}) {
    return a - b;
  }

  multiply({required int a, required int b}) {
    return a * b;
  }

  divide({required int a, required int b}) {
    return a ~/ b;
  }
}

void main() {
  results();
}

void results() {
  calculator calc = new calculator();
  print(calc.add(a: 10, b: 5));
  print(calc.subtract(a: 10, b: 5));
  print(calc.multiply(a: 10, b: 5));
  print(calc.divide(a: 10, b: 5));
}
