# Fabrika Tasarım Deseni

Fabrika tasarım deseni, yaratımsal bir tasarım deseni olup, nesne oluşturma sürecini merkezi bir noktada yönetmeyi amaçlar. Bu desen, nesne oluşturma sürecini gizler ve istemciye hangi sınıfın oluşturulacağına karar verme yetkisini verir.

## Nasıl Çalışır?

- **Super Class (Süper Sınıf)**: Somut nesnelerin ortak arayüzünü belirtir. Bu arayüz, alt sınıfların uygulaması gereken metotları içerir.

- **Concrete Classes (Somut Sınıflar)**: Süper sınıfın alt sınıflarıdır ve farklı nesnelerin oluşturulmasını sağlar.

- **Factory Class (Fabrika Sınıfı)**: Hangi sınıfın oluşturulacağına karar veren sınıftır. Bu sınıf, belirli bir türde nesnelerin üretimini sağlar.

## Kullanım Örneği

```dart
abstract class Product {
  void create();
}

class ConcreteProductA implements Product {
  @override
  void create() {
    print("Ürün A oluşturuldu.");
  }
}

class ConcreteProductB implements Product {
  @override
  void create() {
    print("Ürün B oluşturuldu.");
  }
}

class Factory {
  Product createProduct(String type) {
    if (type == 'A') {
      return ConcreteProductA();
    } else if (type == 'B') {
      return ConcreteProductB();
    } else {
      return null;
    }
  }
}

void main() {
  Factory factory = Factory();

  Product productA = factory.createProduct('A');
  productA.create();  // Output: Ürün A oluşturuldu.

  Product productB = factory.createProduct('B');
  productB.create();  // Output: Ürün B oluşturuldu.
}
```
## Avantajları

- Nesne oluşturma işlemini merkezileştirir.
- Alt sınıfların oluşturulacak nesneleri belirlemesine olanak tanır.
- İstemciyi spesifik alt sınıflardan bağımsız hale getirir.

## Dezavantajları

- Yeni alt sınıflar eklendiğinde fabrikaların güncellenmesi gerekebilir.

## Uygulama

Bu tasarım desenini kullanmak için, süper sınıfı oluşturmanız, bu sınıfı uygulayan somut sınıflar oluşturmanız ve bir fabrika sınıfı oluşturmanız gerekecektir. Fabrika sınıfı, hangi türde nesnelerin oluşturulacağına karar verir ve ilgili nesneyi döndürür.

## Daha Fazla Bilgi

Daha fazla bilgi için [Factory Tasarım Deseni - Wikipedia](https://en.wikipedia.org/wiki/Factory_method_pattern) sayfasını ziyaret edebilirsiniz.
