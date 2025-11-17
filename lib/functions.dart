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

  // iterating over a list
  const numbers = [1, 2, 3];

  // using forEach
  // the recommended way is to use a for in loop
  numbers.forEach((int number) {
    printProduct3(number);
  });

  // mapping one collection to another
  const nums = [2, 4, 6, 8, 10, 12];
  final looped = <int>[];
  for (final x in nums) {
    looped.add(x * x);
  }

  final mapped = nums.map((x) => x * x);

  // filtering a collection
  final myList = [1, 2, 3, 4, 5, 6];
  final odds = myList.where((element) => element.isOdd);


  printProduct(3, 4);
  printProduct2(multiply, 5, 6);
  printProduct3(11);
  print('nums: $nums, looped: $looped, mapped: $mapped, odd numbers: $odds');
}
