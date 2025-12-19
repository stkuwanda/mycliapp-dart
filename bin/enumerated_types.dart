// Define an enum
enum Status { pending, approved, rejected }

void runStoreAndRetrieveEnumWithIntegers() {
  // Example: store enum as integer
  Status currentStatus = Status.approved;

  // Convert enum to integer using index which is zero based
  int storedValue = currentStatus.index;
  print('Stored integer: $storedValue'); // Output: 1

  // Later: retrieve enum from integer
  Status restoredStatus = Status.values[storedValue];

  print('Restored enum: $restoredStatus'); // Output: Status.approved
}

void runStoreAndRetrieveEnumWithStrings() {
  // Example: store enum as string (using name)
  Status currentStatus = Status.approved;

  // Convert enum to string using name
  String storedValue = currentStatus.name;
  print('Stored string: $storedValue'); // Output: approved

  // Later: retrieve enum from string
  Status restoredStatus = Status.values.firstWhere(
    (e) => e.name == storedValue,
  );

  print('Restored enum: $restoredStatus'); // Output: Status.approved
}

enum TrafficLight {
  orange('get ready to stop!'), // this instance sets action message
  red('stop!'), // this instance sets action message
  green('go!'); // this instance sets action message

  final String action;

  const TrafficLight(this.action);
}

void runTrafficLight() {
  final color = TrafficLight.green;
  print(color.action);
}

void main() {
  runStoreAndRetrieveEnumWithIntegers();
  runStoreAndRetrieveEnumWithStrings();
  runTrafficLight();
}
