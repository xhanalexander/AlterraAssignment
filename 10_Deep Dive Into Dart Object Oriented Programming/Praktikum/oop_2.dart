class mathematics {
  void hasil() => print('');
}

class kpk implements mathematics {
  late int x, y, res;

  @override
  void hasil() {
    if (x > y) {
      res = x;
      x = y;
      y = res;
    }
    for (res = y; res % x != 0 || res % y != 0; res++);
    print('> Hasil KPK dari $x, $y adalah... $res');
  }
}

class fpb implements mathematics {
  var x, y, res;

  @override
  void hasil() {
    if (x > y) {
      res = x;
      x = y;
      y = res;
    }
    while (x > 0) {
      res = y % x;
      y = x;
      x = res;
    }
  }
}

void main() {
  var operasi = kpk()
    ..x = 150
    ..y = 60
    ..hasil();

  var operasi2 = fpb()
    ..x = 25
    ..y = 90;
    print('> Hasil FPB dari ${operasi2.x}, ${operasi2.y} adalah... ${operasi2.y}');
}