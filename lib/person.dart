class Person {
  // private and immutable fields
  final String _name; 
  final int _age;

  // Const onstructor with optional, positional parameters and default values
  // initializer list to set private fields
  // Since fields are final, we make the unnamed constuctor const. This allows us to create compile-time constants of Person.
  // Compile-time constant instances are also called canonicalized instances which means that if two instances are created with the same values,
  // they will point to the same memory location, ultimately saving memory.
  // Note: const constructors can only initialize final fields.
  // Immutable instances are beneficial in mutlti-threaded environments as they can be shared across threads without synchronization issues.
  const Person([String name = 'Default', int age = 0]) : _name = name, _age = age;

  String greet() {
    return 'Hello my name is $_name and I am $_age years old.';
  }
}