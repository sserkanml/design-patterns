# Singleton Tasarım Deseni

Singleton tasarım deseni, bir sınıfın sadece bir örneğinin olmasını ve bu örneğe global erişim sağlamasını sağlayan bir yaratımsal tasarım desenidir.

## İçindekiler

- [Singleton Tasarım Deseni](#singleton-tasarım-deseni)
  - [İçindekiler](#i̇çindekiler)
  - [Giriş](#giriş)
  - [Singleton Tasarım Desenini Ne Zaman Kullanmalı](#singleton-tasarım-desenini-ne-zaman-kullanmalı)
  - [Uygulama](#uygulama)
  - [Daha Fazla Bilgi](#daha-fazla-bilgi)

## Giriş

Bu depo, Singleton tasarım deseninin [Dart](https://dart.dev/) programlama dilinde bir örnek uygulamasını sağlamaktadır. Singleton tasarım deseni, bir sınıfın uygulama boyunca yalnızca bir örneğe sahip olmasını istediğinizde kullanışlıdır.

## Singleton Tasarım Desenini Ne Zaman Kullanmalı

Singleton desenini kullanmanız gerektiğinde:

- Bir veritabanı bağlantısı veya dosya gibi bir kaynağa erişimi kontrol etmek istiyorsanız.
- Bir sınıfın uygulama boyunca yalnızca bir örneğe sahip olmasını istiyorsanız.
- Bir sınıfın sadece bir nesnesini oluşturmayı kısıtlamak istiyorsanız.

## Uygulama

Singleton desenini uygulamak için genellikle şu adımları izlersiniz:

1. **Özel Statik Üye Oluşturma**: Sınıfın benzersiz örneğini tutmak için özel bir statik üye oluşturun.

2. **Özel Kurucu Metot**: Sınıfın harici olarak örnek oluşturulmasını engellemek için bir özel kurucu metot tanımlayın.

3. **Erişim İçin Statik Metot**: Benzersiz örneğe erişim sağlayan bir statik metot oluşturun. Eğer bir örnek zaten varsa, onu döndürün; aksi halde yeni bir örnek oluşturun.

```dart
class Singleton {

  Singleton._internal();

  static late Singleton? _singleton;

  static Singleton? getInstance() {
    if (_singleton == null) {
      print("I have not already a singleton class instance");
      _singleton = Singleton._internal();
      ;
      return _singleton;
    } else {
      print("I have already a singleton class instance");
      return _singleton;
    }
  }

}
```

## Daha Fazla Bilgi

Singleton tasarım deseni hakkında daha fazla ayrıntı ve örnekler için lütfen [Singleton Tasarım Deseni - Vikipedi](https://en.wikipedia.org/wiki/Singleton_pattern) sayfasına başvurun.
