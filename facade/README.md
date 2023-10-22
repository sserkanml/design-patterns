# Facade Tasarım Deseni

Facade tasarım deseni, bir alt sistemdeki karmaşık süreçleri basitleştirmek amacıyla kullanılan bir yapısal tasarım desenidir. Bu desen, bir arayüz sağlayarak alt sistemlerin karmaşıklığını gizler ve istemciye daha basit bir kullanım sunar.

## Problem

Bir alt sistemdeki karmaşık süreçleri yönetmek ve istemcinin bu süreçlerle ilgilenmesini engellemek isteniyor.

## Çözüm

Facade tasarım deseni, alt sistemlerin karmaşıklığını gizleyen ve bir arayüz sağlayan bir sınıf oluşturarak bu sorunu çözer.

## Avantajları

- Karmaşık alt sistemleri yönetimi basitleştirir.
- İstemcinin alt sistem detaylarından izole olmasını sağlar.
- Alt sistemler arasındaki iletişimi yönetir.

## Kullanım

1. Alt sistemdeki farklı işlemleri gerçekleştiren sınıfları oluşturun (`Subsystem1`, `Subsystem2`, vb.).
2. Bu sınıfların birleşik bir arayüzü sağlandığından emin olun (`Facade`).
3. İstemci, sadece `Facade` arayüzü üzerinden işlem yapar.

## Örnek Kullanım

```dart
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
```
## Uygulama Alanları

Facade tasarım deseni, karmaşık alt sistemlerin daha kullanıcı dostu bir arayüzle yönetilmesi gerektiği durumlarda kullanılır. Aşağıda Facade deseninin bazı yaygın uygulama alanları bulunmaktadır:

- **Elektronik Cihaz Kontrolü:** Bir evdeki televizyon, ses sistemi, lambalar gibi elektronik cihazların kontrolünü sağlamak için kullanılabilir.

- **Sipariş İşlemleri:** Bir e-ticaret platformunda, sipariş oluşturma, ödeme yapma, kargo takibi gibi süreçlerin bir arayüz üzerinden yönetilmesi için kullanılabilir.

- **Yazılım Kütüphaneleri:** Yazılım kütüphanelerinde, alt seviye işlemlerin kullanıcıya daha basit ve anlaşılabilir bir arayüzle sunulması için kullanılabilir.

## Daha Fazla Bilgi

Daha fazla bilgi için [Facade Tasarım Deseni - Wikipedia](https://en.wikipedia.org/wiki/Facade_pattern) sayfasını ziyaret edebilirsiniz.


