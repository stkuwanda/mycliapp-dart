class Static {
  // Satic members belong to the class itself rather than to any specific instance
  static const String appName = 'MyCLIApp'; //
  static const String version = '1.0.0';
  static const String author = 'STK';

  static void printAppInfo() {
    print('$appName v$version by $author');
  }
}
