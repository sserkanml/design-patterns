// Command: Komut arayüzü
abstract class Command {
  void execute();
}

// Receiver: Işık
class Light {
  void turnOn() {
    print('Işık açıldı');
  }

  void turnOff() {
    print('Işık kapatıldı');
  }
}

// Concrete Command: Işık Açma Komutu
class TurnOnLightCommand extends Command {
  final Light _light;

  TurnOnLightCommand(this._light);

  @override
  void execute() {
    _light.turnOn();
  }
}

// Concrete Command: Işık Kapatma Komutu
class TurnOffLightCommand extends Command {
  final Light _light;

  TurnOffLightCommand(this._light);

  @override
  void execute() {
    _light.turnOff();
  }
}

// Invoker: Uygulama
class Switch {
  late Command _onCommand;
  late Command _offCommand;

  Switch(Command onCommand, Command offCommand) {
    _onCommand = onCommand;
    _offCommand = offCommand;
  }

  void turnOn() {
    _onCommand.execute();
  }

  void turnOff() {
    _offCommand.execute();
  }
}
