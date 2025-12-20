import 'dart:convert';

// Custom exception classes
class ShortPasswordException implements Exception {
  final String message;

  ShortPasswordException(this.message);
}

class NoNumberException implements Exception {
  final String message;

  NoNumberException(this.message);
}

class NoUppercaseException implements Exception {
  final String message;

  NoUppercaseException(this.message);
}

class NoLowercaseException implements Exception {
  final String message;

  NoLowercaseException(this.message);
}

class NoSpecialCharacterException implements Exception {
  final String message;

  NoSpecialCharacterException([
    this.message = 'Password must have a special character!',
  ]);
}

// Validate that the password has at least 12 characters
void validateLength(String password) {
  final goodLength = RegExp(r'.{12,}');

  if (!password.contains(goodLength)) {
    throw ShortPasswordException('Password must be at least 12 characters!');
  }
}

// Validate that the password has at least one lowercase letter
void validateLowercase(String password) {
  final lowercase = RegExp(r'[a-z]');

  if (!password.contains(lowercase)) {
    throw NoLowercaseException('Password must have a lowercase letter!');
  }
}

// Validate that the password has at least one uppercase letter
void validateUppercase(String password) {
  final uppercase = RegExp(r'[A-Z]');

  if (!password.contains(uppercase)) {
    throw NoUppercaseException('Password must have an uppercase letter!');
  }
}

// Validate that the password has at least one number
void validateNumber(String password) {
  final number = RegExp(r'[0-9]');

  if (!password.contains(number)) {
    throw NoNumberException('Password must have a number!');
  }
}

// Validate that the password has at least one special character
void validateSpecialCharacters(String password) {
  final specialChar = RegExp(r'[^\w\s]'); // Special characters

  if (!password.contains(specialChar)) {
    throw NoSpecialCharacterException();
  }
}

// Validate the password by calling all validation functions
void validatePassword(String password) {
  validateLength(password);
  validateLowercase(password);
  validateUppercase(password);
  validateNumber(password);
  validateSpecialCharacters(password);
}

void run() {
  const json = '{"name": "simba"}';

  try {
    dynamic result = jsonDecode(json);
    print(result);
    runThrow();
  } on FormatException catch (e, s) {
    print('There was an error.');
    print(e); // print the error message
    print(s); // print the stack trace
  }
}

// Never type indicates that a function does not return a value
// and never completes normally.
Never runThrow() {
  throw 'CustomException: This is an error'; // Throwing an error
}

void runCatchMultipleExceptions() {
  void handleFormatException() {
    print("FormatException: You tried to parse a non-numeric string.");
  }

  void handleDivisionByZero() {
    print("UnsupportedError: You can't divide by zero.");
  }

  const numberStrings = ["42", "hello"];

  try {
    for (final numberString in numberStrings) {
      final number = int.parse(numberString);
      print(number ~/ 0);
    }
  } on FormatException {
    handleFormatException();
  } on UnsupportedError {
    handleDivisionByZero();
  }
}

void runList() {
  const list = [1, 2, 3, 4];

  try {
    list.add(5); // no compile-time error but run-time error
  } on UnsupportedError {
    print('UnsupportedError: Cannot add to an unmodifiable list.');
  }
}

void main() {
  // run();4
  // runCatchMultipleExceptions();
  // validatePassword('hbdbTiiiiih123ui !');
  runList();
}
