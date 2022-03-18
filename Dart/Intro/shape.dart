//fonte: https://developers.google.com/codelabs/from-java-to-dart
//Toda classe define uma interface, por isso Dart não tem keyword interface.

import 'dart:math';

abstract class Shape {
  num get area;

  factory Shape(String type) {
    if (type == 'circle') return Circle(2);
    if (type == 'square') return Square(2);
    throw 'Can\'t create $type.';
  }
}

class Circle implements Shape {
  final num radius;
  Circle(this.radius);
  num get area => pi * pow(radius, 2);
}

class Square implements Shape {
  final num side;
  Square(this.side);
  num get area => pow(side, 2);
}

// Exemplo de interface
class CircleMock implements Circle {
  num area = 0;
  num radius = 0;
}

// Shape shapeFactory(String type) {
//   if (type == 'circle') return Circle(2);
//   if (type == 'square') return Square(2);
//   throw 'Can\'t create $type.';
// }

main() {
  try {
    // final circle = Circle(2);
    // final square = Square(2);

    // final circle = shapeFactory('circle');
    // final square = shapeFactory('square');

    final circle = Shape('circle');
    final square = Shape('square');

    // final triangle = shapeFactory('triangle');
    print(circle.area);
    print(square.area);
    // print(triangle.area);
  } catch (error) {
    print(error);
  }
}
