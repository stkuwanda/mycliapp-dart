// Point class with const constructor and const factory forwarding constructor
class Point {
  // Const constructor
  const Point(this.x, this.y);

  // Const factory forwarding constructor
  const factory Point.origin() = Point._origin;

  // Private named constructor
  const Point._origin() : x = 0, y = 0;

  final int x;
  final int y;

  // Method to add two points using operator overloading
  Point operator +(Point other) {
    return Point(x + other.x, y + other.y);
  }

  @override
  String toString() => '($x, $y)';
}

void runPointExample() {
  const p1 = Point.origin();
  const p2 = Point(3, 4);
  final p3 = p1 + p2;

  print('Point p1: $p1');
  print('Point p2: $p2');
  print('Point p3 (p1 + p2): $p3');
}
