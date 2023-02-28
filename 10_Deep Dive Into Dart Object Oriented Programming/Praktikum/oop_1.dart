import 'dart:math';

class BangunRuang {
  double? panjang, lebar, tinggi;
  BangunRuang(this.panjang, this.lebar, this.tinggi);

  double volume() => 0;
}

class Kubus extends BangunRuang {
  Kubus(double sisi) : super(sisi, sisi, sisi);

  @override
  double volume() => pow(panjang!, 3).toDouble();
}

class Balok extends BangunRuang {
  Balok(double panjang, double lebar, double tinggi)
      : super(panjang, lebar, tinggi);

  @override
  double volume() => panjang! * lebar! * tinggi!;
}

void main() {
  var kubus = Kubus(5);
  print('Volume Kubus = ${kubus.volume()}');

  var balok = Balok(5, 4, 4);
  print('Volume Balok = ${balok.volume()}');
}
