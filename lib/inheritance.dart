import 'package:mycliapp/animal.dart';
import 'package:mycliapp/grade.dart';
import 'package:mycliapp/interfaces.dart';
import 'package:mycliapp/someone.dart';
import 'package:mycliapp/student.dart';
import 'package:mycliapp/extensions.dart';

void runInheritance() {
  final jon = Someone('Jon', 'Snow');
  final jane = Student('Jane', 'Snow');
  final jessie = SchoolBandMember('Jessie', 'Jones');
  final marty = StudentAthlete('Marty', 'McFly');
  final students = [jane, jessie, marty];

  final historyGrade = Grade.B;
  jane.grades.add(historyGrade);

  print('Students: $students');
  print(jon.fullname);
  print(jane.fullname);
  jon.doSomeWork();
  jane.doSomeWork();
  print("Jane's grades: ${jane.grades}");

  // print(jessie is Object);
  // print(jessie is Someone);
  // print(jessie is Student);
  // print(jessie is SchoolBandMember);
  // print(jessie is! StudentAthlete);
}

Future<void> runAbstractClasses() async {
  final platypus = Platypus();
  final eagle = Eagle();
  print(platypus.isAlive);
  platypus.eat();
  platypus.move();
  platypus.layEggs();
  eagle.layEggs();
  Animal animal = platypus;
  print(platypus);
  print(eagle);
  print(animal);

  // business logic separate from infrastructure logic via interface
  final repository = DataRepository();
  final temperature = await repository.fetchTemperature('Manila');
  print('temperature: $temperature');
}

void runExtensions() {
  // using extension method
  final original = 'I like extensions!';
  final secret = original.encoded;
  final revealed = secret.decoded;
  print(secret);
  print(revealed);
  print(5.cubed);
}

void main() {
  runExtensions();
}
