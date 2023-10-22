// Target: Priz arayüzü
abstract class Priz {
  void elektrikVer();
}

// Adaptee: Farklı standartta priz
class FarkliPriz {
  void farkliElektrikVer() {
    print("Farklı standartta elektrik veriliyor.");
  }
}

// Adapter: Uyumlu priz
class UyumluPriz implements Priz {
  FarkliPriz adaptee = FarkliPriz();

  @override
  void elektrikVer() {
    adaptee.farkliElektrikVer();
  }
}
