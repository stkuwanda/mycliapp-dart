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
  print('hasMatch with \'cat\' for pattern \'\\c.?t\\\': ${optionalSingle.hasMatch('cat')}');
  print('hasMatch with \'cot\' for pattern \'\\c.?t\\\': ${optionalSingle.hasMatch('cot')}');
  print('hasMatch with \'cut\' for pattern \'\\c.?t\\\': ${optionalSingle.hasMatch('cut')}');
  print('hasMatch with \'ct\' for pattern \'\\c.?t\\\': ${optionalSingle.hasMatch('ct')}');
  print('hasMatch with \'c t\' for pattern \'\\c.?t\\\': ${optionalSingle.hasMatch('c t')}');
}
