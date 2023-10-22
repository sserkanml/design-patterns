# Builder Tasarım Deseni

![Pattern Type](https://img.shields.io/badge/Pattern%20Type-Creational-yellow)

**Builder Tasarım Deseni**, nesne oluşturma işlemlerini ayrıştırarak, farklı sunumları oluşturmanızı sağlar. Bu desen, karmaşık nesnelerin adım adım oluşturulmasını ve nesnenin farklı varyantlarının oluşturulmasını kolaylaştırır.

## Problem

Bir nesnenin oluşturulması karmaşık bir süreç ise ve bu süreç adım adım gerçekleşiyorsa, her bir adımı kontrol etmek ve yönetmek zor olabilir.

## Çözüm

Builder deseni, bir nesnenin farklı parçalarını oluşturan adımları ayırarak, nesnenin oluşturulma sürecini yönetir.

## Avantajları

- Nesne oluşturma sürecini adım adım kontrol eder.
- Farklı varyantlar ve sunumlar oluşturmayı kolaylaştırır.
- Karmaşık nesnelerin oluşturulmasını basitleştirir.

## Kullanım

1. Director (Yönetici) sınıfını oluşturun. Bu sınıf, nesnenin nasıl oluşturulacağını belirler.
2. Builder (İnşaatçı) arayüzünü oluşturun ve bu arayüzde nesnenin parçalarını oluşturacak metodları tanımlayın.
3. Concrete Builder (Somut İnşaatçı) sınıflarını oluşturun ve Builder arayüzünü uygulayarak nesnenin parçalarını oluşturun.
4. Product (Ürün) sınıfını oluşturun ve bu sınıfı oluşturulacak nesnenin temsil etmesini sağlayın.

## Örnek Kullanım: Ev İnşaatı

```dart
class Ev {
  late String tip;
  late String duvarMalzemesi;
  late String catiMalzemesi;
  late int odaSayisi;

  void bilgileriGoster() {
    print("Tip: $tip, Duvar: $duvarMalzemesi, Çatı: $catiMalzemesi, Odalar: $odaSayisi");
  }
}

// Builder: Ev İnşaatçısı
abstract class EvBuilder {
  Ev ev = Ev();

  void setTip();
  void setDuvarMalzemesi();
  void setCatiMalzemesi();
  void setOdaSayisi();

  Ev getEv() {
    return ev;
  }
}

// Concrete Builder: Apartman Dairesi İnşaatçısı
class ApartmanDairesiBuilder extends EvBuilder {
  @override
  void setTip() {
    ev.tip = "Apartman Dairesi";
  }

  @override
  void setDuvarMalzemesi() {
    ev.duvarMalzemesi = "Beton";
  }

  @override
  void setCatiMalzemesi() {
    ev.catiMalzemesi = "Çelik";
  }

  @override
  void setOdaSayisi() {
    ev.odaSayisi = 3;
  }
}

// Director: Ev İnşaat Yöneticisi
class EvInsaatYoneticisi {
  EvBuilder builder;

  EvInsaatYoneticisi(this.builder);

  void setBuilder(EvBuilder yeniBuilder) {
    builder = yeniBuilder;
  }

  Ev evOlustur() {
    builder.setTip();
    builder.setDuvarMalzemesi();
    builder.setCatiMalzemesi();
    builder.setOdaSayisi();
    return builder.getEv();
  }
}
```

## Daha Fazla Bilgi

Daha fazla bilgi için [Builder Tasarım Deseni - Wikipedia](https://en.wikipedia.org/wiki/Builder_pattern) sayfasını ziyaret edebilirsiniz.
