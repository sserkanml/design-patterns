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

class TextEditorMemento {
  final String _savedText;

  TextEditorMemento(this._savedText);

  String getSavedText() {
    return _savedText;
  }
}

class TextEditorHistory {
  List<TextEditorMemento> _history = [];

  void addMemento(TextEditorMemento memento) {
    _history.add(memento);
  }

  TextEditorMemento? getMemento() {
    if (_history.isNotEmpty) {
      return _history.removeLast();
    }
    return null;
  }
}
