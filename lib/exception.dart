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

class ShortPasswordException implements Exception {
  ShortPasswordException(this.message);
  final String message;
}

class NoNumberException implements Exception {
  NoNumberException(this.message);
  final String message;
}

class NoUppercaseException implements Exception {
  NoUppercaseException(this.message);
  final String message;
}

class NoLowercaseException implements Exception {
  NoLowercaseException(this.message);
  final String message;
}

void validateLength(String password) {
  final goodLength = RegExp(r'.{12,}');

  if (!password.contains(goodLength)) {
    throw ShortPasswordException('Password must be at least 12 characters!');
  }
}

void validateLowercase(String password) {
  final lowercase = RegExp(r'[a-z]');

  if (!password.contains(lowercase)) {
    throw NoLowercaseException('Password must have a lowercase letter!');
  }
}

void validateUppercase(String password) {
  final uppercase = RegExp(r'[A-Z]');

  if (!password.contains(uppercase)) {
    throw NoUppercaseException('Password must have an uppercase letter!');
  }
}

void validateNumber(String password) {
  final number = RegExp(r'[0-9]');

  if (!password.contains(number)) {
    throw NoNumberException('Password must have a number!');
  }
}

void validatePassword(String password) {
  validateLength(password);
  validateLowercase(password);
  validateUppercase(password);
  validateNumber(password);
}

void _runPasswordValidationWithExceptionHandling() {
  const password = 'password1234';

  try {
    validatePassword(password);
    print('Password is valid');
  } on ShortPasswordException catch (e) {
    print(e.message);
  } on NoLowercaseException catch (e) {
    print(e.message);
  } on NoUppercaseException catch (e) {
    print(e.message);
  } on NoNumberException catch (e) {
    print(e.message);
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
  _runPasswordValidationWithExceptionHandling(); // Custom exception objects
}
