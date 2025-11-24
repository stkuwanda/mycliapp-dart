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

  var numbers = NumberIterable(5);

  for (var n in numbers) {
    print(n);
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

// A custom iterable class that uses a generator function
class NumberIterable extends Iterable<int> {
  final int max;

  NumberIterable(this.max);

  @override
  Iterator<int> get iterator => _NumberIterator(max);
}

// The iterator itself, powered by a sync* generator
class _NumberIterator implements Iterator<int> {
  final int max;
  late Iterator<int> _inner;

  _NumberIterator(this.max) {
    // Use a generator function to produce numbers
    _inner = _generateNumbers(max).iterator;
  }

  // Generator function
  Iterable<int> _generateNumbers(int max) sync* {
    for (var i = 1; i <= max; i++) {
      yield i;
    }
  }

  @override
  int get current => _inner.current;

  @override
  bool moveNext() => _inner.moveNext();
}

