// Lists have a zero based index and are ordered positionally by default
import 'dart:math';

import 'package:mycliapp/desserts.dart';

void runLists() {
  var grievances =
      []; // No type inference applied here - list type is <dynamic>[]
  var desserts = [
    'cookies',
    'cupcakes',
    'donuts',
    'pie',
  ]; // type inference is applied here - list type is <String>[]
  var flowers = <String>[]; // this ways applies inference from the onset
  List<String> snacks = []; // aalso applies type inference from the onset
  print(desserts);
  print(grievances);
  print(flowers);
  print(snacks);

  // access list elements using subscript notation
  print('Element 1: ${desserts[0]}');

  // use indexOf to find the index of a known element in the list
  final index = desserts.indexOf('pie');
  print('Element ${index + 1}: ${desserts[index]}');

  // reassign elements at each index using subscript notation
  desserts[0] = 'buns'; // the first element is now 'buns'
  print('Element 1: ${desserts[0]}');

  // lists are expandable. use add method to add new elements to the end of the list
  desserts.add('cookies');
  print('Expanded list: $desserts');

  // it is possible to insert values at certain indices in a list
  desserts.insert(1, 'ice cream');
  print('Inserted list: $desserts');

  // remove specific elements from the list based on value
  desserts.remove('pie');
  print('Depleted list: $desserts');

  // remove an element based on index
  desserts.removeAt(2);
  print('Depleted list: $desserts');

  // Sorting intgers
  final integers = [32, 73, 2, 343, 7, 10, 1];
  print(integers);
  integers.sort(); // in-place sort. default is ascending order
  print('After sorting int list: $integers');

  final animals = ['zebra', 'dog', 'alligator', 'cat'];
  animals.sort(); // sorts in alphabetical order by default
  print('After sorting String list: $animals');

  // special desserts
  const specialDesserts = Desserts();
  const specialDesserts1 = Desserts(['sugar buns', 'lollipop']);
  const specialDessert3 = Desserts();
  bool isCanonical = specialDessert3 == specialDesserts;
  print('desserts default object: $specialDesserts');
  print('desserts custom object: $specialDesserts1');
  print('is canonical: $isCanonical');

  // unmodifiable runtime Lists
  final modifiableList = [
    DateTime.now(),
    DateTime.now(),
  ]; // a const list is not allowed here since DateTime.now() is not a compile-time constant
  final unmodifiableList = List.unmodifiable(
    modifiableList,
  ); // creates an unmodifiable list at runtime
  print('unmodifiable list: $unmodifiableList');

  // Combining lists
  void combiningLists() {
    const pastries = ['cookies', 'croissants'];
    const candy = ['Junior Mints', 'Twizzlers', 'M&Ms'];

    final desserts = ['donuts'];
    desserts.addAll(pastries);
    desserts.addAll(candy);
    print('combined desserts: $desserts');
  }

  // Combining lists with the spread operator
  void combiningListsWithSpreadOperator() {
    const pastries = ['cookies', 'croissants'];
    const candy = ['Junior Mints', 'Twizzlers', 'M&Ms'];

    final desserts = ['donuts', ...pastries, ...candy];

    print('combined desserts with spread operator: $desserts');
  }

  // collection if statement
  void collectionIf() {
    final random = Random();
    bool peanutAllergy = random.nextBool();
    List<String> sensitiveCandy = [
      'Junior Mints',
      'Twizzlers',
      if (!peanutAllergy) 'Reeses',
    ];
    print(sensitiveCandy);
  }

  // collection for statement
  void collectionFor() {
    const deserts = ['gobi', 'sahara', 'arctic'];

    var bigDeserts = [
      'ARABIAN',
      for (var desert in deserts) desert.toUpperCase(), // 'collection for' is used here to transform and add elements to the list
    ];

    print(bigDeserts);
  }

  combiningLists();
  combiningListsWithSpreadOperator();
  collectionIf();
  collectionFor();
}
