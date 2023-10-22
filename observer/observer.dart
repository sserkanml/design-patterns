abstract class Subject {
  void registerObserver(Observer observer);
  void notifyObservers();
  void removeObserver(Observer observer);
}

abstract class Observer {
  void notify(String category, List<String> news);
}

class NewsSite extends Subject {
  List<Observer> _observers = [];
  List<String> _news = [];
  late String _category;
  NewsSite(this._category);

  @override
  void notifyObservers() {
    for (var observer in _observers) {
      observer.notify(_category, _news);
    }
  }

  @override
  void registerObserver(observer) {
    _observers.add(observer);
  }

  @override
  void removeObserver(observer) {
    _observers.remove(observer);
  }

  void addNews(String news) {
    _news.add(news);
    notifyObservers();
  }

  void removeNews(String news) {
    _news.remove(news);
    notifyObservers();
  }
}

class User implements Observer {
  late String _name;
  User(this._name);
  @override
  void notify(String category, List<String> news) {
    print("$_name, there is a new and category is $category");
    for (var item in news) {
      print('- $item');
    }
  }
}
