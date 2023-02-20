import 'dart:io';

void main() {
  palindrome();
  // factorNumber();
}

void palindrome() {
  print(">> Masukkan kata...");
  var words = stdin.readLineSync();
  var palindrome = words!.split('').reversed.join('');

  if (words == palindrome) {
    print("(+++) Kata $words adalah Palindrome...");
  } else {
    print("(!!!) Kata merupakan $words bukan Palindrome...");
  }

  print(">> kata jika dibalik = $palindrome");
}

void factorNumber() {
  print(">> Masukkan angka...");
  var number = int.parse(stdin.readLineSync()!);

  print(">> Faktor dari $number adalah...");
  for (var i = 1; i <= number; i++) {
    if (number % i == 0) {
      print(i);
    }
  }
}