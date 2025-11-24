void runningNullability() {
  // the if null operator
  final x = null;
  final y = x ?? 'Error';
  print(y);

  // null aware assignment operator
  double? fontSize;
  fontSize ??= 20.0; // assign 20.0 if fontSize is null
  print(fontSize);
}
