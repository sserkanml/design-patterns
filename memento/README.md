
# Memento Tasarım Deseni

![Pattern Type](https://img.shields.io/badge/Pattern%20Type-Behavioral-blue)

**Memento Tasarım Deseni**, bir nesnenin anlık durumunu saklamak ve daha sonra bu duruma geri dönmek için kullanılır. Bu desen, nesnelerin iç durumunu korumak ve geri yüklemek için kullanılır.

## Problem

Bir uygulamada, bir nesnenin belirli anlardaki durumunu saklamak ve daha sonra bu duruma geri dönmek gerektiğinde ortaya çıkar. Özellikle geri alma (undo) işlemleri için kullanışlıdır.

## Çözüm

Memento deseni, bir nesnenin iç durumunu temsil eden bir memento nesnesi oluşturur. Bu memento, nesnenin belirli bir anındaki durumunu içerir. Daha sonra, bu memento kullanılarak nesnenin durumu geri yüklenir.

## Avantajları

- Nesnenin iç durumunu saklar ve geri yükler, böylece geri alma işlemleri mümkün olur.
- Nesnenin geçmiş durumlarına erişim sağlar.

## Kullanım

1. Bir nesnenin belirli anlardaki durumunu saklayacak bir memento sınıfı oluşturun.
2. Originator sınıfı, mevcut durumunu kaydeden bir memento oluşturmalıdır.
3. Caretaker sınıfı, memento nesnelerini saklayarak geri alma işlemlerini gerçekleştirir.

## Örnek Kullanım

```dart
// Originator: Metin düzenleyici
class TextEditor {
  String _text = '';

  void write(String text) {
    _text += text;
  }

  String getText() {
    return _text;
  }

  TextEditorMemento save() {
    return TextEditorMemento(_text);
  }

  void restore(TextEditorMemento memento) {
    _text = memento.getSavedText();
  }
}

// Memento: Metin düzenleyicinin anlık durumu
class TextEditorMemento {
  final String _savedText;

  TextEditorMemento(this._savedText);

  String getSavedText() {
    return _savedText;
  }
}

// Caretaker: Metin düzenleyicinin anlık durumlarını saklar
class TextEditorHistory {
  List<TextEditorMemento> _history = [];

  void addMemento(TextEditorMemento memento) {
    _history.add(memento);
  }

  TextEditorMemento getMemento() {
    if (_history.isNotEmpty) {
      return _history.removeLast();
    }
    return null;
  }
}

void main() {
  TextEditor editor = TextEditor();
  TextEditorHistory history = TextEditorHistory();

  editor.write("Hello ");
  history.addMemento(editor.save());

  editor.write("World!");
  history.addMemento(editor.save());

  print("Current Text: ${editor.getText()}");

  TextEditorMemento memento = history.getMemento();
  editor.restore(memento);

  print("Restored Text: ${editor.getText()}");
}
```


## Daha Fazla Bilgi

Daha fazla bilgi için [Memento Tasarım Deseni - Wikipedia](https://en.wikipedia.org/wiki/Memento_pattern) sayfasını ziyaret edebilirsiniz.
