import 'package:decimal/decimal.dart';

void main() {
  // Exact decimal math
  final d1 = Decimal.parse('0.1');
  final d2 = Decimal.parse('0.2');
  
  final sum = d1 + d2;
  
  print(sum); // Output: 0.3
  print(sum == Decimal.parse('0.3')); // Output: true
}