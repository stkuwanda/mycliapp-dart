// Point class with const constructor and const factory forwarding constructor
class Point {
  final int x;
  final int y;

  // Const constructor
  const Point(this.x, this.y);

  // Const factory forwarding constructor
  const factory Point.origin() = Point._origin;

  // Private named constructor
  const Point._origin() : x = 0, y = 0;
}