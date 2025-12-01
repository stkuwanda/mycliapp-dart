// simple enum
// enum TrafficLight { green, yellow, red }

// enhanced enum
import 'package:mycliapp/mixins.dart';

enum TrafficLight {
  green('go!'),
  red('stop!'),
  yellow('slow!');

  const TrafficLight(this.message); // enums must have a const constructor
  final String message;
}

enum Day {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday;

  // getter to get the next day
  Day get next => this + 1;

  // method to add days using operator overloading
  Day operator +(int days) {
    final numberOfItems = Day.values.length;
    final index = (this.index + days) % numberOfItems;

    return Day.values[index];
  }
}

abstract class Serializable {
  String serialize();
}

// adding an interface to an enum
enum Weather implements Serializable {
  sunny,
  cloudy,
  rainy;

  // implementing the interface with a concrete method
  @override
  String serialize() => name;

  // adding a static method to an enum
  static Weather deserialize(String value) {
    return values.firstWhere(
      (element) => element.name == value,
      orElse: () => Weather.sunny,
    );
  }
}

// implementing mixin for enums
enum Fruit with Describer { cherry, peach, banana }

enum Vegetable with Describer { carrot, broccoli, spinach }

// generic enum with associated values
enum Default<T extends Object> {
  font<String>('roboto'),
  size<double>(17.0),
  weight<int>(400);

  const Default(this.value);
  final T value;
}

void runEnums() {
  final color = TrafficLight.green;
  // switch (color) {
  //   case TrafficLight.green:
  //     print('Go!');
  //     break;
  //   case TrafficLight.yellow:
  //     print('Slow down!');
  //     break;
  //   case TrafficLight.red:
  //     print('Stop!');
  //     break;
  // }

  // using property and operator overloading
  print(color.message);
  var day = Day.monday;
  day = day + 2;
  print(day.name); // wednesday
  day += 4;
  print(day.name); // sunday
  day++;
  print(day.name); // monday

  // using getter
  final restDay = Day.saturday;
  print(restDay.next.name);

  // using interface methods
  final weather = Weather.cloudy;
  String serialized = weather.serialize();
  print(serialized);
  Weather deserialized = Weather.deserialize(serialized);
  print(deserialized);

  // using mixins with enums
  final fruit = Fruit.banana;
  final vegi = Vegetable.broccoli;
  fruit.describe();
  vegi.describe();

  // using generic enums
  String defaultFont = Default.font.value;
  double defaultSize = Default.size.value;
  int defaultWeight = Default.weight.value;
  print('Font: $defaultFont, Size: $defaultSize, Weight: $defaultWeight');
}
