# Iterator Tasarım Deseni

![Pattern Type](https://img.shields.io/badge/Pattern%20Type-Behavioral-blue)

**Iterator Tasarım Deseni**, bir nesne koleksiyonunun elemanlarına sırayla erişim sağlar ve bu elemanlar üzerinde gezinmeyi kolaylaştırır. Bu desen, koleksiyonun iç yapısını gizleyerek elemanlara erişimi standartlaştırır.

## Problem

Bir uygulamada, bir nesne koleksiyonu bulunduğunda ve bu koleksiyonun elemanlarına sırayla erişim gerektiğinde ortaya çıkar. Ayrıca, koleksiyonun iç yapısının gizlenmesi istenebilir.

## Çözüm

Iterator deseni, koleksiyonun elemanlarına erişim sağlamak için bir arayüz (iterator) ve bu arayüzü uygulayan bir sınıf (concrete iterator) kullanır. Koleksiyon, iterator oluşturma işlemini gerçekleştirir ve bu iterator'ı döndürür.

## Avantajları

- Koleksiyonun iç yapısının gizlenmesini sağlar.
- Farklı koleksiyon türleri için aynı gezinme mantığını kullanabilir.

## Kullanım

1. Bir iterator arayüzü oluşturun ve bu arayüzde gezinme yöntemlerini tanımlayın (örneğin, `hasNext`, `next`).
2. Koleksiyon sınıfı, bir iterator oluşturma yöntemi sağlamalıdır (örneğin, `createIterator`).
3. Concrete Iterator sınıfı, iterator arayüzünü uygulamalı ve koleksiyonun belirli elemanlarına erişimi sağlamalıdır.

## Örnek Kullanım: Restoran Menüsü

```dart
// Iterator arayüzü
abstract class Iterator {
  bool hasNext();
  dynamic next();
}

// Koleksiyon arayüzü
abstract class Menu {
  Iterator createIterator();
}

// Restoran menüsü
class RestaurantMenu implements Menu {
  // ...
}

// Iterator implementasyonu
class _RestaurantMenuIterator implements Iterator {
  // ...
}

void main() {
  // ...
}
```

## Daha Fazla Bilgi

Daha fazla bilgi için [Iterator Tasarım Deseni - Wikipedia](https://en.wikipedia.org/wiki/Iterator_pattern#:~:text=The%20Iterator%20design%20pattern%20is,change%2C%20test%2C%20and%20reuse.) sayfasını ziyaret edebilirsiniz.
