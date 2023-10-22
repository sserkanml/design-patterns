import 'memento.dart';

void main(List<String> args) {
  TextEditor editor = TextEditor();
  TextEditorHistory history = TextEditorHistory();

  editor.write("Hello ");
  history.addMemento(editor.save());

  editor.write("World!");
  history.addMemento(editor.save());

  print("Current Text: ${editor.getText()}");

  TextEditorMemento? memento = history.getMemento();
  editor.restore(memento ?? TextEditorMemento("merhaba"));

  print("Restored Text: ${editor.getText()}");
}
