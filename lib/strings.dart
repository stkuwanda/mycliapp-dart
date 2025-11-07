void runningStrings() {
  // changing the case
  const userInput = 'sPoNgEbOb@eXaMpLe.cOm';
  final lowercase = userInput.toLowerCase();
  print('original input: $userInput, lowercase output: $lowercase');

  // trimming strings
  const usrInput = ' 221B Baker St. ';
  final trimmed = usrInput.trim();
  print('original input: $usrInput, trimmed output: $trimmed'); // '221B Baker St.'
}
