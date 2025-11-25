// this is an interface
abstract class DataRepository {
  factory DataRepository() => FakeWebServer();

  double? fetchTemperature(String city);
}

// a fake implementation of the interface for testing purposes
class FakeWebServer implements DataRepository {
  @override
  double? fetchTemperature(String city) {
    return 42.0;
  }
}
