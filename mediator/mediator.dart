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
