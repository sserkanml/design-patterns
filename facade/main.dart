import 'facade.dart';

void main(List<String> args) {
  ControlPanel controlPanel = ControlPanel();

  // Film izleme işlemi
  controlPanel.watchMovie();

  // Film izleme işlemini sonlandırma
  controlPanel.endMovie();
}
