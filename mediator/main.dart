import 'mediator.dart';

void main(List<String> args) {
  Mediator mediator = Mediator();

  Passenger passenger = Passenger(mediator);
  mediator.passenger = passenger;

  Flight flight = Flight(mediator);
  mediator.flight = flight;

  Seat seat = Seat(mediator);
  mediator.seat = seat;

  Payment payment = Payment(mediator);
  mediator.payment = payment;

  passenger.bookFlight();
}
