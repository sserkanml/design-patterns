# Mediator Tasarım Deseni

![Pattern Type](https://img.shields.io/badge/Pattern%20Type-Behavioral-blue)

**Mediator Tasarım Deseni**, bir grup nesne arasındaki karmaşık iletişimi düzenlemek ve yönetmek için kullanılan bir yapısal tasarım desenidir. Bu desen, nesnelerin birbiriyle doğrudan iletişim kurmasını önler ve iletişimi merkezi bir ara eleman aracılığıyla sağlar.

## Problem

Bir uygulamada, bir grup nesne arasında karmaşık bir iletişim ağı oluşturmak gerektiğinde ortaya çıkar. Bu durumda, nesneler arasındaki bağımlılıklar artar ve kodun bakımı zorlaşır.

## Çözüm

Mediator deseni, bir ara eleman (mediator) aracılığıyla nesneler arasındaki iletişimi yönetir. Her nesne, iletişimi mediator'e (arabulucu) iletir ve mediator, gerekli işlemleri gerçekleştirir.

## Avantajları

- Nesneler arasındaki bağımlılıkları azaltır.
- Nesnelerin birbirlerini bilmemesini sağlar.
- Kodun daha modüler ve bakımı daha kolay hale gelmesini sağlar.

## Kullanım

1. Uygulamada bir grup nesne arasında karmaşık bir iletişim ağı oluşturulacaksa, Mediator tasarım deseni kullanılabilir.
2. Her nesne, iletişim işlemlerini mediator'e ileterek işlemi başlatır.
3. Mediator, gelen iletişimleri yönetir ve gerektiğinde ilgili işlemleri gerçekleştirir.

## Örnek Kullanım

```dart
// Mediator ara eleman sınıfı
class Mediator {
  late Passenger _passenger;
  late Flight _flight;
  late Seat _seat;
  late Payment _payment;

  set passenger(Passenger passenger) => _passenger = passenger;
  set flight(Flight flight) => _flight = flight;
  set seat(Seat seat) => _seat = seat;
  set payment(Payment payment) => _payment = payment;

  void bookFlight() {
    if (_flight.isAvailable() && _seat.isAvailable() && _payment.makePayment()) {
      _passenger.setFlight(_flight);
      _flight.book();
      _seat.book();
    }
  }
}

class Passenger {
  late Mediator _mediator;
  late Flight _flight;

  Passenger(this._mediator);

  void bookFlight() {
    _mediator.bookFlight();
  }

  void setFlight(Flight flight) {
    _flight = flight;
  }
}

class Flight {
  Mediator _mediator;
  bool _available = true;

  Flight(this._mediator);

  bool isAvailable() {
    return _available;
  }

  void book() {
    _available = false;
    print("Uçuş rezerve edildi.");
  }
}

class Seat {
  Mediator _mediator;
  bool _available = true;

  Seat(this._mediator);

  bool isAvailable() {
    return _available;
  }

  void book() {
    _available = false;
    print("Koltuk rezerve edildi.");
  }
}

class Payment {
  Mediator _mediator;

  Payment(this._mediator);

  bool makePayment() {
    print("Ödeme yapıldı.");
    return true;
  }
}
```
## Daha Fazla Bilgi

Daha fazla bilgi için [Mediator Tasarım Deseni - Wikipedia](https://en.wikipedia.org/wiki/Mediator_pattern) sayfasını ziyaret edebilirsiniz.
