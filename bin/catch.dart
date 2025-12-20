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

void main() {
  run();
}
