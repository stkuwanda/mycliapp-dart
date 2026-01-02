void runBigInt() {
  final big = BigInt.parse('1000000000000000000000000001');
  final divisor = BigInt.from(2);

  final result = big ~/ divisor; // Returns a BigInt
  print(result); // 500000000000000000000000000
}

void main() {
  runBigInt();
}
