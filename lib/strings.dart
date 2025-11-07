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
}
