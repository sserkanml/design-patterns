class Singleton {
  static Singleton? _singleton;

  static Singleton? getInstance() {
    if (_singleton == null) {
      _singleton = Singleton._();
    }
    return _singleton;
  }

  Singleton._();

  String merhaba() {
    return "Merhaba!!";
  }
}
