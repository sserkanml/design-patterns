// Implementor: Mesaj Gönderme Uygulaması
abstract class MesajGonderimUygulamasi {
  void gonder(String mesaj, String alici);
}

// Concrete Implementor: SMS Gönderimi
class SmsGonderimUygulamasi implements MesajGonderimUygulamasi {
  @override
  void gonder(String mesaj, String alici) {
    print("SMS gönderildi: '$mesaj' to $alici");
  }
}

// Concrete Implementor: E-posta Gönderimi
class EmailGonderimUygulamasi implements MesajGonderimUygulamasi {
  @override
  void gonder(String mesaj, String alici) {
    print("E-posta gönderildi: '$mesaj' to $alici");
  }
}

// Abstraction: Mesaj
abstract class Mesaj {
  late MesajGonderimUygulamasi gonderimUygulamasi;

  void gonder(String mesaj, String alici) {
    gonderimUygulamasi.gonder(mesaj, alici);
  }
}

// Refined Abstraction: Acil Mesaj
class AcilMesaj extends Mesaj {
  @override
  void gonder(String mesaj, String alici) {
    print("Acil mesaj gönderiliyor...");
    super.gonder(mesaj, alici);
  }
}
