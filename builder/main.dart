import 'builder.dart';

void main(List<String> args) {
  EvInsaatYoneticisi yoneticisi = EvInsaatYoneticisi(ApartmanDairesiBuilder());

  Ev apartmanDairesi = yoneticisi.evOlustur();
  apartmanDairesi.bilgileriGoster();
}
