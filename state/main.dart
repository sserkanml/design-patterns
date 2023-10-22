import 'state.dart';

void main(List<String> args) {
  Light light = Light(LightOffState());
  light.printState();
  light.setState(LightOffState());

  light.switchOn(); // Output: Açılıyor.
  light.switchOn(); // Output: Zaten açık.
  light.setState(LightOnState());
  light.switchOff(); // Output: Kapatılıyor.
  light.switchOff(); // Output: Zaten kapalı.
}
