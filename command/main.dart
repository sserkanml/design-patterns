import 'command.dart';

void main(List<String> args) {
  Light livingRoomLight = Light();
  Command turnOnCommand = TurnOnLightCommand(livingRoomLight);
  Command turnOffCommand = TurnOffLightCommand(livingRoomLight);

  Switch lightSwitch = Switch(turnOnCommand, turnOffCommand);

  lightSwitch.turnOn(); // Işık açıldı
  lightSwitch.turnOff(); // Işık kapatıldı
}
