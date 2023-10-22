# Visitor Tasarım Deseni

Visitor tasarım deseni, nesnelerin yapısını ayrı tutmak ve bu yapının içindeki nesnelere yeni işlevsellik eklemek isteyen durumlar için kullanılır.

## Problem

Bir nesne yapısındaki elemanların (sınıfların) üzerinde farklı işlemler yapmak gerekiyor ancak her eleman farklı bir yapıya sahip. Bu durumda, her bir eleman için ayrı ayrı işlemler yazmak karmaşık ve bakımı zor olabilir.

## Çözüm

Visitor deseni, bu sorunu çözmek için kullanılır. Her elemanın, bir ziyaretçi (Visitor) tarafından ziyaret edilebilmesini sağlar. Ziyaretçi, her bir eleman için farklı işlemleri gerçekleştirir.

## Avantajları

- Yeni işlevsellik eklemek kolaydır, mevcut nesne yapısını değiştirmeye gerek yoktur.
- Yapı ve işlevselliği ayırarak kodun bakımını kolaylaştırır.

## Dezavantajları

- Yeni eleman eklenirse, bu elemanın tüm ziyaretçi sınıfları tarafından desteklenmesi gerekebilir.
- Performans konusunda dikkatli olunmalıdır, büyük nesne yapıları üzerinde döngü yapmak performansı etkileyebilir.

## Kullanım

1. Visitor arayüzünü oluşturun ve her eleman için bir ziyaret metodu tanımlayın.
2. Concrete Visitor sınıfları oluşturun ve bu arayüzü uygulayarak belirli işlemleri gerçekleştirin.
3. Element arayüzünü oluşturun ve ziyaretçileri kabul eden bir metot tanımlayın.
4. Concrete Element sınıfları oluşturun ve bu arayüzü uygulayarak ziyaretçileri kabul eden metodu gerçekleştirin.
5. Nesne yapısını oluşturun ve elemanları bu yapının içine ekleyin.
6. Ziyaretçiyi kullanarak elemanları ziyaret edin.


```dart
abstract class LibraryItemVisitor {
  void visitBook(Book book);
  void visitMagazine(Magazine magazine);
  void visitAudioBook(AudioBook audioBook);
}

class BorrowVisitor extends LibraryItemVisitor {
  @override
  void visitBook(Book book) {
    print("Kitap ödünç alındı: ${book.title}");
  }

  @override
  void visitMagazine(Magazine magazine) {
    print("Dergi ödünç alındı: ${magazine.title}");
  }

  @override
  void visitAudioBook(AudioBook audioBook) {
    print("Sesli kitap ödünç alındı: ${audioBook.title}");
  }
}

abstract class LibraryItem {
  void accept(LibraryItemVisitor visitor);
}
```

Daha fazla bilgi için [Visitor Tasarım Deseni - Wikipedia](https://en.wikipedia.org/wiki/Visitor_pattern) sayfasını ziyaret edebilirsiniz.
