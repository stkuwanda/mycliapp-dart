void runningAnonymousFunctions() {
  Function multiply = (num a, num b) => a * b; // anonymous function assigned to a variable

  void printProduct(num a, num b) {
    print('$a x $b = ${multiply(a, b)}');
  }

  void printProduct2(Function multiply, num a, num b) { // anonymous function passed as parameter
    print('$a x $b = ${multiply(a, b)}');
  }

  printProduct(3, 4);
  printProduct2(multiply, 5, 6);
}
