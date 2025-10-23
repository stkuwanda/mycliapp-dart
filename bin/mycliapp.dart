import 'package:mycliapp/person.dart';
import 'package:mycliapp/static.dart';
import 'package:mycliapp/user.dart';
import 'package:mycliapp/role.dart';

void main(List<String> arguments) {
  // Using cascade notation to set properties
  // This is just for demonstration; Person's fields are now private
  // final person = Person('Simba', 34)
  //   ..name = 'Seynt'
  //   ..age = 29;

  final person = Person('Simba', 34); // final instance
  const person1 = Person('Simba', 34); // compile-time constant instance
  const person2 = Person('Simba', 34); // another compile-time constant instance

  // Checks if both instances are identical (same memory location)
  if (identical(person, person1)) {
    print('person and person1 are identical (same memory location).');
  } else {
    print('person and person1 are NOT identical (different memory locations).');
  }

  if (identical(person1, person2)) {
    print('person1 and person2 are identical (same memory location).');
  } else {
    print(
      'person1 and person2 are NOT identical (different memory locations).',
    );
  }

  final personFromMap = User.fromMap({
    'id': 'U123',
    'role': Role.admin,
    'name': 'Mufasa',
    'age': 50,
  });

  final defaultPerson = Person();

  print(defaultPerson.greet());
  print(person.greet());
  print(personFromMap.greet());

  final user = User(id: 'U111', role: Role.admin, name: 'Simba', age: 34);
  print(user.greet());

  // Using static memebers of a class
  const appVersion = Static.version;
  print('App Version: $appVersion');
  Static.printAppInfo();
}
