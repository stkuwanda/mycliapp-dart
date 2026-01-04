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

mixin class ProgrammingSkills {
  void coding() {
    print("writing code...");
  }
}

mixin class ManagementSkills {
  void manage() {
    print("managing project...");
  }
}

class SeniorDeveloper extends Person with ProgrammingSkills, ManagementSkills {
  SeniorDeveloper(super.firstName, super.lastName);

  @override
  String get fullName => '$firstName $lastName';

  @override
  set fullName(String fullName) {
    print('The full name "$fullName" can not be added!');
  }
}

class JuniorDeveloper extends Person with ProgrammingSkills {
  JuniorDeveloper(super.firstName, super.lastName);

  @override
  String get fullName => '$firstName $lastName';

  @override
  set fullName(String fullName) {
    print('The full name "$fullName" can not be added!');
  }
}

void main() {
  Person p1 = SeniorDeveloper('Simba', 'Kuwanda');
  print(p1.fullName);
  (p1 as SeniorDeveloper).coding(); // Downcasting to access mixin method
  (p1).manage(); // Accessing mixin method because p1 being a Person has been downcasted to SeniorDeveloper and has ManagementSkills
}
