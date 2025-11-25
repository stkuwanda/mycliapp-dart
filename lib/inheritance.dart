import 'package:mycliapp/animal.dart';
import 'package:mycliapp/grade.dart';
import 'package:mycliapp/someone.dart';
import 'package:mycliapp/student.dart';

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

void runAbstractClasses() {
  final platypus = Platypus();
  print(platypus.isAlive);
  platypus.eat();
  platypus.move();
  platypus.layEggs();
  Animal animal = platypus;
  print(platypus);
  print(animal);
}
