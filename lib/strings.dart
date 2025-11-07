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
}
