abstract class CoffeeMaker {
  void prepareRecipe() {
    boilWater();
    brewCoffeeGrinds();
    pourInCup();
    addCondiments();
  }

  void boilWater() {
    print("Su kaynatılıyor");
  }

  void pourInCup() {
    print("Fincana dökülüyor");
  }

  void brewCoffeeGrinds();
  void addCondiments();
}

class BlackCoffeeMaker extends CoffeeMaker {
  @override
  void brewCoffeeGrinds() {
    print("Kahve demleniyor");
  }

  @override
  void addCondiments() {
    // Siyah kahveye özgü hiçbir şey eklemiyoruz.
  }
}

class LatteCoffeeMaker extends CoffeeMaker {
  @override
  void brewCoffeeGrinds() {
    print("Espresso demleniyor");
  }

  @override
  void addCondiments() {
    print("Süt ekleniyor");
  }
}
