# Bridge Tasarım Deseni

![Pattern Type](https://img.shields.io/badge/Pattern%20Type-Structural-green)

**Bridge Tasarım Deseni**, bir nesnenin iki bağımsız hiyerarşik yapı arasında iletişim kurmasını sağlar. Bu, uygulamanın alt yapıyı değiştirmeden farklı implementasyonları kullanabilmesini sağlar.

## Problem

Bir nesnenin farklı şekillerde davranabilmesi gerekiyorsa ve bu farklılık ayrı bir hiyerarşik yapıda temsil ediliyorsa, bu durumda iki hiyerarşi arasındaki bağı koparmak önemlidir.

## Çözüm

Bridge deseni, soyutlama (abstraction) ve uygulama (implementation) kısımlarını ayrıştırarak bu problemi çözer.

## Avantajları

- Uygulama ve soyutlama kısımları bağımsızdır ve kendi başlarına genişletilebilir.
- Farklı implementasyonların kolayca değiştirilmesine olanak tanır.

## Kullanım

1. Implementor (Uygulayıcı) arayüzünü oluşturun ve bu arayüzdeki metodları tanımlayın.
2. Concrete Implementor (Somut Uygulayıcı) sınıflarını oluşturun ve Implementor arayüzünü uygulayarak metodları gerçekleştirin.
3. Abstraction (Soyutlama) sınıfını oluşturun ve Implementor arayüzünü içinde barındırarak soyutlama işlevselliğini gerçekleştirin.
4. Refined Abstraction (İyileştirilmiş Soyutlama) sınıflarını oluşturun ve soyutlama işlevselliğini genişletin.

## Örnek Kullanım: Mesaj Gönderme

```dart
// Implementor: Mesaj Gönderme Uygulaması
abstract class MesajGonderimUygulamasi {
  void gonder(String mesaj, String alici);
}

// Concrete Implementor: SMS Gönderimi
class SmsGonderimUygulamasi implements MesajGonderimUygulamasi {
  @override
  void gonder(String mesaj, String alici) {
    print("SMS gönderildi: '$mesaj' to $alici");
  }
}

// Concrete Implementor: E-posta Gönderimi
class EmailGonderimUygulamasi implements MesajGonderimUygulamasi {
  @override
  void gonder(String mesaj, String alici) {
    print("E-posta gönderildi: '$mesaj' to $alici");
  }
}

// Abstraction: Mesaj
abstract class Mesaj {
  late MesajGonderimUygulamasi gonderimUygulamasi;

  void gonder(String mesaj, String alici) {
    gonderimUygulamasi.gonder(mesaj, alici);
  }
}

// Refined Abstraction: Acil Mesaj
class AcilMesaj extends Mesaj {
  @override
  void gonder(String mesaj, String alici) {
    print("Acil mesaj gönderiliyor...");
    super.gonder(mesaj, alici);
  }
}
```

## Daha Fazla Bilgi

Daha fazla bilgi için [Bridge Tasarım Deseni - Wikipedia](https://en.wikipedia.org/wiki/Bridge_pattern) sayfasını ziyaret edebilirsiniz.

