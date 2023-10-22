import 'iterator.dart';

void main(List<String> args) {
  RestaurantMenu menu = RestaurantMenu();
  menu.addDish("Spaghetti Bolognese");
  menu.addDish("Caesar Salad");
  menu.addDish("Cheesecake");

  Iterator iterator = menu.createIterator();

  while (iterator.hasNext()) {
    print(iterator.next());
  }
}
