abstract interface class Person {
  Person(this.name, this.surname);

  String name;
  String surname;
  String get fullName;

  @override
  String toString();
}

class Student implements Person {
  Student(this.name, this.surname, this.nickName);

  String nickName;

  @override
  String name;

  @override
  String surname;

  @override
  String get fullName => '$name $surname';

  @override
  String toString() => '$fullName, aka $nickName';
}

void main() {
  Person p1 = Student('John', 'Doe', 'Johnny');
  print(p1);
}
