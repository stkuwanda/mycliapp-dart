import 'package:mycliapp/button.dart';
import 'package:mycliapp/collections.dart';
import 'package:mycliapp/desserts.dart';
import 'package:mycliapp/enums.dart';
import 'package:mycliapp/functions.dart';
import 'package:mycliapp/inheritance.dart';
import 'package:mycliapp/iterables.dart';
import 'package:mycliapp/mywidget.dart';
import 'package:mycliapp/nullability.dart';
import 'package:mycliapp/person.dart';
import 'package:mycliapp/point.dart';
import 'package:mycliapp/singleton.dart';
import 'package:mycliapp/static.dart';
import 'package:mycliapp/strings.dart';
import 'package:mycliapp/tree.dart';
import 'package:mycliapp/user.dart';
import 'package:mycliapp/role.dart';
import 'package:characters/characters.dart';

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

  final user = User(
    id: 'U111',
    role: Role.admin,
    name: 'Simba',
    age: 34,
    emails: ['simba@admin.com'],
  );
  print(user.greet());

  const family = '👨🏾‍👩🏾‍👧🏾‍👦🏾';
  print('grapheme clusters: ${family.characters.length}');

  // Using static memebers of a class
  const appVersion = Static.version;
  print('App Version: $appVersion');
  Static.printAppInfo();

  // Singleton usage
  final singleton1 = Singleton();
  final singleton2 = Singleton();

  if (identical(singleton1, singleton2)) {
    print('singleton1 and singleton2 are identical (same instance).');
  } else {
    print('singleton1 and singleton2 are NOT identical (different instances).');
  }

  const guess = 'dog';
  print('boolean :${guess == 'dog'}');

  // function nested inside another function
  String run() {
    print('running...');
    return 'run';
  }

  run();

  // Using Point class with const constructor and const factory forwarding constructor
  const p1 = Point.origin(); // ✅ Allowed: const factory forwarding
  const p2 = Point(1, 2); // ✅ Also allowed
  print('Point p1: (${p1.x}, ${p1.y})');
  print('Point p2: (${p2.x}, ${p2.y})');

  // show lists
  runLists();

  // show sets
  runningSets();

  // show maps
  runningMaps();

  // show strings
  runningStrings();

  // show anonymous functions
  runningAnonymousFunctions();

  // show callbacks
  var clickMe = TextButton(
    title: 'Open',
    onPressed: ({required String name, required String descript}) {
      print('opening... $name, description: $descript');
    },
  );

  var clickThis = Button(
    title: 'Open',
    onPressed: () {
      print('Button clicked!');
    },
  );

  clickMe.onPressed(name: 'Table', descript: 'Table of ints');
  clickMe.onPressed.call(name: 'Chart', descript: 'Chart of values');
  clickThis.onPressed();

  var specialWidget = MyWidget(
    onTouch: print, // using tear-offs
    timeStamp: DateTime.now().toIso8601String, // using tear-offs
  );

  specialWidget.onTouch(3.14);
  print('Touched at: ${specialWidget.timeStamp?.call()}');

  // show iterables
  runningIterables();

  // show nullability
  runningNullability();

  var funnyDesserts = Desserts(['ice cream', 'cakes', 'chocolates', 'cookies']);
  print(funnyDesserts);

  // show inheritance
  runInheritance();
  runAbstractClasses();

  // show trees
  runTrees();

  // show enums
  runEnums();

  // show point example
  runPointExample();
}
