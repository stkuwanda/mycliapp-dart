void runningAnonymousFunctions() {
  // anonymous function assigned to a variable
  Function multiply = (num a, num b) => a * b;

  // arrow syntax for single expression functions
  void printProduct(num a, num b) {
    print('$a x $b = ${multiply(a, b)}');
  }

  // anonymous function passed as parameter
  void printProduct2(Function multiply, num a, num b) {
    print('$a x $b = ${multiply(a, b)}');
  }

  // return an anonymous function from a function
  Function prepareMultiplier(num a) {
    return (num b) => a * b;
  }

  Function getProduct = prepareMultiplier(3);

  void printProduct3(num x) {
    print('The product of $x with the multiplier is: ${getProduct(x)}');
  }

  printProduct(3, 4);
  printProduct2(multiply, 5, 6);
  printProduct3(11);
}
