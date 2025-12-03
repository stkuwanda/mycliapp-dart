import 'dart:convert';

// void _functionOne() {
//   _functionTwo();
// }

// void _functionTwo() {
//   _functionThree();
// }

// void _functionThree() {
//   int.parse('source'); // FormatException
// }

// this code has a runtime error
void buggyCode() {
  final characters = ' abcdefghijklmnopqrstuvwxyz';
  final data = [4, 1, 18, 20, 0, 9, 19, 0, 6, 21, 14, 27];
  final buffer = StringBuffer();

  for (final index in data) {
    final letter = characters[index];
    buffer.write(letter);
  }

  print(buffer);
}

// this code uses exception handling
void withExceptionHandling() {
  const json = 'abc'; // '{"name":"bob"}

  try {
    dynamic result = jsonDecode(json);
    print(result);
  } catch (e, s) {
    print('There was an error.');
    print(e); // print error object
    print(s); // print stack trace object
  }
}

// this code catches a specific exception
void withSpecificExceptionHandling() {
  const json = 'abc'; // '{"name":"bob"}

  try {
    1 ~/ 0;
    dynamic result = jsonDecode(json);
    print(result);
  } on FormatException {
    print('The JSON string was invalid.');
  } on UnsupportedError {
    print("can't divide by zero");
  }
}

class FakeDatabase {
  void open() => print('Opening the database.');
  void close() => print('Closing the database.');
  String fetchData() => 'forty-two';
}

// this code demonstrates the finally block
void _databaseConnectionWithExceptionHandling() {
  final database = FakeDatabase();

  database.open();

  try {
    final data = database.fetchData();

    final number = int.parse(data);

    print('The number is $number.');
  } on FormatException {
    print("Dart didn't recognize that as a number.");
  } finally {
    database.close();
  }
}

void runExceptions() {
  // 1 ~/ 0; // IntegerDivisionByZeroException

  // dynamic x;
  // print(x.isEven()); // NoSuchMethodError

  // const malformedJson = 'abc';
  // jsonDecode(malformedJson); // FormatException

  // int.parse('43');
  // int.parse('source'); // FormatException

  // _functionOne(); // stack trace

  // buggyCode(); // RangeError

  // withExceptionHandling(); // app doesn't crash // FormatException
  // withSpecificExceptionHandling(); // FormatException

  _databaseConnectionWithExceptionHandling(); // FormatException
}
