abstract class Animal {
  bool isAlive = true;
  void eat(); // abstract method which must be implemented by subclasses
  void move(); // abstract method which must be implemented by subclasses

  @override
  String toString() {
    return "I'm a $runtimeType";
  }
}

class Platypus extends Animal {
  @override
  void eat() {
    print('munch munch');
  }

  @override
  void move() {
    print('glide glide');
  }

  void layEggs() {
    print('plop plop');
  }
}
