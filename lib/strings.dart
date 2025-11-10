void runningStrings() {
  // changing the case
  const userInput = 'sPoNgEbOb@eXaMpLe.cOm';
  final lowercase = userInput.toLowerCase();
  print('original input: $userInput, lowercase output: $lowercase');

  // trimming strings
  const usrInput = ' 221B Baker St. ';
  final trimmed = usrInput.trim();
  print(
    'original input: $usrInput, trimmed output: $trimmed',
  ); // '221B Baker St.'

  // padding strings
  final time = Duration(hours: 1, minutes: 2, seconds: 7);
  final hours = time.inHours;
  final minutes = '${time.inMinutes % 60}'.padLeft(
    2,
    '0',
  ); // get remaining minutes by modulo
  final seconds = '${time.inSeconds % 60}'.padLeft(
    2,
    '0',
  ); // get remaining seconds by modulo
  final timeString = '$hours:$minutes:$seconds';
  print(timeString); // 1:02:07

  // splitting strings into a List
  const csvFileLine = 'Martin,Emma,12,Paris,France';
  final fields = csvFileLine.split(',');
  print('split list: $fields');
  print('joined list $fields to string: ${fields.join('-')}');

  // replacing strings
  const phrase = 'live and learn';
  final withUnderscores = phrase.replaceAll(
    ' ',
    '_',
  ); // replaceFirst for first occurrence
  print('original: $phrase, output: $withUnderscores');

  // use StringBuffer to efficiently concatenate strings
  final message = StringBuffer(); // StringBuffer
  message.write('Hello'); // write method appends strings to buffer
  message.write(' my name is ');
  message.write('Ray');
  final msg = message.toString();
  print('String object: $msg');

  final buffer = StringBuffer();
  for (int i = 2; i <= 1024; i *= 2) {
    buffer.write(i);
    buffer.write(' ');
  }
  print('String buffer: $buffer');

  // String Validation
  const text = 'I love Dart';
  print('startsWith \'I\': ${text.startsWith('I')}');
  print('endsWith \'Dart\': ${text.endsWith('Dart')}');
  print('check if string contains \'love\': ${text.contains('love')}');
  print('check if string contains \'Flutter\': ${text.contains('Flutter')}');

  // regular expressions7333232
  final regex = RegExp('cat'); // pattern to match
  print('hasMatch with \'concatenation\': ${regex.hasMatch('concatenation')}');
  print('hasMatch with \'dog\': ${regex.hasMatch('dog')}');
  print('hasMatch with \'cats\': ${regex.hasMatch('cats')}');

  // matching with special characters
  // the . matches any single character
  // the ? makes the character preceding it in the pattern optional
  final optionalSingle = RegExp('c.?t');
  print(
    'hasMatch with \'cat\' for pattern \'\\c.?t\\\': ${optionalSingle.hasMatch('cat')}',
  );
  print(
    'hasMatch with \'cot\' for pattern \'\\c.?t\\\': ${optionalSingle.hasMatch('cot')}',
  );
  print(
    'hasMatch with \'cut\' for pattern \'\\c.?t\\\': ${optionalSingle.hasMatch('cut')}',
  );
  print(
    'hasMatch with \'ct\' for pattern \'\\c.?t\\\': ${optionalSingle.hasMatch('ct')}',
  );
  print(
    'hasMatch with \'c t\' for pattern \'\\c.?t\\\': ${optionalSingle.hasMatch('c t')}',
  );

  // matching multiple characters
  // + : The plus sign means the character it follows can occur one or more times.
  // * : The asterisk means the character it follows can occur zero or more times.
  final oneOrMore = RegExp('wo+w');
  print(
    'hasMatch with for \'ww\' pattern \'\\wo+w\\\'${oneOrMore.hasMatch('ww')}',
  );
  print(
    'hasMatch with for \'wow\' pattern \'\\wo+w\\\'${oneOrMore.hasMatch('wow')}',
  );
  print(
    'hasMatch with for \'wooow\' pattern \'\\wo+w\\\'${oneOrMore.hasMatch('wooow')}',
  );
  print(
    'hasMatch with for \'wooooooow\' pattern \'\\wo+w\\\'${oneOrMore.hasMatch('wooooooow')}',
  );
  final zeroOrMore = RegExp('wo*w');
  print(
    'hasMatch with for \'ww\' pattern \'\\wo*w\\\'${zeroOrMore.hasMatch('ww')}',
  );
  print(
    'hasMatch with for \'wow\' pattern \'\\wo*w\\\'${zeroOrMore.hasMatch('wow')}',
  );
  print(
    'hasMatch with for \'wooow\' pattern \'\\wo*w\\\'${zeroOrMore.hasMatch('wooow')}',
  );
  print(
    'hasMatch with for \'wooooooow\' pattern \'\\wo*w\\\'${zeroOrMore.hasMatch('wooooooow')}',
  );

  // to match multiple instances of any character, combine . with + or *
  final anyOneOrMore = RegExp('w.+w');
  print(
    'hasMatch with for \'ww\' pattern \'\\w.+w\\\'${anyOneOrMore.hasMatch('ww')}',
  );
  print(
    'hasMatch with for \'wow\' pattern \'\\w.+w\\\'${anyOneOrMore.hasMatch('wow')}',
  );
  print(
    'hasMatch with for \'w123w\' pattern \'\\w.+w\\\'${anyOneOrMore.hasMatch('w123w')}',
  );
  print(
    'hasMatch with for \'wABCDEFGw\' pattern \'\\w.+w\\\'${anyOneOrMore.hasMatch('wABCDEFGw')}',
  );

  // pattern matching with a set
  final set = RegExp(
    'b[oa]t',
  ); // this is the pattern to be matched. [oa] is a single character pattern which matches any member of the set i.e either 'o' or 'a' but not both
  print('hasMatch with \'bat\' for pattern \'b[oa]t\': ${set.hasMatch('bat')}');
  print('hasMatch with \'bot\' for pattern \'b[oa]t\': ${set.hasMatch('bot')}');
  print('hasMatch with \'but\' for pattern \'b[oa]t\': ${set.hasMatch('but')}');
  print(
    'hasMatch with \'boat\' for pattern \'b[oa]t\': ${set.hasMatch('boat')}',
  );
  print('hasMatch with \'bt\' for pattern \'b[oa]t\': ${set.hasMatch('bt')}');

  // pattern matching with a set of negated members
  final excluded = RegExp(
    'b[^oa]t',
  ); // this is the pattern to be matched. [^oa] is a single character pattern which matches any member of the set i.e any single character that is neither 'o' nor 'a'
  print(
    'hasMatch with \'bat\' for pattern \'b[^oa]t\': ${excluded.hasMatch('bat')}',
  );
  print(
    'hasMatch with \'bot\' for pattern \'b[^oa]t\': ${excluded.hasMatch('bot')}',
  );
  print(
    'hasMatch with \'but\' for pattern \'b[^oa]t\': ${excluded.hasMatch('but')}',
  );
  print(
    'hasMatch with \'boat\' for pattern \'b[^oa]t\': ${excluded.hasMatch('boat')}',
  );
  print(
    'hasMatch with \'bt\' for pattern \'b[^oa]t\': ${excluded.hasMatch('bt')}',
  );

  // pattern matching with a range
  final range = RegExp(
    '[a-zA-Z]',
  ); // this is the pattern to be matched. [a-zA-Z] is a single character pattern which matches any member of the range i.e any single letter of the alphabet whether upper or lower case
  print('hasMatch with \'a\' for pattern \'[a-zA-Z]\': ${range.hasMatch('a')}');
  print('hasMatch with \'H\' for pattern \'[a-zA-Z]\': ${range.hasMatch('H')}');
  print(
    'hasMatch with \'3z\' for pattern \'[a-zA-Z]\': ${range.hasMatch('3z')}',
  );
  print('hasMatch with \'2\' for pattern \'[a-zA-Z]\': ${range.hasMatch('2')}');

  // escaping special characters regular expressions
  // use backslash \ to escape special characters
  final escaped = RegExp(
    'c\\.t',
  ); // pattern to match 'c.t' literally. optionally use raw string r'c\.t'
  print(
    'hasMatch with \'c.t\' for pattern \'c\\\\.t\' or r\'c\\.t\': ${escaped.hasMatch('c.t')}',
  );
  print(
    'hasMatch with \'cat\' for pattern \'c\\\\.t\' or r\'c\\.t\': ${escaped.hasMatch('cat')}',
  );

  // matching digits with regular expressions
  final numbers = RegExp(r'[0-9]');
  print(numbers.hasMatch('5552021')); // true
  print(numbers.hasMatch('abcefg2')); // true

  // matching the beginning and the ending
  final onlyNumbers = RegExp(r'^[0-9]+$');
  print('hasMatch with \'5552021\' for pattern \'^[0-9]+\$\': ${onlyNumbers.hasMatch('5552021')}');
  print('hasMatch with \'abcefg2\' for pattern \'^[0-9]+\$\': ${onlyNumbers.hasMatch('abcefg2')}');
}
