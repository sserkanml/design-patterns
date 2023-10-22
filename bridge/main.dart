import 'bridge.dart';

void main(List<String> args) {
  Mesaj acilSms = AcilMesaj();
  acilSms.gonderimUygulamasi = SmsGonderimUygulamasi();
  acilSms.gonder("Acil durum!", "0555 555 5555");

  Mesaj normalEmail = AcilMesaj();
  normalEmail.gonderimUygulamasi = EmailGonderimUygulamasi();
  normalEmail.gonder("Merhaba!", "ornek@email.com");
}
