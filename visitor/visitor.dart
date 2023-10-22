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

class Book extends LibraryItem {
  String title;

  Book(this.title);

  @override
  void accept(LibraryItemVisitor visitor) {
    visitor.visitBook(this);
  }
}

class Magazine extends LibraryItem {
  String title;

  Magazine(this.title);

  @override
  void accept(LibraryItemVisitor visitor) {
    visitor.visitMagazine(this);
  }
}

class AudioBook extends LibraryItem {
  String title;

  AudioBook(this.title);

  @override
  void accept(LibraryItemVisitor visitor) {
    visitor.visitAudioBook(this);
  }
}
class Library {
  List<LibraryItem> items = [];

  void addItem(LibraryItem item) {
    items.add(item);
  }

  void acceptVisitor(LibraryItemVisitor visitor) {
    for (var item in items) {
      item.accept(visitor);
    }
  }
}
