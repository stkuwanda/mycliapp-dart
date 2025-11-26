// A simple encoding function that shifts each character's Unicode code point by +1.
String encode(String input) {
  final output = StringBuffer();
  for (final codePoint in input.runes) {
    output.writeCharCode(codePoint + 1);
  }

  return output.toString();
}

// A simple encoding function that shifts each character's Unicode code point by +1.
String decode(String input) {
  final output = StringBuffer();
  for (final codePoint in input.runes) {
    output.writeCharCode(codePoint - 1);
  }

  return output.toString();
}

// DRY refactoring of the above two functions
String _code(String input, EncodingType step) {
  final output = StringBuffer();
  for (final codePoint in input.runes) {
    if (step == EncodingType.decode) {
      output.writeCharCode(codePoint - 1);
    } else {
      output.writeCharCode(codePoint + 1);
    }
  }

  return output.toString();
}

enum EncodingType { encode, decode }

// Extension methods for String class
extension StringEncodingExtension on String {
  String get encoded => _code(this, EncodingType.encode);
  String get decoded => _code(this, EncodingType.decode);
}

// Extension methods for int class
extension IntCubedExtension on int {
  int get cubed {
    return this * this * this;
  }
}
