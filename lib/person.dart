class Person {
  // private and immutable fields
  final String name;
  final int age;

  // Const onstructor with optional, positional parameters and default values
  // initializer list to set private fields
  // Since fields are final, we make the unnamed constuctor const. This allows us to create compile-time constants of Person.
  // Compile-time constant instances are also called canonicalized instances which means that if two instances are created with the same values,
  // they will point to the same memory location, ultimately saving memory.
  // Note: const constructors can only initialize final fields.
  // Immutable instances are beneficial in mutlti-threaded environments as they can be shared across threads without synchronization issues.
  const Person([this.name = 'Default', this.age = 0]);

  const Person.defaultPerson() : this('John Doe', 30); // Redirecting constructor

  String greet() {
    return 'Hello my name is $name and I am $age years old.';
  }
}
