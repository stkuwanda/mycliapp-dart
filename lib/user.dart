import 'person.dart';
import 'role.dart';

class User extends Person {
  final String id;
  final Role role;

  // Constructor with all parameters
  // required named parameters for better clarity
  // forwarding name and age to the superclass constructor
  const User({
    required this.id,
    required this.role,
    required String name,
    required int age,
  }) : super(name, age);

  // Named constructor for guest users with initializer list and constructor forwarding
  const User.byId(this.id) : role = Role.guest, super('Guest', 0);

  // Named constructor for default admin user with constructor forwarding and initializer list
  const User.defaultAdmin()
    : this(id: 'A001', role: Role.admin, name: 'Admin', age: 30);

  // factory constructor for deafault officer user
  factory User.defaultOfficer() {
    return User(id: 'O001', role: Role.officer, name: 'Officer', age: 28);
  }

  factory User.fromMap(Map<String, dynamic> data) {
    return User(
      id: data['id'],
      role: Role.values.firstWhere(
        // finding enum from string
        (e) => e.name == data['role'], // match by name
        orElse: () => Role.guest, // default value if no match found
      ),
      name: data['name'],
      age: data['age'],
    );
  }

  @override
  String greet() {
    return '${super.greet()} My role is ${role.name}.';
  }
}
