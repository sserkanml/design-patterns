// Televizyon alt sistemi
class Television {
  void turnOn() {
    print("Televizyon açıldı");
  }

  void turnOff() {
    print("Televizyon kapatıldı");
  }
}

// Ses sistemi alt sistemi
class SoundSystem {
  void increaseVolume() {
    print("Ses seviyesi artırıldı");
  }

  void decreaseVolume() {
    print("Ses seviyesi azaltıldı");
  }
}

// Lambalar alt sistemi
class Lights {
  void turnOn() {
    print("Lambalar açıldı");
  }

  void turnOff() {
    print("Lambalar kapatıldı");
  }
}

// Kontrol paneli (Facade)
class ControlPanel {
  Television tv = Television();
  SoundSystem soundSystem = SoundSystem();
  Lights lights = Lights();

  void watchMovie() {
    tv.turnOn();
    soundSystem.increaseVolume();
    lights.turnOff();
  }

  void endMovie() {
    tv.turnOff();
    soundSystem.decreaseVolume();
    lights.turnOn();
  }
}
