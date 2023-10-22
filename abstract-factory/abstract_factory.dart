abstract class ReservationSystemFactory {
  ReservationWidget createWidget();
  ReservationForm createForm();
}

abstract class ReservationWidget {
  void display();
}

abstract class ReservationForm {
  void render();
}

class WebReservationSystemFactory implements ReservationSystemFactory {
  @override
  ReservationWidget createWidget() {
    return WebReservationWidget();
  }

  @override
  ReservationForm createForm() {
    return WebReservationForm();
  }
}

class WebReservationWidget implements ReservationWidget {
  @override
  void display() {
    print("Web tabanlı rezervasyon widget'i görüntülendi.");
  }
}

class WebReservationForm implements ReservationForm {
  @override
  void render() {
    print("Web tabanlı rezervasyon formu render edildi.");
  }
}

class MobileReservationSystemFactory implements ReservationSystemFactory {
  @override
  ReservationWidget createWidget() {
    return MobileReservationWidget();
  }

  @override
  ReservationForm createForm() {
    return MobileReservationForm();
  }
}

class MobileReservationWidget implements ReservationWidget {
  @override
  void display() {
    print("Mobil rezervasyon widget'i görüntülendi.");
  }
}

class MobileReservationForm implements ReservationForm {
  @override
  void render() {
    print("Mobil rezervasyon formu render edildi.");
  }
}
