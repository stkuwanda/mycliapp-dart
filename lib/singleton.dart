// singleton pattern with private constructor and factory constructor and static instance
// and unnamed private constructor which ensures only one instance is created
class Singleton {
  // Private named generative constructor with initializer list
  Singleton._() : name = 'SingletonNameInstance';

  // Factory unnamed constructor to return the same instance every time
  factory Singleton() => _instance;

  // static/class variables first
  static final Singleton _instance =
      Singleton._(); // static private variable to hold an instance

  // instance variables 
  String name = 'SingletonInstance';
  String type = 'OnlyOne';
}

void main() {
  var ent = Singleton();
  print(ent.name);
}
