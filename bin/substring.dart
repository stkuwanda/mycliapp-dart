void extractFromTextWithSubstring() {
  const text = '''
<h1>Dart Tutorial</h1>
<h1>Flutter Tutorial</h1>
<h1>Other Tutorials</h1>
'''; // multiline string

  var position = 0; // initial position

  // loop to find all headings
  while (true) {
    var start =
        text.indexOf('<h1>', position) + '<h1>'.length; // find start index
    var end = text.indexOf('</h1>', position); // find end index
    print('start index: $start, end index: $end'); // debug print

    // break if no more headings found
    if (end == -1) {
      break;
    }

    final heading = text.substring(start, end); // extract heading
    print(heading); // print heading
    position = end + '</h1>'.length; // update position
  }
}

void extractFromTextWithRegExp() {
  const text = '''
  <h1>Dart Tutorial</h1>
  <h1>Flutter Tutorial</h1>
  <h1>Other Tutorials</h1>
  '''; // multiline string

  final headings = RegExp(r'<h1>(.+)</h1>'); // regular expression
  final matches = headings.allMatches(text); // all matches

  for (final match in matches) {
    print(match.group(1)); // print the first capturing group
  }
}

void main() {
  // extractFromTextWithSubstring();
  extractFromTextWithRegExp();
}
