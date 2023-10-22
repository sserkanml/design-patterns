// Iterator arayüzü
abstract class Iterator {
  bool hasNext();
  dynamic next();
}

// Koleksiyon arayüzü
abstract class Menu {
  Iterator createIterator();
}

// Restoran menüsü
class RestaurantMenu implements Menu {
  late List<String> _dishes;

  RestaurantMenu() {
    _dishes = [];
  }

  void addDish(String dish) {
    _dishes.add(dish);
  }

  @override
  Iterator createIterator() {
    return _RestaurantMenuIterator(this);
  }

  List<String> getDishes() {
    return _dishes;
  }
}

// Iterator implementasyonu
class _RestaurantMenuIterator implements Iterator {
  late final RestaurantMenu _menu;
  late int _position;

  _RestaurantMenuIterator(this._menu) {
    _position = 0;
  }

  @override
  bool hasNext() {
    return _position < _menu.getDishes().length;
  }

  @override
  dynamic next() {
    if (hasNext()) {
      dynamic menuItem = _menu.getDishes()[_position];
      _position++;
      return menuItem;
    }
    return null;
  }
}
