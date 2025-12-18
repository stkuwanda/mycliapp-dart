import 'dart:convert';
import 'person.dart';
import 'role.dart';

class User extends Person {
  // Constructor with all parameters
  // required named parameters for better clarity
  // forwarding name and age to the superclass constructor
  const User({
    required this.id,
    required this.role,
    required this.emails,
    required String name,
    required int age,
  }): super(name, age);

  final String id;
  final Role role;
  final List<String> emails;

  // Named constructor for guest users with initializer list and constructor forwarding
  const User.byId(this.id)
    : role = Role.guest,
      emails = const ['officer@guest.com'],
      super('Guest', 0);

  // Named constructor for default admin user with constructor forwarding and initializer list
  const User.defaultAdmin()
    : this(
        id: 'A001',
        role: Role.admin,
        name: 'Admin',
        age: 30,
        emails: const ['officer@admin.com'],
      );

  // factory constructor for deafault officer user
  factory User.defaultOfficer() {
    return User(
      id: 'O001',
      role: Role.officer,
      name: 'Officer',
      age: 28,
      emails: ['officer@admin,com'],
    );
  }

  factory User.fromMap(Map<String, dynamic> data) {
    return User(
      id: data['id'] is String ? data['id'] : '',
      role: data['role'] is Role
          ? Role.values.firstWhere(
              // finding enum from string
              (e) => e.name == (data['role'] as Role).name, // match by name
              orElse: () => Role.guest, // default value if no match found
            )
          : Role.guest,
      name: data['name'] is String ? data['name'] : '',
      age: data['age'] is int ? data['age'] : 18,
      emails: List<String>.from(
        data['emails'] ?? [],
      ), // default to empty list if null
    );
  }

  factory User.desirializefromJson(String jsonString) {
    final jsonMap = jsonDecode(jsonString);
    return User.fromMap(jsonMap);
  }

  @override
  String greet() {
    return '${super.greet()} My role is ${role.name}. My emails are: ${emails.join(', ')}. $name';
  }

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'emails': emails,
      'role': role.name,
      'age': age,
    };
  }

  String serializeToJson() {
    return jsonEncode(toJson());
  }

  @override
  String toString() {
    return greet();
  }
}
