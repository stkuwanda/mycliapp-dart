Future<void> runFutureWithAsyncAwait() async {
  print('Before the future');
  final value = await Future<int>.delayed(Duration(seconds: 1), () => 42);
  print('Value: $value');
  print('After the future');
}

Future<void> runFutureWithAsyncAwaitTryCatchFinally() async {
  try {
    print('Before the future');
    final value = await Future<int>.delayed(Duration(seconds: 1), () => 42);
    print('Value: $value');
    print('After the future');
  } catch (e) {
    print(e);
  } finally {
    print('Future is complete!');
  }
}

void runFuturesWithCallbacks() {
  print('Before the future');
  final myFuture = Future<int>.delayed(Duration(seconds: 1), () => 42);

  myFuture
      .then((value) => print('Value: $value'))
      .catchError((Object error) => print('Error: $error'))
      .whenComplete(() => print('Future is complete'));
  print('After the future');
}

void runBasicFuturesAndSyncCode() {
  print('first'); // runs immediately
  Future.delayed(
    Duration(seconds: 1),
    () => print('last'),
  ); // schedules for later. Adds the task to the event queue after a delay
  Future(() => print('second')).then(
    (value) => print('secondary'),
  ); // schedules for later. Adds the task to the event queue
  Future.microtask(
    () => print('third'),
  ); // schedules for sooner. Adds the task to the microtask queue
  print('fourth'); // runs immediately
}

void runConcurrency() {
  // runBasicFuturesAndSyncCode(); // runs immediately
  // runFuturesWithCallbacks();
  // runFutureWithAsyncAwait();
  runFutureWithAsyncAwaitTryCatchFinally();
}
