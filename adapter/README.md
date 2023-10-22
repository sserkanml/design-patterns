# Adapter Tasarım Deseni

![Pattern Type](https://img.shields.io/badge/Pattern%20Type-Structural-green)

**Adapter Tasarım Deseni**, farklı arayüzlere sahip olan iki sınıfın bir araya getirilmesini sağlar. Bu sayede, uyumsuz olan sınıflar birlikte çalışabilir.

## Problem

Bir uygulamada, mevcut bir sınıfın (Adaptee) arayüzü, istemcinin (Client) ihtiyaç duyduğu arayüzden farklı olabilir. Bu durumda, Adaptee sınıfının arayüzünü istemcinin kullanabileceği bir arayüze dönüştürmek gerekebilir.

## Çözüm

Adapter deseni, Adaptee sınıfının arayüzünü uyarlayarak istemcinin kullanabileceği bir arayüz sağlar. Bu sayede, istemci Adaptee sınıfını kullanabilir.

## Avantajları

- Farklı arayüzlere sahip sınıfların bir araya gelmesini sağlar.
- Mevcut kodları tekrar yazmadan mevcut sınıfların kullanılmasını sağlar.

## Kullanım

1. Target (Hedef) arayüzünü oluşturun ve istemcinin kullanacağı metodları tanımlayın.
2. Adaptee (Uyumlu Olan) sınıfını oluşturun. Bu sınıfın arayüzü, istemcinin ihtiyaç duyduğu arayüzden farklı olabilir.
3. Adapter sınıfını oluşturun ve bu sınıfı Target arayüzünü uygulayarak Adaptee sınıfını kullanabilir hale getirin.

## Örnek Kullanım: Düz Fiş ve Priz

```dart
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

void main() {
  Priz priz = UyumluPriz();
  priz.elektrikVer(); // Farklı standartta elektrik veriliyor.
}
```
## Daha Fazla Bilgi

Daha fazla bilgi için [Chain of Responsibility Tasarım Deseni - Wikipedia](https://en.wikipedia.org/wiki/Adapter_pattern) sayfasını ziyaret edebilirsiniz.



