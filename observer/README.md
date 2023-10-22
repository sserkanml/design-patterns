# Gözlemci Tasarım Deseni

Gözlemci tasarım deseni, bir nesnenin durumunda meydana gelen değişiklikleri izleyen ve bu değişikliklere tepki gösteren bir yaratımsal tasarım desenidir. Bu desen, genellikle Model-View-Controller (MVC) gibi yapıların temelini oluşturur.

## Nasıl Çalışır?

- **Subject (Konu)**: Bu, gözlemlenen nesnedir. Bu nesne üzerinde bir değişiklik meydana geldiğinde, bu değişiklikleri gözlemcilere bildirir.

- **Observer (Gözlemci)**: Bu, değişiklikleri izleyen nesnelerdir. Gözlemciler, belirli bir konuyu dinler ve konuda herhangi bir değişiklik olduğunda güncellenirler.

- **Register (Kayıt)**: Gözlemcilerin, belirli bir konuyu dinlemesi için kaydedilmesi gereklidir.

- **Notify (Bildirim)**: Bir konuda değişiklik olduğunda, konu, kayıtlı olan tüm gözlemcilere bildirim gönderir.

## Kullanım Örneği

```dart
void main() {
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
```
## Avantajları

- Nesneler arasındaki bağımlılıkları azaltır.
- Bir nesnenin durum değişikliklerini diğer nesnelere iletmek için kullanılır.
- Genişletilebilirlik sağlar.

## Dezavantajları

- Fazla sayıda gözlemci olduğunda yönetimi zor olabilir.

## Uygulama

Bu tasarım desenini kullanmak için, bir "Subject" arayüzü ve bir veya daha fazla "Observer" sınıfı oluşturmanız gerekecektir. Subject sınıfı, gözlemcilere kayıt, çıkartma ve bildirim gönderme işlemlerini yönetir. Observer sınıfları ise değişikliklere tepki olarak çalışacak metotları içerir.

## Daha Fazla Bilgi

Daha fazla bilgi için [Observer Tasarım Deseni - Wikipedia](https://en.wikipedia.org/wiki/Observer_pattern) sayfasını ziyaret edebilirsiniz.
