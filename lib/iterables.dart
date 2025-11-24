// a synchronous generator function which returns an iterable
Iterable<int> hundredSquares() sync* {
  for (int i = 1; i <= 100; i++) {
    yield i * i;
  }
}

void runningIterables() {
  final squares = hundredSquares(); // this is an iterable
  print('squares: $squares');

  for (final square in squares) {
    print(square);
  }

  final squares2 = HundredSquares();
  print('squares2: $squares2');

  for (final square in squares2) {
    print(square);
  }
}

// an iterator class that implements Iterator interface
class SquaredIterator implements Iterator<int> {
  int _index = 0;

  @override
  bool moveNext() {
    _index++;
    return _index <= 100;
  }

  @override
  int get current => _index * _index;
}

// an iterable class that extends the Iterable abstract class
class HundredSquares extends Iterable<int> {
  @override
  Iterator<int> get iterator => SquaredIterator();
}
