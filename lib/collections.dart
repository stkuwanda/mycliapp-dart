// Lists have a zero based index and are ordered positionally by default
import 'dart:convert';
import 'dart:math';

import 'package:mycliapp/desserts.dart';
import 'package:mycliapp/role.dart';
import 'package:mycliapp/user.dart';

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
      for (var desert in deserts)
        desert
            .toUpperCase(), // 'collection for' is used here to transform and add elements to the list
    ];

    print(bigDeserts);
  }

  combiningLists();
  combiningListsWithSpreadOperator();
  collectionIf();
  collectionFor();
}

void runningSets() {
  // creating a set
  final Set<int> someSet =
      {}; // this is an eempty set which allows only integers
  // final someSet = <int>{}; //same as above but shorter code
  print('Empty set: $someSet');

  // use contains property to check availability of an element
  final treats = {
    'cake',
    'pie',
    'donut',
  }; // type inference determines the set as Set<String>
  print('treats contains cake: ${treats.contains('cake')}');
  print('treats contains cookies: ${treats.contains('cookies')}');

  // adding single elements
  final drinks = <String>{};
  drinks.add('cola');
  drinks.add('cola');
  drinks.add('cola');
  drinks.add('water');
  drinks.add('juice');
  print('a set of drinks: $drinks'); // note all duplicates are ignored

  // removing elements using the remove property
  drinks.remove('juice');
  print('a set of drinks, removed juice: $drinks');

  // adding multiple elements with addAll property
  drinks.addAll(['juice', 'milk', 'coffee']);
  print('a set of drinks: $drinks');

  // shallow copy a set using toSet method
  final liquids = drinks.toSet();
  print(drinks);
  liquids.remove('coffee');
  print('original set: $drinks');
  print('shallow copy: $liquids');

  // set operations

  // intersection property
  final setA = {8, 2, 3, 1, 4};
  final setB = {1, 6, 5, 4};
  print('setA: $setA');
  print('setB: $setB');
  final setIntersection = setA.intersection(setB);
  print('intersection of setA and setB: $setIntersection');

  // union property
  final union = setA.union(setB);
  print('union of setA and setB: $union');

  // difference property
  final differenceB = setB.difference(
    setA,
  ); // returns a set of elements found in B exclusively
  print('setB-setA: $differenceB');
}

void runningMaps() {
  final Map<String, int> emptyMap = {};
  // alternatively: final emptyMap = Map<String, int>{};
  print('empty map: $emptyMap');

  // map literal
  final inventory = {'cakes': 20, 'pies': 24, 'donuts': 34, 'cookies': 151};
  final digitToWord = {1: 'one', 2: 'two', 3: 'three', 4: 'four'};
  print('inventory $inventory');
  print('map with int key: $digitToWord');

  // accessing values
  final numberOfCakes = inventory['cakes'];
  print('access number of cakes using key: $numberOfCakes');

  // add elements to a map
  inventory['brownies'] = 10;
  print('updated inventory: $inventory');

  // use the remove method to remove elements by key
  inventory.remove('brownies');
  print('no brownies: $inventory');

  // map useful properties
  print('inventory.isEmpty: ${inventory.isEmpty}');
  print('inventory.isNotEmpty: ${inventory.isNotEmpty}');
  print('inventory.length: ${inventory.length}');
  print('inventory.keys: ${inventory.keys}');
  print('inventory.values: ${inventory.values}');

  // check for key existence
  print("inventory.containsKey('pies'): ${inventory.containsKey('pies')}");

  // check for value existence
  print("inventory.containsValue(151): ${inventory.containsValue(151)}");

  // use the entries property to iterate over elements of a map
  for (final entry in inventory.entries) {
    print('${entry.key} => ${entry.value}');
  }

  // serialization through maps
  final user = User(
    id: 'U111',
    role: Role.admin,
    name: 'Simba',
    age: 34,
    emails: ['simba@admin.com', 'stk.gmail.com'],
  );

  print('user object: $user');
  final userMap = user.toJson();
  print('user map: $userMap');
  final userString = jsonEncode(userMap);
  print('user string: $userString');
  print('userstring from user.toJsonString(): ${user.serializeToJson()}');

  // deserialization through maps
  final jsonMap = jsonDecode(user.serializeToJson());

  if (jsonMap is Map<String, dynamic>) {
    print("You've got a map!");
  } else {
    print('Your JSON string is wrongly formatted!');
  }
  
  final jsonString = user.serializeToJson();
  print('user object from jsonMap: ${User.fromMap(jsonMap)}');
  print(
    'user object from JSON string: ${User.desirializefromJson(jsonString)}',
  );
}
