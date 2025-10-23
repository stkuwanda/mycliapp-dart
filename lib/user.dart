import 'person.dart';
import 'role.dart';

class User extends Person {
  String id;
  Role role;

  // Constructor with all parameters
  // required named parameters for better clarity
  // forwarding name and age to the superclass constructor
  User({
    required this.id,
    required this.role,
    required String name,
    required int age,
  }) : super(name, age);

  // Named constructor for guest users with initializer list and constructor forwarding
  User.byId(this.id) : role = Role.guest, super('Guest', 0);

  // Named constructor for default admin user with constructor forwarding and initializer list
  User.defaultAdmin()
    : this(id: 'A001', role: Role.admin, name: 'Admin', age: 30);

  @override
  String greet() {
    return '${super.greet()} My role is ${role.name}.';
  }
}
