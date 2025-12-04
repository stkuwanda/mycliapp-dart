void runConcurrency() {
  print('first'); // runs immediately
  Future.delayed(Duration(seconds: 1), () => print( 'last')); // schedules for later. Adds the task to the event queue after a delay
  Future(() => print('second')).then((value) => print('secondary')); // schedules for later. Adds the task to the event queue
  Future.microtask(() => print('third')); // schedules for sooner. Adds the task to the microtask queue
  print('fourth'); // runs immediately
}
