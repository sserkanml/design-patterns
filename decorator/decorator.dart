abstract class Cake {
  String getDescription();
  double cost();
}

abstract class CakeDecorator extends Cake {
  @override
  String getDescription();
}

class SimpleCake extends Cake {
  @override
  String getDescription() {
    return "Basit Pasta";
  }

  @override
  double cost() {
    return 20.0; // Basit pasta fiyatı
  }
}

class ChocolateCoating extends CakeDecorator {
  late Cake cake;

  ChocolateCoating(Cake cake) {
    this.cake = cake;
  }

  @override
  String getDescription() {
    return cake.getDescription() + ", Çikolata Kaplama";
  }

  @override
  double cost() {
    return cake.cost() + 10.0; // Çikolata kaplama fiyatı
  }
}
