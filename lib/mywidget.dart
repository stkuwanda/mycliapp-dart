class MyWidget {
  MyWidget({required this.onTouch, this.timeStamp});

  final void Function(double xPosition) onTouch; // a value setter callback
  final String Function()? timeStamp; // a value getter callback
}

// type alias
typedef ZipCode = int; // defining a new name for an existing type
