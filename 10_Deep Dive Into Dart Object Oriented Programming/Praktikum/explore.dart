import 'dart:math';

class shape {
  int? x, y;

  void getArea(int x, int y) {
    return;
  }

  void getPerimeter(int x, int y) {
    return;
  }
}

class rectangle implements shape {
  int? x, y;

  @override
  void getArea(int x, int y) {
    print(">> Area of Rectangle is ${x * y}");
  }

  @override
  void getPerimeter(int x, int y) {
    print("> Perimeter of Rectangle is ${2 * (x + y)}");
  }
}

class circle implements shape {
  int? x, y;

  @override
  void getArea(int x, int y) {
    var area = pi * x * x;
    // print(">> Area of Circle is ${area.toStringAsFixed(2)}");                // Round to 2 decimal places
    print(">> Area of Circle is ${area.round()}");
  }

  @override
  void getPerimeter(int x, int y) {
    var perimeter = 2 * pi * x;
    // print("> Perimeter of Circle is ${perimeter.toStringAsFixed(2)}");          // Round to 2 decimal places
    print("> Perimeter of Circle is ${perimeter.round()}");
  }
}

class square implements shape {
  int? x, y;

  @override
  void getArea(int x, int y) {
    print(">> Area of Square is ${pow(x, 2)}");
  }

  @override
  void getPerimeter(int x, int y) {
    print("> Perimeter of Square is ${4 * x}");
  }
}

void main() {
  rectangle r = rectangle();
  r.getArea(10, 20);
  r.getPerimeter(10, 20);
  print('');

  circle c = circle();
  c.getArea(10, 20);
  c.getPerimeter(10, 20);
  print('');

  square s = square();
  s.getArea(10, 20);
  s.getPerimeter(10, 20);
}