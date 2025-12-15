// top level function
int calculate() {
  // a function declared inside another function
  int foo() {
    print('hey');

    return 1;
  }

  print(foo());

  return 6 * 7;
}
