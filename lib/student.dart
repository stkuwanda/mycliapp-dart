import 'package:mycliapp/grade.dart';
import 'package:mycliapp/someone.dart';

class Student extends Someone {
  Student(
    super.givenName,
    super.surname,
  ); // directly forwarding parameters to superclass constructor

  var grades = <Grade>[];

  @override
  void doSomeWork() {
    super.doSomeWork();
    print('child working now...');
  }

  @override
  String get fullname => '$surname, $givenName';
}

class SchoolBandMember extends Student {
  SchoolBandMember(super.givenName, super.surname);

  static const minimumPracticeTime = 2;
}

class StudentAthlete extends Student {
  StudentAthlete(super.givenName, super.surname);
  
  bool get isEligible => grades.every((grade) => grade != Grade.F);
}
