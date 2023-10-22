import 'observer.dart';

void main(List<String> args) {
  var techNews = NewsSite('Teknoloji');
  var sportsNews = NewsSite('Spor');

  var user1 = User('Ahmet');
  var user2 = User('Mehmet');

  techNews.registerObserver(user1);
  techNews.registerObserver(user2);

  sportsNews.registerObserver(user2);

  techNews.addNews('Yeni telefon modeli tanıtıldı.');
  sportsNews.addNews('Şampiyonlar Ligi finali yaklaşıyor.');

  techNews.removeObserver(user1);

  techNews.addNews('Yeni yazılım güncellemesi yayınlandı.');
  sportsNews.addNews('Basketbol maç sonuçları açıklandı.');
}
