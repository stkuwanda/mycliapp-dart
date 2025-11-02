class Desserts {
  const Desserts([this.desserts = const <String>['donuts', 'ice cream']]);
  final List<String> desserts;

  @override
  String toString() {
    return desserts.toString();
  }
}
