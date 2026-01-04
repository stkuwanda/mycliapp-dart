abstract class Human {
  // Abstract accessors
  // Note the lack of a body for both accessors
  String get fullName;
}

abstract class Person extends Human {
  Person(this.firstName, this.lastName);

  // concrete fields
  String firstName;
  String lastName;

  set fullName(String fullName); // abstract accessor => no body
}

class Student extends Person {
  Student(super.firstName, super.lastName, this.nickName);

  String nickName;

  @override
  String get fullName => "$firstName $lastName";

  @override
  set fullName(String fullName) {
    print('The name "$fullName" will not be set.');
  }

  @override
  String toString() => '$fullName, aka $nickName';
}

void main() {
  Person p1 = Student('Simba', 'Kuwanda', 'Seynt');
  var p2 = Student('Jane', 'Doe', 'Jenny');

  print(p1.fullName);
  print(p2);
}
