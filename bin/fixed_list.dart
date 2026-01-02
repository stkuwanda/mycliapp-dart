void main() {
  List fixedList = List.filled(
    3,
    "World",
  ); // Creates a fixed-length list of length 3 pre-filled with "World" for all elements
  // fixedList.add("Hello"); // Error
  // fixedList[0] = "Hello";
  print(fixedList[0]); // Prints "Hello";
  print(fixedList[1]); // Prints "World";
  print(fixedList); // Prints [Hello, World, World]
}
