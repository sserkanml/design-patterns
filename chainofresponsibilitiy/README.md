# Chain of Responsibility Tasarım Deseni

![Pattern Type](https://img.shields.io/badge/Pattern%20Type-Behavioral-blue)

**Chain of Responsibility Tasarım Deseni**, bir isteğin bir dizi işleyici (handler) nesnesi tarafından sırayla işlenmesini sağlar. Her işleyici, isteği kendi sorumluluk alanına göre işleyebilir veya bir sonraki işleyiciye iletebilir.

## Problem

Bir uygulamada, bir isteğin birden fazla nesne tarafından işlenmesi gerekebilir. Her nesnenin farklı bir sorumluluk alanı olabilir.

## Çözüm

Chain of Responsibility deseni, bir isteği işleyen nesnelerin bir zincir oluşturacak şekilde bir araya gelmesini sağlar. Her işleyici, isteği işleyip işlemeyeceğine karar verir ve eğer işlemiyorsa isteği bir sonraki işleyiciye iletir.

## Avantajları

- İstek işleyicileri dinamik olarak değiştirilebilir.
- Birden çok işleyici arasında bir zincir oluşturabilir.

## Kullanım

1. Handler (İşleyici) arayüzünü oluşturun ve bu arayüzde işlem metodu tanımlanır.
2. Concrete Handler (Somut İşleyici) sınıflarını oluşturun ve belirli işlemleri temsil eden işleyicileri tanımlayın.
3. İstemci, işlemi başlatan sınıftır. İstemci, işleyici zincirine istek gönderir.

## Örnek Kullanım: İzin Hiyerarşisi

```dart
// Handler: İşleyici arayüzü
abstract class PermissionHandler {
  PermissionHandler? _nextHandler;

  void setNextHandler(PermissionHandler nextHandler) {
    _nextHandler = nextHandler;
  }

  void handleRequest(int level);
}

// Concrete Handler: Temel İşleyici
class BasePermissionHandler extends PermissionHandler {
  @override
  void handleRequest(int level) {
    print('Temel izin verildi.');
  }
}

// Concrete Handler: Yönetici İşleyici
class ManagerPermissionHandler extends PermissionHandler {
  @override
  void handleRequest(int level) {
    if (level <= 2) {
      print('Yönetici izin verildi.');
    } else {
      _nextHandler?.handleRequest(level);
    }
  }
}

// Concrete Handler: Admin İşleyici
class AdminPermissionHandler extends PermissionHandler {
  @override
  void handleRequest(int level) {
    if (level <= 5) {
      print('Admin izin verildi.');
    } else {
      print('Tüm yetkilendirmeler reddedildi.');
    }
  }
}
```

## Daha Fazla Bilgi

Daha fazla bilgi için [Chain of Responsibility Tasarım Deseni - Wikipedia](https://en.wikipedia.org/wiki/Chain-of-responsibility_pattern#:~:text=The%20Chain%20of%20Responsibility%20design%20pattern%20is%20one%20of%20the,change%2C%20test%2C%20and%20reuse.) sayfasını ziyaret edebilirsiniz.


