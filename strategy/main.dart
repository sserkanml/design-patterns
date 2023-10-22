import 'strategy.dart';

void main(List<String> args) {
  ShoppingCart cart = ShoppingCart();

  // Kredi kartı ile ödeme
  cart.setPaymentStrategy(CreditCardPayment());
  cart.checkout(100.0);

  // PayPal ile ödeme
  cart.setPaymentStrategy(PayPalPayment());
  cart.checkout(200.0);

  // Banka havalesi ile ödeme
  cart.setPaymentStrategy(BankTransferPayment());
  cart.checkout(150.0);
}
