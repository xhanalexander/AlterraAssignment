import 'dart:math';

void main() {
  double x = 5;
  double y = 5;

  var SquareSum = squareArea(x).round();
  var SquarePerimeter = squarePerimeter(x).round();
  var RectangleSum = rectangleArea(x, y).round();
  var RectanglePerimeter = rectanglePerimeter(x, y).round();
  var RoundSum = roundArea(x);
  var RoundPerimeter = roundPerimeter(x);
  
  print(">> Luas Persegi \t\t= $SquareSum");
  print(">> Keliling Persegi \t\t= $SquarePerimeter");
  print(">> Luas Persegi Panjang \t= $RectangleSum");
  print(">> Keliling Persegi Panjang \t= $RectanglePerimeter");
  print(">> Luas Lingkaran \t\t= $RoundSum");
  print(">> Keliling Lingkaran \t\t= $RoundPerimeter");
}

double squareArea(double x) {
  double result;
  result = x * x;
  return result;
}

double squarePerimeter(double x) {
  double result;
  result = 4 * x;
  return result;
}

double rectangleArea(double x, double y) {
  return x * y;
}

double rectanglePerimeter(double x, double y) {
  double result;
  result = 2 * (x + y);
  return result;
}

double roundArea(double x) {
  double result;
  result = pi * pow(x, 2);
  result;
  return result;
}

double roundPerimeter(double x) {
  double result;
  result = 2 * pi * x;
  return result;
}
