# Abstract Factory Tasarım Deseni

Abstract Factory tasarım deseni, ilgili veya bağımlı nesne ailelerini oluşturmak için kullanılan bir yapısal tasarım desenidir. Bu desen, bir ailenin birden fazla nesnesini yaratmak istediğimizde kullanılır.

## Problem

Bir uygulamanın farklı platformlarda (örneğin, web ve mobil) çalışabilmesi için uyumlu nesnelerin oluşturulması gerekiyor.

## Çözüm

Abstract Factory deseni, bir ailenin birden fazla ilgili nesnesini yaratmak için soyut bir arayüz sağlar. Bu arayüzü uygulayan alt sınıflar, belirli bir aileyi oluşturur.

## Avantajları

- İlgili nesnelerin bir arada çalışmasını sağlar.
- Farklı platformlara uyumlu nesneler oluşturulmasını sağlar.

## Kullanım

1. İlgili nesneleri temsil eden bir arayüz belirleyin (`AbstractFactory`).
2. Ailenin farklı nesnelerini temsil eden sınıflar oluşturun (`ProductA`, `ProductB`).
3. Farklı platformlar için ayrı ayrı fabrika sınıfları oluşturun (`ConcreteFactory1`, `ConcreteFactory2`).
4. Her bir fabrika sınıfı, ilgili aileyi yaratmak için soyut arayüzü uygular.

## Örnek Kullanım

Örnek bir kullanım senaryosu şu şekilde olabilir:

```dart
abstract class AbstractFactory {
  ProductA createProductA();
  ProductB createProductB();
}

abstract class ProductA {
  void operationA();
}

abstract class ProductB {
  void operationB();
}

class ConcreteFactory1 implements AbstractFactory {
  @override
  ProductA createProductA() {
    return ConcreteProductA1();
  }

  @override
  ProductB createProductB() {
    return ConcreteProductB1();
  }
}

class ConcreteFactory2 implements AbstractFactory {
  @override
  ProductA createProductA() {
    return ConcreteProductA2();
  }

  @override
  ProductB createProductB() {
    return ConcreteProductB2();
  }
}

class ConcreteProductA1 implements ProductA {
  @override
  void operationA() {
    print("ConcreteProductA1 operationA");
  }
}

class ConcreteProductB1 implements ProductB {
  @override
  void operationB() {
    print("ConcreteProductB1 operationB");
  }
}

class ConcreteProductA2 implements ProductA {
  @override
  void operationA() {
    print("ConcreteProductA2 operationA");
  }
}

class ConcreteProductB2 implements ProductB {
  @override
  void operationB() {
    print("ConcreteProductB2 operationB");
  }
}

void main() {
  AbstractFactory factory1 = ConcreteFactory1();
  ProductA productA1 = factory1.createProductA();
  ProductB productB1 = factory1.createProductB();

  productA1.operationA();
  productB1.operationB();

  AbstractFactory factory2 = ConcreteFactory2();
  ProductA productA2 = factory2.createProductA();
  ProductB productB2 = factory2.createProductB();

  productA2.operationA();
  productB2.operationB();
}
```
## Daha Fazla Bilgi

Daha fazla bilgi için [Abstract Factory  Tasarım Deseni - Wikipedia](https://en.wikipedia.org/wiki/Abstract_factory_pattern) sayfasını ziyaret edebilirsiniz.
