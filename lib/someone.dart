class Someone {
  Someone(this.givenName, this.surname);

  final String givenName;
  final String surname;

  String get fullname => '$givenName $surname';

  void doSomeWork() {
    print('parent working...');
  }

  @override
  String toString() {
    return fullname;
  }
}
