class Person {
  // private and immutable fields
  final String _name; 
  final int _age;

  // Constructor with optional, positional parameters and default values
  // initializer list to set private fields
  Person([String name = 'Default', int age = 0]) : _name = name, _age = age;

  String greet() {
    return 'Hello my name is $_name and I am $_age years old.';
  }
}