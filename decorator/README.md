# Decorator Tasarım Deseni

Decorator tasarım deseni, nesnelere dinamik olarak ek özellikler eklemek için kullanılan bir yapısal tasarım desenidir. Bu desen, nesneleri sarmalayarak, varolan nesnelerin işlevselliğini değiştirmeden yeni özellikler ekler.

## Problem

Bir nesneye dinamik olarak ek özellikler eklemek ve bu özellikleri değiştirmek isteniyor.

## Çözüm

Decorator tasarım deseni, ek özellikleri temsil eden sınıflar oluşturarak bu sorunu çözer. Bu sınıflar, temel nesneyi sarmalar ve yeni işlevselliği ekler.

## Avantajları

- Varolan nesnelerin değiştirilmesine gerek kalmadan yeni özellikler eklenmesini sağlar.
- Sınıflar arası sıkı bağlılığı azaltır.

## Kullanım

1. Temel nesneyi temsil eden bir sınıf oluşturun (`Component`).
2. Ek özellikleri temsil eden sınıflar oluşturun (`Decorator`).
3. `Decorator` sınıfları, temel nesneyi sarmalayarak ek özellikleri sağlar.

## Örnek Kullanım

Örnek bir kullanım senaryosu şu şekilde olabilir:

```dart
// Temel kahve sınıfı
class SimpleCoffee implements Coffee {
  @override
  double cost() {
    return 5.0; // Temel kahve fiyatı
  }
}

// Kahveye ekstra süt ekleyen dekoratör
class MilkDecorator implements Coffee {
  Coffee _coffee;

  MilkDecorator(this._coffee);

  @override
  double cost() {
    return _coffee.cost() + 2.0; // Sütün fiyatı
  }
}

// Kahveye ekstra vanilin ekleyen dekoratör
class VanillaDecorator implements Coffee {
  Coffee _coffee;

  VanillaDecorator(this._coffee);

  @override
  double cost() {
    return _coffee.cost() + 3.0; // Vanilin'in fiyatı
  }
}

void main() {
  // Basit kahve
  Coffee simpleCoffee = SimpleCoffee();
  print("Basit kahve fiyatı: ${simpleCoffee.cost()} TL");

  // Süt eklenmiş kahve
  Coffee milkCoffee = MilkDecorator(simpleCoffee);
  print("Sütlü kahve fiyatı: ${milkCoffee.cost()} TL");

  // Süt ve vanilin eklenmiş kahve
  Coffee vanillaCoffee = VanillaDecorator(milkCoffee);
  print("Sütlü vanilinli kahve fiyatı: ${vanillaCoffee.cost()} TL");
}
```
## Daha Fazla Bilgi

Daha fazla bilgi için [Decorator Tasarım Deseni - Wikipedia](https://en.wikipedia.org/wiki/Decorator_pattern) sayfasını ziyaret edebilirsiniz.
