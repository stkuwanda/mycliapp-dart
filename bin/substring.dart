void extractFromTextWithSubstring() {
  const text = '''
<h1>Dart Tutorial</h1>
<h1>Flutter Tutorial</h1>
<h1>Other Tutorials</h1>
''';

  var position = 0;

  while (true) {
    var start = text.indexOf('<h1>', position) + '<h1>'.length;
    var end = text.indexOf('</h1>', position);
    print('start index: $start, end index: $end');

    if (end == -1) {
      break;
    }

    final heading = text.substring(start, end);
    print(heading);
    position = end + '</h1>'.length;
  }
}

void extractFromTextWithRegExp() {
  const text = '''
  <h1>Dart Tutorial</h1>
  <h1>Flutter Tutorial</h1>
  <h1>Other Tutorials</h1>
  ''';

  final headings = RegExp(r'<h1>(.+)</h1>');
  final matches = headings.allMatches(text);

  for (final match in matches) {
    print(match.group(1));
  }
}

void main() {
  // extractFromTextWithSubstring();
  extractFromTextWithRegExp();
}
