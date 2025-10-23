// singleton pattern with private constructor and factory constructor and static instance
// and unnamed private constructor which ensures only one instance is created
class Singleton {
  String name = 'SingletonInstance';
  String type = 'OnlyOne';
  static final Singleton _instance = Singleton._();

  // Private construcctor
  Singleton._() : name = 'SingletonNameInstance';

  // Factory constructor to return the same instance every time
  factory Singleton() {
    return _instance;
  }
}
