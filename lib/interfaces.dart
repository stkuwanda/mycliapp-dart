import 'dart:async';

// this is an interface
abstract class DataRepository {
  factory DataRepository() => FakeWebServer();

  //double? fetchTemperature(String city);
  Future<double> fetchTemperature(String city);
}

// a fake implementation of the interface for testing purposes
class FakeWebServer implements DataRepository {
  // @override
  // Future<double> fetchTemperature(String city) {
  //   // this future will complete with an error
  //   // return Future.error(ArgumentError("$city doesn't exist."));

  //   // this future will complete with a value
  //   //return Future(() => 42.0); // alternative: return Future.value(42.0);

  //   // this future will complete with an error after a 2s delay
  //   // return Future.delayed(Duration(seconds: 2), () => throw ArgumentError("$city doesn't exist"));

  //   // this future will complete with a value after a 2s delay
  //   // return Future.delayed(Duration(seconds: 2), () => 42.0);
  // }

  // @override
  // Future<double> fetchTemperature(String city) async {
  //   // The function directly returns the value 42.0 . But because it contains the async keyword, Dart automatically makes the return value a future.
  //   return 42.0;
  // }

  @override
  Future<double> fetchTemperature(String city) {
    // Completer is a part of the dart:async library
    final completer = Completer<double>();

    if (city == 'Manila') {
      completer.complete(42.0);
    } else {
      completer.completeError(ArgumentError("$city doesn't exist"));
    }

    return completer.future;
    // return Future.delayed(Duration(seconds: 2), () => completer.future);
  }
}

Future<void> main() async {
  final web = FakeWebServer();
  try {
    final city = 'Manilas';
    final degrees = await web.fetchTemperature(city);
    print("It's $degrees degrees in $city.");
  } on ArgumentError catch (error) {
    print(error);
  }
}
