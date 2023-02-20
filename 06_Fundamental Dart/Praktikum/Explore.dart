import 'dart:io';

void main() {
  palindrome();
  // factorNumber();
}

void palindrome() {
  print(">> Masukkan kata...");
  String? words = stdin.readLineSync();
  String? palindrome = words!.split('').reversed.join('');

  if (words == palindrome) {
    print("(+++) Kata '$words' merupakan kata Palindrome...");
  } else {
    print("(!!!) Kata '$words' merupakan bukan kata Palindrome...");
  }

  print("(!!) kata jika dibalik '$palindrome'...");
}

void factorNumber() {
  print(">> Masukkan angka faktor...!!!");
  var number = int.parse(stdin.readLineSync()!);

  while (number <= 0) {
    print("(!!!) Angka tidak boleh negatif atau kosong...");
    print(">> Masukkan angka faktor...!!!");
    number = int.parse(stdin.readLineSync()!);
  }

  print("(O) Faktor dari $number adalah...");
  for (var i = 1; i <= number; i++) {
    if (number % i == 0) {
      print("> $i");
    }
  }

}
