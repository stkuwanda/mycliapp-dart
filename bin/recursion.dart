List<int> makeList(int num) {
  // base case
  if (num == 1) {
    return [1];
  }

  // recursive call
  final rest = makeList(num - 1);

  // now case
  return [num, ...rest];
}

int sumList(List<int> lst, l) {
  // base case
  if (l == 0 || lst.isEmpty) {
    return 0;
  }

  // recursive call
  var total = sumList(lst.sublist(1), l - 1);

  // now case
  return lst[0] + total;
}

// factorial of a number using recursion
int factorial(int num) {
  // the base case
  if (num == 0) {
    return 1;
  }

  // the recursive call
  return num * factorial(num - 1);
}

// factorial of a number using iteration
int factorialIterative(int num) {
  var result = 1;

  for (var i = num; i > 0; i--) {
    result *= i;
  }

  return result;
}

void main() {
  // print(makeList(4));
  // print(sumList([1, 2], 2));
  // print(factorial(3));

  print(factorialIterative(5));
}
