import 'package:mycliapp/mixins.dart';

abstract class Animal {
  bool isAlive = true;
  void eat(); // abstract method which must be implemented by subclasses
  void move(); // abstract method which must be implemented by subclasses

  @override
  String toString() {
    return "I'm a $runtimeType";
  }
}

abstract class Bird {
  void fly(); // abstract method which must be implemented by subclasses
  void layEggs(); // abstract method which must be implemented by subclasses
}

class Platypus extends Animal with EggLayer {
  @override
  void eat() {
    print('munch munch');
  }

  @override
  void move() {
    print('glide glide');
  }
}

class Eagle extends Animal with Flyer, EggLayer implements Bird {
  @override
  void eat() {
    print('peck peck');
  }

  @override
  void move() {
    fly();
  }

  @override
  String toString() {
    return "I'm an $runtimeType";
  }
}
