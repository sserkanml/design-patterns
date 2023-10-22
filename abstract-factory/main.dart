import 'abstract_factory.dart';

void main(List<String> args) {
  var platform = "web"; // Kullanıcı platform seçimi

  late ReservationSystemFactory factory;

  if (platform == "web") {
    factory = WebReservationSystemFactory();
  } else if (platform == "mobile") {
    factory = MobileReservationSystemFactory();
  }

  var widget = factory.createWidget();
  var form = factory.createForm();

  widget.display();
  form.render();
}
