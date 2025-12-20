import 'dart:convert';

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

void main() {
  // run();4
  runCatchMultipleExceptions();
}
