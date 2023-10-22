import 'composite.dart';

void main(List<String> args) {
  // Organizasyon yapısı oluşturma
  Department engineering = Department('Mühendislik');
  Department sales = Department('Satış');

  Employee johnDoe = Employee('John Doe', 'Mühendis');
  Employee janeDoe = Employee('Jane Doe', 'Pazarlama Uzmanı');
  Employee jimSmith = Employee('Jim Smith', 'Satış Temsilcisi');

  // Çalışanları departmanlara ekleme
  engineering.addComponent(johnDoe);
  engineering.addComponent(janeDoe);
  sales.addComponent(jimSmith);

  // Departmanları ana organizasyona ekleme
  Department organization = Department('Şirket');
  organization.addComponent(engineering);
  organization.addComponent(sales);

  // Bilgileri gösterme
  organization.displayInfo();
}
