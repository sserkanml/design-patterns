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
