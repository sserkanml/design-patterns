import 'visitor.dart';

void main(List<String> args) {
  Library library = Library();
  library.addItem(Book("Design Patterns"));
  library.addItem(Magazine("Tech Monthly"));
  library.addItem(AudioBook("Learn Dart"));

  BorrowVisitor visitor = BorrowVisitor();
  library.acceptVisitor(visitor);
}
