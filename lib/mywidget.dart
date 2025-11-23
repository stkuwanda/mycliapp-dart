class MyWidget {
  MyWidget({required this.onTouch, this.timeStamp});

  final void Function(double xPosition) onTouch; // a value setter callback
  final String Function()? timeStamp; // a value getter callback
}
