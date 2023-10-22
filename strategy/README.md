# Strateji Tasarım Deseni

Strateji tasarım deseni, davranışları gruplayarak birbirleriyle değiştirilebilir olanları tanımlar ve bu davranışları içeren bir aile oluşturur. Bu desen, algoritmaların değiştirilebilmesi gerektiği durumlarda kullanılır.

## Problem

Farklı davranışların belirli bir algoritma içinde değiştirilmesi veya seçilmesi gerektiğinde kullanılır.

## Çözüm

Strateji tasarım deseni, algoritmaları bir arayüze kapsülleyerek, bu algoritmaların dinamik olarak değiştirilmesini sağlar.

## Avantajları

- Farklı davranışları gruplayarak yönetim kolaylığı sağlar.
- Algoritmayı kullanacak sınıflar için değiştirilebilirlik sağlar.

## Kullanım

1. Farklı davranışları temsil eden sınıflar oluşturun (`ConcreteStrategy1`, `ConcreteStrategy2`, vb.).
2. Bu sınıfların aynı arayüzü (`Strategy`) uyguladığından emin olun.
3. Kullanıcı sınıfında (`Context`) bir strateji nesnesi oluşturun ve bu stratejiyi kullanarak işlemleri gerçekleştirin.

## Örnek Kullanım

```dart
abstract class PaymentStrategy {
  void pay(double amount);
}

class CreditCardPayment implements PaymentStrategy {
  @override
  void pay(double amount) {
    print("Kredi kartı ile $amount TL ödeme yapıldı.");
  }
}

class PayPalPayment implements PaymentStrategy {
  @override
  void pay(double amount) {
    print("PayPal ile $amount TL ödeme yapıldı.");
  }
}

class BankTransferPayment implements PaymentStrategy {
  @override
  void pay(double amount) {
    print("Banka havalesi ile $amount TL ödeme yapıldı.");
  }
}

class ShoppingCart {
  PaymentStrategy? _paymentStrategy;

  void setPaymentStrategy(PaymentStrategy paymentStrategy) {
    _paymentStrategy = paymentStrategy;
  }

  void checkout(double amount) {
    if (_paymentStrategy != null) {
      _paymentStrategy!.pay(amount);
    } else {
      print("Ödeme yöntemi seçilmedi.");
    }
  }
}
```

## Daha Fazla Bilgi

Daha fazla bilgi için [Strategy Tasarım Deseni - Wikipedia](https://en.wikipedia.org/wiki/Strategy_pattern) sayfasını ziyaret edebilirsiniz.

