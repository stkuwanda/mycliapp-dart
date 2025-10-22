import 'package:mycliapp/mycliapp.dart' as mycli;
import 'package:mycliapp/math.dart';

void main(List<String> arguments) {
  print(
    'Hi old man of ${mycli.calculate()}!. Addition of 3.4 and 2.6 is : ${add(3.4, 2.6)}',
  );
  final person = Person('Simba', 34)
    ..name = 'Seynt'
    ..age = 29;
  print(person.greet());

  final user = User('U111', Role.admin, 'Simba', 34);
  print(user.greet());
}

class Person {
  late String name;
  late int age;

  Person(this.name, this.age);

  String greet() {
    return 'Hello my name is $name and I am $age years old.';
  }
}

class User extends Person {
  String id;
  Role role;

  // Constructor with all parameters
  User(this.id, this.role, String name, int age) : super(name, age);

  // Named constructor for guest users
  User.byId(this.id) : role = Role.guest, super('Guest', 0);

  // Named constructor for default admin user
  User.defaultAdmin() : this('A001', Role.admin, 'Admin', 30);

  @override
  String greet() {
    return '${super.greet()} My role is ${role.name}.';
  }
}

enum Role { admin, guest, officer }
