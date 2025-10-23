import 'package:mycliapp/person.dart';
import 'package:mycliapp/user.dart';
import 'package:mycliapp/role.dart';

void main(List<String> arguments) {
  // Using cascade notation to set properties
  // This is just for demonstration; Person's fields are now private
  // final person = Person('Simba', 34)
  //   ..name = 'Seynt'
  //   ..age = 29;
  final person = Person('Simba', 34);
  final defaultPerson = Person();
  print(defaultPerson.greet());
  print(person.greet());

  final user = User(id: 'U111', role: Role.admin, name: 'Simba', age: 34);
  print(user.greet());
}
