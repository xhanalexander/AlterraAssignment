import 'dart:io';
import 'dart:math';

void main() {
  rectangleArea();
  // squareArea();
  // RoundArea();
}

void rectangleArea() {          
  print("Persegi Panjang");
  print("Input Dimensi Panjang : ");
  int x = int.parse(stdin.readLineSync()!);

  print("Input Dimensi Lebar : ");
  int y = int.parse(stdin.readLineSync()!);

  final a = x * y;
  final b = 2 * ( x + y );
  print(">> Total Luas : $a");
  print(">> Total Keliling : $b");
}

void squareArea() {
  print("Persegi");
  print("Input Dimensi Sisi : ");
  int x = int.parse(stdin.readLineSync()!);

  final a = pow(x, 2);
  final b = 4 * x;
  print(">> Total Luas : $a");
  print(">> Total Keliling : $b");
}

void RoundArea() {
  print("Lingkaran");
  print("Input Jari-jari : ");
  int x = int.parse(stdin.readLineSync()!);

  final a = pi * pow(x, 2);
  final b = 2 * pi * x;
  print(">> Total Luas : $a");
  print(">> Total Keliling : $b");
}