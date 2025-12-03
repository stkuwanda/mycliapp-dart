// import 'dart:convert';

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
}
