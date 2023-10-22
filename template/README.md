# Template Method Tasarım Deseni

Template Method, bir algoritmanın temel yapısını belirler ve bu algoritmanın belirli adımlarını alt sınıflara bırakarak farklı davranışları sağlar.

## Problem

Bir algoritmanın temel yapısını belirlemek istiyoruz, ancak bu algoritmanın belirli adımları farklı şekillerde gerçekleştirilebilir. Bu durumda, her bir farklı uygulamayı tekrar tekrar yazmak gerekir.

## Çözüm

Template Method deseni, bu sorunu çözmek için kullanılır. Temel algoritmanın yapısını belirler ve belirli adımları alt sınıflara bırakır. Bu sayede farklı alt sınıflar, aynı temel yapının içinde farklı işlemler yapabilir.

## Avantajları

- Algoritmanın temel yapısını belirlemek kolaydır.
- Farklı davranışları aynı temel yapı içinde sağlar, bu da kodun tekrar kullanılabilirliğini artırır.

## Dezavantajları

- Yapıyı değiştirmek istediğimizde, tüm alt sınıfları güncellememiz gerekebilir.

## Kullanım

1. Abstract sınıf oluşturun ve temel algoritmayı belirleyen metotları tanımlayın.
2. Bu metotları alt sınıflara bırakarak farklı uygulamaları sağlayın.
3. Alt sınıfları oluşturun ve belirli adımları implement edin.

## Örnek Kullanım

```dart
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
```

## Avantajları

- Algoritmanın temel yapısını belirlemek kolaydır.
- Farklı davranışları aynı temel yapı içinde sağlar, bu da kodun tekrar kullanılabilirliğini artırır.

## Dezavantajları

- Yapıyı değiştirmek istediğimizde, tüm alt sınıfları güncellememiz gerekebilir.

## Daha Fazla Bilgi

Daha fazla bilgi için [Template Tasarım Deseni - Wikipedia](https://en.wikipedia.org/wiki/Template_method_pattern) sayfasını ziyaret edebilirsiniz.

