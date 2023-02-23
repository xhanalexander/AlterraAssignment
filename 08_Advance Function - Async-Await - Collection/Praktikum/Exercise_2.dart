void main() async {
  int x = 5;

  listElement();
  print("> Hasil Factorial $x = ${await factorial(x)}");
  average();
}

Future<void> listElement() async {
  List<Map<String, String>> foods = [
    {
      "name": "Nasi Goreng",
      "price": "Rp15.000",
    },
    {
      "name": "Mie Goreng",
      "price": "Rp14.000",
    },
    {
      "name": "Soto",
      "price": "Rp22.000",
    },
    {
      "name": "Sate",
      "price": "Rp10.000",
    },
    {
      "name": "Bakso",
      "price": "Rp12.000",
    }
  ];
  // print(foods[0]);
  
  for (int i = 0; i < foods.length; i++) {
    print(foods[i]);
  }

}

void average() {
  List<int> list = [7, 5, 3, 5, 2, 1];
  double averages = 0;
  for (int i = 0; i < list.length; i++) {
    averages += list[i];
  }
  var sum = averages /= list.length;
  var results = sum.round();
  print("> Hasil rata-rata = $results");
}

Future<int> factorial(int x) async {
  int result = 1;
  for (int i = 1; i <= x; i++) {
    result *= i;
  }
  
  return Future.delayed(Duration(seconds: 2), () => result);
}
