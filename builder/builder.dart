class Ev {
  late String tip;
  late String duvarMalzemesi;
  late String catiMalzemesi;
  late int odaSayisi;

  void bilgileriGoster() {
    print("Tip: $tip, Duvar: $duvarMalzemesi, Çatı: $catiMalzemesi, Odalar: $odaSayisi");
  }
}

// Builder: Ev İnşaatçısı
abstract class EvBuilder {
  Ev ev = Ev();

  void setTip();
  void setDuvarMalzemesi();
  void setCatiMalzemesi();
  void setOdaSayisi();

  Ev getEv() {
    return ev;
  }
}

// Concrete Builder: Apartman Dairesi İnşaatçısı
class ApartmanDairesiBuilder extends EvBuilder {
  @override
  void setTip() {
    ev.tip = "Apartman Dairesi";
  }

  @override
  void setDuvarMalzemesi() {
    ev.duvarMalzemesi = "Beton";
  }

  @override
  void setCatiMalzemesi() {
    ev.catiMalzemesi = "Çelik";
  }

  @override
  void setOdaSayisi() {
    ev.odaSayisi = 3;
  }
}

// Director: Ev İnşaat Yöneticisi
class EvInsaatYoneticisi {
  EvBuilder builder;

  EvInsaatYoneticisi(this.builder);

  void setBuilder(EvBuilder yeniBuilder) {
    builder = yeniBuilder;
  }

  Ev evOlustur() {
    builder.setTip();
    builder.setDuvarMalzemesi();
    builder.setCatiMalzemesi();
    builder.setOdaSayisi();
    return builder.getEv();
  }
}
