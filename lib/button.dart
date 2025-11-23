class Button {
  const Button({required this.title, required this.onPressed});

  final String title;
  final Function onPressed; // generic function type
}

class TextButton {
  const TextButton({required this.title, required this.onPressed});

  final String title;
  final void Function({required String name, required String descript}) onPressed; // with function type clearly defined
}
